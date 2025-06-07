import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { ValidationPipe } from '@nestjs/common';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  
  // Enable validation pipes globally
  app.useGlobalPipes(new ValidationPipe({
    whitelist: true,
    forbidNonWhitelisted: true,
    transform: true,
  }));
  
  // Configure Swagger documentation
  const config = new DocumentBuilder()
    .setTitle('Todo API')
    .setDescription('API for managing todo items')
    .setVersion('1.0')
    .addTag('todos')
    .build();
    
  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('api-docs', app, document);
  
  // Enable CORS
  app.enableCors();
  
  await app.listen(process.env.PORT ?? 3000);
  console.log(`Application is running on: ${await app.getUrl()}`);
  console.log(`Swagger documentation is available at: ${await app.getUrl()}/api`);
}
bootstrap();
