# Tech Space Demo - Node.js Dockerized Application

A simple Node.js web application containerized with Docker, featuring Express.js routing and automated deployment capabilities.

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation & Setup](#installation--setup)
- [Running the Application](#running-the-application)
- [Docker Configuration](#docker-configuration)
- [API Endpoints](#api-endpoints)
- [Development Workflow](#development-workflow)
- [Deployment](#deployment)
- [Contributing](#contributing)

## 🚀 Project Overview

This project demonstrates a complete development workflow for a Node.js application including:
- Express.js web server setup
- Docker containerization
- Git version control
- Modular routing structure
- Production-ready configuration

## 📁 Project Structure

```
technospace/
├── app.js                  # Main application entry point
├── package.json           # Project dependencies and scripts
├── package-lock.json      # Locked dependency versions
├── Dockerfile            # Docker container configuration
├── .gitignore            # Git ignore rules
├── README.md             # Project documentation
├── routes/
│   └── exampleRoute.js   # Example route handlers
└── scripts/
    └── start.sh          # Startup scripts
```

## 🛠️ Prerequisites

Before running this project, make sure you have the following installed:

- **Node.js** (v18 or higher)
- **npm** (comes with Node.js)
- **Docker** (for containerization)
- **Git** (for version control)

## 💻 Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/Shravan159/tech_space_demo.git
cd tech_space_demo
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Environment Setup

The application runs on port 3000 by default. No additional environment configuration is required for basic setup.

## 🏃‍♂️ Running the Application

### Option 1: Run with Node.js (Development)

```bash
node app.js
```

### Option 2: Run with Docker (Production-like)

#### Build the Docker Image

```bash
docker build -t tech-space-app .
```

#### Run the Docker Container

```bash
docker run -p 3000:3000 --name tech-space-container tech-space-app
```

### Option 3: Run in Background (Detached Mode)

```bash
docker run -d -p 3000:3000 --name tech-space-container tech-space-app
```

## 🐳 Docker Configuration

### Dockerfile Explanation

```dockerfile
FROM node:18-alpine          # Lightweight Node.js base image
WORKDIR /app                 # Set working directory
COPY package*.json ./        # Copy dependency files first (for caching)
RUN npm install --production # Install only production dependencies
COPY . .                     # Copy application code
EXPOSE 3000                  # Expose port 3000
CMD ["node","app.js"]        # Start the application
```

### Docker Commands Reference

```bash
# Build image
docker build -t tech-space-app .

# Run container
docker run -p 3000:3000 --name tech-space-container tech-space-app

# Check running containers
docker ps

# View container logs
docker logs tech-space-container

# Stop container
docker stop tech-space-container

# Remove container
docker rm tech-space-container

# Remove image
docker rmi tech-space-app
```

## 🌐 API Endpoints

### Base URL
```
http://localhost:3000
```

### Available Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET    | `/`      | Welcome message |
| GET    | `/api/example` | Example API endpoint |

### Example Responses

**GET /**
```json
"Hello from my Dockerized Node.js App!"
```

**GET /api/example**
```json
{
  "message": "This is an example route",
  "timestamp": "2025-10-20T...",
  "status": "success"
}
```

## 🔄 Development Workflow

### 1. Making Changes

1. Create a new branch for your feature:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. Make your changes to the code

3. Test locally:
   ```bash
   node app.js
   ```

4. Test with Docker:
   ```bash
   docker build -t tech-space-app .
   docker run -p 3000:3000 tech-space-app
   ```

### 2. Committing Changes

```bash
git add .
git commit -m "Description of your changes"
git push origin feature/your-feature-name
```

### 3. Git Workflow

The project follows these Git practices:
- Main branch: `main`
- Feature branches for new development
- Meaningful commit messages
- `.gitignore` excludes `node_modules/` and other unnecessary files

## 🚀 Deployment

### Local Development
```bash
npm start  # or node app.js
```

### Production with Docker
```bash
docker build -t tech-space-app .
docker run -d -p 3000:3000 --name production-app tech-space-app
```

### Cloud Deployment Options

This Dockerized application can be deployed to:
- **AWS ECS/EKS**
- **Google Cloud Run**
- **Azure Container Instances**
- **Heroku**
- **DigitalOcean App Platform**

## 🧪 Testing

### Manual Testing

1. Start the application:
   ```bash
   docker run -p 3000:3000 tech-space-app
   ```

2. Test endpoints:
   ```bash
   curl http://localhost:3000
   curl http://localhost:3000/api/example
   ```

### Health Check

The application should respond with a 200 status code at the root endpoint.

## 📝 Project History

This project was developed following these key steps:

1. **Initial Setup**: Created Node.js application with Express.js
2. **Routing**: Implemented modular routing structure
3. **Dockerization**: Added Docker support for containerization
4. **Version Control**: Set up Git repository with proper `.gitignore`
5. **Documentation**: Created comprehensive README
6. **Testing**: Verified Docker build and deployment process

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

- **GitHub**: [@Shravan159](https://github.com/Shravan159)
- **Repository**: [tech_space_demo](https://github.com/Shravan159/tech_space_demo)

## 🆘 Troubleshooting

### Common Issues

1. **Port already in use**:
   ```bash
   # Find process using port 3000
   netstat -ano | findstr :3000
   # Kill the process or use a different port
   ```

2. **Docker build fails**:
   ```bash
   # Clean Docker cache
   docker system prune -a
   ```

3. **Application not responding**:
   - Check if the container is running: `docker ps`
   - Check container logs: `docker logs tech-space-container`
   - Verify port mapping: `-p 3000:3000`

### Support

If you encounter any issues, please:
1. Check the troubleshooting section above
2. Review the container logs
3. Create an issue on GitHub with detailed error information

---

**Last Updated**: October 20, 2025