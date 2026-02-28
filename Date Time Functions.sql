use intro_sql

select * from transaction_details

select orderDATEDIFF(sysdate(), order_date) as datedifference, order_date from transaction_details

select DATE_FORMAT('2017-06-15', '%Y')

select DATE_FORMAT(order_date, '%d'), order_date from transaction_details

select QUARTER((order_date), order_date from transaction_details

select SUBDATE('2017-05-15', INTERVAL 2 DAY), ADDDATE('2017-05-15', INTERVAL -2 DAY)

select SUBDATE('2017-05-15', INTERVAL -2 DAY), ADDDATE('2017-05-15', INTERVAL 2 DAY)

