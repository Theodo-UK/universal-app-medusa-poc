printf "\n\nWelcome! Let's get your medusa database set up for the first time."
...

cp apps/medusa-store/.env.template apps/medusa-store/.env

yarn install

printf "\n=================\n"
printf "Building your docker image"
printf "\n=================\n"
docker-compose -f apps/medusa-store/docker-compose.yml up -d

printf "\n=================\n"
printf "Seeding medusa database"
printf "\n=================\n"
yarn medusa:seed

printf "\n 1. Your DB should already be running, but on your next session you can use 'yarn medusa' to start the DB. You can also choose to start it from your Docker Desktop GUI."
printf "\n 4. Open your browser and go to http://localhost:8080 to manage your database using Adminer."

printf "\n\nHappy coding, and welcome to Medusa!"