SELECT
    Hotel,
    Country,
    SUM(Sales) AS TotalSales
FROM {{ source('hotel_sales', 'HOTEL_SALES_TABLE') }}
GROUP BY Hotel, Country
ORDER BY TotalSales DESC
LIMIT 3
