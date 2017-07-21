/*
¬ Ѕƒ есть таблица с регистрацией клиентов вида CustomerId, RegistrationDateTime, Name и таблица с покупками клиентов вида CustomerId, PurchaiseDatetime, ProductName. 
Ќапишите SQL запрос, который выберет имена клиентов, которые когда-либо покупали молоко, но не покупали сметану за последний мес€ц.
*/

Select c.Name
From Customers c
Join Purchases p on c.CustomerId = p.CustomerId and ProductName = 'молоко'
Left Join Purchases p1 on c.CustomerId = p1.CustomerId and p1.ProductName = 'сметана' and p1.PurchaiseDatetime > DATEADD(MONTH, -1, GETDATE())
Where p1.CustomerId is null
Group by c.Name