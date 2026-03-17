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