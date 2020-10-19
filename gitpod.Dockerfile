FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.

RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && \
    dpkg --force-all -i erlang-solutions_2.0_all.deb && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y esl-erlang elixir nodejs inotify-tools
