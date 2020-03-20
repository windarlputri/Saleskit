/*
Navicat SQL Server Data Transfer

Source Server         : ANTASENA 45
Source Server Version : 140000
Source Host           : 172.100.45.5:1433
Source Database       : STG_Antasena
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 140000
File Encoding         : 65001

Date: 2020-01-06 10:52:41
*/


-- ----------------------------
-- Table structure for LMBAL_copy
-- ----------------------------
DROP TABLE [dbo].[LMBAL_copy]
GO
CREATE TABLE [dbo].[LMBAL_copy] (
[LMNOCB] decimal(28) NULL ,
[LMNOAC] decimal(28) NOT NULL ,
[LMCDFC] varchar(3) NULL ,
[LMSNAM] varchar(20) NULL ,
[LMCDTY] varchar(1) NULL ,
[LMCDST] varchar(1) NULL ,
[LMCDQU] varchar(1) NULL ,
[LMNOEX] numeric(2) NULL ,
[LMNOPD] decimal(28) NULL ,
[LMNOPP] decimal(28) NULL ,
[LMRTNM] decimal(28,6) NULL ,
[LMDTNT] decimal(28) NULL ,
[LMDTPD] decimal(28) NULL ,
[LMDTPO] decimal(28) NULL ,
[LMDTLP] decimal(28) NULL ,
[LMDTMT] decimal(28) NULL ,
[LMAMCB] decimal(28,2) NULL ,
[LMAMAL] decimal(28,5) NULL ,
[LMPDPR] decimal(28,2) NULL ,
[LMPDIN] decimal(28,2) NULL ,
[LMAMCL] decimal(28,2) NULL ,
[LMNODA] varchar(25) NULL ,
[LMBI16] varchar(1) NULL ,
[LMBI22] varchar(2) NULL ,
[LMBI62] varchar(6) NULL ,
[LMAMLD] decimal(18,2) NULL ,
[LMACI3] decimal(15,2) NULL ,
[LMCDPL] char(3) NULL ,
[LMCDU1] char(6) NULL ,
[LMDTCO] decimal(8) NULL ,
[LMDTQC] decimal(8) NULL ,
[LMAMAI] varchar(50) NULL ,
[LMAMPO] varchar(50) NULL ,
[LMUSD4] varchar(2) NULL ,
[LMDPAC] varchar(28) NULL ,
[LMNONP] decimal(18,2) NULL ,
[LMNORP] decimal(18,2) NULL ,
[LMNOTP] char(5) NULL ,
[LMMAU3] char(1) NULL ,
[LMRPAC] decimal(28) NULL ,
[LMCDRD] char(5) NULL ,
[LMBI12] char(5) NULL ,
[LMBCOF] decimal(15,2) NULL ,
[LMICOF] decimal(17,5) NULL ,
[LMLCOF] decimal(28,2) NULL ,
[LMCOOF] char(5) NULL ,
[LMAMVA] decimal(15,2) NULL ,
[LMBI36] varchar(4) NULL ,
[LMBI32] varchar(3) NULL ,
[LMAMYB] decimal(15,2) NULL ,
[LMOPCO] decimal(15,2) NULL 
)


GO

-- ----------------------------
-- Indexes structure for table LMBAL_copy
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table LMBAL_copy
-- ----------------------------
ALTER TABLE [dbo].[LMBAL_copy] ADD PRIMARY KEY ([LMNOAC])
GO
