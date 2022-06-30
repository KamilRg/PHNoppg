SELECT Item.Id, Item.Name, Category.Name as Category
FROM Item  
JOIN Category ON Item.Category = Category.Id

--SELECT *
--FROM Item
--JOIN Category ON 1=1