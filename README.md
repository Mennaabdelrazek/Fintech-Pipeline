# Data Pipeline & Visualisation

To start the container, run the following command:

## Postgres
```bash
docker compose -f docker/postgres/docker-compose.yml up -d
```

## Airflow
```bash
docker compose -f docker/airflow/docker-compose.yml up -d
```

## Superset
```bash
docker compose -f docker/superset/docker-compose.yml up -d
```


## SQL 
change datetime to correct type
```sql
UPDATE sales_clean
SET datetime = TO_TIMESTAMP(datetime, 'YYYY-MM-DD HH24:MI:SS');
```
```sql
ALTER TABLE sales_clean
ALTER COLUMN "date" TYPE DATE USING "date"::DATE

ALTER TABLE sales_clean
ALTER COLUMN "time" TYPE TIME USING "time"::TIME
```
