#Get Base slim image
FROM python:3.13-slim

#Create Working Directory
WORKDIR /app

#Copy file to the docker container
COPY . .

#Installing Dependencies
RUN pip install -r requirements.txt

#Expose port for this app
EXPOSE 80

#Run the app
CMD [ "python","app.py" ]