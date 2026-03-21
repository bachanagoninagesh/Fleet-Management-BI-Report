use FleetManagementDB;
SELECT NAME FROM sys.tables
DROP TABLE IF EXISTS FLMaintenance_info

CREATE TABLE FLMaintenance_info (
    MaintenanceID    INT,
    VehicleID        VARCHAR(20),
    WorkshopName     VARCHAR(100),
    MaintenanceType  VARCHAR(50),
    IssueCategory    VARCHAR(50),
    DowntimeHours    INT,
    MaintenanceCost  DECIMAL(10,2),
    MaintenanceDate  DATE,
    Year             INT
);


BULK INSERT FLMaintenance_info
FROM 'C:\Users\nages\Downloads\Fleet_SQL_Maintenance_2020_2022.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
SELECT * FROM FLMaintenance_info;
SELECT COUNT(*) AS TotalRecords FROM FLMaintenance_info;
select distinct(WorkshopName) into Workshop_info from FLMaintenance_info;

alter table Workshop_info 
add WorkshopID int identity(1,1) primary key;

select distinct(MaintenanceType) into Maintenance_info from FLMaintenance_info;

alter table Maintenance_info 
add MaintenanceID int identity(1,1) primary key;

alter table FLMaintenance_info
add ID int identity(1,1) primary key;

alter table FLMaintenance_info
add WorkshopID int ;
EXEC sp_pkeys 'FLMaintenance_info';
select name from sys.tables
select * from Maintenance_info;
select * from FLMaintenance_info;
select * from Workshop_info;
begin
CREATE PROCEDURE total_maintenance_cost1
AS begin
    SELECT SUM(MaintenanceCost) AS TotalMaintenanceCost
    FROM FLMaintenance_info;
END;


update FLMaintenance_info
set WorkshopID = w.WorkshopID
from FLMaintenance_info m
join Workshop_info w on m.WorkshopName = w.WorkshopName;

alter table FLMaintenance_info
add MaintenanceTypeID int ;
update FLMaintenance_info
set MaintenanceTypeID = i.MaintenanceID
from FLMaintenance_info m
join Maintenance_info i on m.MaintenanceType = i.MaintenanceType;

alter table FLMaintenance_info
add constraint FK_WorkshopID foreign key (WorkshopID) references Workshop_info(WorkshopID);
alter table FLMaintenance_info
add constraint FK_MaintenanceTypeID foreign key (MaintenanceTypeID) references Maintenance_info(MaintenanceID);

SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_CATALOG = 'FleetManagementDB';

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME LIKE 'pK%'
AND TABLE_CATALOG = 'FleetManagementDB';