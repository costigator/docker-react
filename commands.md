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

# set up ssh keys for github
https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
clip < ~/.ssh/id_rsa.pub

Optional/Only for GIT Bash on Windows:
ssh-add ~/.ssh/id_rsa

# add repo to github
git init
git add .
git commit -m "initial commit"
git remote add origin git@github.com:costigator/docker-react.git
git push -u origin master