# Option 1
To run this application on localhost:7775, run:
docker pull abozynski/bozynski_alina_coding_assignment11
then:
docker run -p 7775:3000 abozynski/bozynski_alina_coding_assignment11

# Option 2
Alternatively, fork the GitHub repository of this application (attached in assignment).
Create the docker image with the docker build command as below:
docker build -t bozynski_alina_coding_assignment11:dev .

Then, run the image to build the container and run the application:
docker run \
    --name bozynski_alina_coding_assignment11
    -it \
    --rm \
    -v `pwd`:/app \
    -v /app/node_modules \
    -p 7775:3000 \
    -e CHOKIDAR_USEPOLLING=true \
    bozynski_alina_coding_assignment11:dev

# Option 3
Or, from scratch, ensure create-react-app is available:
npm install -g create-react-app@3.4.1

Generate a new app:
npm init react-app sample --use-npm

Add a Dockerfile with the contents of the attached Dockerfile.
Add a .dockerignore file with the following contents:
node_modules
build
.dockerignore
Dockerfile
Dockerfile.prod

Change the app.js file so that it displays 'Coding 1' instead of the default.
Create the docker image with the docker build command as below:
docker build -t bozynski_alina_coding_assignment11:dev .

Then, run the image to build the container and run the application:
docker run \
    --name bozynski_alina_coding_assignment11
    -it \
    --rm \
    -v `pwd`:/app \
    -v /app/node_modules \
    -p 7775:3000 \
    -e CHOKIDAR_USEPOLLING=true \
    bozynski_alina_coding_assignment11:dev

# Original README.md file below
# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

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
