Overlay: true

[[resource]]

### GeoJSON Feature Collection

The response can alternatively be requested as a GeoJSON feature collection using the HTTP header `Accept: application/geo+json`.  In this case, no metadata or props fields are returned.  The non geometry fields from the `data` array above are returned within the `properties` object of the associated GeoJSON feature.

```json
{
    "type": "FeatureCollection",
    "features": [
        {
            "type":  "Feature",
            "properties": {
                "id": "string",
                "name": "string"
            },
            "geometry": {
                "type": "Poylgon | Multipolygon",
                "coordinates": [ "number" ]
            }
        }
    ]
}
```