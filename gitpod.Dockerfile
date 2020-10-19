FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    sudo dpkg -i erlang-solutions_1.0_all.deb && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y esl-erlang elixir nodejs inotify-tools
