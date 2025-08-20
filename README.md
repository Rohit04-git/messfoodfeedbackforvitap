# Food Feedback & Voting System

A comprehensive full-stack web application for university students to provide feedback and vote on mess food menu items.

## 🏗️ Architecture

### Frontend
- **React 19** with TypeScript
- **Tailwind CSS** for styling
- **TanStack Query** for state management
- **React Hook Form** with Zod validation
- **Recharts** for analytics visualization
- **Wouter** for client-side routing

### Backend
- **Spring Boot 3.1.0** with Java 17
- **Spring Data JPA** for database operations
- **PostgreSQL** database
- **Jakarta Bean Validation**
- **REST API** architecture

## 🚀 Features

✅ **Student Authentication** - Login system with hostel integration  
✅ **Daily Voting System** - One vote per student per day  
✅ **Feedback System** - Star ratings (1-5) + text feedback  
✅ **Analytics Dashboard** - Interactive charts and reports  
✅ **Admin Panel** - Menu management interface  
✅ **Mess Provider Integration** - Catering company management  
✅ **Responsive Design** - Mobile-friendly interface  

## 🛠️ Development

### Prerequisites
- **Java 17+** for backend
- **Node.js 18+** for frontend
- **PostgreSQL** database
- **Maven** for backend build management

### Setup

1. **Clone the repository**
```bash
git clone <repository-url>
cd food-feedback-system
```

2. **Install frontend dependencies**
```bash
npm install
```

3. **Set up database environment variables**
```bash
export DATABASE_URL=jdbc:postgresql://localhost:5432/foodfeedback
export PGUSER=postgres
export PGPASSWORD=your_password
```

4. **Run the application**

**Backend (Spring Boot):**
```bash
cd backend
./mvnw spring-boot:run
```

**Frontend (React):**
```bash
cd client
npm run dev
```

### API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/students/login` | Student authentication |
| GET | `/api/menu` | Fetch menu items |
| POST | `/api/menu` | Add menu items (admin) |
| POST | `/api/menu/{id}/vote` | Vote for menu item |
| POST | `/api/feedback` | Submit feedback |
| GET | `/api/analytics/summary/{date}` | Analytics data |
| GET | `/api/mess-providers` | Mess providers |

### Database Schema

- **students**: User authentication with hostel names
- **mess_providers**: Catering company information  
- **menu_items**: Daily menu items linked to providers
- **votes**: Student voting records (unique per day)
- **feedback**: Ratings and comments with validation

## 🚀 Deployment

### Backend (Spring Boot)
- Configure `application.yml` for production database
- Build with `./mvnw clean package`
- Deploy JAR file to hosting platform

### Frontend (React)
- Build with `npm run build`
- Deploy static files to hosting platform
- Configure API endpoint for production

## 🔧 Technology Stack

| Component | Technology |
|-----------|------------|
| Frontend Framework | React 19 + TypeScript |
| Backend Framework | Spring Boot 3.1.0 |
| Database | PostgreSQL |
| ORM | Spring Data JPA |
| Styling | Tailwind CSS |
| State Management | TanStack Query |
| Build Tools | Vite, Maven |

## 📊 Features Overview

### For Students
- **Secure Login** with email authentication
- **Daily Menu Voting** with real-time results
- **Feedback Submission** with star ratings and comments
- **Hostel Integration** for personalized experience

### For Administrators  
- **Menu Management** - Add daily menu items
- **Analytics Dashboard** - View voting patterns and satisfaction trends
- **Mess Provider Management** - Manage catering companies
- **Date-based Organization** - Track daily performance

---

**Built with ❤️ for university food services**