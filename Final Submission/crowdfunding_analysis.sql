-- Verify the table creation by running a SELECT statement for each table.
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;


-- Check foreign keys with join
SELECT * 
FROM campaign
INNER JOIN category 
	ON category.category_id = campaign.category_id
INNER JOIN subcategory 
	ON subcategory.subcategory_id = campaign.subcategory_id
INNER JOIN contacts
	ON contacts.contact_id = campaign.contact_id
;