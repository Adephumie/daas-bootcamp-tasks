# **TeamCity CI Configuration**
## Assessment 2

1. We set up a repository on this [URL](https://github.com/Team-Cloud-Champions/fullstack-bank) for our application. 
2. Due to the memory issues we wwere having with setting up Servers, we decided to go with the Teamcity Cloud Option to save time.

## Setting up TeamCity Cloud
- On [TeamCity's Website](https://www.jetbrains.com/teamcity/), scroll down to TeamCity Cloud and click on the GitHub logo for authentication through GitHub.

    ![TeamCity](images/teamcity-cloud.png "TeamCity")

- Then, create a domain name:
    ![domain-name-creation](images/domain-create.png)

- You will be redirected to the domain's name URL that you registered, then proceed to accept the agreement on the Terms and Conditions page. This will bring you to the TeamCity's welcome page.
    ![teamcity-welcome-page](images/teamcity-welcome-page.png)
  
- Click on **`Create Project`**, and here, you will add the repository's URL, Username, and Personal Access Token for authentication. 
  
  This process helps to set up the Version Control System that we want TeamCity to monitor. Fill in the form with the necessary details as shown below.
    ![project](images/project.png)

- Click on **`proceed`** and on the next page, leave the default settings, since we are working with just one branch which is also the default one (main branch).
    ![default-settings](images/default-settings.png)

## Setting Up the Build Steps
- In this next step, TeamCity Cloud automatically,  generated some Build steps as shown below:
    ![auto-detected-steps](images/auto-detected-steps.jpeg)

- Then, we selected two of them that we need as shown below and clicked on `Use selected`:
    ![selected-auto-detected-steps](images/selected-auto-detected-steps.jpeg)

- On the next page, we picked each selected step (Docker for frontend and Backend) to edit. we set the `Step name`, and added the `image name:tag` as shown below:
    ![docker-build-1](images/docker-build-1.png)
    ![docker-build-2](images/build-2.png)

- Then, on the **`Build step`** page, because we still needed two more steps for pushing the images, we clicked on **`Add build step`** as shown here:
    ![add-build-step](images/add-build-step.png)

- On the next page, click on `Docker` as the runner for that step as shown:
    ![new-build-step](images/new-build-step.png)

- On the New build docker step that we have chosen, we will fill in the form as shown below. Input the step name, pick the push option for Docker command, and add the image name:tag, the save. Do this for the frontend and backend.
    ![docker-push](images/docker-push.png)
    ![docker-push-frontend](images/docker-push-frontend.png)

    At the end, we got four steps in our build step configuration as shown below:

    ![build-steps](images/build-steps.png)

## Setting Docker parameters
- After defining the build steps, our next configuration will be for the connection. Click on the name of the project on the top of the page, ours is **`Fullstack-Bank`** and on the left-hand-side, click on `Show more` and click on `Connection`. 
    ![connection](images/connection.jpeg)

- Then on the next page, Click on `Add connection`, and then, `connection type`:
    ![connection-type](images/connection-type.jpeg)

- Pick the `Docker Registry` option and input your Dockerhub credentials.
    ![docker-credentials](images/docker-credentials.jpeg)

- Then, Click on `Test Connection` to verify that Dockerhub has been integrated with Teamcity.
    ![connection-successful](images/connection-successful.jpeg)

## Build Feature for Docker Support 

- On the left-hand side of the Build steps page, click on **`Build Features`**, then **`Add build features`**. Pick the **`Docker Support`** option.
![build-feature-1](images/build-features.png)

- After picking **`Docker Support`**, you should have this image:
![build-feature-2](images/build-features-complete.png)

Then, click, **`run`**. This image shows a list of builds that we ran.
    ![run-command](images/run-command.png)

We also edited our image tags to use the **`env.BUILDNUMBER`** variable to have distinct images after every run. This was set in the build steps where we set the **`image name:tag`** previously.

![build-numbers-images](images/docker-push-images.png)

