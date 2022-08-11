-- SELECT musicians.first_name, instruments.type
-- FROM musicians
-- JOIN musician_instruments ON (musicians.id = musician_instruments.musician_id)
-- JOIN instruments ON (musician_instruments.instrument_id = instruments.id);

SELECT musicians.first_name, musicians.last_name, instruments.type FROM musician_instruments
  JOIN instruments ON (musician_instruments.instrument_id = instruments.id)
  JOIN musicians ON (musician_instruments.musician_id = musicians.id)
  WHERE instruments.type = 'piano';