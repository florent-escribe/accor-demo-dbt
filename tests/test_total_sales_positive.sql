select * from {{ ref('top_hotel_sales') }} where TotalSales <= 0
