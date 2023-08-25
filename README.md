# Coding 1
This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Notes on the Docker run command options used
* --name: assigns a name to the container
* it: tells Docker to allocate a pseudo-TTY connected to the container's STDIN , which creates an interactive bash shell in the container
* --rm: automatically removes the container once it exits
* -v: bind mounts a volume - mounts a specific directory into the container at a specific path
* -p: publishes a container's port(s) to the host
* -e: sets environment variables - CHOKIDAR_USEPOLLING, when set to true, makes the watcher run in polling mode (necessary inside a VM, and mainly used in development when `npm start` isn't detecting changes)

# Run this application
## Option 1
Download Docker [here](https://www.docker.com/) and start it up to ensure the Docker daemon is running.

In your command line, run `docker pull abozynski/bozynski_alina_coding_assignment11`
Run `docker run -p 7775:3000 abozynski/bozynski_alina_coding_assignment11`.

This will be running on the exposed port, 7775.

## Option 2
Download Docker [here](https://www.docker.com/) and start it up to ensure the Docker daemon is running.

Clone this repository.

Create the docker image with the following docker build command.
```
docker build -t bozynski_alina_coding_assignment11:dev .
```

Then, run the image to build the container and run the application:
```
docker run --name bozynski_alina_coding_assignment11 -it --rm -v `pwd`:/app -v /app/node_modules -p 7775:3000 -e CHOKIDAR_USEPOLLING=true bozynski_alina_coding_assignment11:dev
```

This will be running on the exposed port, 7775.

## Option 3: Getting Started with Create React App

Clone this repository, then in the project directory, to install all packages, run:

### `npm install`

Then:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Recreate this application 
Ensure create-react-app is available with:
```
npm install -g create-react-app@3.4.1
```

Run the following to generate a new app:
```
npm init react-app sample --use-npm
```

Add a Dockerfile with the contents of the Dockerfile in this repository.

Add a .dockerignore file with the following contents:
```
node_modules
build
.dockerignore
Dockerfile
Dockerfile.prod
```

Change the app.js file so that it displays 'Coding 1' instead of the default.

Download Docker [here](https://www.docker.com/) and start it up to ensure the Docker daemon is running.

Create the docker image with the docker build command as below:
```
docker build -t bozynski_alina_coding_assignment11:dev .
```

Then, run the image to build the container and run the application:
```
docker run --name bozynski_alina_coding_assignment11 -it --rm -v `pwd`:/app -v /app/node_modules -p 7775:3000 -e CHOKIDAR_USEPOLLING=true bozynski_alina_coding_assignment11:dev
```

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
