###########################################################################################################
###########################################################################################################
#################################                         TEAM EL 7ARIFA                      ###########################################
################   AHMED WAEL -- HAZEM AMR -- OMAR AHMED ABDELHAMEED -- ALI NADER -- SAMEH SHAHIN -- MAHMOUD ALAA   ################
###########################################################################################################
###########################################################################################################                            


-- THE DATABASE
                                                                                                                           
CREATE DATABASE IF NOT EXISTS depi;
USE depi;



-- DROP TABLE Registration_form;

-- THE TABLE

CREATE TABLE IF NOT EXISTS Registration_Form (

    -- TABLE STRUCTURE
    
    id INT PRIMARY KEY AUTO_INCREMENT,
    Arabic_name VARCHAR(100) NOT NULL,
    English_name VARCHAR(100) NOT NULL,
    Gender CHAR(1) NOT NULL,
    Birth_date DATE NOT NULL,
    National_ID CHAR(14) NOT NULL UNIQUE,
    Governorate VARCHAR(25) NOT NULL,
    City VARCHAR(25) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(11) NOT NULL,
    linked_in_Profile VARCHAR(255) NOT NULL UNIQUE,  
    University VARCHAR(100) NOT NULL,
    faculty VARCHAR(100) NOT NULL,
    major VARCHAR(100) NOT NULL,
    GPA VARCHAR(15) NOT NULL,
    Training_location VARCHAR(25) NOT NULL,

    -- CONSTRAINTS
    
    CHECK (Arabic_name REGEXP '^[ء-ي]+ [ء-ي]+ [ء-ي]+ [ء-ي]+$'),
    CHECK (English_name REGEXP '^[A-Za-z]+ [A-Za-z]+ [A-Za-z]+ [A-Za-z]+$'),
    CHECK (Gender REGEXP '[MFmf]'),
    CHECK (Birth_date BETWEEN '1989-01-01' AND '2006-12-31'),
    CHECK (National_ID REGEXP '^(2[89-99]|30[0-6])(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])(0[1-4]|[12][1-9]|3[1-5]|88)[0-9]{5}$'),
    CHECK (Governorate REGEXP '^[ء-ي]+( [ء-ي]+)*$'),
    CHECK (City REGEXP '^[ء-ي]+( [ء-ي]+)*$'),
    CHECK (Address REGEXP '^[ء-ي0-9 ]+$'),
    CHECK (Email REGEXP '^[A-Za-z][A-Za-z0-9._%+-]*@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$'),
    CHECK (phone_number REGEXP '^(01)([0-2]|5)[0-9]{8}$'),
    CHECK (linked_in_Profile REGEXP '^(https://www.linkedin.com/in/)[A-Za-z0-9&*$#@!%^_+-?/.,]+$'),
    CHECK (University REGEXP '^[ء-ي]+( [ء-ي]+)*$'),
    CHECK (faculty REGEXP '^[ء-ي]+( [ء-ي]+)*$'),
    CHECK (major REGEXP '^[ء-ي]+( [ء-ي]+)*$'),
    CHECK (GPA REGEXP '^(جيد جدا|جيد|مقبول|امتياز|ضعيف|ضعيف جدا)$'),
    CHECK (Training_location REGEXP '^[ء-ي]+( [ء-ي]+)*$')
);

-- DEMO 

INSERT INTO Registration_Form (Arabic_name, English_name, Gender, Birth_date, National_ID, Governorate, City, Address, Email, phone_number, linked_in_Profile, University, faculty, major, GPA, Training_location) 
VALUES 
('احمد وائل محمد ابوالوفا', 'Ahmed Wael Mohamed Abuelwafa', 'M', '2003-11-10', '30311100100215', 'الجيزه', 'بولاق الدكرور', 'العشرين فيصل', 'ahmedwaelabuelwafa@gmail.com', '01285471458', 'https://www.linkedin.com/in/%E2%80%AAahmed-wael%E2%80%AC%E2%80%8F-8899b1273?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app', 'الاكادمية الدوليه للهندسه و علوم الاعلام', 'كليه تجاره', 'اداره مؤسسات اعلاميه', 'جيد جدا', 'الجيزه');

SELECT * FROM Registration_Form;
