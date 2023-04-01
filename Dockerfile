FROM alpine:latest

RUN apk add bash
ADD dummy.txt .

# Reference: Alpine Linux: Setting up a new user <https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user>
# Reference: Stack Overflow: How to add user with dockerfile? <https://stackoverflow.com/q/39855304>
RUN adduser -g regular regular

USER regular
