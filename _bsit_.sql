-- Active: 1728580870004@@127.0.0.1@3306@_bsit_
---Refferentialintegrity ---
ALTER TABLE EMPLOYEE ADD FOREIGN KEY (DID) REFERENCES DEPT(DID);