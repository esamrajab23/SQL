
SELECT * 
FROM PortfolioProject..[dbo.NashvileHousing]

SELECT SaleDateConverted, CONVERT (date ,SaleDateConverted)
FROM PortfolioProject..[dbo.NashvileHousing] 

UPDATE [dbo.NashvileHousing]
SET SaleDate = CONVERT (date,SaleDate)

ALTER TABLE PortfolioProject..[dbo.NashvileHousing]
Add SaleDateConverted Date;

UPDATE [dbo.NashvileHousing]
SET SaleDateConverted = CONVERT (date,SaleDate)


SELECT PropertyAddress
FROM PortfolioProject..[dbo.NashvileHousing]
SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL (a.PropertyAddress, b.PropertyAddress)
FROM PortfolioProject..[dbo.NashvileHousing] a
JOIN PortfolioProject..[dbo.NashvileHousing] b
   on a.ParcelID = b.ParcelID
    AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress is Null

UPDATE a
SET PropertyAddress = ISNULL (a.PropertyAddress, b.PropertyAddress)
FROM PortfolioProject..[dbo.NashvileHousing] a
JOIN PortfolioProject..[dbo.NashvileHousing] b
   on a.ParcelID = b.ParcelID
    AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress is Null


SELECT PropertyAddress
FROM PortfolioProject..[dbo.NashvileHousing]
--ORDER BY ParcelID