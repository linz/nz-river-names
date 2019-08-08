.. _published_data:


Published Data
================================

The information below describes the data model for NZ River Name Lines & Polygons (pilot) for distribution to the public.

Data Model
--------------------------------

To assist you in understanding these datasets, the structure and details of the data fields is described in tables below.

Primary keys in tables are shown by a field name with bold font.



Schema: {{ schema_gen_rivers_lds["name"] }}
-------------------------------------------------------

Description: {{ schema_gen_rivers_lds["comment"] }}


{% for item in schema_tab_rivers_lds  %}
.. _table-name-{{item.table_nam}}:

Table: {{ item.table_nam }}
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Description: {{ item.table_comment }}

		{% for table in item.table_columns %}{%  for column in table %}{{ column }}{% endfor %}
		{% endfor %}



{% endfor %}

