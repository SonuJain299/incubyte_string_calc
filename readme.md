To run the app clone the repository and navigate to the project directory and run docker container using command

docker run -d -p 3000:3000 -e RAILS_MASTER_KEY=7a16f8a1a3b8b3366027710ba4faa970 --name incubyte_string_calc incubyte_string_calc

Now, run in browser http://localhost:3000/ to access the app
