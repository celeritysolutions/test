# CLAUDE.md

## Project Overview

"test" is a test app with a tap (to click) and count those clicks. It is a landing page project built using the organization's default stack.

## Stack Details

- **Frontend**: Next.js + TypeScript
- **Styling**: Tailwind CSS + shadcn/ui
- **Build**: Vite
- **Database**: Supabase (PostgreSQL)
- **Auth**: Supabase Auth
- **Deploy**: Vercel

## Folder Structure

The project follows a standard Next.js folder structure:

- `pages/`: Contains the main pages of the application.
- `components/`: Holds reusable UI components.
- `lib/`: Includes utility functions, API clients, and other shared logic.
- `styles/`: Contains global styles and Tailwind CSS configuration.
- `public/`: Stores static assets like images, fonts, and icons.

## Key Conventions

- Use TypeScript for type safety and better developer experience.
- Follow the Airbnb JavaScript style guide.
- Utilize Tailwind CSS and the shadcn/ui library for consistent and responsive styling.
- Implement Supabase for the database and authentication needs.
- Deploy the application to Vercel.

## Common Commands

- `npm run dev`: Start the development server.
- `npm run build`: Build the production-ready application.
- `npm run start`: Run the production build.
- `npm run lint`: Lint the codebase.
- `npm run format`: Format the code using Prettier.

## Architecture Decisions

1. **Next.js and TypeScript**: The team decided to use Next.js and TypeScript to leverage the benefits of React, including server-side rendering, file-based routing, and the strong typing provided by TypeScript.

2. **Tailwind CSS and shadcn/ui**: The team chose Tailwind CSS and the shadcn/ui library to streamline the styling process and ensure a consistent UI across the application.

3. **Supabase**: Supabase was selected for the database and authentication needs due to its ease of use, robust features, and seamless integration with the rest of the stack.

4. **Vercel**: Vercel was chosen as the deployment platform due to its tight integration with Next.js, reliable performance, and excellent developer experience.

## What NOT to do

- Avoid using plain CSS or other styling libraries outside of Tailwind CSS and shadcn/ui.
- Do not make significant changes to the folder structure without careful consideration and approval from the team.
- Refrain from using external authentication providers or databases outside of Supabase.
- Do not deploy the application to platforms other than Vercel without discussing with the team.