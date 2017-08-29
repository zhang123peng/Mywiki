INSERT INTO wk_config (name, `key`, value, config_type, remark, create_time) SELECT '是否启用注册','ENABLED_REGISTER','0','system','是否启用注册：0 否/1 是',now() FROM dual WHERE NOT exists(SELECT * FROM wk_config WHERE `key` = 'ENABLED_REGISTER');
INSERT INTO wk_config (name, `key`, value, config_type, remark, create_time) SELECT '注册默认的用户角色','DEFAULT_GROUP_LEVEL','1','system','注册默认的用户角色：0 超级管理员/1 普通用户/ 2 访客',now() FROM dual WHERE NOT exists(SELECT * FROM wk_config WHERE `key` = 'DEFAULT_GROUP_LEVEL');
