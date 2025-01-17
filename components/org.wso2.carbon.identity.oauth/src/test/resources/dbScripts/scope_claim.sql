
CREATE TABLE IF NOT EXISTS IDN_OAUTH2_SCOPE (
            SCOPE_ID INTEGER NOT NULL AUTO_INCREMENT,
            NAME VARCHAR(255) NOT NULL,
            DISPLAY_NAME VARCHAR(255) NOT NULL,
            DESCRIPTION VARCHAR(512),
            TENANT_ID INTEGER NOT NULL DEFAULT -1,
            SCOPE_TYPE VARCHAR(255),
            PRIMARY KEY (SCOPE_ID)
);

CREATE TABLE IF NOT EXISTS IDN_OIDC_SCOPE_CLAIM_MAPPING (
            ID INTEGER NOT NULL AUTO_INCREMENT,
            SCOPE_ID INTEGER,
            EXTERNAL_CLAIM_ID INTEGER,
            TENANT_ID INTEGER DEFAULT -1,
            PRIMARY KEY (SCOPE_ID,EXTERNAL_CLAIM_ID),
            FOREIGN KEY (SCOPE_ID) REFERENCES IDN_OAUTH2_SCOPE(SCOPE_ID) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS IDN_CLAIM (
  ID INTEGER NOT NULL AUTO_INCREMENT,
  DIALECT_ID INTEGER,
  CLAIM_URI VARCHAR (255) NOT NULL,
  TENANT_ID INTEGER NOT NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS IDN_CLAIM_DIALECT (
  ID INTEGER NOT NULL AUTO_INCREMENT,
  DIALECT_URI VARCHAR (255) NOT NULL,
  TENANT_ID INTEGER NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO IDN_OAUTH2_SCOPE (SCOPE_ID, NAME, DISPLAY_NAME, TENANT_ID, SCOPE_TYPE) VALUES
            (1, 'address', 'address', 1234, 'OIDC');
INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (1, 5,'address.country', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (1, 1,1, 1234);
INSERT INTO IDN_OAUTH2_SCOPE (SCOPE_ID, NAME, DISPLAY_NAME, TENANT_ID, SCOPE_TYPE) VALUES
            (2, 'openid', 'openid', 1234, 'OIDC');
INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (2, 5,'username', 1234);
INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (3, 5,'address', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (2, 2,2, 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (3, 2,3, 1234);
INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (4, 5,'email', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (4, 2,4, 1234);
INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (5, 5,'role', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (5, 2,5, 1234);
INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (6, 5,'phone_number_verified', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (6, 2,6, 1234);
INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (7, 5,'updated_at', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (7, 2,7, 1234);
INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (8, 5,'email_verified', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (8, 2,8, 1234);

INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (9, 2,1, 1234);

INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (10, 5,'http://wso2.com.division', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (10, 2,10, 1234);

INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (11, 5,'org.division', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (11, 2,11, 1234);

INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (15, 5,'division', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (15, 2,15, 1234);

INSERT INTO IDN_CLAIM (ID, DIALECT_ID, CLAIM_URI,TENANT_ID) VALUES
            (13, 5,'country', 1234);
INSERT INTO IDN_OIDC_SCOPE_CLAIM_MAPPING  (ID, SCOPE_ID, EXTERNAL_CLAIM_ID,TENANT_ID) VALUES
            (13, 2,13, 1234);

INSERT INTO IDN_CLAIM_DIALECT(ID,DIALECT_URI,TENANT_ID) VALUES (5,'http://wso2.org/oidc/claim',1234);
