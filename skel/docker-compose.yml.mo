version: '2'
services:
  tinc:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - ./tinc-etc:/etc/tinc
    command: -n {{PROJECT_TINC_NETWORK_NAME}} start -D -U hostuser
    devices:
      - "/dev/net/tun:/dev/net/tun"
    cap_add:
      - NET_ADMIN
    network_mode: "host"
    environment:
      - TERM=dumb
