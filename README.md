# MSDS434
Repository for final project worked on in MSDS 434: Analytics Application Engineering.

# Project Overview
The final project consists of building a cloud-native analytics application that is hosted on the Google Cloud Platform (GCP). The goal of this project is to give you the ability to create realistic, working solutions that were created with modern techniques.

Before you begin, read the Sculley et al. (2015) paper to consider technical debt in machine-learning (ML) systems. Access the Sculley et al. (2015) reading through Course Reserves.

## Project Requirements
Source code stored in Github
Continuous Deployment from CircleCI
Data stored in GCP (BigQuery, Google Cloud Storage, etc.)
ML predictions created and served out (AutoML, BigQuery, etc.)
Stackdriver installed for monitoring
Google App Engine serves out HTTP requests via REST API with a JSON payload
Deployed into GCP environment
A two-page, single-spaced paper describing the project as a consultant would describe it to a client during the hand-off phase.

## Checklist
1. ML

Does application do ML inference? 
2. DevOps

Are there separate environments?
Is there comprehensive monitoring and alerts?
3. Data

Is the correct Datastore used?
4. Security

Does the principle of least security apply?
Is data encrypted in transit?
