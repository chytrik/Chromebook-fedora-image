FROM registry.fedoraproject.org/fedora
ARG PASSWORD
RUN dnf update && dnf upgrade && dnf -y install passwd util-linux bash-completion java-17-openjdk zip p7zip btop diffutils filezilla firefox git gftp gnuplot htop mc nnn oathtool tree vim wget fzf python pip
RUN adduser chytrik;echo chytrik:$PASSWORD | chpasswd
RUN usermod -aG wheel chytrik
USER chytrik
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
