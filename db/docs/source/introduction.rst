.. |br| raw:: html

   <br/>


.. _introduction:

Introduction
=============================

Purpose
-----------------------------

This document provides detailed metadata (data dictionary) for the NZ River Name Lines and Polygons (pilot) independent datasets published on the LINZ Data Service (LDS) as:

| **NZ River Name Lines (Pilot)**
| https://data.linz.govt.nz/layer/103632
| and
| **NZ River Name Polygons (Pilot)**
| https://data.linz.govt.nz/layer/103631

Background
----------------------------
These datasets provide river name lines and polygons for mainland New Zealand. It is part of a pilot to understand the benefit of combining river names and location, and making these openly available through the LDS.

**How this data can be used**

The NZ River Name Lines (Pilot) dataset together with the NZ River Name Polygons (Pilot) dataset, are the first openly available datasets with NZ river names attributed to geometry features (lines and polygons). This data can be used for searching for a named river and zooming to its extents, extracting geometries of a named river, creating digital cartographic products displaying river names, and analysing other features against named rivers (e.g. identifying buildings or properties within a specified distance of a particular named river). The geometries of these pilot datasets are derived from NZ Topo50 river centrelines, canal centrelines, drain centrelines, canal polygons, and river polygons.

The river names and extents in these datasets are based on the cartographic text shown on NZ Topo50 maps as of December 2018, and are an approximation and should not be taken as official. Further details on the naming extents methodology is explained below.

**Important Notice**

•	Official geographic names as listed in the `New Zealand Gazetteer of place names <https://www.linz.govt.nz/regulatory/place-names/find-place-name/new-zealand-gazetteer-place-names>`_ must be used in all official documents as per the New Zealand Geographic Board (Ngā Pou Taunaha o Aotearoa) Act 2008.
•	This pilot dataset is unlikely to be updated, however `Feedback`_ below will be used for future enhancements to LINZ river datasets.


Description
---------------------------

The purpose of these River Name Lines (pilot) and River Name Polygons (pilot) datasets is to understand the benefit of having river names attributed to river geometry features and making this openly available through the LDS.

The new **NZ River Name Lines (Pilot)** dataset consists of the combined geometry features found in three separate Topo50 datasets:

| `NZ Canal Centrelines (Topo, 1:50k) <https://data.linz.govt.nz/layer/50250>`_
| `NZ Drain Centrelines (Topo, 1:50k) <https://data.linz.govt.nz/layer/50262>`_
| `NZ River Centrelines (Topo, 1:50k) <https://data.linz.govt.nz/layer/50327>`_

but with names applied as attributes for named features.
The Topo50 river centrelines, drain centrelines, and canal centrelines datasets do not currently contain river names as an attribute, and river names are instead held in a separate `Geographic Names <https://data.linz.govt.nz/layer/50280/>`_ point dataset (Image 1 example). The new NZ River Name Lines (Pilot) dataset does contain river names as an attribute of each river feature (Image 2 example).

+------------------------------------------------------------------------+
| .. figure:: _static/image_1_topo50_points.jpg                          |
|    :scale: 50%                                                         |
|    :alt: topo50 point river names                                      |
|                                                                        |
|    **Image 1: Example of Topo50 river names as points.**               |
|                                                                        |
+------------------------------------------------------------------------+
| .. figure:: _static/image_2_named_segments.jpg                         |
|    :scale: 50%                                                         |
|    :alt: river names as geometry attributes                            |
|                                                                        |
|    **Image 2: Example of new geometry attributes.** |br|               |
|    **River features are split where two feature join**                 |
|    **(marked) and each named feature  has a name attribute.**          |
|                                                                        |
+------------------------------------------------------------------------+


In a similar manner, the new **NZ River Name Polygons (Pilot)** dataset consists of the combined geometry features found in two Topo50 datasets:

| `NZ Canal Polygons (Topo, 1:50k) <https://data.linz.govt.nz/layer/50251>`_
| `NZ River Polygons (Topo, 1:50k) <https://data.linz.govt.nz/layer/50328>`_

