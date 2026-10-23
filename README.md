**Why does this Repository exist?**

Currently, Deploio has a [hard limit of 10GiB](https://docs.nine.ch/docs/deplo-io/dockerfile-build/#image-size-recommendation) for the build environment. 
Building metabase directly from their provided Dockerfile therefore fails as they need more than 10GiB.
The final image, however, is less then a gigabyte and therefore can run without an issue on Deploio.
However, as of 2025-01-24, there is no possibility to run a prebuild Docker image directly.
To circumvent this restriction, we can provide a Dockerfile with a single `FROM` layer that pulls the official Metabase image.
Version management can still be done on Deploio by setting the corresponding tag in the build args

As of October 2026 the Dockerfile in the Metabase repo is not updated and does not work without tweaking it. That's why we use the already built image of Metabase.
