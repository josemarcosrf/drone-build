# Drone build

Small repo to build the `drone-server` executable and docker image.

Note that the `build.sh` script will build `drone-server`
from the [drone branch](https://github.com/harness/gitness/tree/drone).

```bash
# To build the enterprise version
./build.sh enterprise
# To build the OSS version
./build.sh
```

> To know more please check [drone's license](https://docs.drone.io/enterprise/):
>
> Specially:
>
> _You can build the Enterprise Edition from source without build limits if and only
> if your organization has under $1 million US dollars in annual gross revenue.
> You will otherwise need to [purchase](https://drone.io/enterprise) a
> commercial license._


