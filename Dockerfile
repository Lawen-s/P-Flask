FROM python:3.8.9

COPY . /app
WORKDIR /app

RUN pip3 install virtualenv
RUN python -m venv myenv
RUN source myenv/bin/activate
RUN pip3 install flask

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]