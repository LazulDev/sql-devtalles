-- country a 	- name, continent as continent Code (codigo numerico)
-- continent b 	- name as continentName

SELECT a.name AS contryName, a.continent AS continentCode, b.name AS continentName FROM country a
FULL OUTER JOIN continent b ON a.continent = b.code
ORDER BY continentCode DESC, a.name ASC;