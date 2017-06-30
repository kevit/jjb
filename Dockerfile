FROM python:2

WORKDIR jenkins-job-builder
RUN pip install jenkins-job-builder==1.6.1 && pip install jenkins-job-builder-addons
RUN echo "import jenkins_jobs_addons" | python

VOLUME /jjb-jobs
WORKDIR /jjb-jobs

ENTRYPOINT ["jenkins-jobs"]
