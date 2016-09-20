#! /bin/sh

# Create user if specified in environment.
if [ "$USERNAME" != "" ] && [ "$PASSWORD" != "" ]; then
    opentaxii-create-account -u $USERNAME -p $PASSWORD
fi

# Run opentaxii in gunicorn
gunicorn opentaxii.http:app --bind 0.0.0.0:9000
