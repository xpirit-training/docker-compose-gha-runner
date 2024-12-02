# Docker Compose Runner

This project uses Docker Compose to manage scaled GitHub self-hosted Runner instances.

## Prerequisites

- Docker
- Docker Compose

## Usage

- Make sure you adjust the .env file to your needs

- To start the runners please adjust the `docker-compose.yml` file to your needs and run the following command:

  ```sh
  docker-compose -f docker-compose.yml up -d --build
  ```

- To stop the runner:
  ```sh
  docker-compose -f docker-compose.yml down
  ```
