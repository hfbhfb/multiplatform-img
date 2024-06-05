# Stage 1: Build the Go binary
FROM --platform=linux/arm64 my-go-app:arm64-v0.1 as builder
# WORKDIR /app
# ARG TARGETARCH
# RUN echo ${TARGETARCH}

# FROM --platform=linux/amd64 my-go-app:amd64-v0.1 as builder2
# # WORKDIR /app
# # ARG TARGETARCH
# # RUN echo ${TARGETARCH}


# # RUN file main 

# # Stage 2: Create a lightweight image to run the binary
# FROM --platform=linux/amd64  hefabao/tools-k8s:v0.52
# RUN file /bin/bash 
# # Copy the pre-built binary file from the builder stage
# COPY --from=builder /main /main1
# COPY --from=builder /bin/sh /sh1
# COPY --from=builder2 /main /main2
# COPY --from=builder2 /bin/sh /sh2
# RUN file /main1
# RUN file /main2
# RUN file /sh1
# RUN file /sh2

