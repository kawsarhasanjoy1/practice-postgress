SELECT * FROM employes;

EXPLAIN ANALYSE
SELECT * FROM employes WHERE department_name = 'HR';
EXPLAIN ANALYSE
SELECT * FROM employes WHERE employe_name = 'Kawsar Hasan';
CREATE INDEX create_index_employe ON employes(employe_name);