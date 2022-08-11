-- Step 1

SELECT albums.title, bands.name FROM albums
JOIN bands ON (albums.band_id = bands.id);