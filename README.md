
# What i will be doing here

* Test the app locally
* Dockerize the app
* Create a Github Action to building, testing and Lint the code on PullRequests
* Block merging if the test fails.
* Create a GitHub Action that will create a docker image from the merged code and deploy to a Container Registry (AWS ECR in this case)

Functions
* When a pull request is trigger, a build is triggered. The merge is only available if the tests pass
* When you merge the pull request, it triggers a deploy to AWS ECS.

Added Functionatlity
* There is a 2nd route /host that will return the hostname where the task is running, to see if the app send to the 2 tasks
* Added linting to the code. (pending test..)

