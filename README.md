This is a demo dbt project.

I installed dbt locally using pip. To work on this project in the future remeber to run source `dbt-env/bin/activate`


As an inital project I want to query some data from a public BigQuery database and load it into my demo Project. Unfortunatey
I am currently experiencing issues with permissions. It seems that my user does not have the right permissions:

"User does not have permission to query table". This happened with two different public datasets.

Things to try:
- Is it that OAuth let's you only use the same Project as both source and destionation? 
NO. I was able to run a model from a different Project owned by me.

- Is it possible that it's because my demo Project is not billable, i.e. I am in Sandbox mode? 
NO. I can see online resources using sandbox. 

- Is it possible that I am missing something in the configuration?

- Is it the problem that it is public or that it is a different project from my output profile?
It looks like it is an issue related to this. In particular on dbt Slack I was told to try and use gcloud auth application-default 
https://cloud.google.com/sdk/gcloud/reference/auth/application-default


### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
