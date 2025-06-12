-- macros/load_volume_sources.sql
{% macro create_volume_sources() %}
    {% set tables = [
        {'name': 'titanic', 'path': '/Volumes/dev/bronze/test_volume/titanic.parquet'},
        {'name': 'iris', 'path': '/Volumes/dev/bronze/test_volume/iris.parquet'},
        {'name': 'mtcars', 'path': '/Volumes/dev/bronze/test_volume/mtcars.parquet'},
    ] %}

    {% for t in tables %}
        {% do run_query("CREATE OR REPLACE TABLE dev.bronze." ~ t.name ~ " AS SELECT * FROM parquet.`" ~ t.path ~ "`") %}
    {% endfor %}
{% endmacro %}

