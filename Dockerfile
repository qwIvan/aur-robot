FROM dock0/arch
RUN pacman -S --noconfirm nvchecker gawk openssh binutils
RUN useradd -m robot
ADD . /home/robot/
WORKDIR /home/robot/
RUN chown -R robot .
USER robot
#RUN git config --global core.sshCommand 'ssh -i ~/bot/id_rsa'
RUN ./init
CMD ["./robot"]
