# Chromebook-fedora-image
My container image that I use on my Chromebook.
This image is for work when I need to use some scenarios based on the Fedora distribution.

An example of how to make a call from within a Linux session on a Chromebook
'''
podman build -t pafedora --build-arg PASSWORD=patrik .
podman run -it pafedora
'''
