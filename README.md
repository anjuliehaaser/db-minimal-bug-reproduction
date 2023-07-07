# Turborepo Vercel Prebuild demo

## Current steps

- create Vercel project
- add github to project and deactivate build (buildCommand: echo "'Build cancelled.' && ls -la", install command: "pnpm i --ignore-scripts")
- configure root directory in vercel project
- execute link command from repo root
- build vercel in subdirectory (turbo works)
- deploy vercel with prebuild (no turbe yet)

## How the project list works
The project list is created from exisitng git repos within the vercel team and bound with the app root directory