but with names applied as attributes for named features.
The Topo50 river polygons and canal polygons datasets also do not currently contain river names as an attribute, and river names are instead held in a separate `Geographic Names`_ point dataset (Image 3 example). The new NZ River Name Polygons (Pilot) dataset does contain river names as an attribute of each river feature, and the river polygons geometries were split where differently named river polygons are joined (Image 4 exmaple).

+-------------------------------------------------------------------+
| .. figure:: _static/image_3_topo50_polygons.png                   |
|    :scale: 30%                                                    |
|    :alt: topo50 point river name polygons                         |
|                                                                   |
|    **Image 3: Example of Topo50 named river polygons as points.** |
|                                                                   |
+-------------------------------------------------------------------+
| .. figure:: _static/image_4_named_polygons.png                    |
|    :scale: 30%                                                    |
|    :alt: river names as geometry attributes                       |
|                                                                   |
|    **Image 4: Example of new river names as geometry attributes.**|
|                                                                   |
+-------------------------------------------------------------------+

|br|



Naming Extents Methodology
-----------------------------------------------

Named river features in these pilot datasets were derived from the position of cartographic text shown on NZ Topo50 maps. These river feature name attributes were matched to those described in the `NZ Gazetteer <https://gazetteer.linz.govt.nz>`_ where extents were defined as of December 2018. This can be illustrated in Image 5 below, where the NZ Gazetteer shows an `extent for Māhina-a-rangi Stream <https://gazetteer.linz.govt.nz/place/54504>`_, and the new NZ River Name Line (Pilot) dataset has matching line feature attributes in Image 6.

+-------------------------------------------------------------------------------------+
| .. figure:: _static/image_5_gazetteer.png                                           |
|    :scale: 100%                                                                     |
|    :alt: nz gazetteer named extent                                                  |
|                                                                                     |
|    **Image 5: Example of named river extents in NZ Gazetteer.**                     |
|                                                                                     |
+-------------------------------------------------------------------------------------+
| .. figure:: _static/image_6_stream2.png                                             |
|    :scale: 100%                                                                     |
|    :alt: Example of NZ River Name matching Gazetteer attribute                      |
|                                                                                     |
|    **Image 6: Example of NZ River Name line attribute matching the NZ Gazetteer.**  |
|                                                                                     |
+-------------------------------------------------------------------------------------+

For rivers where the NZ Gazetteer has no name extent defined, river features were named upstream along the longest upstream tributary. In the Topo50 map series, river names are stored as attributes of named point data (Image 7). Image 8 shows how NZ River Name lines (Pilot) features were attributed both downstream, and upstream to the longest tributary. In some cases, upstream feature extents were unnamed if they were significantly long in distance (eg. 10km) from the Topo50 cartographic text and it was not obvious they should be named.

+-------------------------------------------------------------------------------------+
| .. figure:: _static/image_7_topo50__points.png                                      |
|    :scale: 90%                                                                      |
|    :alt: named features upstream                                                    |
|                                                                                     |
|    **Image 7: Example of river names held as point data attributes in the Topo50**  |
|    **map series.**                                                                  |
|                                                                                     |
+-------------------------------------------------------------------------------------+
| .. figure:: _static/image_8_upstream__names.png                                     |
|    :scale: 90%                                                                      |
|    :alt: named features upstream                                                    |
|                                                                                     |
|    **Image 8: Example of river features attributed both downstream and upstream**   |
|    **to the longest tributary.**                                                    |
+-------------------------------------------------------------------------------------+








Related data
-----------------------------------------------

The Topo50 datasets available on the LDS are continually updated. In addition, named water features exist across multiple feature types. The NZ River Name Lines (Pilot) and NZ River Name Polygons (Pilot) described here exist as a snapshot of names and geometry as they existed up until December 2018. To create a complete visualisation of named water features for the country for this period, they should be used with other Topo50 datasets listed below.

To illustrate the importance of using these related water features for visualisation, image 9 shows several missing water features. Adding these related and named lake and lagoon features creates a more complete picture of the river system (image 10).

+---------------------------------------------------------------------------------------+
| .. figure:: _static/image_9_missing_related.png                                       |
|    :scale: 30%                                                                        |
|    :alt: missing lake polygon                                                         |
|                                                                                       |
|    **Image 9: Example of river visualisation without related data.**                  |
|                                                                                       |
+---------------------------------------------------------------------------------------+
| .. figure:: _static/image_10_missing_related.png                                      |
|    :scale: 30%                                                                        |
|    :alt: NZ Lake polygons provide missing links in a river system                     |
|                                                                                       |
|    **Image 10: Example of visualisation including related lake and lagoon polygons.** |
|                                                                                       |
+---------------------------------------------------------------------------------------+


