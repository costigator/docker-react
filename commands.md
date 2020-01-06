# create react-app in a new folder called frontend
npx create-react-app frontend

# solution to "RangeError: Maximum call stack size exceeded"
npm cache clean --force

# run a development server
npm run start

# run any test associated with the project
npm run test

# build a production version of the application
npm run build

# build docker image
docker build -f Dockerfile.dev .

# start new created image
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app CONTAINER_ID

# run tests (override default command)
docker run CONTAINER_ID npm run test
docker run -it CONTAINER_ID npm run test
docker exec -it CONTAINER_ID npm run test

# compose
docker-compose up --build

# build production
docker build .
docker run -p 8080:80 CONTAINER_ID

# git
git init
git@github.com:costigator/docker-react.git