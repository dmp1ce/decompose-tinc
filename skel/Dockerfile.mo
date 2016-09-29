FROM jenserat/tinc
MAINTAINER David Parrish <daveparrish@tutanota.com>

# Create hostuser
RUN groupadd -g {{PROJECT_HOST_GROUPID}} -o hostuser && \
useradd -m -u {{PROJECT_HOST_USERID}} -g {{PROJECT_HOST_GROUPID}} hostuser
