
create procedure stg.data_cleaning_stg
@end_date DATETIME2,
@start_date DATETIME2
as
delete from stg.nyctaxi_yellow where tpep_pickup_datetime < @start_date and tpep_pickup_datetime > @end_date