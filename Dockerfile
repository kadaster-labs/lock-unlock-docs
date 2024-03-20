FROM squidfunk/mkdocs-material:latest

# Set build directory
WORKDIR /tmp

COPY *requirements.txt ./

# Perform build and cleanup artifacts and caches
RUN \
  if [ -e user-requirements.txt ]; then \
    pip install -U -r user-requirements.txt; \
  fi 

# Set working directory
WORKDIR /docs
