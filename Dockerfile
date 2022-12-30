FROM archlinux:base-devel

COPY pacman.conf /etc/pacman.conf
COPY init-image.bash /init-image.bash
RUN /init-image.bash

COPY run.bash /run.bash

ENTRYPOINT ["/run.bash"]
