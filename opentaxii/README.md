# docker-opentaxii
Docker build for opentaxii server

Example usage:

Run and create user:

    docker run -d -p 9000:9000 -e USERNAME='test' -e PASSWORD='password' red5d/opentaxii
    
Run without creating user:

    docker run -d -p 9000:9000 red5d/opentaxii
    
    
