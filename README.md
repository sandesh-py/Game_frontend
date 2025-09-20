<<<<<<< HEAD
# React + TypeScript + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

## Expanding the ESLint configuration

If you are developing a production application, we recommend updating the configuration to enable type-aware lint rules:

```js
export default defineConfig([
  globalIgnores(['dist']),
  {
    files: ['**/*.{ts,tsx}'],
    extends: [
      // Other configs...

      // Remove tseslint.configs.recommended and replace with this
      tseslint.configs.recommendedTypeChecked,
      // Alternatively, use this for stricter rules
      tseslint.configs.strictTypeChecked,
      // Optionally, add this for stylistic rules
      tseslint.configs.stylisticTypeChecked,

      // Other configs...
    ],
    languageOptions: {
      parserOptions: {
        project: ['./tsconfig.node.json', './tsconfig.app.json'],
        tsconfigRootDir: import.meta.dirname,
      },
      // other options...
    },
  },
])
```

You can also install [eslint-plugin-react-x](https://github.com/Rel1cx/eslint-react/tree/main/packages/plugins/eslint-plugin-react-x) and [eslint-plugin-react-dom](https://github.com/Rel1cx/eslint-react/tree/main/packages/plugins/eslint-plugin-react-dom) for React-specific lint rules:

```js
// eslint.config.js
import reactX from 'eslint-plugin-react-x'
import reactDom from 'eslint-plugin-react-dom'

export default defineConfig([
  globalIgnores(['dist']),
  {
    files: ['**/*.{ts,tsx}'],
    extends: [
      // Other configs...
      // Enable lint rules for React
      reactX.configs['recommended-typescript'],
      // Enable lint rules for React DOM
      reactDom.configs.recommended,
    ],
    languageOptions: {
      parserOptions: {
        project: ['./tsconfig.node.json', './tsconfig.app.json'],
        tsconfigRootDir: import.meta.dirname,
      },
      // other options...
    },
  },
])
```
=======
# Game Club Management Application

A full-stack web application for managing game club members, games, collections, and transactions.

## Project Structure

```
gameapp/
├── backend/          # Spring Boot Java API server
│   ├── src/
│   ├── pom.xml
│   ├── Dockerfile
│   └── render.yaml
├── client/           # React TypeScript frontend
│   ├── src/
│   ├── package.json
│   ├── vite.config.ts
│   └── render.yaml
├── package.json      # Root package.json for scripts
└── README.md
```

## Features

- **Member Management**: Register, login, and manage member accounts
- **Game Management**: Add, edit, and manage game collections
- **Transaction Tracking**: Record and track member transactions
- **Recharge System**: Handle member account recharges
- **Admin Dashboard**: Administrative interface for managing the system

## Tech Stack

### Backend
- Java 21
- Spring Boot
- Maven
- H2 Database (development)
- PostgreSQL (production)

### Frontend
- React 18
- TypeScript
- Vite
- Axios for API calls

## Development Setup

### Prerequisites
- Java 21+
- Node.js 18+
- Maven 3.6+

### Running Locally

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd gameapp
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start development servers**
   ```bash
   npm run dev
   ```
   This will start both backend (port 8080) and frontend (port 3000) servers.

### Individual Services

**Backend only:**
```bash
npm run dev:backend
```

**Frontend only:**
```bash
npm run dev:frontend
```

## Deployment on Render

### Backend Deployment

1. Connect your GitHub repository to Render
2. Create a new Web Service
3. Configure:
   - **Build Command**: `./mvnw clean package -DskipTests`
   - **Start Command**: `java -jar target/*.jar`
   - **Environment**: Java
   - **Port**: 10000

4. Add environment variables:
   - `SPRING_PROFILES_ACTIVE=production`
   - Database connection variables (if using external DB)

### Frontend Deployment

1. Create a new Static Site
2. Configure:
   - **Build Command**: `npm install && npm run build`
   - **Publish Directory**: `dist`
   - **Environment Variables**:
     - `VITE_API_URL=https://your-backend-url.onrender.com`

### Database

For production, consider using:
- Render PostgreSQL addon
- Or any external PostgreSQL database

## API Endpoints

### Members
- `POST /api/members/register` - Register new member
- `POST /api/members/login` - Member login
- `GET /api/members` - Get all members
- `GET /api/members/{id}` - Get member by ID

### Games
- `GET /api/games` - Get all games
- `POST /api/games` - Create new game
- `PUT /api/games/{id}` - Update game
- `DELETE /api/games/{id}` - Delete game

### Collections
- `GET /api/collections` - Get all collections
- `POST /api/collections` - Create new collection

### Transactions
- `GET /api/transactions` - Get all transactions
- `POST /api/transactions` - Create new transaction

### Recharges
- `GET /api/recharges` - Get all recharges
- `POST /api/recharges` - Create new recharge

## Environment Variables

### Backend
- `SPRING_DATASOURCE_URL` - Database URL
- `SPRING_DATASOURCE_USERNAME` - Database username
- `SPRING_DATASOURCE_PASSWORD` - Database password
- `SERVER_PORT` - Server port (default: 8080)

### Frontend
- `VITE_API_URL` - Backend API URL

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License.
>>>>>>> 8f68513ecd059d7a94d45de7a1fd67929ecea2a9
