# Game App Frontend

React TypeScript frontend for the Game Club Management Application.

## Quick Deploy on Render

### Option 1: Web Service (Docker)
1. **Create a new Web Service on Render**
2. **Connect this GitHub repository**
3. **Configure:**
   - **Environment**: `Docker`
   - **Dockerfile Path**: `./Dockerfile`
4. **Environment Variables:**
   - `VITE_API_URL` = `https://your-backend-url.onrender.com`

### Option 2: Static Site (Recommended)
1. **Create a new Static Site on Render**
2. **Connect this GitHub repository**
3. **Configure:**
   - **Build Command**: `npm install && npm run build`
   - **Publish Directory**: `dist`
4. **Environment Variables:**
   - `VITE_API_URL` = `https://your-backend-url.onrender.com`

## Local Development

```bash
npm install
npm run dev
```

The app will be available at `http://localhost:3000`

## Features

- **Member Management**: Register, login, and manage member accounts
- **Game Management**: Add, edit, and manage game collections
- **Transaction Tracking**: Record and track member transactions
- **Recharge System**: Handle member account recharges
- **Admin Dashboard**: Administrative interface for managing the system

## Tech Stack

- React 19
- TypeScript
- Vite
- Axios for API calls
- React Router for navigation

## API Integration

The frontend connects to the backend API at the URL specified in `VITE_API_URL` environment variable.

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint