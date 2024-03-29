INSERT INTO oauth_client_details (client_id, client_secret, web_server_redirect_uri, scope, access_token_validity, refresh_token_validity, resource_ids, authorized_grant_types, additional_information) VALUES ('mobile', '{bcrypt}$2a$10$hUH8Ioilj.mhKH2XhbVlFuCxZhmN8l75lPzKnQ/qz94DZ0dEqBxDu', 'http://localhost:8080/code', 'READ,WRITE', '3600', '10000', 'inventory,payment', 'authorization_code,password,refresh_token,implicit', '{}');

INSERT INTO PERMISSION (NAME) VALUES
                                  ('create_profile'),
                                  ('read_profile'),
                                  ('update_profile'),
                                  ('delete_profile');

INSERT INTO role (NAME) VALUES
                            ('ROLE_admin'),('ROLE_editor'),('ROLE_operator');

INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES
                                                         (1,1), /*create-> admin */
                                                         (2,1), /* read admin */
                                                         (3,1), /* update admin */
                                                         (4,1), /* delete admin */
                                                         (2,2),  /* read Editor */
                                                         (3,2),  /* update Editor */
                                                         (2,3);  /* read operator */
                                                         (3,2);  /* update operator */
insert into user (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked) VALUES ('1', 'nikini','{bcrypt}$2a$10$hUH8Ioilj.mhKH2XhbVlFuCxZhmN8l75lPzKnQ/qz94DZ0dEqBxDu', 'n@nikini.com', '1', '1', '1', '1');
insert into  user (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked) VALUES ('2', 'perera', '{$2a$10$.QcvQEWArnoPFXia/sODRelfjqkSwsduoCysubUQGMJl8ywtbTfza','n@nikini.com', '1', '1', '1', '1');
insert into  user (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked) VALUES ('3', 'nuwan', '{bcrypt}$2a$10$wQ8vZl3Zm3.zDSIcZEYym.bGq3fPMJXH9k.Vhudcfr6O6KQwDPSt6','k@krishantha.com', '1', '1', '1', '1');
INSERT INTO ROLE_USER (ROLE_ID, USER_ID)
VALUES
    (1, 1) /* dilhan-admin */,
    (2, 2) /* perera-editor */ ;
    (3, 3) /* nuwan-operatorr */ ;