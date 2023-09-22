# Docker Assessment

## **Step1: Preparing the Ubuntu Server**
1. Installation of Dependencies: From the applications documentation, the developer specified having `Nodejs version 16`, `Git`, `Docker` and `Docker Compose 2.5 and higher`. So we prepared a bash script that will install all these dependencies on our Ubuntu Server.

After successful completion, we will have this message:

![installation-complete-message](images/install-complete.png "installation-complete-message")

## **Step 2: Add Ubuntu user to Docker Group**

This is an optional step, however, because we want to seamlessly use the `docker` command without sudo (which keeps giving permission error), we decided to add the Ubuntu user to the docker group with this command:

```
    sudo usermod -aG docker ubuntu
```

Then, reboot the system to implement the change.

## **Step 3: Preparing the Repository**

1. Fork the repository from **[here](https://github.com/jaiswaladi246/fullstack-bank)** to github account.
2. Cloned the forked repository to the local environment with **`git clone`** command.
3. Change into the `fullstack-bank` directory and install the nodejs dependencies for the project with:

    ```
    npm install
    ```

This command adds a directory called `node_modules` to the application's directory.

4. On completion, change into the `app` directory, where the `docker-compose.yml` file is located, and run the following command to pull the containers and run them on the machine.

    ```
    docker compose up -d
    ```

5. The command ran above will spin up three containers:

- ng_frontend - mapped on the port 3000.
- ng_backend - mapped on the port 3001.
- ng_db - mapped on the port 3002.

![docker-compose-output](images/docker-compose.png "docker-compose-output")
  
The containers are for the front-end, back-end and database, respectively. After the containers start running, you can enter the http://<localhost>:3000 address in your browser to see the application running.

However, Because this is on an AWS EC2 instance, the URL becomes:

`http://<public-IP-address>:3000`

![app](images/app.png "app-frontend")


## Step 4: Inspecting the Images  

At this stage, we bacame more interested in the images used to guild this app, and we got these, using the `docker images` command.

![docker-images](images/docker-images.png "docker-images")

The output gave us very heavy docker images.

To stop the containers from running, use:

```
docker compose down
```
![docker-compose-down](images/docker-compose-down.png "docker-compose-down")