To download each of the matching time period snapshots for the related Topo50 datasets below, replace the section "**<your key>**" in the links below with your appropriate API key from your LDS account. Use the link to download a CSV file of the data, or use the Web Feature Service (WFS) url to obtain a live link to the data in your geospatial software of choice.



**NZ Coastlines (Topo, 1:50k)**

- WFS: :wfs:`http://data.linz.govt.nz/services;key=<your-key>/wfs/layer-50258-changeset?SERVICE=WFS&REQUEST=GetCapabilities&viewparams=from:2011-05-22;to:2018-12-13`

- CSV: :csv:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50258-changeset?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeNames=layer-50258-changeset&viewparams=from:2011-05-22;to:2018-12-13&outputFormat=csv`


**NZ Island Polygons (Topo, 1:50k)**

- WFS: :wfs:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50288-changeset?SERVICE=WFS&REQUEST=GetCapabilities&viewparams=from:2011-05-22;to:2018-12-13`

- CSV: :csv:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50288-changeset?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeNames=layer-50288-changeset&viewparams=from:2011-05-22;to:2018-12-13&outputFormat=csv`


**NZ Lagoon Polygons (Topo, 1:50k)**

- WFS: :wfs:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50292-changeset?SERVICE=WFS&REQUEST=GetCapabilities&viewparams=from:2011-05-22;to:2018-12-13`

- CSV: :csv:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50292-changeset?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeNames=layer-50292-changeset&viewparams=from:2011-05-22;to:2018-12-13&outputFormat=csv`


**NZ Lake Polygons (Topo, 1:50k)**

- WFS: :wfs:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50293-changeset?SERVICE=WFS&REQUEST=GetCapabilities&viewparams=from:2011-05-22;to:2018-12-13`

- CSV: :csv:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50293-changeset?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeNames=layer-50293-changeset&viewparams=from:2011-05-22;to:2018-12-13&outputFormat=csv`


**NZ Pond Polygons (Topo, 1:50k)**

- WFS: :wfs:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50310-changeset?SERVICE=WFS&REQUEST=GetCapabilities&viewparams=from:2011-05-22;to:2018-12-13`

- CSV: :csv:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50310-changeset?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeNames=layer-50310-changeset&viewparams=from:2011-05-22;to:2018-12-13&outputFormat=csv`


**NZ Swamp Polygons (Topo, 1:50k)**

- WFS: :wfs:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50359-changeset?SERVICE=WFS&REQUEST=GetCapabilities&viewparams=from:2011-05-22;to:2018-12-13`

- CSV: :csv:`https://data.linz.govt.nz/services;key=<your key>/wfs/layer-50359-changeset?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeNames=layer-50359-changeset&viewparams=from:2011-05-22;to:2018-12-13&outputFormat=csv`



Feedback
---------------------------

**We want your feedback**

This pilot dataset is unlikely to be updated, however feedback will be used for future enhancements to LINZ river datasets. To provide your feedback on these pilot datasets, please complete our short survey here: https://landinformationnz.au1.qualtrics.com/jfe/form/SV_2gYFwbXfDY1jm9n


Accuracy Specification
---------------------------

This dataset was derived from NZ Topo50 datasets which were captured at a scale suitable for 1:50,000 maps with a spatial accuracy of +/- 22 metres. Some features may be more accurate where they have been realigned recently.


Formats
---------------------------

Textual data uses UTF-8 character encoding.
Data for the pilot datasets decribed in this data dictionary can be downloaded in CSV, Shapefile, Geopackage/SQlite, Geodatabase, and MapInfo Tab, DWG and KML formats, or obtained through a Web Feature Service (WFS) format.

Matching point in time related data can be downloaded in CSV format, or obtained through a web feature service (WFS) format.

The source geometry of all spatial data uses NZGD2000 / New Zealand Transverse Mercator 2000 (EPSG 2193) as the spatial reference system.





