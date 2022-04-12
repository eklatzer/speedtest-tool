[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
# speedtest-tool
`speedtest-tool` is used to gather and visualize speedtest statistics about your local network.
## Parts
* `speedtest.sh` is a script that is used to run a speedtest and report the values to a local InfluxDB
* `docker-compose.yml` is used to start InfluxDB and Grafana with the needed configuration
* `grafana` is used to predefine the needed dashboard in Grafana
* `.env` is used to define variables
* `install.sh` is used to install the needed cli-tools
# Install

1. Install the Docker Engine (Install instructions: https://docs.docker.com/engine/install/)
2. Install Docker Compose (Install instructions: https://docs.docker.com/compose/install/)
3. Install `speedtest`, `jq` and `curl` or run `install.sh`
4. Run `docker-compose up` to start InfluxDB and Grafana
5. Configure a cronjob that runs `speedtest.sh` at your given interval ([Crontab-Guru](https://crontab.guru/))<br>
Example for running the script every minute:
```
crontab -e
* * * * * /path/to/speedtest.sh
```
6. Open `http://localhost:3000/` in your browser and login (default credentials: `user: admin, password: admin`)
7. Open the dashbard `Speedtest` using the left navigation bar


## Prerequisites

* `speedtest`: https://www.speedtest.net/apps/cli
* `jq`
* `curl`
* Docker Engine: https://docs.docker.com/engine/install/
* Docker Compose: https://docs.docker.com/compose/install/
