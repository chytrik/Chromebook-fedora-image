# Chromebook-fedora-image
My container image that I use on my Chromebook.
This image is for work when I need to use some scenarios based on the Fedora distribution.

An example of how to make your own build within a Linux session on a Chromebook
```
podman build -t pafedora --build-arg PASSWORD=patrik .
```


An example of how to run within a Linux session on a Chromebook
```
podman run -it pafedora
```

***

A note on using PODMAN within a Linux session
```
sudo dnf install podman
```
Change PODMAN rights
```
sudo usermod --add-subuids 10000-75535 $(whoami)
sudo usermod --add-subgids 10000-75535 $(whoami)
sudo echo "$(whoami):10000:65536" >> /etc/subuid
podman system migrate
```

