# Databricks dbt demo

## Overview

Builds stage, base, and datamart models from the TPCH sample data included with Databricks

## Model lineage

![alt text](images/dbt_dbricks_lineage.png "Databricks dbt demo lineage")

## Using the demo project

Getting set up:

- Create a Python virtual environment
- Install the [dbt-databricks](https://github.com/databricks/dbt-databricks) adapter, which will also install a compatible version of dbt-core
- Create an entry in your dbt profiles.yml file, Azure Databricks example is shown below using a SQL warehouse

```text
databricks_dbt_demo:
  outputs:
    dev:
      catalog: null
      host: adb-1111111111111111.1.azuredatabricks.net
      http_path: /sql/1.0/warehouses/abcdef1234567890
      schema: dbxdemo
      threads: 1
      token: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
      type: databricks
  target: dev
```

Try running the following commands:

- dbt deps
- dbt build


## Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
