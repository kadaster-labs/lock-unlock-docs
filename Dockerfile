FROM squidfunk/mkdocs-material:latest

# Set build directory
WORKDIR /tmp

COPY requirements.txt ./

# Perform build and cleanup artifacts and caches
RUN pip install -U -r requirements.txt

# Set working directory
WORKDIR /docs
