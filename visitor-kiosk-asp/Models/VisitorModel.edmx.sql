
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/07/2018 11:36:16
-- Generated from EDMX file: C:\Users\contactjorge\source\repos\visitor-kiosk-asp\visitor-kiosk-asp\Models\VisitorModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [VisitorManagementSystem];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Registrations'
CREATE TABLE [dbo].[Registrations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RoomId] smallint  NOT NULL,
    [VisitReason] nvarchar(max)  NOT NULL,
    [VisitDate] datetime  NOT NULL,
    [CheckInDate] datetime  NOT NULL,
    [Visitor_Id] int  NOT NULL,
    [Guest_Id] int  NOT NULL
);
GO

-- Creating table 'Visitors'
CREATE TABLE [dbo].[Visitors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [DOB] datetime  NOT NULL
);
GO

-- Creating table 'Guests'
CREATE TABLE [dbo].[Guests] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id], [RoomId] in table 'Registrations'
ALTER TABLE [dbo].[Registrations]
ADD CONSTRAINT [PK_Registrations]
    PRIMARY KEY CLUSTERED ([Id], [RoomId] ASC);
GO

-- Creating primary key on [Id] in table 'Visitors'
ALTER TABLE [dbo].[Visitors]
ADD CONSTRAINT [PK_Visitors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Guests'
ALTER TABLE [dbo].[Guests]
ADD CONSTRAINT [PK_Guests]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Visitor_Id] in table 'Registrations'
ALTER TABLE [dbo].[Registrations]
ADD CONSTRAINT [FK_VisitorRegistration]
    FOREIGN KEY ([Visitor_Id])
    REFERENCES [dbo].[Visitors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VisitorRegistration'
CREATE INDEX [IX_FK_VisitorRegistration]
ON [dbo].[Registrations]
    ([Visitor_Id]);
GO

-- Creating foreign key on [Guest_Id] in table 'Registrations'
ALTER TABLE [dbo].[Registrations]
ADD CONSTRAINT [FK_GuestRegistration]
    FOREIGN KEY ([Guest_Id])
    REFERENCES [dbo].[Guests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GuestRegistration'
CREATE INDEX [IX_FK_GuestRegistration]
ON [dbo].[Registrations]
    ([Guest_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------