/*
� �� ���� ������� � ������������ �������� ���� CustomerId, RegistrationDateTime, Name � ������� � ��������� �������� ���� CustomerId, PurchaiseDatetime, ProductName. 
�������� SQL ������, ������� ������� ����� ��������, ������� �����-���� �������� ������, �� �� �������� ������� �� ��������� �����.
*/

Select c.Name
From Customers c
Join Purchases p on c.CustomerId = p.CustomerId and ProductName = '������'
Left Join Purchases p1 on c.CustomerId = p1.CustomerId and p1.ProductName = '�������' and p1.PurchaiseDatetime > DATEADD(MONTH, -1, GETDATE())
Where p1.CustomerId is null
Group by c.Name