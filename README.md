# allennlp-cpu
A docker image for allennlp which depends on pytorch-cpu

# Problem
The offical allennlp docker image is huge! It is more than 5 GB.
There are several causes for the massive size. The pytorch components for a lot of architectures contribute a lot.
This image is aimed at cpu only usage. Therefore unnecessory binaries are excluded.
The size is about 1.4GB, in which spacy takes more than 400MB
