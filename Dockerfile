# Use an official Python image as the base
FROM python:3.9

RUN pip install jupyter

WORKDIR /opt/notebooks

COPY . /opt/notebooks

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
