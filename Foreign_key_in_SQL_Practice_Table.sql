DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    USER_ID INT,
    STREET VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    CONSTRAINT fk_user
        FOREIGN KEY (USER_ID)
        REFERENCES user(ID) ON DELETE cascade
);

INSERT INTO addresses (USER_ID, STREET, city, state, pincode)
VALUES
(1, 'House 12, Model Town', 'Lahore', 'Punjab', '54000'),
(2, 'Street 5, Gulshan', 'Karachi', 'Sindh', '75300'),
(3, 'Main Boulevard', 'Islamabad', 'ICT', '44000'),
(4, 'Street 10, Satellite Town', 'Rawalpindi', 'Punjab', '46000'),
(5, 'Canal Road', 'Faisalabad', 'Punjab', '38000'),
(6, 'University Road', 'Peshawar', 'KPK', '25000'),
(7, 'Mall Road', 'Lahore', 'Punjab', '54000'),
(8, 'Shalimar Road', 'Multan', 'Punjab', '60000'),
(9, 'Airport Road', 'Quetta', 'Balochistan', '87300'),
(10, 'Saddar Market', 'Hyderabad', 'Sindh', '71000'),
(11, 'Iqbal Town', 'Lahore', 'Punjab', '54570'),
(12, 'PECHS Block 2', 'Karachi', 'Sindh', '75400'),
(13, 'F-10 Markaz', 'Islamabad', 'ICT', '44010'),
(14, 'People Colony', 'Faisalabad', 'Punjab', '38020'),
(15, 'Bahria Town', 'Rawalpindi', 'Punjab', '46220'),
(16, 'Hayatabad Phase 3', 'Peshawar', 'KPK', '25030'),
(17, 'Defence Phase 5', 'Lahore', 'Punjab', '54792'),
(18, 'Cantt Area', 'Multan', 'Punjab', '60010'),
(19, 'Jinnah Road', 'Quetta', 'Balochistan', '87350'),
(20, 'Clifton Block 5', 'Karachi', 'Sindh', '75600');

select * from addresses;
Select * from user;