CREATE DATABASE CybersecurityDB;

USE CybersecurityDB;

drop database cybersecuritydb;

CREATE TABLE cl_threat (
    ThreatKey INT PRIMARY KEY,
    Attack_Type VARCHAR(50),
    Attack_Source VARCHAR(50),
    Security_Vulnerability_Type VARCHAR(100),
    Defense_Mechanism_Used VARCHAR(100),
    Threat_Security VARCHAR(20)
);

CREATE TABLE cl_context (
    ContextKey INT PRIMARY KEY,
    Country VARCHAR(50),
    Year INT,
    Target_Industry VARCHAR(100),
    Industry_Category VARCHAR(50)
);

CREATE TABLE cl_cybersecurity (
    IncidentID INT PRIMARY KEY,
    ThreatKey INT,
    ContextKey INT,
    Financial_Loss_Million DECIMAL(10,2),
    Number_of_Affected_Users BIGINT,
    Incident_Resolution_Time_Hours INT,
    Loss_Category VARCHAR(20),
    Resolution_Category VARCHAR(20),
    Resolution_Time_in_Days INT,
    Impact_Level VARCHAR(20),

    FOREIGN KEY (ThreatKey)
        REFERENCES cl_threat(ThreatKey),

    FOREIGN KEY (ContextKey)
        REFERENCES cl_context(ContextKey)
);

