
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/07/2018 23:28:29
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

IF OBJECT_ID(N'[dbo].[FK_VisitorGuest_Visitor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VisitorGuest] DROP CONSTRAINT [FK_VisitorGuest_Visitor];
GO
IF OBJECT_ID(N'[dbo].[FK_VisitorGuest_Guest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VisitorGuest] DROP CONSTRAINT [FK_VisitorGuest_Guest];
GO
IF OBJECT_ID(N'[dbo].[FK_VisitorRegistration]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Registrations] DROP CONSTRAINT [FK_VisitorRegistration];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Registrations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Registrations];
GO
IF OBJECT_ID(N'[dbo].[Visitors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Visitors];
GO
IF OBJECT_ID(N'[dbo].[Guests]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Guests];
GO
IF OBJECT_ID(N'[dbo].[VisitorGuest]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VisitorGuest];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Registrations'
CREATE TABLE [dbo].[Registrations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [VisitReason] smallint  NOT NULL,
    [VisitDate] datetime  NOT NULL,
    [CheckInDate] datetime  NOT NULL,
    [Visitor_Id] int  NOT NULL
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
    [RoomId] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'VisitorGuest'
CREATE TABLE [dbo].[VisitorGuest] (
    [Visitor_Id] int  NOT NULL,
    [Guests_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Registrations'
ALTER TABLE [dbo].[Registrations]
ADD CONSTRAINT [PK_Registrations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
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

-- Creating primary key on [Visitor_Id], [Guests_Id] in table 'VisitorGuest'
ALTER TABLE [dbo].[VisitorGuest]
ADD CONSTRAINT [PK_VisitorGuest]
    PRIMARY KEY CLUSTERED ([Visitor_Id], [Guests_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Visitor_Id] in table 'VisitorGuest'
ALTER TABLE [dbo].[VisitorGuest]
ADD CONSTRAINT [FK_VisitorGuest_Visitor]
    FOREIGN KEY ([Visitor_Id])
    REFERENCES [dbo].[Visitors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Guests_Id] in table 'VisitorGuest'
ALTER TABLE [dbo].[VisitorGuest]
ADD CONSTRAINT [FK_VisitorGuest_Guest]
    FOREIGN KEY ([Guests_Id])
    REFERENCES [dbo].[Guests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VisitorGuest_Guest'
CREATE INDEX [IX_FK_VisitorGuest_Guest]
ON [dbo].[VisitorGuest]
    ([Guests_Id]);
GO

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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------