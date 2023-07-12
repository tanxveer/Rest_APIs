#!/bin/sh

flask db upgrade

exec gunicorn --bind 0.0.0.0:50 "app:create_app()"