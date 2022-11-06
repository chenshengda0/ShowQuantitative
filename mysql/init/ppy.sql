-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： 8.218.67.15
-- 生成日期： 2022-11-05 08:00:08
-- 服务器版本： 5.7.37-log
-- PHP 版本： 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `ppy`
--
CREATE DATABASE IF NOT EXISTS `ppy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ppy`;

-- --------------------------------------------------------

--
-- 表的结构 `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE IF NOT EXISTS `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

--
-- 转存表中的数据 `gen_table`
--

INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, 'wab_base_config', '基本配置', NULL, NULL, 'WabBaseConfig', 'crud', 'com.ruoyi.system', 'system', 'config', '基本配置', 'ruoyi', '0', '/', NULL, 'admin', '2022-10-20 10:10:37', '', NULL, NULL),
(2, 'wab_commission_config', '佣金配置表', NULL, NULL, 'WabCommissionConfig', 'crud', 'com.ruoyi.system', 'system', 'config', '佣金配置', 'ruoyi', '0', '/', NULL, 'admin', '2022-10-20 10:10:37', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE IF NOT EXISTS `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

--
-- 转存表中的数据 `gen_table_column`
--

INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
(1, '1', 'id', NULL, 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-10-20 10:10:37', '', NULL),
(2, '1', 'name', '名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-10-20 10:10:37', '', NULL),
(3, '1', 'key', NULL, 'varchar(255)', 'String', 'key', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-10-20 10:10:37', '', NULL),
(4, '1', 'value', NULL, 'varchar(255)', 'String', 'value', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-10-20 10:10:37', '', NULL),
(5, '2', 'id', NULL, 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-10-20 10:10:37', '', NULL),
(6, '2', 'name', '几级', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-10-20 10:10:37', '', NULL),
(7, '2', 'commission', '佣金数量(单位u)', 'decimal(10,2)', 'BigDecimal', 'commission', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-10-20 10:10:37', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Blob类型的触发器表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE IF NOT EXISTS `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日历信息表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cron类型的触发器表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(20) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(20) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='已触发的触发器表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE IF NOT EXISTS `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='任务详细信息表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE IF NOT EXISTS `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存储的悲观锁信息表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE IF NOT EXISTS `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='暂停的触发器表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE IF NOT EXISTS `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(20) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(20) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调度器状态表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(20) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(20) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(20) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='简单触发器的信息表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步机制的行锁表';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE IF NOT EXISTS `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(20) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(20) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(20) NOT NULL COMMENT '开始时间',
  `end_time` bigint(20) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(6) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='触发器详细信息表';

-- --------------------------------------------------------

--
-- 表的结构 `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE IF NOT EXISTS `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

--
-- 转存表中的数据 `sys_config`
--

INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-10-19 15:57:11', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
(2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-10-19 15:57:11', '', NULL, '初始化密码 123456'),
(3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-10-19 15:57:11', '', NULL, '深色主题theme-dark，浅色主题theme-light'),
(4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2022-10-19 15:57:11', '', NULL, '是否开启验证码功能（true开启，false关闭）'),
(5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-10-19 15:57:11', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- --------------------------------------------------------

--
-- 表的结构 `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE IF NOT EXISTS `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

--
-- 转存表中的数据 `sys_dept`
--

INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
(100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL),
(109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE IF NOT EXISTS `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

--
-- 转存表中的数据 `sys_dict_data`
--

INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '性别男'),
(2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '性别女'),
(3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '性别未知'),
(4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '显示菜单'),
(5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '隐藏菜单'),
(6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '正常状态'),
(7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '停用状态'),
(8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '正常状态'),
(9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '停用状态'),
(10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '默认分组'),
(11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '系统分组'),
(12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '系统默认是'),
(13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '系统默认否'),
(14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '通知'),
(15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '公告'),
(16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '正常状态'),
(17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '关闭状态'),
(18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '其他操作'),
(19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '新增操作'),
(20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '修改操作'),
(21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '删除操作'),
(22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '授权操作'),
(23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '导出操作'),
(24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '导入操作'),
(25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '强退操作'),
(26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '生成操作'),
(27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '清空操作'),
(28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '正常状态'),
(29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '停用状态');

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE IF NOT EXISTS `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

--
-- 转存表中的数据 `sys_dict_type`
--

INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '用户性别列表'),
(2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '菜单状态列表'),
(3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '系统开关列表'),
(4, '任务状态', 'sys_job_status', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '任务状态列表'),
(5, '任务分组', 'sys_job_group', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '任务分组列表'),
(6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '系统是否列表'),
(7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '通知类型列表'),
(8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '通知状态列表'),
(9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '操作类型列表'),
(10, '系统状态', 'sys_common_status', '0', 'admin', '2022-10-19 15:57:11', '', NULL, '登录状态列表');

-- --------------------------------------------------------

--
-- 表的结构 `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE IF NOT EXISTS `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

--
-- 转存表中的数据 `sys_job`
--

INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-10-19 15:57:11', '', NULL, ''),
(2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-10-19 15:57:11', '', NULL, ''),
(3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-10-19 15:57:11', '', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE IF NOT EXISTS `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- --------------------------------------------------------

--
-- 表的结构 `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE IF NOT EXISTS `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

--
-- 转存表中的数据 `sys_logininfor`
--

INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES
(100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-20 09:03:46'),
(101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-20 09:50:02'),
(102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-20 14:59:33'),
(103, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-10-20 16:22:30'),
(104, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', NULL, '2022-10-20 16:23:32'),
(105, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-20 16:27:33'),
(106, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-20 16:34:36'),
(107, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-20 16:35:59'),
(108, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-20 16:36:03'),
(109, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-20 17:08:55'),
(110, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-20 17:20:59'),
(111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-20 17:29:50'),
(112, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-20 17:33:40'),
(113, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-20 17:34:06'),
(114, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-20 17:34:49'),
(115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-21 09:08:42'),
(116, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:21:19'),
(117, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 15:22:18'),
(118, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:26:39'),
(119, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:27:45'),
(120, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 15:28:06'),
(121, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码错误', '2022-10-21 15:28:31'),
(122, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:29:55'),
(123, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 15:36:49'),
(124, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 15:36:53'),
(125, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 15:36:54'),
(126, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 15:36:54'),
(127, '17354380672', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 15:37:21'),
(128, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:43:38'),
(129, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:44:09'),
(130, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:46:53'),
(131, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:47:17'),
(132, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:49:10'),
(133, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:49:45'),
(134, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:50:18'),
(135, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:53:49'),
(136, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:55:06'),
(137, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:55:59'),
(138, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 15:57:08'),
(139, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 16:04:30'),
(140, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 16:12:38'),
(141, '{\"name\":\"admin\",\"userType\":\"admin\"}', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2022-10-21 16:16:27'),
(142, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-21 16:16:27'),
(143, '{\"name\":\"admin\",\"userType\":\"admin\"}', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2022-10-21 16:16:32'),
(144, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-21 16:16:32'),
(145, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-21 16:16:32'),
(146, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-21 16:16:35'),
(147, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 16:19:57'),
(148, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 16:21:55'),
(149, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 16:23:04'),
(150, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 16:24:05'),
(151, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 16:26:48'),
(152, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 16:27:02'),
(153, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 17:21:11'),
(154, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-21 17:23:08'),
(155, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 17:23:44'),
(156, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:24:14'),
(157, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:24:39'),
(158, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:24:55'),
(159, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:24:56'),
(160, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:25:20'),
(161, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:25:21'),
(162, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:27:31'),
(163, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:27:44'),
(164, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:27:45'),
(165, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:27:46'),
(166, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-21 17:27:46'),
(167, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 17:30:01'),
(168, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码错误', '2022-10-21 17:30:22'),
(169, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码错误', '2022-10-21 17:30:23'),
(170, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码错误', '2022-10-21 17:30:43'),
(171, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-21 19:31:38'),
(172, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-22 09:20:44'),
(173, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-22 09:51:21'),
(174, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-22 10:35:46'),
(175, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-22 10:44:08'),
(176, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-22 13:42:51'),
(177, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已过期', '2022-10-22 13:44:50'),
(178, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-22 13:45:28'),
(179, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-22 13:45:32'),
(180, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-22 13:45:33'),
(181, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-22 13:45:39'),
(182, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2022-10-22 13:45:53'),
(183, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-22 13:47:04'),
(184, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-22 15:36:56'),
(185, '15118165647', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '登录用户：15118165647 不存在', '2022-10-22 23:41:04'),
(186, '17354380671', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-22 23:41:48'),
(187, '17354380671', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-22 23:41:56'),
(188, '17354380671', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-22 23:42:02'),
(189, '17354380671', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-22 23:46:46'),
(190, '17354380671', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-22 23:47:09'),
(191, '17354380671', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-22 23:47:49'),
(192, '17354380671', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-23 08:32:43'),
(193, '17154380671', '122.238.196.139', 'XX XX', 'Unknown', 'Unknown', '1', '登录用户：17154380671 不存在', '2022-10-23 09:26:43'),
(194, '17154380671', '122.238.196.139', 'XX XX', 'Unknown', 'Unknown', '1', '登录用户：17154380671 不存在', '2022-10-23 09:40:31'),
(195, '17154380671', '122.238.196.139', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-23 09:41:37'),
(196, '18382440667', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-23 09:53:02'),
(197, '18382440667', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-23 10:15:16'),
(198, '18382440667', '219.134.171.218', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-23 21:58:25'),
(199, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 09:00:45'),
(200, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 11:10:33'),
(201, '17354380671', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 11:10:41'),
(202, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 11:11:33'),
(203, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 14:30:17'),
(204, '17154380671', '122.238.169.248', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-24 15:30:47'),
(205, '17354380671', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-24 15:48:52'),
(206, '17354380671', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 15:48:57'),
(207, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 15:50:35'),
(208, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 18:45:50'),
(209, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 19:38:36'),
(210, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 21:11:38'),
(211, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 22:26:38'),
(212, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-24 22:37:15'),
(213, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 22:37:20'),
(214, '18101390314', '14.150.220.19', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 22:38:48'),
(215, '17354280671', '122.238.182.25', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '登录用户：17354280671 不存在', '2022-10-24 22:39:46'),
(216, '17354380671', '122.238.182.25', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-24 22:39:53'),
(217, '17354380671', '122.238.182.25', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-10-24 22:39:54'),
(218, '17354380671', '122.238.182.25', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 22:40:01'),
(219, '18670872979', '113.118.224.249', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 22:42:45'),
(220, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-24 23:11:56'),
(221, '18382440667', '122.238.182.25', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-24 23:18:06'),
(222, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 00:22:47'),
(223, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 00:23:21'),
(224, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 00:28:05'),
(225, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 09:02:08'),
(226, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 09:13:10'),
(227, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 09:54:31'),
(228, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 10:36:10'),
(229, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 10:36:14'),
(230, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 10:36:26'),
(231, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 10:36:58'),
(232, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 10:37:10'),
(233, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 10:38:30'),
(234, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 10:38:52'),
(235, '18382440667', '122.238.169.248', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 10:41:03'),
(236, '18382440667', '119.122.88.180', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-10-25 10:41:07'),
(237, '18382440667', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 10:48:07'),
(238, '18382440667', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '登录用户：18382440667 不存在', '2022-10-25 11:27:01'),
(239, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 11:27:11'),
(240, '18382440667', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 14:19:59'),
(241, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 15:05:26'),
(242, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 16:26:45'),
(243, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 16:37:46'),
(244, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 17:56:26'),
(245, '18382440667', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 17:58:14'),
(246, '18382440667', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 17:58:18'),
(247, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-25 19:54:56'),
(248, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 20:08:30'),
(249, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 20:09:36'),
(250, '17354380672', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 20:42:16'),
(251, '18382440667', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 21:13:23'),
(252, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 21:51:23'),
(253, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 21:51:56'),
(254, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-25 22:23:00'),
(255, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-26 09:14:24'),
(256, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-26 11:12:35'),
(257, '17354380671', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-10-26 13:55:03'),
(258, '18322@qq.com', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '登录用户：18322@qq.com 不存在', '2022-10-26 14:35:56'),
(259, '18322@qq.com', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '登录用户：18322@qq.com 不存在', '2022-10-26 14:39:26'),
(260, '18322@qq.com', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '登录用户：18322@qq.com 不存在', '2022-10-26 14:40:00'),
(261, '18322@qq.com', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '登录用户：18322@qq.com 不存在', '2022-10-26 14:40:01'),
(262, '18322@qq.com', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '登录用户：18322@qq.com 不存在', '2022-10-26 14:40:20'),
(263, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-27 09:05:36'),
(264, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-27 12:44:57'),
(265, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-27 15:04:06'),
(266, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-27 18:21:51'),
(267, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-27 18:21:55'),
(268, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-10-27 18:42:32'),
(269, 'admin001', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-27 18:42:40'),
(270, 'admin001', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-10-27 18:42:54'),
(271, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-27 18:42:57'),
(272, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-10-27 18:45:48'),
(273, 'admin001', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-27 18:45:59'),
(274, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-28 10:28:51'),
(275, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-28 11:58:45'),
(276, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-28 13:48:27'),
(277, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-28 14:31:48'),
(278, 'admin001', '49.237.5.133', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-28 14:49:57'),
(279, 'admin001', '49.237.5.133', ' ', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-28 17:11:32'),
(280, 'admin001', '49.237.5.133', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-28 17:11:40'),
(281, 'admin001', '49.237.5.133', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-28 18:21:20'),
(282, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-28 18:37:58'),
(283, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-28 19:44:06'),
(284, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-28 19:44:09'),
(285, 'admin001', '49.237.34.132', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-28 20:41:59'),
(286, 'admin', '122.238.169.90', '浙江省 嘉兴市', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-28 21:19:14'),
(287, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-10-28 21:23:35'),
(288, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-28 21:23:38'),
(289, 'admin001', '49.237.34.132', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-28 21:51:08'),
(290, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 00:21:46'),
(291, 'admin001', '49.237.6.116', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-29 11:34:56'),
(292, 'admin001', '49.237.6.116', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-29 14:25:50'),
(293, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 14:53:06'),
(294, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 15:46:17'),
(295, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-10-29 16:25:52'),
(296, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 16:25:58'),
(297, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-29 19:09:35'),
(298, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 19:09:39'),
(299, 'admin001', '49.237.43.26', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-29 19:12:46'),
(300, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 19:47:57'),
(301, 'admin001', '49.237.43.26', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-29 21:52:19'),
(302, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 22:07:44'),
(303, 'admin001', '49.237.43.26', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-29 22:32:41'),
(304, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-10-29 22:44:58'),
(305, 'admin001', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 22:45:07'),
(306, 'admin001', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-10-29 22:50:45'),
(307, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-29 22:50:50'),
(308, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-29 22:50:53'),
(309, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-29 22:50:56'),
(310, '{\"name\":\"admin\",\"userType\":\"admin\"}', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '1', '密码输入错误1次', '2022-10-29 22:50:59'),
(311, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '1', '用户不存在/密码错误', '2022-10-29 22:50:59'),
(312, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 22:51:09'),
(313, 'admin', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-10-29 22:54:11'),
(314, 'admin001', '165.154.231.126', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-29 22:54:28'),
(315, 'admin001', '49.237.43.26', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-29 23:03:13'),
(316, '{\"name\":\"admin001\",\"userType\":\"admin\"}', '165.154.230.142', ' ', 'Chrome 10', 'Mac OS X', '1', '密码输入错误1次', '2022-10-30 04:35:36'),
(317, 'admin001', '165.154.230.142', ' ', 'Chrome 10', 'Mac OS X', '1', '用户不存在/密码错误', '2022-10-30 04:35:36'),
(318, 'admin001', '165.154.230.142', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-30 04:35:45'),
(319, 'admin001', '165.154.230.142', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-30 04:35:48'),
(320, 'admin001', '165.154.230.142', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-30 05:45:11'),
(321, 'admin001', '49.237.37.220', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-30 09:26:41'),
(322, 'admin001', '49.237.22.36', ' ', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-30 18:17:36'),
(323, 'admin001', '49.237.22.36', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-30 18:17:41'),
(324, 'admin001', '165.154.230.142', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-30 18:23:24'),
(325, 'admin001', '49.237.22.36', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-30 19:04:01'),
(326, 'admin001', '165.154.230.142', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-30 20:40:01'),
(328, 'admin001', '165.154.230.142', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-31 03:29:08'),
(329, 'admin001', '49.237.14.174', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-31 09:21:52'),
(330, 'admin001', '49.237.39.188', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-31 16:26:50'),
(331, 'admin', '35.178.251.26', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-10-31 16:44:00'),
(332, 'admin', '35.178.251.26', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-31 16:44:04'),
(333, 'admin001', '35.178.251.26', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-31 16:45:13'),
(334, 'admin001', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-31 17:17:43'),
(335, 'admin001', '49.237.39.188', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-31 18:20:34'),
(336, 'admin001', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-10-31 20:04:01'),
(337, 'admin', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-10-31 20:04:15'),
(338, 'admin', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-10-31 20:04:19'),
(339, 'admin001', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-11-01 02:10:51'),
(340, 'admin001', '49.237.32.17', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-01 09:08:40'),
(341, 'admin001', '49.237.41.225', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-01 23:51:43'),
(342, 'admin', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-11-02 00:12:34'),
(343, 'admin001', '115.87.79.108', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-02 09:12:37'),
(344, 'admin', '3.38.159.152', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-02 11:37:52'),
(345, 'admin', '122.238.168.120', '浙江省 嘉兴市', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-02 11:52:55'),
(346, 'admin', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-11-02 12:33:30'),
(347, 'admin', '122.238.168.120', '浙江省 嘉兴市', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-02 19:52:52'),
(348, 'admin', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-11-02 20:05:59'),
(349, 'admin001', '49.237.16.78', ' ', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-11-02 23:03:09'),
(350, 'admin001', '49.237.16.78', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-02 23:03:28'),
(351, 'admin001', '49.237.35.14', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-03 09:03:46'),
(352, 'admin001', '49.237.5.240', ' ', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-11-03 09:55:10'),
(353, 'admin001', '49.237.5.240', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-03 09:55:23'),
(354, 'admin', '122.238.168.120', '浙江省 嘉兴市', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-03 11:41:22'),
(355, 'admin001', '49.237.23.208', ' ', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-11-03 12:06:34'),
(356, 'admin001', '49.237.23.208', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-03 12:06:54'),
(357, 'admin', '3.35.75.39', ' ', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-11-03 12:09:41'),
(358, 'admin001', '49.237.17.180', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-03 17:12:30'),
(359, 'admin', '124.119.13.142', '新疆 乌鲁木齐市', 'Chrome 10', 'Windows 10', '1', '登录用户：admin 不存在', '2022-11-03 18:56:11'),
(360, 'admin', '122.238.168.120', '浙江省 嘉兴市', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-11-03 19:24:35'),
(361, 'admin001', '49.237.17.180', ' ', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-11-03 21:23:12'),
(362, 'admin001', '49.237.17.180', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-03 21:26:56'),
(363, 'admin001', '49.237.17.180', ' ', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-11-03 21:27:06'),
(364, 'admin001', '115.87.79.102', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-03 21:28:39'),
(365, 'admin', '122.238.168.120', '浙江省 嘉兴市', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-03 22:57:32'),
(366, 'admin001', '49.237.41.125', ' ', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-11-04 00:38:08'),
(367, 'admin001', '49.237.21.44', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-04 00:39:44'),
(368, 'admin001', '49.237.42.250', ' ', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-11-04 12:22:01'),
(369, 'admin001', '49.237.42.250', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-04 12:22:12'),
(370, 'admin', '122.238.182.220', '浙江省 嘉兴市', 'Chrome 10', 'Mac OS X', '1', '用户不存在/密码错误', '2022-11-04 12:58:11'),
(371, '{\"name\":\"admin\",\"userType\":\"admin\"}', '122.238.182.220', '浙江省 嘉兴市', 'Chrome 10', 'Mac OS X', '1', '密码输入错误1次', '2022-11-04 12:58:11'),
(372, 'admin', '122.238.182.220', '浙江省 嘉兴市', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-11-04 12:58:17'),
(373, 'admin', '5.161.142.130', ' ', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-11-04 15:50:14'),
(374, 'admin', '5.161.142.130', ' ', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-11-04 15:50:22'),
(375, 'admin', '5.161.142.130', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-04 15:50:29'),
(376, 'admin001', '49.237.10.75', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-04 17:40:39'),
(377, 'admin', '36.28.96.12', '浙江省 杭州市', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-11-04 21:18:42'),
(378, 'admin001', '49.237.18.221', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-05 10:11:59'),
(379, 'admin001', '49.237.37.110', ' ', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-05 13:55:16');

-- --------------------------------------------------------

--
-- 表的结构 `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(11) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(11) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

--
-- 转存表中的数据 `sys_menu`
--

INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-10-19 15:57:10', '', NULL, '系统管理目录'),
(2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-10-19 15:57:10', '', NULL, '系统监控目录'),
(3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-10-19 15:57:10', '', NULL, '系统工具目录'),
(4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-10-19 15:57:10', '', NULL, '若依官网地址'),
(5, '业务配置', 0, 5, 'business', NULL, '', 1, 0, 'M', '0', '0', '', '#', 'admin', '2022-10-19 15:57:10', '', NULL, '业务目录'),
(100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-10-19 15:57:10', '', NULL, '用户管理菜单'),
(101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-10-19 15:57:10', '', NULL, '角色管理菜单'),
(102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-10-19 15:57:10', '', NULL, '菜单管理菜单'),
(103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-10-19 15:57:10', '', NULL, '部门管理菜单'),
(104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-10-19 15:57:10', '', NULL, '岗位管理菜单'),
(105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-10-19 15:57:10', '', NULL, '字典管理菜单'),
(106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-10-19 15:57:10', '', NULL, '参数设置菜单'),
(107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-10-19 15:57:10', '', NULL, '通知公告菜单'),
(108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-10-19 15:57:10', '', NULL, '日志管理菜单'),
(109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-10-19 15:57:10', '', NULL, '在线用户菜单'),
(110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-10-19 15:57:10', '', NULL, '定时任务菜单'),
(111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-10-19 15:57:10', '', NULL, '数据监控菜单'),
(112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-10-19 15:57:10', '', NULL, '服务监控菜单'),
(113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-10-19 15:57:10', '', NULL, '缓存监控菜单'),
(114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2022-10-19 15:57:10', '', NULL, '缓存列表菜单'),
(115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-10-19 15:57:10', '', NULL, '表单构建菜单'),
(116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-10-19 15:57:10', '', NULL, '代码生成菜单'),
(117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-10-19 15:57:10', '', NULL, '系统接口菜单'),
(500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-10-19 15:57:10', '', NULL, '操作日志菜单'),
(501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-10-19 15:57:10', '', NULL, '登录日志菜单'),
(1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(2000, '用户记录', 5, 1, 'user', 'business/user', NULL, 1, 0, 'C', '0', '0', 'business: user:list', '#', 'admin', '2022-10-20 10:30:48', 'admin', '2022-10-20 10:50:01', ''),
(2001, '佣金配置', 5, 2, 'commissionconfig', 'business/commissionconfig', NULL, 1, 0, 'C', '0', '0', 'business:commissionconfig:list', '#', 'admin', '2022-10-20 10:30:48', 'admin', '2022-10-20 10:50:01', ''),
(2002, '充值记录', 5, 3, 'recharge', 'business/recharge', NULL, 1, 0, 'C', '0', '0', 'business:recharge:list', '#', 'admin', '2022-10-20 10:29:47', 'admin', '2022-10-20 10:49:55', ''),
(2003, '提现记录', 5, 4, 'withdraw', 'business/withdraw', NULL, 1, 0, 'C', '0', '0', 'business: withdraw:list', '#', 'admin', '2022-10-20 10:30:48', 'admin', '2022-10-20 10:50:01', ''),
(2004, '推广记录', 5, 5, 'promotion', 'business/promotion', NULL, 1, 0, 'C', '0', '0', 'business: promotion:list', '#', 'admin', '2022-10-20 10:30:48', 'admin', '2022-10-20 10:50:01', ''),
(2005, '基本配置', 5, 6, 'baseconfig', 'business/baseconfig', NULL, 1, 0, 'C', '0', '0', 'business:baseconfig:list', '#', 'admin', '2022-10-20 10:29:47', 'admin', '2022-10-20 10:49:55', ''),
(2006, '转账记录', 5, 7, 'transfer', 'business/transfer', NULL, 1, 0, 'C', '0', '0', 'business: transfer:list', '#', 'admin', '2022-10-20 10:30:48', 'admin', '2022-10-20 10:50:01', ''),
(2007, '核查用户', 5, 8, 'check', 'business/check', NULL, 1, 0, 'C', '0', '0', 'business: check:list', '#', 'admin', '2022-10-20 10:30:48', 'admin', '2022-10-20 10:50:01', ''),
(2008, '挖矿记录', 5, 9, 'mining', 'business/mining', NULL, 1, 0, 'C', '0', '0', 'business: mining:list', '#', 'admin', '2022-10-20 10:30:48', 'admin', '2022-10-20 10:50:01', '');

-- --------------------------------------------------------

--
-- 表的结构 `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE IF NOT EXISTS `sys_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

--
-- 转存表中的数据 `sys_notice`
--

INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xe696b0e78988e69cace58685e5aeb9, '0', 'admin', '2022-10-19 15:57:11', '', NULL, '管理员'),
(2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xe7bbb4e68aa4e58685e5aeb9, '0', 'admin', '2022-10-19 15:57:11', '', NULL, '管理员');

-- --------------------------------------------------------

--
-- 表的结构 `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE IF NOT EXISTS `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(11) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

--
-- 转存表中的数据 `sys_oper_log`
--

INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES
(100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"wab_base_config,wab_commission_config\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-20 10:10:37'),
(101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-20 10:11:20'),
(102, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-20 10:11:22'),
(103, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"business/baseconfig\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"基本配置\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":5,\"path\":\"business:baseconfig\",\"perms\":\"business:baseconfig:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-20 10:29:47'),
(104, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"business/commissionconfig/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"佣金配置\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":5,\"path\":\"business:commissionconfig\",\"perms\":\"business:commissionconfig:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-20 10:30:48'),
(105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"business/commissionconfig\",\"createTime\":\"2022-10-20 10:30:48\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"佣金配置\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":5,\"path\":\"business:commissionconfig\",\"perms\":\"business:commissionconfig:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-20 10:44:25'),
(106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"business/baseconfig\",\"createTime\":\"2022-10-20 10:29:47\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"基本配置\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":5,\"path\":\"baseconfig\",\"perms\":\"business:baseconfig:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-20 10:49:55'),
(107, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"business/commissionconfig\",\"createTime\":\"2022-10-20 10:30:48\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"佣金配置\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":5,\"path\":\"commissionconfig\",\"perms\":\"business:commissionconfig:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-20 10:50:01'),
(108, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"admin001\",\"params\":{},\"postIds\":[],\"roleIds\":[2],\"status\":\"0\",\"userId\":3,\"userName\":\"admin001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-27 18:41:04'),
(109, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-10-19 15:57:10\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-27 18:41:43'),
(110, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-10-19 15:57:10\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-27 18:43:54'),
(111, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[5,2000,2001,2002,2003,2004,2005,2006],\"params\":{},\"roleId\":3,\"roleKey\":\"general\",\"roleName\":\"普通管理员\",\"roleSort\":\"0\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-27 18:45:31'),
(112, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '3 [3]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-27 18:45:42'),
(113, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '3.35.75.39', ' ', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2022-10-19 15:57:10\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"email\":\"ry@163.com\",\"loginDate\":\"2022-11-02 19:52:52\",\"loginIp\":\"122.238.168.120\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":\"1\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-11-03 03:21:21');

-- --------------------------------------------------------

--
-- 表的结构 `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE IF NOT EXISTS `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

--
-- 转存表中的数据 `sys_post`
--

INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, 'ceo', '董事长', 1, '0', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(2, 'se', '项目经理', 2, '0', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(3, 'hr', '人力资源', 3, '0', 'admin', '2022-10-19 15:57:10', '', NULL, ''),
(4, 'user', '普通员工', 4, '0', 'admin', '2022-10-19 15:57:10', '', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

--
-- 转存表中的数据 `sys_role`
--

INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-10-19 15:57:10', '', NULL, '超级管理员'),
(2, '普通角色', 'common', 2, '1', 1, 1, '0', '0', 'admin', '2022-10-19 15:57:10', '', '2022-10-27 18:43:54', '普通角色'),
(3, '普通管理员', 'general', 0, '1', 1, 1, '0', '0', 'admin', '2022-10-27 18:45:31', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE IF NOT EXISTS `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- --------------------------------------------------------

--
-- 表的结构 `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

--
-- 转存表中的数据 `sys_role_menu`
--

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 114),
(2, 115),
(2, 116),
(2, 117),
(2, 500),
(2, 501),
(2, 1000),
(2, 1001),
(2, 1002),
(2, 1003),
(2, 1004),
(2, 1005),
(2, 1006),
(2, 1007),
(2, 1008),
(2, 1009),
(2, 1010),
(2, 1011),
(2, 1012),
(2, 1013),
(2, 1014),
(2, 1015),
(2, 1016),
(2, 1017),
(2, 1018),
(2, 1019),
(2, 1020),
(2, 1021),
(2, 1022),
(2, 1023),
(2, 1024),
(2, 1025),
(2, 1026),
(2, 1027),
(2, 1028),
(2, 1029),
(2, 1030),
(2, 1031),
(2, 1032),
(2, 1033),
(2, 1034),
(2, 1035),
(2, 1036),
(2, 1037),
(2, 1038),
(2, 1039),
(2, 1040),
(2, 1041),
(2, 1042),
(2, 1043),
(2, 1044),
(2, 1045),
(2, 1046),
(2, 1047),
(2, 1048),
(2, 1049),
(2, 1050),
(2, 1051),
(2, 1052),
(2, 1053),
(2, 1054),
(2, 1055),
(2, 1056),
(2, 1057),
(2, 1058),
(2, 1059),
(2, 1060),
(3, 5),
(3, 2000),
(3, 2001),
(3, 2002),
(3, 2003),
(3, 2004),
(3, 2005),
(3, 2006),
(3, 2007),
(3, 2008);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

--
-- 转存表中的数据 `sys_user`
--

INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '0', '', '$2a$10$NZnZHNZfd/a90mt52Xb4/uGtDNPP7oLEvPcwxmkcfNSsuF5mXiZzK', '0', '0', '36.28.96.12', '2022-11-04 21:18:42', 'admin', '2022-10-19 15:57:10', '', '2022-11-04 21:18:42', '管理员'),
(2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-10-19 15:57:10', 'admin', '2022-10-19 15:57:10', '', NULL, '测试员'),
(3, NULL, 'admin001', 'admin001', '00', '', '', '0', '', '$2a$10$33QwXJWkeB1rwZ7W0S327eYdNmM1dIOHJSe7DA797a.0Lnc75MSGi', '0', '0', '49.237.37.110', '2022-11-05 13:55:16', 'admin', '2022-10-27 18:41:04', '', '2022-11-05 13:55:16', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE IF NOT EXISTS `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

--
-- 转存表中的数据 `sys_user_post`
--

INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

--
-- 转存表中的数据 `sys_user_role`
--

INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- 表的结构 `wab_base_config`
--

DROP TABLE IF EXISTS `wab_base_config`;
CREATE TABLE IF NOT EXISTS `wab_base_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `config_key` varchar(255) DEFAULT NULL,
  `config_value` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='基本配置';

--
-- 转存表中的数据 `wab_base_config`
--

INSERT INTO `wab_base_config` (`id`, `name`, `config_key`, `config_value`, `remark`) VALUES
(1, '用户充值', 'user_recharge', '240', '单位(USDT)'),
(2, '激活账户后，系统自动赠送', 'user_active_give', '300', '单位(PYY)'),
(3, '当日激活用户数量限制', 'user_this_day_active_limit', '10000', '人数限制'),
(4, 'Pyy转账手续费', 'pyy_transaction_fee', '0', '比例(例如0.1，代表10%)'),
(5, '是否开启加速', 'is_enabled_accelerate', '0', '0表示未开启，1表示开启'),
(6, 'usdt和pyy兑换比例', 'usdt_pyy_proportion', '2', '表示一个usdt可以兑换多少pyy'),
(7, 'USDT转账手续费', 'usdt_transaction_fee', '0', '比例(例如0.1，代表10%)'),
(8, 'USDT提现手续费固定值', 'usdt_withdraw_fee', '1', '单位(USDT)'),
(9, 'USDT最低提现', 'usdt_withdraw_limit', '5', '单位(USDT)');

-- --------------------------------------------------------

--
-- 表的结构 `wab_commission_config`
--

DROP TABLE IF EXISTS `wab_commission_config`;
CREATE TABLE IF NOT EXISTS `wab_commission_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '几级',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '级别',
  `commission` decimal(10,2) DEFAULT NULL COMMENT '佣金数量(单位u)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COMMENT='佣金配置表';

--
-- 转存表中的数据 `wab_commission_config`
--

INSERT INTO `wab_commission_config` (`id`, `name`, `level`, `commission`) VALUES
(1, '第1代', 1, '15.00'),
(2, '第2代', 2, '5.00'),
(3, '第3代', 3, '5.00'),
(4, '第4代', 4, '4.50'),
(5, '第5代', 5, '4.50'),
(6, '第6代', 6, '4.00'),
(7, '第7代', 7, '4.00'),
(8, '第8代', 8, '3.00'),
(9, '第9代', 9, '3.00'),
(10, '第10代', 10, '2.50'),
(11, '第11代', 11, '2.50'),
(12, '第12代', 12, '2.00'),
(13, '第13代', 13, '2.00'),
(14, '第14代', 14, '2.00'),
(15, '第15代', 15, '2.00'),
(16, '第16代', 16, '1.50'),
(17, '第17代', 17, '1.50'),
(18, '第18代', 18, '1.50'),
(19, '第19代', 19, '1.50'),
(20, '第20代', 20, '1.50'),
(21, '第21代', 21, '1.50'),
(22, '第22代', 22, '1.00'),
(23, '第23代', 23, '1.00'),
(24, '第24代', 24, '1.00'),
(25, '第25代', 25, '1.00'),
(26, '第26代', 26, '1.00'),
(27, '第27代', 27, '1.00'),
(28, '第28代', 28, '0.50'),
(29, '第29代', 29, '0.50'),
(30, '第30代', 30, '0.50'),
(31, '第31代', 31, '0.50'),
(32, '第32代', 32, '0.50'),
(33, '第33代', 33, '0.50'),
(34, '第34代', 34, '0.50'),
(35, '第35代', 35, '0.50'),
(36, '第36代', 36, '0.50'),
(37, '第37代', 37, '0.50'),
(38, '第38代', 38, '0.50'),
(39, '第39代', 39, '0.50'),
(40, '第40代', 40, '0.50'),
(41, '第41代', 41, '0.50'),
(42, '第42代', 42, '0.50'),
(43, '第43代', 43, '0.50'),
(44, '第44代', 44, '0.50'),
(45, '第45代', 45, '0.50'),
(46, '第46代', 46, '0.50'),
(47, '第47代', 47, '0.50');

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_promotion`
--

DROP TABLE IF EXISTS `wab_customer_promotion`;
CREATE TABLE IF NOT EXISTS `wab_customer_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `to_address` varchar(255) DEFAULT NULL COMMENT '获取到奖励的地址',
  `commission` decimal(18,2) DEFAULT NULL COMMENT '获取的佣金',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `level` int(11) DEFAULT NULL COMMENT '等级',
  `invite_address` varchar(255) DEFAULT NULL COMMENT '邀请人地址',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 未获取到 1 已获取奖励',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COMMENT='推广收益记录';

--
-- 转存表中的数据 `wab_customer_promotion`
--

INSERT INTO `wab_customer_promotion` (`id`, `to_address`, `commission`, `create_time`, `level`, `invite_address`, `status`) VALUES
(1, 'juxin2088@gmail.com', '15.00', '2022-11-04 03:15:07', 1, 'liwen77667@gmail.com', 1),
(2, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:15:09', 1, '18103605171', 1),
(3, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:15:10', 2, '18103605171', 1),
(4, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:15:12', 1, '18145175128', 1),
(5, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:15:13', 2, '18145175128', 1),
(6, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:15:15', 1, '18644076519', 1),
(7, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:15:16', 2, '18644076519', 1),
(8, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:15:18', 1, '15545167555', 1),
(9, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:15:19', 2, '15545167555', 1),
(10, '18145175128', '15.00', '2022-11-04 03:15:21', 1, '15684529873', 1),
(11, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:15:22', 2, '15684529873', 1),
(12, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:15:23', 3, '15684529873', 1),
(13, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:15:25', 1, '15512214666', 1),
(14, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:15:26', 2, '15512214666', 1),
(15, '15684529873', '15.00', '2022-11-04 03:15:28', 1, '18660321907', 1),
(16, '18145175128', '5.00', '2022-11-04 03:15:29', 2, '18660321907', 1),
(17, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:15:30', 3, '18660321907', 1),
(18, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:15:31', 4, '18660321907', 1),
(19, '18660321907', '15.00', '2022-11-04 03:15:33', 1, '15614634142', 1),
(20, '15684529873', '5.00', '2022-11-04 03:15:34', 2, '15614634142', 1),
(21, '18145175128', '5.00', '2022-11-04 03:15:35', 3, '15614634142', 1),
(22, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:15:36', 4, '15614634142', 1),
(23, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:15:37', 5, '15614634142', 1),
(24, '15614634142', '15.00', '2022-11-04 03:15:39', 1, '1020290473@qq.com', 1),
(25, '18660321907', '5.00', '2022-11-04 03:15:40', 2, '1020290473@qq.com', 1),
(26, '15684529873', '5.00', '2022-11-04 03:15:41', 3, '1020290473@qq.com', 1),
(27, '18145175128', '4.50', '2022-11-04 03:15:42', 4, '1020290473@qq.com', 1),
(28, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:15:43', 5, '1020290473@qq.com', 1),
(29, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:15:44', 6, '1020290473@qq.com', 1),
(30, '1020290473@qq.com', '15.00', '2022-11-04 03:15:46', 1, '15898971716', 1),
(31, '15614634142', '5.00', '2022-11-04 03:15:47', 2, '15898971716', 1),
(32, '18660321907', '5.00', '2022-11-04 03:15:48', 3, '15898971716', 1),
(33, '15684529873', '4.50', '2022-11-04 03:15:49', 4, '15898971716', 1),
(34, '18145175128', '4.50', '2022-11-04 03:15:50', 5, '15898971716', 1),
(35, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:15:51', 6, '15898971716', 1),
(36, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:15:52', 7, '15898971716', 1),
(37, '1020290473@qq.com', '15.00', '2022-11-04 03:15:54', 1, '13100970332', 1),
(38, '15614634142', '5.00', '2022-11-04 03:15:55', 2, '13100970332', 1),
(39, '18660321907', '5.00', '2022-11-04 03:15:56', 3, '13100970332', 1),
(40, '15684529873', '4.50', '2022-11-04 03:15:57', 4, '13100970332', 1),
(41, '18145175128', '4.50', '2022-11-04 03:15:58', 5, '13100970332', 1),
(42, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:15:59', 6, '13100970332', 1),
(43, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:16:00', 7, '13100970332', 1),
(44, '13100970332', '15.00', '2022-11-04 03:16:01', 1, '18254862085', 1),
(45, '1020290473@qq.com', '5.00', '2022-11-04 03:16:02', 2, '18254862085', 1),
(46, '15614634142', '5.00', '2022-11-04 03:16:03', 3, '18254862085', 1),
(47, '18660321907', '4.50', '2022-11-04 03:16:04', 4, '18254862085', 1),
(48, '15684529873', '4.50', '2022-11-04 03:16:05', 5, '18254862085', 1),
(50, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:16:07', 7, '18254862085', 1),
(51, 'juxin2088@gmail.com', '3.00', '2022-11-04 03:16:08', 8, '18254862085', 1),
(52, '1020290473@qq.com', '15.00', '2022-11-04 03:16:10', 1, '13846737475', 1),
(53, '15614634142', '5.00', '2022-11-04 03:16:11', 2, '13846737475', 1),
(54, '18660321907', '5.00', '2022-11-04 03:16:12', 3, '13846737475', 1),
(55, '15684529873', '4.50', '2022-11-04 03:16:13', 4, '13846737475', 1),
(56, '18145175128', '4.50', '2022-11-04 03:16:14', 5, '13846737475', 1),
(57, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:16:15', 6, '13846737475', 1),
(58, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:16:16', 7, '13846737475', 1),
(59, '1020290473@qq.com', '15.00', '2022-11-04 03:16:18', 1, '15145231074', 1),
(60, '15614634142', '5.00', '2022-11-04 03:16:19', 2, '15145231074', 1),
(61, '18660321907', '5.00', '2022-11-04 03:16:20', 3, '15145231074', 1),
(62, '15684529873', '4.50', '2022-11-04 03:16:21', 4, '15145231074', 1),
(63, '18145175128', '4.50', '2022-11-04 03:16:22', 5, '15145231074', 1),
(64, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:16:23', 6, '15145231074', 1),
(65, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:16:24', 7, '15145231074', 1),
(66, '1020290473@qq.com', '15.00', '2022-11-04 03:16:26', 1, '17354380671', 1),
(67, '15614634142', '5.00', '2022-11-04 03:16:27', 2, '17354380671', 1),
(68, '18660321907', '5.00', '2022-11-04 03:16:28', 3, '17354380671', 1),
(69, '15684529873', '4.50', '2022-11-04 03:16:29', 4, '17354380671', 1),
(70, '18145175128', '4.50', '2022-11-04 03:16:31', 5, '17354380671', 1),
(71, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:16:31', 6, '17354380671', 1),
(72, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:16:33', 7, '17354380671', 1),
(73, 'juxin2088@gmail.com', '15.00', '2022-11-04 03:16:35', 1, '15846351585', 1),
(74, '15614634142', '15.00', '2022-11-04 03:16:37', 1, '13940925714', 1),
(75, '18660321907', '5.00', '2022-11-04 03:16:38', 2, '13940925714', 1),
(76, '15684529873', '5.00', '2022-11-04 03:16:39', 3, '13940925714', 1),
(77, '18145175128', '4.50', '2022-11-04 03:16:40', 4, '13940925714', 1),
(78, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:16:41', 5, '13940925714', 1),
(79, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:16:42', 6, '13940925714', 1),
(80, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:16:44', 1, '18063560866', 1),
(81, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:16:45', 2, '18063560866', 1),
(82, '18063560866', '15.00', '2022-11-04 03:16:47', 1, '15615948345', 1),
(83, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:16:48', 2, '15615948345', 1),
(84, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:16:49', 3, '15615948345', 1),
(85, '15615948345', '15.00', '2022-11-04 03:16:51', 1, '18006352195', 1),
(86, '18063560866', '5.00', '2022-11-04 03:16:52', 2, '18006352195', 1),
(87, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:16:53', 3, '18006352195', 1),
(88, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:16:54', 4, '18006352195', 1),
(89, '15545167555', '15.00', '2022-11-04 03:16:56', 1, '13804633533', 1),
(90, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:16:57', 2, '13804633533', 1),
(91, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:16:58', 3, '13804633533', 1),
(92, '15615948345', '15.00', '2022-11-04 03:17:00', 1, '13766731806', 1),
(93, '18063560866', '5.00', '2022-11-04 03:17:01', 2, '13766731806', 1),
(94, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:17:01', 3, '13766731806', 1),
(95, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:17:02', 4, '13766731806', 1),
(96, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:17:04', 1, '13244500016', 1),
(97, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:17:06', 2, '13244500016', 1),
(98, '13244500016', '15.00', '2022-11-04 03:17:07', 1, '13244568766', 1),
(99, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:17:09', 2, '13244568766', 1),
(100, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:17:10', 3, '13244568766', 1),
(101, '13244568766', '15.00', '2022-11-04 03:17:12', 1, '85130016@qq.com', 1),
(102, '13244500016', '5.00', '2022-11-04 03:17:13', 2, '85130016@qq.com', 1),
(103, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:17:14', 3, '85130016@qq.com', 1),
(104, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:17:15', 4, '85130016@qq.com', 1),
(105, '18660321907', '15.00', '2022-11-04 03:17:17', 1, '15663833367', 1),
(106, '15684529873', '5.00', '2022-11-04 03:17:18', 2, '15663833367', 1),
(107, '18145175128', '5.00', '2022-11-04 03:17:19', 3, '15663833367', 1),
(108, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:17:20', 4, '15663833367', 1),
(109, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:17:21', 5, '15663833367', 1),
(110, '13846737475', '15.00', '2022-11-04 03:17:23', 1, '15845588227', 1),
(111, '1020290473@qq.com', '5.00', '2022-11-04 03:17:24', 2, '15845588227', 1),
(112, '15614634142', '5.00', '2022-11-04 03:17:25', 3, '15845588227', 1),
(113, '18660321907', '4.50', '2022-11-04 03:17:26', 4, '15845588227', 1),
(114, '15684529873', '4.50', '2022-11-04 03:17:27', 5, '15845588227', 1),
(115, '18145175128', '4.00', '2022-11-04 03:17:28', 6, '15845588227', 1),
(116, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:17:29', 7, '15845588227', 1),
(117, 'juxin2088@gmail.com', '3.00', '2022-11-04 03:17:30', 8, '15845588227', 1),
(118, '13804633533', '15.00', '2022-11-04 03:17:32', 1, '13664502459', 1),
(119, '15545167555', '5.00', '2022-11-04 03:17:33', 2, '13664502459', 1),
(120, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:17:34', 3, '13664502459', 1),
(121, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:17:35', 4, '13664502459', 1),
(122, '15512214666', '15.00', '2022-11-04 03:17:37', 1, '15630872344', 1),
(123, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:17:38', 2, '15630872344', 1),
(124, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:17:39', 3, '15630872344', 1),
(125, '15630872344', '15.00', '2022-11-04 03:17:41', 1, '13731252169', 1),
(126, '15512214666', '5.00', '2022-11-04 03:17:42', 2, '13731252169', 1),
(127, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:17:43', 3, '13731252169', 1),
(128, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:17:44', 4, '13731252169', 1),
(129, '15684529873', '15.00', '2022-11-04 03:17:46', 1, '13694605720', 1),
(130, '18145175128', '5.00', '2022-11-04 03:17:47', 2, '13694605720', 1),
(131, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:17:48', 3, '13694605720', 1),
(132, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:17:49', 4, '13694605720', 1),
(133, '13731252169', '15.00', '2022-11-04 03:17:51', 1, '18233336433', 1),
(134, '15630872344', '5.00', '2022-11-04 03:17:52', 2, '18233336433', 1),
(135, '15512214666', '5.00', '2022-11-04 03:17:53', 3, '18233336433', 0),
(136, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:17:54', 4, '18233336433', 1),
(137, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:17:55', 5, '18233336433', 1),
(138, '18233336433', '15.00', '2022-11-04 03:17:57', 1, '18832222502', 1),
(139, '13731252169', '5.00', '2022-11-04 03:17:58', 2, '18832222502', 1),
(140, '15630872344', '5.00', '2022-11-04 03:17:59', 3, '18832222502', 0),
(141, '15512214666', '4.50', '2022-11-04 03:18:00', 4, '18832222502', 0),
(142, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:18:01', 5, '18832222502', 1),
(143, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:18:02', 6, '18832222502', 1),
(144, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:18:04', 1, '15764570707', 1),
(145, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:18:05', 2, '15764570707', 1),
(146, '18832222502', '15.00', '2022-11-04 03:18:07', 1, '16630205999', 1),
(147, '18233336433', '5.00', '2022-11-04 03:18:08', 2, '16630205999', 1),
(148, '13731252169', '5.00', '2022-11-04 03:18:09', 3, '16630205999', 1),
(149, '15630872344', '4.50', '2022-11-04 03:18:10', 4, '16630205999', 0),
(150, '15512214666', '4.50', '2022-11-04 03:18:11', 5, '16630205999', 0),
(151, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:18:12', 6, '16630205999', 1),
(152, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:18:13', 7, '16630205999', 1),
(153, '16630205999', '15.00', '2022-11-04 03:18:15', 1, '15128234513', 1),
(154, '18832222502', '5.00', '2022-11-04 03:18:16', 2, '15128234513', 1),
(155, '18233336433', '5.00', '2022-11-04 03:18:17', 3, '15128234513', 0),
(156, '13731252169', '4.50', '2022-11-04 03:18:18', 4, '15128234513', 1),
(157, '15630872344', '4.50', '2022-11-04 03:18:19', 5, '15128234513', 0),
(158, '15512214666', '4.00', '2022-11-04 03:18:20', 6, '15128234513', 0),
(159, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:18:21', 7, '15128234513', 1),
(160, 'juxin2088@gmail.com', '3.00', '2022-11-04 03:18:22', 8, '15128234513', 1),
(161, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:18:24', 1, '17645544005', 1),
(162, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:18:25', 2, '17645544005', 1),
(163, '15128234513', '15.00', '2022-11-04 03:18:27', 1, '1932631490@qq.com', 1),
(164, '16630205999', '5.00', '2022-11-04 03:18:28', 2, '1932631490@qq.com', 1),
(165, '18832222502', '5.00', '2022-11-04 03:18:29', 3, '1932631490@qq.com', 0),
(166, '18233336433', '4.50', '2022-11-04 03:18:30', 4, '1932631490@qq.com', 0),
(167, '13731252169', '4.50', '2022-11-04 03:18:31', 5, '1932631490@qq.com', 1),
(168, '15630872344', '4.00', '2022-11-04 03:18:32', 6, '1932631490@qq.com', 0),
(169, '15512214666', '4.00', '2022-11-04 03:18:33', 7, '1932631490@qq.com', 0),
(170, 'liwen77667@gmail.com', '3.00', '2022-11-04 03:18:34', 8, '1932631490@qq.com', 1),
(171, 'juxin2088@gmail.com', '3.00', '2022-11-04 03:18:35', 9, '1932631490@qq.com', 1),
(172, '15764570707', '15.00', '2022-11-04 03:18:37', 1, '15846831081', 1),
(173, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:18:38', 2, '15846831081', 1),
(174, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:18:39', 3, '15846831081', 1),
(175, '13846737475', '15.00', '2022-11-04 03:18:41', 1, '18346445167', 1),
(176, '1020290473@qq.com', '5.00', '2022-11-04 03:18:42', 2, '18346445167', 1),
(177, '15614634142', '5.00', '2022-11-04 03:18:43', 3, '18346445167', 1),
(178, '18660321907', '4.50', '2022-11-04 03:18:44', 4, '18346445167', 1),
(179, '15684529873', '4.50', '2022-11-04 03:18:45', 5, '18346445167', 1),
(180, '18145175128', '4.00', '2022-11-04 03:18:46', 6, '18346445167', 1),
(181, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:18:47', 7, '18346445167', 1),
(182, 'juxin2088@gmail.com', '3.00', '2022-11-04 03:18:48', 8, '18346445167', 1),
(183, '15545167555', '15.00', '2022-11-04 03:18:50', 1, '13804614119', 1),
(184, 'liwen77667@gmail.com', '5.00', '2022-11-04 03:18:51', 2, '13804614119', 1),
(185, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:18:52', 3, '13804614119', 1),
(186, '13846737475', '15.00', '2022-11-04 03:18:54', 1, '18346445827', 1),
(187, '1020290473@qq.com', '5.00', '2022-11-04 03:18:55', 2, '18346445827', 1),
(188, '15614634142', '5.00', '2022-11-04 03:18:56', 3, '18346445827', 1),
(189, '18660321907', '4.50', '2022-11-04 03:18:57', 4, '18346445827', 1),
(190, '15684529873', '4.50', '2022-11-04 03:18:58', 5, '18346445827', 1),
(191, '18145175128', '4.00', '2022-11-04 03:18:59', 6, '18346445827', 1),
(192, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:19:00', 7, '18346445827', 1),
(193, 'juxin2088@gmail.com', '3.00', '2022-11-04 03:19:01', 8, '18346445827', 1),
(194, 'liwen77667@gmail.com', '15.00', '2022-11-04 03:19:03', 1, '19860799392', 1),
(195, 'juxin2088@gmail.com', '5.00', '2022-11-04 03:19:04', 2, '19860799392', 1),
(196, '13694605720', '15.00', '2022-11-04 03:19:06', 1, '13644268453', 1),
(197, '15684529873', '5.00', '2022-11-04 03:19:07', 2, '13644268453', 1),
(198, '18145175128', '5.00', '2022-11-04 03:19:08', 3, '13644268453', 1),
(199, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:19:09', 4, '13644268453', 1),
(200, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:19:10', 5, '13644268453', 1),
(201, '13694605720', '15.00', '2022-11-04 03:19:12', 1, '13694601666', 1),
(202, '15684529873', '5.00', '2022-11-04 03:19:13', 2, '13694601666', 1),
(203, '18145175128', '5.00', '2022-11-04 03:19:14', 3, '13694601666', 1),
(204, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:19:15', 4, '13694601666', 1),
(205, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:19:16', 5, '13694601666', 1),
(206, '1932631490@qq.com', '15.00', '2022-11-04 03:19:18', 1, '15703124755', 1),
(207, '15128234513', '5.00', '2022-11-04 03:19:19', 2, '15703124755', 1),
(208, '16630205999', '5.00', '2022-11-04 03:19:20', 3, '15703124755', 0),
(209, '18832222502', '4.50', '2022-11-04 03:19:21', 4, '15703124755', 0),
(210, '18233336433', '4.50', '2022-11-04 03:19:22', 5, '15703124755', 0),
(211, '13731252169', '4.00', '2022-11-04 03:19:23', 6, '15703124755', 1),
(212, '15630872344', '4.00', '2022-11-04 03:19:24', 7, '15703124755', 0),
(213, '15512214666', '3.00', '2022-11-04 03:19:25', 8, '15703124755', 0),
(214, 'liwen77667@gmail.com', '3.00', '2022-11-04 03:19:26', 9, '15703124755', 1),
(215, 'juxin2088@gmail.com', '2.50', '2022-11-04 03:19:27', 10, '15703124755', 1),
(216, '15703124755', '15.00', '2022-11-04 03:19:29', 1, '13933288283', 1),
(217, '1932631490@qq.com', '5.00', '2022-11-04 03:19:30', 2, '13933288283', 1),
(218, '15128234513', '5.00', '2022-11-04 03:19:31', 3, '13933288283', 0),
(219, '16630205999', '4.50', '2022-11-04 03:19:32', 4, '13933288283', 0),
(220, '18832222502', '4.50', '2022-11-04 03:19:33', 5, '13933288283', 0),
(221, '18233336433', '4.00', '2022-11-04 03:19:34', 6, '13933288283', 0),
(222, '13731252169', '4.00', '2022-11-04 03:19:35', 7, '13933288283', 1),
(223, '15630872344', '3.00', '2022-11-04 03:19:36', 8, '13933288283', 0),
(224, '15512214666', '3.00', '2022-11-04 03:19:37', 9, '13933288283', 0),
(225, 'liwen77667@gmail.com', '2.50', '2022-11-04 03:19:38', 10, '13933288283', 1),
(226, 'juxin2088@gmail.com', '2.50', '2022-11-04 03:19:39', 11, '13933288283', 1),
(227, '13731252169', '15.00', '2022-11-04 03:19:41', 1, '18940171701', 1),
(228, '15630872344', '5.00', '2022-11-04 03:19:42', 2, '18940171701', 1),
(229, '15512214666', '5.00', '2022-11-04 03:19:43', 3, '18940171701', 0),
(230, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:19:44', 4, '18940171701', 1),
(231, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:19:45', 5, '18940171701', 1),
(232, '13731252169', '15.00', '2022-11-04 03:19:47', 1, '15128227938', 1),
(233, '15630872344', '5.00', '2022-11-04 03:19:48', 2, '15128227938', 1),
(234, '15512214666', '5.00', '2022-11-04 03:19:49', 3, '15128227938', 0),
(235, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:19:50', 4, '15128227938', 1),
(236, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:19:51', 5, '15128227938', 1),
(237, '13694605720', '15.00', '2022-11-04 03:19:53', 1, '13945670905', 1),
(238, '15684529873', '5.00', '2022-11-04 03:19:54', 2, '13945670905', 1),
(239, '18145175128', '5.00', '2022-11-04 03:19:55', 3, '13945670905', 1),
(240, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:19:56', 4, '13945670905', 1),
(241, 'juxin2088@gmail.com', '4.50', '2022-11-04 03:19:57', 5, '13945670905', 1),
(242, '13644268453', '15.00', '2022-11-04 03:19:59', 1, '18550954151', 1),
(243, '13694605720', '5.00', '2022-11-04 03:20:00', 2, '18550954151', 1),
(244, '15684529873', '5.00', '2022-11-04 03:20:01', 3, '18550954151', 1),
(245, '18145175128', '4.50', '2022-11-04 03:20:02', 4, '18550954151', 1),
(246, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:20:03', 5, '18550954151', 1),
(247, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:20:04', 6, '18550954151', 1),
(248, '13100970332', '15.00', '2022-11-04 03:20:06', 1, '15663685686', 1),
(249, '1020290473@qq.com', '5.00', '2022-11-04 03:20:07', 2, '15663685686', 1),
(250, '15614634142', '5.00', '2022-11-04 03:20:08', 3, '15663685686', 1),
(251, '18660321907', '4.50', '2022-11-04 03:20:09', 4, '15663685686', 1),
(252, '15684529873', '4.50', '2022-11-04 03:20:10', 5, '15663685686', 1),
(253, '18145175128', '4.00', '2022-11-04 03:20:11', 6, '15663685686', 1),
(254, 'liwen77667@gmail.com', '4.00', '2022-11-04 03:20:12', 7, '15663685686', 1),
(255, 'juxin2088@gmail.com', '3.00', '2022-11-04 03:20:13', 8, '15663685686', 1),
(256, '15128227938', '15.00', '2022-11-04 03:20:15', 1, '18932666645', 1),
(257, '13731252169', '5.00', '2022-11-04 03:20:16', 2, '18932666645', 1),
(258, '15630872344', '5.00', '2022-11-04 03:20:17', 3, '18932666645', 0),
(259, '15512214666', '4.50', '2022-11-04 03:20:18', 4, '18932666645', 0),
(260, 'liwen77667@gmail.com', '4.50', '2022-11-04 03:20:19', 5, '18932666645', 1),
(261, 'juxin2088@gmail.com', '4.00', '2022-11-04 03:20:20', 6, '18932666645', 1),
(262, '13100970332', '15.00', '2022-11-04 05:58:46', 1, '18254862085', 1),
(263, '1020290473@qq.com', '5.00', '2022-11-04 05:58:46', 2, '18254862085', 1),
(264, '15614634142', '5.00', '2022-11-04 05:58:47', 3, '18254862085', 1),
(265, '18660321907', '4.50', '2022-11-04 05:58:48', 4, '18254862085', 1),
(266, '15684529873', '4.50', '2022-11-04 05:58:49', 5, '18254862085', 1),
(267, '18145175128', '4.00', '2022-11-04 05:58:50', 6, '18254862085', 1),
(268, 'liwen77667@gmail.com', '4.00', '2022-11-04 05:58:51', 7, '18254862085', 1),
(269, 'juxin2088@gmail.com', '3.00', '2022-11-04 05:58:52', 8, '18254862085', 1),
(270, 'liwen77667@gmail.com', '15.00', '2022-11-04 07:25:45', 1, '731192801@qq.com', 1),
(271, 'juxin2088@gmail.com', '5.00', '2022-11-04 07:25:46', 2, '731192801@qq.com', 1),
(272, 'liwen77667@gmail.com', '15.00', '2022-11-04 07:28:23', 1, '13439397777', 1),
(273, 'juxin2088@gmail.com', '5.00', '2022-11-04 07:28:24', 2, '13439397777', 1),
(274, 'liwen77667@gmail.com', '15.00', '2022-11-04 07:33:21', 1, '1132046559@qq.com', 1),
(275, 'juxin2088@gmail.com', '5.00', '2022-11-04 07:33:22', 2, '1132046559@qq.com', 1),
(276, 'liwen77667@gmail.com', '15.00', '2022-11-04 16:03:49', 1, '13054275107', 1),
(277, 'juxin2088@gmail.com', '5.00', '2022-11-04 16:03:50', 2, '13054275107', 1),
(278, '15898971716', '15.00', '2022-11-04 17:32:42', 1, '18518477502', 1),
(279, '1020290473@qq.com', '5.00', '2022-11-04 17:32:42', 2, '18518477502', 1),
(280, '15614634142', '5.00', '2022-11-04 17:32:43', 3, '18518477502', 1),
(281, '18660321907', '4.50', '2022-11-04 17:32:44', 4, '18518477502', 1),
(282, '15684529873', '4.50', '2022-11-04 17:32:45', 5, '18518477502', 1),
(283, '18145175128', '4.00', '2022-11-04 17:32:46', 6, '18518477502', 1),
(284, 'liwen77667@gmail.com', '4.00', '2022-11-04 17:32:47', 7, '18518477502', 1),
(285, 'juxin2088@gmail.com', '3.00', '2022-11-04 17:32:48', 8, '18518477502', 1),
(286, '13804633533', '15.00', '2022-11-04 19:18:56', 1, '13045190345', 1),
(287, '15545167555', '5.00', '2022-11-04 19:18:57', 2, '13045190345', 1),
(288, 'liwen77667@gmail.com', '5.00', '2022-11-04 19:18:58', 3, '13045190345', 1),
(289, 'juxin2088@gmail.com', '4.50', '2022-11-04 19:18:59', 4, '13045190345', 1),
(290, '13054275107', '15.00', '2022-11-04 21:05:54', 1, '13946084062', 1),
(291, 'liwen77667@gmail.com', '5.00', '2022-11-04 21:05:55', 2, '13946084062', 1),
(292, 'juxin2088@gmail.com', '5.00', '2022-11-04 21:05:56', 3, '13946084062', 1),
(293, '18145175128', '15.00', '2022-11-04 21:10:34', 1, '13804582466', 1),
(294, 'liwen77667@gmail.com', '5.00', '2022-11-04 21:10:35', 2, '13804582466', 1),
(295, 'juxin2088@gmail.com', '5.00', '2022-11-04 21:10:36', 3, '13804582466', 1),
(296, '1020290473@qq.com', '15.00', '2022-11-04 21:39:00', 1, '17766548184', 1),
(297, '15614634142', '5.00', '2022-11-04 21:39:00', 2, '17766548184', 1),
(298, '18660321907', '5.00', '2022-11-04 21:39:01', 3, '17766548184', 1),
(299, '15684529873', '4.50', '2022-11-04 21:39:02', 4, '17766548184', 1),
(300, '18145175128', '4.50', '2022-11-04 21:39:03', 5, '17766548184', 1),
(301, 'liwen77667@gmail.com', '4.00', '2022-11-04 21:39:04', 6, '17766548184', 1),
(302, 'juxin2088@gmail.com', '4.00', '2022-11-04 21:39:05', 7, '17766548184', 1),
(303, '15764570707', '15.00', '2022-11-05 10:51:06', 1, '18504822606', 1),
(304, 'liwen77667@gmail.com', '5.00', '2022-11-05 10:51:07', 2, '18504822606', 1),
(305, 'juxin2088@gmail.com', '5.00', '2022-11-05 10:51:08', 3, '18504822606', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_promotion_bak`
--

DROP TABLE IF EXISTS `wab_customer_promotion_bak`;
CREATE TABLE IF NOT EXISTS `wab_customer_promotion_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `to_address` varchar(255) DEFAULT NULL COMMENT '获取到奖励的地址',
  `commission` decimal(18,2) DEFAULT NULL COMMENT '获取的佣金',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `level` int(11) DEFAULT NULL COMMENT '等级',
  `invite_address` varchar(255) DEFAULT NULL COMMENT '邀请人地址',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 未获取到 1 已获取奖励',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8mb4 COMMENT='推广收益记录';

--
-- 转存表中的数据 `wab_customer_promotion_bak`
--

INSERT INTO `wab_customer_promotion_bak` (`id`, `to_address`, `commission`, `create_time`, `level`, `invite_address`, `status`) VALUES
(295, 'juxin2088@gmail.com', '15.00', '2022-11-04 02:17:07', 1, 'liwen77667@gmail.com', 1),
(296, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:17:09', 1, '18103605171', 1),
(297, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:17:10', 2, '18103605171', 1),
(298, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:17:12', 1, '18145175128', 1),
(299, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:17:13', 2, '18145175128', 1),
(300, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:17:15', 1, '18644076519', 1),
(301, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:17:16', 2, '18644076519', 1),
(302, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:17:17', 1, '15545167555', 1),
(303, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:17:18', 2, '15545167555', 1),
(304, '18145175128', '15.00', '2022-11-04 02:17:20', 1, '15684529873', 1),
(305, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:17:21', 2, '15684529873', 1),
(306, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:17:22', 3, '15684529873', 1),
(307, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:17:24', 1, '15512214666', 1),
(308, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:17:25', 2, '15512214666', 1),
(309, '15684529873', '15.00', '2022-11-04 02:17:27', 1, '18660321907', 1),
(310, '18145175128', '5.00', '2022-11-04 02:17:28', 2, '18660321907', 1),
(311, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:17:29', 3, '18660321907', 1),
(312, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:17:31', 4, '18660321907', 1),
(313, '18660321907', '15.00', '2022-11-04 02:17:32', 1, '15614634142', 1),
(314, '15684529873', '5.00', '2022-11-04 02:17:34', 2, '15614634142', 1),
(315, '18145175128', '5.00', '2022-11-04 02:17:35', 3, '15614634142', 0),
(316, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:17:36', 4, '15614634142', 1),
(317, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:17:37', 5, '15614634142', 1),
(318, '15614634142', '15.00', '2022-11-04 02:17:39', 1, '1020290473@qq.com', 1),
(319, '18660321907', '5.00', '2022-11-04 02:17:40', 2, '1020290473@qq.com', 1),
(320, '15684529873', '5.00', '2022-11-04 02:17:41', 3, '1020290473@qq.com', 1),
(321, '18145175128', '4.50', '2022-11-04 02:17:42', 4, '1020290473@qq.com', 0),
(322, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:17:43', 5, '1020290473@qq.com', 1),
(323, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:17:44', 6, '1020290473@qq.com', 1),
(324, '1020290473@qq.com', '15.00', '2022-11-04 02:17:46', 1, '15898971716', 1),
(325, '15614634142', '5.00', '2022-11-04 02:17:47', 2, '15898971716', 1),
(326, '18660321907', '5.00', '2022-11-04 02:17:48', 3, '15898971716', 1),
(327, '15684529873', '4.50', '2022-11-04 02:17:48', 4, '15898971716', 1),
(328, '18145175128', '4.50', '2022-11-04 02:17:49', 5, '15898971716', 0),
(329, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:17:50', 6, '15898971716', 1),
(330, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:17:52', 7, '15898971716', 1),
(331, '1020290473@qq.com', '15.00', '2022-11-04 02:17:54', 1, '13100970332', 1),
(332, '15614634142', '5.00', '2022-11-04 02:17:55', 2, '13100970332', 1),
(333, '18660321907', '5.00', '2022-11-04 02:17:56', 3, '13100970332', 1),
(334, '15684529873', '4.50', '2022-11-04 02:17:57', 4, '13100970332', 1),
(335, '18145175128', '4.50', '2022-11-04 02:17:58', 5, '13100970332', 0),
(336, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:17:59', 6, '13100970332', 1),
(337, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:18:00', 7, '13100970332', 1),
(338, '13100970332', '15.00', '2022-11-04 02:18:02', 1, '18254862085', 1),
(339, '1020290473@qq.com', '5.00', '2022-11-04 02:18:03', 2, '18254862085', 1),
(340, '15614634142', '5.00', '2022-11-04 02:18:03', 3, '18254862085', 1),
(341, '18660321907', '4.50', '2022-11-04 02:18:04', 4, '18254862085', 1),
(342, '15684529873', '4.50', '2022-11-04 02:18:05', 5, '18254862085', 1),
(343, '18145175128', '4.00', '2022-11-04 02:18:06', 6, '18254862085', 0),
(344, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:18:07', 7, '18254862085', 1),
(345, 'juxin2088@gmail.com', '3.00', '2022-11-04 02:18:08', 8, '18254862085', 1),
(346, '1020290473@qq.com', '15.00', '2022-11-04 02:18:10', 1, '13846737475', 1),
(347, '15614634142', '5.00', '2022-11-04 02:18:12', 2, '13846737475', 1),
(348, '18660321907', '5.00', '2022-11-04 02:18:12', 3, '13846737475', 1),
(349, '15684529873', '4.50', '2022-11-04 02:18:13', 4, '13846737475', 1),
(350, '18145175128', '4.50', '2022-11-04 02:18:14', 5, '13846737475', 0),
(351, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:18:14', 6, '13846737475', 1),
(352, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:18:15', 7, '13846737475', 1),
(353, '1020290473@qq.com', '15.00', '2022-11-04 02:18:18', 1, '15145231074', 1),
(354, '15614634142', '5.00', '2022-11-04 02:18:19', 2, '15145231074', 1),
(355, '18660321907', '5.00', '2022-11-04 02:18:19', 3, '15145231074', 1),
(356, '15684529873', '4.50', '2022-11-04 02:18:20', 4, '15145231074', 1),
(357, '18145175128', '4.50', '2022-11-04 02:18:21', 5, '15145231074', 0),
(358, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:18:22', 6, '15145231074', 1),
(359, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:18:23', 7, '15145231074', 1),
(360, '1020290473@qq.com', '15.00', '2022-11-04 02:18:25', 1, '17354380671', 1),
(361, '15614634142', '5.00', '2022-11-04 02:18:26', 2, '17354380671', 1),
(362, '18660321907', '5.00', '2022-11-04 02:18:27', 3, '17354380671', 1),
(363, '15684529873', '4.50', '2022-11-04 02:18:28', 4, '17354380671', 1),
(364, '18145175128', '4.50', '2022-11-04 02:18:29', 5, '17354380671', 0),
(365, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:18:30', 6, '17354380671', 1),
(366, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:18:31', 7, '17354380671', 1),
(367, 'juxin2088@gmail.com', '15.00', '2022-11-04 02:18:33', 1, '15846351585', 1),
(368, '15614634142', '15.00', '2022-11-04 02:18:35', 1, '13940925714', 1),
(369, '18660321907', '5.00', '2022-11-04 02:18:36', 2, '13940925714', 1),
(370, '15684529873', '5.00', '2022-11-04 02:18:37', 3, '13940925714', 1),
(371, '18145175128', '4.50', '2022-11-04 02:18:38', 4, '13940925714', 0),
(372, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:18:39', 5, '13940925714', 1),
(373, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:18:40', 6, '13940925714', 1),
(374, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:18:42', 1, '18063560866', 1),
(375, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:18:43', 2, '18063560866', 1),
(376, '18063560866', '15.00', '2022-11-04 02:18:45', 1, '15615948345', 1),
(377, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:18:46', 2, '15615948345', 1),
(378, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:18:47', 3, '15615948345', 1),
(379, '15615948345', '15.00', '2022-11-04 02:18:49', 1, '18006352195', 1),
(380, '18063560866', '5.00', '2022-11-04 02:18:50', 2, '18006352195', 1),
(381, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:18:51', 3, '18006352195', 1),
(382, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:18:52', 4, '18006352195', 1),
(383, '15545167555', '15.00', '2022-11-04 02:18:54', 1, '13804633533', 1),
(384, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:18:55', 2, '13804633533', 1),
(385, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:18:56', 3, '13804633533', 1),
(386, '15615948345', '15.00', '2022-11-04 02:18:58', 1, '13766731806', 1),
(387, '18063560866', '5.00', '2022-11-04 02:18:59', 2, '13766731806', 1),
(388, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:19:00', 3, '13766731806', 1),
(389, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:19:01', 4, '13766731806', 1),
(391, '15684529873', '5.00', '2022-11-04 02:19:16', 2, '15663833367', 1),
(392, '18145175128', '5.00', '2022-11-04 02:19:17', 3, '15663833367', 0),
(393, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:19:18', 4, '15663833367', 1),
(394, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:19:20', 5, '15663833367', 1),
(395, '13846737475', '15.00', '2022-11-04 02:19:21', 1, '15845588227', 1),
(396, '1020290473@qq.com', '5.00', '2022-11-04 02:19:22', 2, '15845588227', 1),
(397, '15614634142', '5.00', '2022-11-04 02:19:23', 3, '15845588227', 1),
(398, '18660321907', '4.50', '2022-11-04 02:19:24', 4, '15845588227', 1),
(399, '15684529873', '4.50', '2022-11-04 02:19:25', 5, '15845588227', 1),
(400, '18145175128', '4.00', '2022-11-04 02:19:26', 6, '15845588227', 0),
(401, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:19:27', 7, '15845588227', 1),
(402, 'juxin2088@gmail.com', '3.00', '2022-11-04 02:19:28', 8, '15845588227', 1),
(403, '13804633533', '15.00', '2022-11-04 02:19:30', 1, '13664502459', 1),
(404, '15545167555', '5.00', '2022-11-04 02:19:31', 2, '13664502459', 1),
(405, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:19:32', 3, '13664502459', 1),
(406, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:19:33', 4, '13664502459', 1),
(407, '15512214666', '15.00', '2022-11-04 02:19:35', 1, '15630872344', 1),
(408, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:19:36', 2, '15630872344', 1),
(409, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:19:37', 3, '15630872344', 1),
(410, '15630872344', '15.00', '2022-11-04 02:19:39', 1, '13731252169', 1),
(411, '15512214666', '5.00', '2022-11-04 02:19:40', 2, '13731252169', 1),
(412, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:19:41', 3, '13731252169', 1),
(413, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:19:42', 4, '13731252169', 1),
(414, '15684529873', '15.00', '2022-11-04 02:19:44', 1, '13694605720', 1),
(415, '18145175128', '5.00', '2022-11-04 02:19:45', 2, '13694605720', 1),
(416, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:19:46', 3, '13694605720', 1),
(417, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:19:47', 4, '13694605720', 1),
(418, '13731252169', '15.00', '2022-11-04 02:19:49', 1, '18233336433', 1),
(419, '15630872344', '5.00', '2022-11-04 02:19:50', 2, '18233336433', 1),
(420, '15512214666', '5.00', '2022-11-04 02:19:51', 3, '18233336433', 0),
(421, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:19:52', 4, '18233336433', 1),
(422, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:19:53', 5, '18233336433', 1),
(423, '18233336433', '15.00', '2022-11-04 02:19:55', 1, '18832222502', 1),
(424, '13731252169', '5.00', '2022-11-04 02:19:56', 2, '18832222502', 1),
(425, '15630872344', '5.00', '2022-11-04 02:19:57', 3, '18832222502', 0),
(426, '15512214666', '4.50', '2022-11-04 02:19:58', 4, '18832222502', 0),
(427, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:19:59', 5, '18832222502', 1),
(428, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:20:00', 6, '18832222502', 1),
(429, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:20:02', 1, '15764570707', 1),
(430, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:20:03', 2, '15764570707', 1),
(431, '18832222502', '15.00', '2022-11-04 02:20:05', 1, '16630205999', 1),
(432, '18233336433', '5.00', '2022-11-04 02:20:06', 2, '16630205999', 1),
(433, '13731252169', '5.00', '2022-11-04 02:20:07', 3, '16630205999', 1),
(434, '15630872344', '4.50', '2022-11-04 02:20:08', 4, '16630205999', 0),
(435, '15512214666', '4.50', '2022-11-04 02:20:09', 5, '16630205999', 0),
(436, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:20:10', 6, '16630205999', 1),
(437, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:20:11', 7, '16630205999', 1),
(438, '16630205999', '15.00', '2022-11-04 02:20:13', 1, '15128234513', 1),
(439, '18832222502', '5.00', '2022-11-04 02:20:14', 2, '15128234513', 1),
(440, '18233336433', '5.00', '2022-11-04 02:20:15', 3, '15128234513', 0),
(441, '13731252169', '4.50', '2022-11-04 02:20:16', 4, '15128234513', 1),
(442, '15630872344', '4.50', '2022-11-04 02:20:17', 5, '15128234513', 0),
(443, '15512214666', '4.00', '2022-11-04 02:20:18', 6, '15128234513', 0),
(444, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:20:19', 7, '15128234513', 1),
(445, 'juxin2088@gmail.com', '3.00', '2022-11-04 02:20:20', 8, '15128234513', 1),
(446, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:20:22', 1, '17645544005', 1),
(447, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:20:23', 2, '17645544005', 1),
(448, '15128234513', '15.00', '2022-11-04 02:20:25', 1, '1932631490@qq.com', 1),
(449, '15764570707', '15.00', '2022-11-04 02:20:26', 1, '15846831081', 1),
(450, '16630205999', '5.00', '2022-11-04 02:20:27', 2, '1932631490@qq.com', 1),
(451, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:20:28', 2, '15846831081', 1),
(452, '18832222502', '5.00', '2022-11-04 02:20:29', 3, '1932631490@qq.com', 0),
(453, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:20:30', 3, '15846831081', 1),
(454, '18233336433', '4.50', '2022-11-04 02:20:31', 4, '1932631490@qq.com', 0),
(455, '13731252169', '4.50', '2022-11-04 02:20:33', 5, '1932631490@qq.com', 1),
(456, '15630872344', '4.00', '2022-11-04 02:20:34', 6, '1932631490@qq.com', 0),
(457, '15512214666', '4.00', '2022-11-04 02:20:35', 7, '1932631490@qq.com', 0),
(458, 'liwen77667@gmail.com', '3.00', '2022-11-04 02:20:36', 8, '1932631490@qq.com', 1),
(459, 'juxin2088@gmail.com', '3.00', '2022-11-04 02:20:37', 9, '1932631490@qq.com', 1),
(460, '13846737475', '15.00', '2022-11-04 02:20:39', 1, '18346445167', 1),
(461, '1020290473@qq.com', '5.00', '2022-11-04 02:20:40', 2, '18346445167', 1),
(462, '15614634142', '5.00', '2022-11-04 02:20:41', 3, '18346445167', 1),
(463, '18660321907', '4.50', '2022-11-04 02:20:42', 4, '18346445167', 1),
(464, '15684529873', '4.50', '2022-11-04 02:20:43', 5, '18346445167', 1),
(465, '18145175128', '4.00', '2022-11-04 02:20:44', 6, '18346445167', 0),
(466, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:20:45', 7, '18346445167', 1),
(467, 'juxin2088@gmail.com', '3.00', '2022-11-04 02:20:46', 8, '18346445167', 1),
(468, '15545167555', '15.00', '2022-11-04 02:20:48', 1, '13804614119', 1),
(469, 'liwen77667@gmail.com', '5.00', '2022-11-04 02:20:49', 2, '13804614119', 1),
(470, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:20:50', 3, '13804614119', 1),
(471, '13846737475', '15.00', '2022-11-04 02:20:52', 1, '18346445827', 1),
(472, '1020290473@qq.com', '5.00', '2022-11-04 02:20:53', 2, '18346445827', 1),
(473, '15614634142', '5.00', '2022-11-04 02:20:54', 3, '18346445827', 1),
(474, '18660321907', '4.50', '2022-11-04 02:20:55', 4, '18346445827', 1),
(475, '15684529873', '4.50', '2022-11-04 02:20:56', 5, '18346445827', 1),
(476, '18145175128', '4.00', '2022-11-04 02:20:57', 6, '18346445827', 0),
(477, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:20:58', 7, '18346445827', 1),
(478, 'juxin2088@gmail.com', '3.00', '2022-11-04 02:20:59', 8, '18346445827', 1),
(479, 'liwen77667@gmail.com', '15.00', '2022-11-04 02:21:01', 1, '19860799392', 1),
(480, 'juxin2088@gmail.com', '5.00', '2022-11-04 02:21:02', 2, '19860799392', 1),
(481, '13694605720', '15.00', '2022-11-04 02:21:04', 1, '13644268453', 1),
(482, '15684529873', '5.00', '2022-11-04 02:21:05', 2, '13644268453', 1),
(483, '18145175128', '5.00', '2022-11-04 02:21:06', 3, '13644268453', 0),
(484, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:21:07', 4, '13644268453', 1),
(485, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:21:08', 5, '13644268453', 1),
(486, '13694605720', '15.00', '2022-11-04 02:21:10', 1, '13694601666', 1),
(487, '15684529873', '5.00', '2022-11-04 02:21:11', 2, '13694601666', 1),
(488, '18145175128', '5.00', '2022-11-04 02:21:12', 3, '13694601666', 0),
(489, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:21:13', 4, '13694601666', 1),
(490, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:21:14', 5, '13694601666', 1),
(491, '1932631490@qq.com', '15.00', '2022-11-04 02:21:16', 1, '15703124755', 1),
(492, '15128234513', '5.00', '2022-11-04 02:21:17', 2, '15703124755', 1),
(493, '16630205999', '5.00', '2022-11-04 02:21:18', 3, '15703124755', 0),
(494, '18832222502', '4.50', '2022-11-04 02:21:19', 4, '15703124755', 0),
(495, '18233336433', '4.50', '2022-11-04 02:21:20', 5, '15703124755', 0),
(496, '13731252169', '4.00', '2022-11-04 02:21:21', 6, '15703124755', 1),
(497, '15630872344', '4.00', '2022-11-04 02:21:22', 7, '15703124755', 0),
(498, '15512214666', '3.00', '2022-11-04 02:21:23', 8, '15703124755', 0),
(499, 'liwen77667@gmail.com', '3.00', '2022-11-04 02:21:24', 9, '15703124755', 1),
(500, 'juxin2088@gmail.com', '2.50', '2022-11-04 02:21:25', 10, '15703124755', 1),
(501, '15703124755', '15.00', '2022-11-04 02:21:27', 1, '13933288283', 1),
(502, '1932631490@qq.com', '5.00', '2022-11-04 02:21:28', 2, '13933288283', 1),
(503, '15128234513', '5.00', '2022-11-04 02:21:29', 3, '13933288283', 0),
(504, '16630205999', '4.50', '2022-11-04 02:21:30', 4, '13933288283', 0),
(505, '18832222502', '4.50', '2022-11-04 02:21:31', 5, '13933288283', 0),
(506, '18233336433', '4.00', '2022-11-04 02:21:32', 6, '13933288283', 0),
(507, '13731252169', '4.00', '2022-11-04 02:21:33', 7, '13933288283', 1),
(508, '15630872344', '3.00', '2022-11-04 02:21:34', 8, '13933288283', 0),
(509, '15512214666', '3.00', '2022-11-04 02:21:35', 9, '13933288283', 0),
(510, 'liwen77667@gmail.com', '2.50', '2022-11-04 02:21:36', 10, '13933288283', 1),
(511, 'juxin2088@gmail.com', '2.50', '2022-11-04 02:21:37', 11, '13933288283', 1),
(512, '13731252169', '15.00', '2022-11-04 02:21:39', 1, '18940171701', 1),
(513, '15630872344', '5.00', '2022-11-04 02:21:40', 2, '18940171701', 1),
(514, '15512214666', '5.00', '2022-11-04 02:21:41', 3, '18940171701', 0),
(515, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:21:42', 4, '18940171701', 1),
(516, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:21:43', 5, '18940171701', 1),
(517, '13731252169', '15.00', '2022-11-04 02:21:45', 1, '15128227938', 1),
(518, '15630872344', '5.00', '2022-11-04 02:21:46', 2, '15128227938', 1),
(519, '15512214666', '5.00', '2022-11-04 02:21:47', 3, '15128227938', 0),
(520, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:21:48', 4, '15128227938', 1),
(521, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:21:49', 5, '15128227938', 1),
(522, '13694605720', '15.00', '2022-11-04 02:21:51', 1, '13945670905', 1),
(523, '15684529873', '5.00', '2022-11-04 02:21:52', 2, '13945670905', 1),
(524, '18145175128', '5.00', '2022-11-04 02:21:53', 3, '13945670905', 0),
(525, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:21:54', 4, '13945670905', 1),
(526, 'juxin2088@gmail.com', '4.50', '2022-11-04 02:21:55', 5, '13945670905', 1),
(527, '13644268453', '15.00', '2022-11-04 02:21:57', 1, '18550954151', 1),
(528, '13694605720', '5.00', '2022-11-04 02:21:58', 2, '18550954151', 1),
(529, '15684529873', '5.00', '2022-11-04 02:21:59', 3, '18550954151', 1),
(530, '18145175128', '4.50', '2022-11-04 02:22:00', 4, '18550954151', 0),
(531, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:22:01', 5, '18550954151', 1),
(532, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:22:02', 6, '18550954151', 1),
(533, '13100970332', '15.00', '2022-11-04 02:22:04', 1, '15663685686', 1),
(534, '1020290473@qq.com', '5.00', '2022-11-04 02:22:05', 2, '15663685686', 1),
(535, '15614634142', '5.00', '2022-11-04 02:22:06', 3, '15663685686', 1),
(536, '18660321907', '4.50', '2022-11-04 02:22:07', 4, '15663685686', 1),
(537, '15684529873', '4.50', '2022-11-04 02:22:08', 5, '15663685686', 1),
(538, '18145175128', '4.00', '2022-11-04 02:22:09', 6, '15663685686', 0),
(539, 'liwen77667@gmail.com', '4.00', '2022-11-04 02:22:10', 7, '15663685686', 1),
(540, 'juxin2088@gmail.com', '3.00', '2022-11-04 02:22:11', 8, '15663685686', 1),
(541, '15128227938', '15.00', '2022-11-04 02:22:13', 1, '18932666645', 1),
(542, '13731252169', '5.00', '2022-11-04 02:22:14', 2, '18932666645', 1),
(543, '15630872344', '5.00', '2022-11-04 02:22:15', 3, '18932666645', 0),
(544, '15512214666', '4.50', '2022-11-04 02:22:16', 4, '18932666645', 0),
(545, 'liwen77667@gmail.com', '4.50', '2022-11-04 02:22:17', 5, '18932666645', 1),
(546, 'juxin2088@gmail.com', '4.00', '2022-11-04 02:22:18', 6, '18932666645', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_recharge`
--

DROP TABLE IF EXISTS `wab_customer_recharge`;
CREATE TABLE IF NOT EXISTS `wab_customer_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` decimal(18,8) NOT NULL COMMENT '充值数量',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `status` int(11) NOT NULL COMMENT '状态',
  `to_address` varchar(255) NOT NULL COMMENT '充值的地址',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_transfer`
--

DROP TABLE IF EXISTS `wab_customer_transfer`;
CREATE TABLE IF NOT EXISTS `wab_customer_transfer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_transfer` varchar(255) DEFAULT NULL COMMENT '从哪转的',
  `to_transfer` varchar(255) DEFAULT NULL COMMENT '转到哪',
  `trade_amount` decimal(18,4) DEFAULT NULL COMMENT '交易金额',
  `trade_time` datetime DEFAULT NULL COMMENT '交易的时间',
  `fee` decimal(18,4) DEFAULT NULL COMMENT '手续费',
  `trade_amount_unit` varchar(255) DEFAULT NULL COMMENT '金额单位',
  `from_address` varchar(255) DEFAULT NULL,
  `to_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COMMENT='转账记录';

--
-- 转存表中的数据 `wab_customer_transfer`
--

INSERT INTO `wab_customer_transfer` (`id`, `from_transfer`, `to_transfer`, `trade_amount`, `trade_time`, `fee`, `trade_amount_unit`, `from_address`, `to_address`) VALUES
(28, 'liwen77667@gmail.com', '1667129427116543091', '240.0000', '2022-10-30 19:45:59', '0.0000', 'usdt', NULL, NULL),
(29, 'liwen77667@gmail.com', '1667130606722445314', '240.0000', '2022-10-30 19:51:43', '0.0000', 'usdt', NULL, NULL),
(30, 'liwen77667@gmail.com', '1667129353921156673', '240.0000', '2022-10-30 20:23:39', '0.0000', 'usdt', NULL, NULL),
(31, '18660321907', '1667128625574397120', '480.0000', '2022-10-30 20:45:16', '0.0000', 'usdt', NULL, NULL),
(32, 'liwen77667@gmail.com', '1667134124422421033', '240.0000', '2022-10-30 20:51:30', '0.0000', 'usdt', NULL, NULL),
(33, 'liwen77667@gmail.com', '1667134445034112989', '240.0000', '2022-10-30 20:55:14', '0.0000', 'usdt', NULL, NULL),
(37, '18382440667', '17354380671', '1.0000', '2022-10-31 05:03:06', '0.0000', 'usdt', NULL, NULL),
(38, '1020290473@qq.com', '1667192192619823256', '240.0000', '2022-10-31 13:18:37', '0.0000', 'usdt', NULL, NULL),
(39, '1020290473@qq.com', '1667194212081531665', '240.0000', '2022-10-31 13:34:29', '0.0000', 'usdt', NULL, NULL),
(40, '15614634142', '1667207737324537144', '240.0000', '2022-10-31 17:53:11', '0.0000', 'usdt', NULL, NULL),
(41, '15614634142', '1667194583603649621', '240.0000', '2022-10-31 17:55:43', '0.0000', 'usdt', NULL, NULL),
(42, '18063560866', '15615948345', '240.0000', '2022-10-31 18:36:51', '0.0000', 'usdt', NULL, NULL),
(43, 'liwen77667@gmail.com', '18006352195', '240.0000', '2022-10-31 18:45:13', '0.0000', 'usdt', NULL, NULL),
(44, 'liwen77667@gmail.com', '13244500016', '240.0000', '2022-10-31 20:36:27', '0.0000', 'usdt', NULL, NULL),
(45, 'liwen77667@gmail.com', '13244568766', '240.0000', '2022-10-31 20:48:50', '0.0000', 'usdt', NULL, NULL),
(46, 'juxin2088@gmail.com', '1667128625574397120', '6.0000', '2022-10-31 21:01:46', '0.0000', 'usdt', NULL, NULL),
(47, 'liwen77667@gmail.com', '85130016@qq.com', '240.0000', '2022-10-31 21:10:52', '0.0000', 'usdt', NULL, NULL),
(48, '13244568766', '13244500016', '15.0000', '2022-10-31 21:37:59', '0.0000', 'usdt', NULL, NULL),
(49, 'liwen77667@gmail.com', '13766731806', '240.0000', '2022-11-01 16:00:13', '0.0000', 'usdt', NULL, NULL),
(50, '18145175128', '1667134445034112989', '20.0000', '2022-11-01 23:27:40', '0.0000', 'usdt', NULL, NULL),
(51, '15684529873', '1667134445034112989', '25.0000', '2022-11-01 23:30:09', '0.0000', 'usdt', NULL, NULL),
(52, '18660321907', '1667134445034112989', '74.0000', '2022-11-01 23:31:07', '0.0000', 'usdt', NULL, NULL),
(53, '15614634142', '1667134445034112989', '65.0000', '2022-11-01 23:32:19', '0.0000', 'usdt', NULL, NULL),
(54, '1020290473@qq.com', '1667358011352579538', '240.0000', '2022-11-02 11:05:07', '0.0000', 'usdt', NULL, NULL),
(55, '15630872344', '13731252169', '240.0000', '2022-11-02 11:10:05', '0.0000', 'usdt', NULL, NULL),
(56, '18233336433', '18832222502', '240.0000', '2022-11-02 11:53:22', '0.0000', 'usdt', NULL, NULL),
(57, '13766625244', '1667128625574397120', '4.5000', '2022-11-02 11:57:10', '0.0000', 'pyy', NULL, NULL),
(58, '18233336433', '16630205999', '280.2000', '2022-11-02 12:05:49', '0.0000', 'usdt', NULL, NULL),
(59, '16630205999', '15128234513', '240.0000', '2022-11-02 12:29:39', '0.0000', 'usdt', NULL, NULL),
(60, '16630205999', '1932631490@qq.com', '240.0000', '2022-11-02 12:38:59', '0.0000', 'usdt', NULL, NULL),
(61, 'liwen77667@gmail.com', '17645544005', '240.0000', '2022-11-02 12:49:35', '0.0000', 'usdt', NULL, NULL),
(62, '15764570707', '15846831081', '240.0000', '2022-11-02 13:33:37', '0.0000', 'usdt', NULL, NULL),
(63, 'liwen77667@gmail.com', '19860799392', '240.0000', '2022-11-02 15:02:59', '0.0000', 'usdt', NULL, NULL),
(64, '13731252169', '1667194583603649621', '480.0000', '2022-11-02 15:08:42', '0.0000', 'usdt', NULL, NULL),
(65, '13846737475', '18346445167', '240.0000', '2022-11-02 15:11:25', '0.0000', 'usdt', NULL, NULL),
(66, '13846737475', '18346445827', '240.0000', '2022-11-02 15:14:44', '0.0000', 'usdt', NULL, NULL),
(67, '15615948345', '18063560866', '30.0000', '2022-11-02 15:33:50', '0.0000', 'usdt', NULL, NULL),
(68, '18063560866', '1667128625574397120', '55.0000', '2022-11-02 15:36:10', '0.0000', 'usdt', NULL, NULL),
(69, '15703124755', '13933288283', '240.0000', '2022-11-02 17:47:35', '0.0000', 'usdt', NULL, NULL),
(70, '1020290473@qq.com', '1667464662676567085', '240.0000', '2022-11-03 18:01:33', '0.0000', 'usdt', NULL, NULL),
(71, '13731252169', '15128227938', '149.0000', '2022-11-03 18:02:48', '0.0000', 'usdt', NULL, NULL),
(72, '15512214666', '15128227938', '20.0000', '2022-11-03 18:04:11', '0.0000', 'usdt', NULL, NULL),
(73, '15630872344', '15128227938', '25.0000', '2022-11-03 18:05:33', '0.0000', 'usdt', NULL, NULL),
(74, '1020290473@qq.com', '1667380367568466671', '240.0000', '2022-11-03 18:06:26', '0.0000', 'usdt', NULL, NULL),
(75, '1020290473@qq.com', '1667379573078450996', '240.0000', '2022-11-03 18:08:41', '0.0000', 'usdt', NULL, NULL),
(76, '15512214666', '18932666645', '109.0000', '2022-11-03 18:32:11', '0.0000', 'usdt', NULL, NULL),
(77, '1020290473@qq.com', '1667470384733510220', '240.0000', '2022-11-03 18:32:18', '0.0000', 'usdt', NULL, NULL),
(78, '13644268453', '18660321907', '15.0000', '2022-11-03 21:56:53', '0.0000', 'usdt', NULL, NULL),
(79, 'liwen77667@gmail.com', '13439397777', '240.0000', '2022-11-04 05:47:28', '0.0000', 'usdt', NULL, NULL),
(80, 'liwen77667@gmail.com', '731192801@qq.com', '240.0000', '2022-11-04 07:03:24', '0.0000', 'usdt', NULL, NULL),
(81, 'liwen77667@gmail.com', '1132046559@qq.com', '240.0000', '2022-11-04 07:33:08', '0.0000', 'usdt', NULL, NULL),
(82, 'liwen77667@gmail.com', '13946084062', '240.0000', '2022-11-04 20:53:19', '0.0000', 'usdt', NULL, NULL),
(83, 'liwen77667@gmail.com', '18145175128', '480.0000', '2022-11-04 21:07:39', '0.0000', 'usdt', NULL, NULL),
(84, '18145175128', '1667566243411623064', '240.0000', '2022-11-04 21:08:15', '0.0000', 'usdt', NULL, NULL),
(85, '18145175128', '1667567482030109697', '240.0000', '2022-11-04 21:37:12', '0.0000', 'usdt', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_user`
--

DROP TABLE IF EXISTS `wab_customer_user`;
CREATE TABLE IF NOT EXISTS `wab_customer_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL COMMENT '手机号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `active_status` int(11) DEFAULT '0' COMMENT '激活状态(0未激活，1激活)',
  `pyy_num` decimal(18,8) DEFAULT '0.00000000' COMMENT 'pyy数量',
  `invite_code` varchar(255) DEFAULT NULL COMMENT '邀请码',
  `usdt_num` decimal(18,8) DEFAULT '0.00000000' COMMENT 'usdt数量',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `invite_id` bigint(20) DEFAULT NULL COMMENT '邀请人id',
  `active_time` datetime DEFAULT NULL COMMENT '激活时间',
  `invite_parent_ids` text COMMENT '邀请人id集合',
  `uid` varchar(255) DEFAULT NULL,
  `sum_income` decimal(18,8) DEFAULT '0.00000000' COMMENT '累加收益',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `wallet_address` varchar(255) DEFAULT NULL COMMENT '钱包地址',
  `ip_address` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `ip_property` varchar(255) DEFAULT NULL COMMENT 'ip属地',
  `black_status` int(11) DEFAULT '0' COMMENT '黑名单的状态(0非黑名单，1黑名单)',
  `frozen_pyy_num` decimal(18,8) NOT NULL DEFAULT '0.00000000' COMMENT '冻结的pyy数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COMMENT='移动端用户表';

--
-- 转存表中的数据 `wab_customer_user`
--

INSERT INTO `wab_customer_user` (`id`, `name`, `phone`, `password`, `active_status`, `pyy_num`, `invite_code`, `usdt_num`, `create_time`, `invite_id`, `active_time`, `invite_parent_ids`, `uid`, `sum_income`, `email`, `wallet_address`, `ip_address`, `ip_property`, `black_status`, `frozen_pyy_num`) VALUES
(59, NULL, 'juxin2088@gmail.com', '$2a$10$HJmeCDS2A3P6MEe.yXeJwOdJwATOeKDoTEBEROMdUCa.MKPVNoG/q', 1, '318.40906519', 'SP76ZFK8', '283.00000000', '2022-10-30 18:38:37', 58, '2022-10-30 19:13:59', '58', '1667126317273114331', '18.40906519', NULL, 'TM5xFA5j3ohY2mJ2ZoQ148yigPbntXdV4g', '49.237.21.235', ' ', 0, '0.00000000'),
(60, NULL, '1939823447@qq.com', '$2a$10$eP1nYbUBWCZI3sAw4jqNqOhl3I6pQQGjoJaSImUoiAa82O5ck27cm', 0, '0.00000000', 'V5NRVFBS', '0.00000000', '2022-10-30 18:44:53', 58, NULL, '58', '1667126692605307305', '0.00000000', NULL, 'TCUixPKjfs7RSr1qVUFkTVxoLxBYi8tFAV', '36.19.169.191', '浙江省 杭州市', 0, '0.00000000'),
(62, NULL, 'liwen77667@gmail.com', '$2a$10$rYAuE47xrrygvL4gSU12NuFK/eJ6AzzbaUSzwqUch7/YdrmNU3wa2', 1, '327.68520200', 'PEGDYF62', '325.80000000', '2022-10-30 19:17:06', 59, '2022-10-30 19:20:51', '58,59', '1667128625574397120', '23.18520117', NULL, 'THiYcevrv33Fb4Xbp7GovvygbiPBJh7L4C', '49.237.14.132', ' ', 0, '0.00000000'),
(63, NULL, '18103605171', '$2a$10$2lnx4ilBy3idqezXKr6VHeAyAZ9B5dZffAtCy9gnTXTOphYpwj4Qm', 1, '323.18520117', 'NBDJKUHE', '1.80000000', '2022-10-30 19:29:14', 62, '2022-10-31 15:50:41', '58,59,62', '1667129353921156673', '23.18520117', NULL, 'TPb53NNdKis8tboykUoFkDn2FPorf8AYDb', '42.102.157.206', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(64, NULL, '18145175128', '$2a$10$oXNfRqTsrQoKUuOW8QPCs.Bwvtw49pSr1rIFTcK0E713Gr2sJj9Sy', 1, '323.18520117', 'L9CPXFJH', '118.50000000', '2022-10-30 19:30:27', 62, '2022-10-30 19:46:35', '58,59,62', '1667129427116543091', '23.18520117', NULL, 'TEbn6wYh7po4Q6XgkpYwUGYjTobdNAxDjB', '1.189.82.191', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(65, NULL, '18644076519', '$2a$10$rx9LfFNyo9Hmvnwb0iD7gOvhrXBe0P7NUw9N4Ee9HNtdPC3KRO0ZO', 1, '323.18520117', '5H4NHFA2', '0.00000000', '2022-10-30 19:43:39', 62, '2022-10-30 19:51:42', '58,59,62', '1667130218578625928', '23.18520117', NULL, 'TJKayoXRRE9te3S9MQvZbJE7HpS55TVDwZ', '113.4.45.100', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(66, NULL, '15545167555', '$2a$10$VQu7DIO1ERBlrCslBPdu9OVulmT4BUze2wh3sP/A.SALqWZx7vAJ6', 1, '323.18520117', '3QMLAFWT', '40.00000000', '2022-10-30 19:48:02', 62, '2022-10-30 20:21:16', '58,59,62', '1667130481924647062', '23.18520117', NULL, 'TQkkmmsv57nycacFbdwRn5nBBx92pmbBhv', '112.102.159.229', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(67, NULL, '15684529873', '$2a$10$V9A6qhQEqt84uZBz1yS0AOLP6YXDLrLzUBrDWMaVPL3rj8hkSgKne', 1, '323.18520117', 'MWU5ZFZR', '99.00000000', '2022-10-30 19:50:07', 64, '2022-10-30 19:51:58', '58,59,62,64', '1667130606722445314', '23.18520117', NULL, 'TKkvAk5BFsZY4N1fHC2m7pr4iUKhtopUBv', '1.189.82.191', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(68, NULL, '15512214666', '$2a$10$wE4vPQX7lipwUwW4GmStoe4c9RyiSdfCkPX6nGC.wM/fgXzBpzFhe', 1, '323.18520117', 'Y7R3VTTL', '0.00000000', '2022-10-30 19:50:37', 62, '2022-10-31 21:14:45', '58,59,62', '1667130637151525467', '23.18520117', NULL, 'TPUPbwLoi9xwUgfvm71AzqeCiaraufs4X5', '61.159.16.20', '河北省 保定市', 0, '0.00000000'),
(69, NULL, '18660321907', '$2a$10$oL8wKEX2A6rfMxoFXJMplecL77QBVuEMNzl6urSHJAaBZDMW8JW.u', 1, '323.18520117', '2VFMLFV7', '38.00000000', '2022-10-30 19:55:15', 67, '2022-10-30 20:36:59', '58,59,62,64,67', '1667130915398215650', '23.18520117', NULL, 'TFQ7uXkRVsLcR7PBxpe9PvGe96bvDKuemw', '1.189.82.191', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(70, NULL, '18670872979', '$2a$10$xoXea65VMgRtxg1.e5jWpO0kkDQ4YPNW6gYay75vBr.7S.h4GY7lq', 0, '0.00000000', '8NSYYFP6', '0.00000000', '2022-10-30 20:12:43', NULL, NULL, NULL, '1667131962539983992', '0.00000000', NULL, 'TRtNrPfkyiQRbfchKwsyr5cihPFHmsDZ53', '124.160.214.174', '浙江省 杭州市', 0, '0.00000000'),
(71, NULL, '15614634142', '$2a$10$p5ZuwDJ8HEVUt/nMfyqMaeYbxbX40svGqplYUWkToKBL7JH/jFv5W', 1, '323.18520117', 'E352KFLM', '25.00000000', '2022-10-30 20:48:44', 69, '2022-10-30 20:52:10', '58,59,62,64,67,69', '1667134124422421033', '23.18520117', NULL, 'TEoHoDoLcb97mZkniQGCUyABSn5U9uLdYX', '1.189.82.191', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(72, NULL, '1020290473@qq.com', '$2a$10$sj6h3meqQoYrHoVhFQzbxO6v.Hj/2844kxFWbhS6FFBqfYgzh4iw.', 1, '323.18520117', 'K2E8XF3Z', '63.20150300', '2022-10-30 20:54:05', 71, '2022-10-30 21:01:27', '58,59,62,64,67,69,71', '1667134445034112989', '23.18520117', NULL, 'TELkmzrdC3NSp9khhsxwYdggQkWAcNa7Jt', '1.189.82.191', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(85, NULL, '18382440667', '$2a$10$aZGGZGhG9yevWNIYKpi2rO8dFw1Ib7FO3NidrwpszMCUNZ7ItfRbi', 1, '323.18520117', 'FXFULFVG', '-241.00000000', '2022-10-31 04:57:26', NULL, '2022-10-31 05:02:01', NULL, '1667163446460423592', '23.18520117', NULL, 'TB8gSpyAAEwFDuQukeEzaZY4LGEAYonfJM', '36.19.182.87', '浙江省 杭州市', 0, '0.00000000'),
(86, NULL, '15898971716', '$2a$10$dUy7M.WHUpuS76v8JyayeuSXvGbpeHD22IshJf3e.gGCQXJvx/Xve', 1, '323.18520117', 'WRSBYVPT', '15.00000000', '2022-10-31 12:03:57', 72, '2022-10-31 13:50:22', '58,59,62,64,67,69,71,72', '1667189036581667147', '23.18520117', NULL, 'THpQ9UoPvcMWCrNxSLQE7iS6RJcvyjQRmp', '111.37.144.145', '山东省 威海市', 0, '0.00000000'),
(91, NULL, '13100970332', '$2a$10$UwlArmtWuXWkoUB2QXwEQ.Wc7ezOx.DW3Yx/db0EU9N4tXw5rnpi2', 1, '323.18520117', 'SP7RZXKQ', '30.00000000', '2022-10-31 12:56:33', 72, '2022-10-31 13:19:56', '58,59,62,64,67,69,71,72', '1667192192619823256', '23.18520117', NULL, 'TADnJzbDRY1k6BLGQ6AgLjkLUD1Mp67Xdm', '111.35.247.90', '山东省 威海市', 0, '0.00000000'),
(93, NULL, '15383208396', '$2a$10$nJTyckx6KXUjAyLd0HRL2upgadc1Lb2igmEsgYUIK89AQOz2E5YWq', 0, '0.00000000', '', '0.00000000', '2022-10-31 13:11:26', NULL, NULL, NULL, '1667193085817814341', '0.00000000', NULL, 'TBBaFC5Yy6aVYF17smmEn2yr2GjNrjZuWr', '123.158.254.125', '浙江省 湖州市', 0, '0.00000000'),
(95, NULL, '18254862085', '$2a$10$UcXTRnzhHvzYu812mYKUoelfNfdOgvrg5lsZChasWbD/7/XE0czTu', 1, '323.18520117', 'NBDQKXHE', '0.00000000', '2022-10-31 13:30:12', 91, '2022-10-31 13:34:42', '58,59,62,64,67,69,71,72,91', '1667194212081531665', '23.18520117', NULL, 'TQfChVSYsotHYYzd4C3AbTJSzW41wf4f9k', '111.35.247.90', '山东省 威海市', 0, '0.00000000'),
(96, NULL, '13846737475', '$2a$10$UlZX5ionV0TkDe8nCQJtnOJPCSwQOoF6U8ZboGvfPITVmgml4/jum', 1, '318.40906519', 'L9CNX4JX', '45.00000000', '2022-10-31 13:36:24', 72, '2022-10-31 17:56:30', '58,59,62,64,67,69,71,72', '1667194583603649621', '18.40906519', NULL, 'TVf1Sygo21n9uyfTEdcAjKivvxUgRP22Bn', '117.179.158.170', '黑龙江省 绥化市', 0, '0.00000000'),
(97, NULL, '15145231074', '$2a$10$xWILSAtcBcp8woXGAypys.vM1vM4nKcz95EvM1h6xOjiKA5iJ8tQi', 1, '313.70351250', '5H4LH9AD', '0.00000000', '2022-10-31 13:42:25', 72, '2022-10-31 15:38:00', '58,59,62,64,67,69,71,72', '1667194945182551853', '13.70351250', NULL, 'TVSXpFyV6CvHnykkRcV1tanqJsqunfmRnX', '122.157.149.195', '黑龙江省 齐齐哈尔市', 0, '0.00000000'),
(98, NULL, '17354380671', '$2a$10$TWNuKUz2KUuW5l8mxMmN3erja6ZHFNuHnafxH4J46Tqdm0uQZK0Vm', 1, '313.70351250', '3QM5A4WW', '-239.00000000', '2022-10-31 13:42:43', 72, '2022-10-31 16:24:59', '58,59,62,64,67,69,71,72', '1667194962702617217', '13.70351250', NULL, 'TBx4Nje6tdJntz4ophHGjGXXtWqzu39i86', '122.238.183.17', '浙江省 嘉兴市', 0, '0.00000000'),
(99, NULL, '13796771520', '$2a$10$YhWNn/rIQLPb7cIUBpoB8OfjDKZKrq/fxz4Ert.AyeT48Zsvq/7Ce', 0, '0.00000000', NULL, '0.00000000', '2022-10-31 16:19:41', 63, NULL, '58,59,62,63', '1667204380641874037', '0.00000000', NULL, 'TG6WUennR4TDHP6QykKxyp62VXVRxoBJX6', '123.167.61.6', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(100, NULL, '15846351585', '$2a$10$hOy9SirwukdR/yrDp5B/Fu7dfvQusdkZOvkD2hFgz3CwoVS/D38.y', 1, '309.06750000', 'Y7RMV4TL', '1.00000000', '2022-10-31 17:00:46', 59, '2022-10-31 17:03:22', '58,59', '1667206845780345583', '9.06750000', NULL, 'TC93wU5xN7EdScbKZrELUB1B1neXD7ya34', '49.237.22.35', ' ', 0, '0.00000000'),
(101, NULL, '13940925714', '$2a$10$x5iFZvy/60siOcloVxEudOG0hNdmn999LxtrdMn5NdXAUcUDZW1eG', 1, '313.70351250', '2VFYL9V2', '0.00000000', '2022-10-31 17:15:37', 71, '2022-10-31 17:53:54', '58,59,62,64,67,69,71', '1667207737324537144', '13.70351250', NULL, 'TJzvLbcRY1LB4ws8s7oiG9x6XNVKL1ibrx', '111.35.243.0', '山东省 威海市', 0, '0.00000000'),
(102, NULL, '18063560866', '$2a$10$tciic8QeXwKQXm.kMu0NreiVMqX8YqbmTMAUxC4SdpuuoWZXi3GKm', 1, '318.40906519', '8NS2Y4PB', '0.00000000', '2022-10-31 17:56:20', 62, '2022-10-31 18:20:30', '58,59,62', '1667210179838114735', '18.40906519', NULL, 'TVpwxGMPafYQ8fDVAkmscjEvsmPsncsUuR', '112.38.57.149', '山东省 聊城市', 0, '0.00000000'),
(103, NULL, '15615948345', '$2a$10$7vZ.4wl2PfWQlA/qkZcSNuqh01awdwOe.TWv6FeuLn.FpBjj9TcMy', 1, '318.40906519', 'E358K9LR', '0.00000000', '2022-10-31 18:25:59', 102, '2022-10-31 18:37:25', '58,59,62,102', '1667211958531870738', '18.40906519', NULL, 'TScXpYFQfFHqRRutLH1qmnX4HhnXAmXsZw', '112.38.57.149', '山东省 聊城市', 0, '0.00000000'),
(104, NULL, '18006352195', '$2a$10$NM08ZFw7osynsKMTrmcUZeVOJBoNPofB/7Qs4zeNdgm6uh6nd6NzO', 1, '318.40906519', 'K2EEX43A', '0.00000000', '2022-10-31 18:40:41', 103, '2022-10-31 18:46:08', '58,59,62,102,103', '1667212841294874813', '18.40906519', NULL, 'TBJJ5Jc34NNJsX8nFMmKDK1XfVMUyFi1bb', '112.38.57.149', '山东省 聊城市', 0, '0.00000000'),
(105, NULL, '13804633533', '$2a$10$cJ39Pmtl1xQ4tFzqTfH56.o0leTvx4eIix11rFETBi03um8yPF7bG', 1, '318.40906519', 'UK9KH9Y7', '30.00000000', '2022-10-31 18:54:22', 66, '2022-11-01 21:44:09', '58,59,62,66', '1667213662198836951', '18.40906519', NULL, 'TXCZUoyoVAiRDp9zMzgxgkdjCyeWvaCi9B', '112.102.159.229', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(106, NULL, '13766731806', '$2a$10$fltM7tZ.yFLwn1mSaZ7nMeMqoN12nRhABV8KpW6bQacmq8OVnI7GW', 1, '318.40906519', 'BGQUA48P', '0.00000000', '2022-10-31 19:21:39', 103, '2022-11-01 16:00:47', '58,59,62,102,103', '1667215298581319291', '18.40906519', NULL, 'TFQp5SqwGP823bq48Gv3Nh75FbWbFUCxFi', '111.41.109.181', '黑龙江省 伊春市', 0, '0.00000000'),
(107, NULL, '13244500016', '$2a$10$Jun0VzWPoDomilwddsWcsu8.78OMMhF6meICUnT4cHDQUNrgzeFkO', 1, '318.40906519', 'G67FZ6KM', '35.00000000', '2022-10-31 20:29:51', 62, '2022-10-31 20:36:49', '58,59,62', '1667219391315939774', '18.40906519', NULL, 'TRFzNDqJrsz6tc8KjudPZVCSDaRJu4AELi', '1.58.230.81', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(108, NULL, '13244568766', '$2a$10$Is7c1z7YbQVmN9U.XpiI.OYvr5FCPUdLNtLf/.uBgfvFKgquEHUM.', 1, '318.40906519', 'XDNWVPBK', '0.00000000', '2022-10-31 20:39:30', 107, '2022-10-31 20:50:08', '58,59,62,107', '1667219969879279169', '18.40906519', NULL, 'TBHgCzDzramtrPkkBU1WubS4rnGmrkbaeS', '1.58.230.81', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(109, NULL, '85130016@qq.com', '$2a$10$TxqxqzaWMd0NpK1e4yVRKOCeBUZIuFPnu5ffgDrIzBb3JSGmsxiNS', 1, '318.40906519', '9A2CL6X9', '0.00000000', '2022-10-31 20:53:25', 108, '2022-10-31 21:11:04', '58,59,62,107,108', '1667220804658558647', '18.40906519', NULL, 'TMTDUmy11A2W473Sh919J59oyANosHnsaj', '1.58.230.81', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(110, NULL, '15663833367', '$2a$10$CjQriqd4GK7M1qrDgsuH4.fS3UplPUxLcN3HJXCK6y4m0dMy4otMa', 1, '318.40906519', '6CGZYP6J', '0.00000000', '2022-10-31 22:54:13', 69, '2022-10-31 23:35:21', '58,59,62,64,67,69', '1667228053067438923', '18.40906519', NULL, 'TVWPL3FtavmD3vRqPUhQTDSSyP4BxA84tR', '221.210.255.2', '黑龙江省 鸡西市', 0, '0.00000000'),
(111, NULL, '13766625244', '$2a$10$HjweSGtl3PJYaz0H2Qzi0OJCfnRaN4FnQELGDuu2kevndx1zhsh2O', 1, '304.56750000', 'RTD7K6HC', '0.00000000', '2022-11-01 11:41:47', 62, '2022-11-01 11:52:41', '58,59,62', '1667274106670187676', '4.50000000', NULL, 'TMokycg8NpX3Z2dKwt4mhLZZPginxEhY4p', '221.206.183.8', '黑龙江省 牡丹江市', 1, '0.00000000'),
(112, NULL, '15945388404', '$2a$10$IzBj5NcX.9xIQoTPX3bbXOpqxAwBBGh0/tkCyEAGSXbR3Xje1nt5m', 0, '0.00000000', NULL, '0.00000000', '2022-11-01 12:00:57', 111, NULL, '58,59,62,111', '1667275257264995659', '0.00000000', NULL, 'TC3oQgotc2SLtUiYTg7VfwppAhwAQGFUWr', '221.206.183.8', '黑龙江省 牡丹江市', 0, '0.00000000'),
(113, NULL, '13718907350', '$2a$10$XqQ4lpoP3.uYWnojBZ66fOotR6IqI0Gqeuaz9cMHuHjduXj09l9u.', 0, '0.00000000', NULL, '0.00000000', '2022-11-01 12:22:48', 62, NULL, '58,59,62', '1667276567624865101', '0.00000000', NULL, 'TX4s5d2AAT3qGPJcB63xQQrBMrXgvSj7Cb', '182.102.174.133', '江西省 南昌市', 0, '0.00000000'),
(114, NULL, '13359981124', '$2a$10$D8npF4SfmBqhGZEI.LV/y.4a7ACsMdHwqRgQj1E3vRTkXikWGQJ6G', 0, '0.00000000', NULL, '0.00000000', '2022-11-01 16:20:11', 106, NULL, '58,59,62,102,103,106', '1667290810764837908', '0.00000000', NULL, 'TWmxEst5u2Jsgk5J41ZFCvkGXQR7rJ4ZEv', '42.102.133.185', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(115, NULL, '15845588227', '$2a$10$lZRNemUdXCeEHmiUI0YKYO2OEQ175XF8IC.9rQb.N9tQiNR7enaza', 1, '313.70351250', 'Q8U4Z6ZG', '0.00000000', '2022-11-01 18:03:09', 96, '2022-11-01 18:23:16', '58,59,62,64,67,69,71,72,96', '1667296989133133063', '13.70351250', NULL, 'THpWEogGwDVKsg75gyBfiZN3r15EjPe2g1', '111.40.124.142', '黑龙江省 绥化市', 0, '0.00000000'),
(116, NULL, '13664502459', '$2a$10$5C4avHnEAsi3TGfznDX/xOfuc6SUpNi2OwXMwdQE90AvTPX0uoYiO', 1, '313.63500000', 'AURPVPTH', '0.00000000', '2022-11-01 21:48:28', 105, '2022-11-01 22:03:06', '58,59,62,66,105', '1667310508253525988', '13.63500000', NULL, 'TA1e89FaWvqb6u8wPQXViwLbbzgJJ68yxU', '117.179.247.136', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(117, NULL, '15630872344', '$2a$10$GE1iMIHFDMn7sJREkCmngeCv2xWabIazujjPmh6WJpu68V1xuYNyu', 1, '313.70351250', 'FXFBLRVF', '5.00000000', '2022-11-02 10:20:31', 68, '2022-11-02 10:45:57', '58,59,62,68', '1667355631227424101', '13.70351250', NULL, 'THmvRxWxURsrUSy4XwbN4fevKPqa1kBFmK', '221.192.179.205', '河北省 石家庄市', 0, '0.00000000'),
(118, NULL, '13731252169', '$2a$10$UCrjR4WsILOyI1ncVDL3N./gpa1pV4pwtkdHl07kYZ93nrnJdB8Ca', 1, '313.70351250', 'WRSGYNPT', '-33.00000000', '2022-11-02 10:47:31', 117, '2022-11-02 11:10:41', '58,59,62,68,117', '1667357250854855034', '13.70351250', NULL, 'TCc8Avz6s9BW2znHaAZYDUMV314ewCvdsi', '183.199.253.247', '河北省 保定市', 0, '0.00000000'),
(119, NULL, '13694605720', '$2a$10$/HcQKAHp8rKHBNwg77.jne/MOra09/J/6dI6XcKcB8CIL8Td3qBxK', 1, '313.63500000', 'CJ5XKRLN', '50.00000000', '2022-11-02 11:00:11', 67, '2022-11-02 11:07:25', '58,59,62,64,67', '1667358011352579538', '13.63500000', NULL, 'TVdwnLWkFAbANbhk7qZWGCXyC8NfrKYRhp', '42.101.123.65', '黑龙江省 大庆市', 0, '0.00000000'),
(120, NULL, '18233336433', '$2a$10$FxWeuGhsHRH.38pEFXnzs.U5SxLkW/STMbckKcqmzcZvdKEQsXClK', 1, '313.63500000', 'ZFE9XN3Y', '5.00000000', '2022-11-02 11:34:44', 118, '2022-11-02 11:45:00', '58,59,62,68,117,118', '1667360083847819937', '13.63500000', NULL, 'TL3ALRYnY6hcFftrBgvCRh41zMRgnFmVRD', '61.159.16.89', '河北省 保定市', 0, '0.00000000'),
(121, NULL, '18832222502', '$2a$10$gg7kB5JGnuSOLjWkR6RiGu9jNHYoMIBbu3d8ifgMkvgj9JeND6WQ2', 1, '313.70351250', '7Z96HRYU', '20.00000000', '2022-11-02 11:46:33', 120, '2022-11-02 11:53:57', '58,59,62,68,117,118,120', '1667360793492684631', '13.70351250', NULL, 'TCLayyrHdGpbur6RJCKrtRXNnscUXZfJCm', '183.199.253.247', '河北省 保定市', 0, '0.00000000'),
(122, NULL, '15764570707', '$2a$10$iNVkZd6X1D1GCZ9h7JieA.zH4gYrKbOndSgUAN/qemKcIYFD7PmOO', 1, '304.50000000', 'TSQRAN86', '30.00000000', '2022-11-02 12:00:12', 62, '2022-11-02 13:19:00', '58,59,62', '1667361612239761615', '4.50000000', NULL, 'THo2uMup2CbaYJaYKEEgEKWvk6qwtXNpqH', '223.104.115.223', '黑龙江省 七台河市', 0, '0.00000000'),
(123, NULL, '16630205999', '$2a$10$3kVJhrjiZTUjhBVjUraxHeW/5KhpOVG27rzZCz1zlQoXc02GwNpG2', 1, '313.63500000', 'SP7HZRKQ', '81.00000000', '2022-11-02 12:01:35', 121, '2022-11-02 12:06:25', '58,59,62,68,117,118,120,121', '1667361695420234197', '13.63500000', NULL, 'TM2dS8Z9yLNtLKna3Uczd8Fryc21M6KG1o', '61.159.16.89', '河北省 保定市', 0, '0.00000000'),
(124, NULL, '15128234513', '$2a$10$8J9A5duuSKU6QQ.Ksfukce939oneByjMQj84EEYshVQNOA9p0ZocW', 1, '313.70351250', 'V5NDVNBZ', '20.00000000', '2022-11-02 12:19:07', 123, '2022-11-02 12:30:08', '58,59,62,68,117,118,120,121,123', '1667362746642478172', '13.70351250', NULL, 'TQDoKditowktCAe5NcuRreDM8CPFc9GMCB', '183.199.253.247', '河北省 保定市', 0, '0.00000000'),
(125, NULL, '17645544005', '$2a$10$.QmdsYjj4otS4sP5/2SnGuGkNr8TGMqAsSWEbZeBDtD/9ix5rBcPq', 1, '313.70351250', '4Y2JLRX4', '0.00000000', '2022-11-02 12:29:38', 62, '2022-11-02 12:49:38', '58,59,62', '1667363378165735409', '13.70351250', NULL, 'TRqMpwYtL3hR4XuZb2BjYmgJgpTupJw5vT', '111.41.145.115', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(126, NULL, '1932631490@qq.com', '$2a$10$Xv9DbI.pDjOUgayjs/7RHubNCFwz038ycgWmt8IoNj0bxhQcfTJ3.', 1, '313.63500000', 'PEGQYN63', '20.00000000', '2022-11-02 12:32:23', 124, '2022-11-02 12:40:17', '58,59,62,68,117,118,120,121,123,124', '1667363543215394865', '13.63500000', NULL, 'TFyLSxPKUBJ6bmphgy4yHBV2LJsBpFJ2uB', '61.159.16.89', '河北省 保定市', 0, '0.00000000'),
(127, NULL, '15846831081', '$2a$10$plI1Lc9zXvh7t2emW/5yeuQVuzVHByOq407e2jnay6p/yLxn.Z1Ve', 1, '309.00000000', 'NBDAKRHE', '0.00000000', '2022-11-02 13:24:04', 122, '2022-11-02 13:40:11', '58,59,62,122', '1667366643997941886', '9.00000000', NULL, 'TTNKfmVtsuF8wwpH1cwfRqSVM1HFftgmQN', '42.102.159.169', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(128, NULL, '18346445167', '$2a$10$ab3znWKAMsWyFyHmOfTJGem.G59kDQg/kBeYjEzow5t6rP4bKkfxW', 1, '309.06750000', 'L9CLX54X', '0.00000000', '2022-11-02 14:40:10', 96, '2022-11-02 15:11:55', '58,59,62,64,67,69,71,72,96', '1667371209516406012', '9.06750000', NULL, 'TH4X5DQi5zaQJWC11YFyXHYavPDnLuU7zq', '111.40.124.142', '黑龙江省 绥化市', 0, '0.00000000'),
(129, NULL, '13804614119', '$2a$10$4jbLSOudJAUWmcxMi4uVKeKmUhuZ0oWSPz5ImVorxTFF8uwyBl8dK', 1, '304.50000000', '5H45HDND', '0.00000000', '2022-11-02 14:41:00', 105, '2022-11-02 19:51:04', '58,59,62,66', '1667371260431476457', '4.50000000', NULL, 'TUac3qQ65Brzy9B7FHC4fDEq3ufaCjPGRC', '1.189.19.38', '黑龙江省 哈尔滨市', 1, '0.00000000'),
(130, NULL, '18346445827', '$2a$10$RScKPWU.6tLQzI7I1RXPt.eOHPF5VRlhsMN4l4MOTPMpfzXjG9SGm', 1, '309.06750000', '3QM3A55W', '0.00000000', '2022-11-02 14:45:40', 96, '2022-11-02 15:15:03', '58,59,62,64,67,69,71,72,96', '1667371540141449210', '9.06750000', NULL, 'TLJhX4uJX2HZXE99jGrXzQ7prPcJyisETm', '117.179.141.11', '黑龙江省 绥化市', 0, '0.00000000'),
(131, NULL, '19860799392', '$2a$10$nAOZu21zAnegT7s9Whyc5.cNABUx2Qp/UfZSM0/XKKLtYedoj2DOS', 1, '309.06750000', 'MWUMZDMS', '0.00000000', '2022-11-02 14:54:07', 62, '2022-11-02 15:04:15', '58,59,62', '1667372046896126402', '9.06750000', NULL, 'TZ9bRzpAb5iLmKgo1ky9Ji9sByZmuXhNSQ', '120.229.250.197', '广东省 汕头市', 0, '0.00000000'),
(132, NULL, '13644268453', '$2a$10$1EZBwyjG8YElIKwIWkjFqevscENCh.KmD30J8aZXNemvl.v7.ZQdu', 1, '304.50000000', 'Y7RYV52L', '0.00000000', '2022-11-02 16:59:33', 119, '2022-11-03 18:09:15', '58,59,62,64,67,119', '1667379573078450996', '4.50000000', NULL, 'TYv3XpdF44ajq5tcwkm8XNRDtnVmPimKuH', '112.103.143.147', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(133, NULL, '13694601666', '$2a$10$YKeZv4J3e8ZL9vAH4hs6T.bPYfwrWoRNU9dwV7mxuQUNfxZ/IlcQW', 1, '304.50000000', '2VF2LDE2', '0.00000000', '2022-11-02 17:12:48', 119, '2022-11-03 18:07:41', '58,59,62,64,67,119', '1667380367568466671', '4.50000000', NULL, 'TQE1QVYzv64MGBa4XuJpJnqMNXtu15vgdz', '117.136.56.219', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(134, NULL, '15703124755', '$2a$10$KSZzRCO/WZQ0imI5l5VEvebZK055bsi7N9PFHVPFQB5SU7UGuRfxe', 1, '309.06750000', '8NS8Y5UB', '15.00000000', '2022-11-02 17:31:37', 126, '2022-11-02 17:38:54', '58,59,62,68,117,118,120,121,123,124,126', '1667381497398279080', '9.06750000', NULL, 'TD4naEiLjcGmGcxd89xBjVk7U5iXKmErHS', '27.128.29.196', '河北省 石家庄市', 0, '0.00000000'),
(135, NULL, '13933288283', '$2a$10$rFGqupn2JjE.cfiTHbFc1OmzkqK9GCfsJa2nDY.1AUxvypSMC..tW', 1, '309.06750000', 'E35EKDGR', '0.00000000', '2022-11-02 17:41:46', 134, '2022-11-02 17:47:52', '58,59,62,68,117,118,120,121,123,124,126,134', '1667382106057344776', '9.06750000', NULL, 'TXEYZ3ToE2EYL7Y1i41uv31xaZUx7A4DGb', '223.104.103.49', '河北省 保定市', 0, '0.00000000'),
(136, NULL, '19846279933', '$2a$10$uZPPA9rW3V2PMmvJW1SuK.bONBTyjUN2uMIENoZIOc8fZrS4DZR3K', 0, '0.00000000', NULL, '0.00000000', '2022-11-02 20:03:18', 122, NULL, '58,59,62,122', '1667390598219105177', '0.00000000', NULL, 'TGXwNvfzsobCxnyyB8wMSYTER5TBdwjz5p', '117.179.186.233', '黑龙江省 七台河市', 0, '0.00000000'),
(137, NULL, '15535660577', '$2a$10$fmmMkQ7i5kzKBhr1x.Ii9uvQam2mc1ykVZCRvcAID.dcLqotJYhSq', 0, '0.00000000', NULL, '0.00000000', '2022-11-02 21:16:00', 131, NULL, '58,59,62,131', '1667394960332209999', '0.00000000', NULL, 'TFNVhHQYiCpmxKD4vjBhz6FFqtR1ZkPAEF', '183.187.160.116', '山西省 晋城市', 0, '0.00000000'),
(138, NULL, '18940171701', '$2a$10$FtN1RF2ZqGK9QZ2oXeskvea7QYk30sz4F6SFq9PT46BIa6YIL42.q', 1, '309.06750000', 'BGQBA5DP', '0.00000000', '2022-11-03 15:27:33', 118, '2022-11-03 15:34:35', '58,59,62,68,117,118', '1667460452644885657', '9.06750000', NULL, 'TXeNbKEqfgj1cbZkxT5K439cguc2SJ3Mb5', '42.249.62.66', '辽宁省 沈阳市', 0, '0.00000000'),
(139, NULL, '19943008304', '$2a$10$dRedRTf5.HFvBoeVamvV9uFv19e41moPfi/ePwB/WOmNa0D6timfG', 0, '0.00000000', NULL, '0.00000000', '2022-11-03 16:05:11', 116, NULL, '58,59,62,66,105,116', '1667462710748628273', '0.00000000', NULL, 'TBu5Nvkeh9uNFQGLc1HWiVWPWfQXQDimr9', '119.41.226.143', '海南省 临高县', 0, '0.00000000'),
(140, NULL, '15128227938', '$2a$10$hwSQOE.3YfVW7.CL7HU8MOlUV5w3tasXGfWL25z.EX0qg0smRcdoy', 1, '304.50000000', 'XDNCV3FK', '15.00000000', '2022-11-03 16:32:13', 118, '2022-11-03 18:17:24', '58,59,62,68,117,118', '1667464332879909391', '4.50000000', NULL, 'TW7Ukm3KJ4K7LJbX62tsRCYzQeZpZNkh9k', '61.159.16.65', '河北省 保定市', 0, '0.00000000'),
(141, NULL, '13945670905', '$2a$10$PPWfKV7QuLHVBz9ngcjhk.ndXQ3HAs.VQw.1DKJP1nEFqa3nlz5ZC', 1, '304.50000000', '9A2ZLJC9', '0.00000000', '2022-11-03 16:37:43', 119, '2022-11-03 18:03:39', '58,59,62,64,67,119', '1667464662676567085', '4.50000000', NULL, 'TDKyvnZZokzBe1izWAmxGWzMc5LoGYdkjK', '182.38.41.76', '山东省 威海市', 0, '0.00000000'),
(142, NULL, '15940108917', '$2a$10$RPx7nwlMLggvs20V8cqWZuGfQc2Ugel5waUP4f/NzLkKsU8dQQsGa', 0, '0.00000000', NULL, '0.00000000', '2022-11-03 16:56:41', 138, NULL, '58,59,62,68,117,118,138', '1667465800954142578', '0.00000000', NULL, 'TUwiP6yph5h5skgSY2ddNifdVJ3inhx66b', '175.167.139.73', '辽宁省 沈阳市', 0, '0.00000000'),
(143, NULL, '15284226887', '$2a$10$0YB2P.pPRuGGipn67vv.heS7RXB84yo3mF.x2fLKhnK263U495fBa', 0, '0.00000000', NULL, '0.00000000', '2022-11-03 17:25:26', 118, NULL, '58,59,62,68,117,118', '1667467525838887104', '0.00000000', NULL, 'TAYpejwxQ1BnYp4QwxZWEAXj1LRgWktqQe', '159.138.34.56', '香港 ', 0, '0.00000000'),
(144, NULL, '13832924241', '$2a$10$AGtWVoN5yha3fj84z9UZL.KuAMK.0dZ5TGjempx6siA8G8Avg7r3W', 0, '0.00000000', NULL, '0.00000000', '2022-11-03 17:38:28', 105, NULL, '58,59,62,66,105', '1667468307941661700', '0.00000000', NULL, 'TVdkfkSQ7rSW7hDyqimjSpq639zubtBUVJ', '111.227.14.238', '河北省 唐山市', 0, '0.00000000'),
(145, NULL, '18550954151', '$2a$10$kRjyrQmCxnvQ4IuEzehW4uRr5vF2z3uBDVgy4UpLjoYpqqCCysAKu', 1, '304.50000000', 'DL4VHJN5', '0.00000000', '2022-11-03 18:13:05', 132, '2022-11-03 18:35:02', '58,59,62,64,67,119,132', '1667470384733510220', '4.50000000', NULL, 'TCgzcF3rNE7iNF4iaZW8u3bJh8kEkv1syN', '112.103.143.11', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(146, NULL, '15663685686', '$2a$10$EHNJ66tKJAOAaaRFsrvh4ef7zymlgjj2IGTCbQwFDVL8AGIQh1tz6', 1, '304.50000000', 'JMM4A358', '0.00000000', '2022-11-03 18:18:49', 91, '2022-11-03 18:55:18', '58,59,62,64,67,69,71,72,91', '1667470728984571302', '4.50000000', NULL, 'TDAatireKDMDgDqkdD6rG7Wxe8tLJVfbqD', '106.9.90.151', '河北省 石家庄市', 0, '0.00000000'),
(147, NULL, '18932666645', '$2a$10$kuIgAoHbTKdGWJ5QNz/2CeDGUVdlAmjcSqYwHcbXxr0PmDTLfKav6', 1, '304.50000000', 'Q8UPZJMG', '0.00000000', '2022-11-03 18:23:16', 140, '2022-11-03 18:41:15', '58,59,62,68,117,118,140', '1667470996199530402', '4.50000000', NULL, 'TLejcnEaKGWFuFgLMDMHFW8QscX6ji42f4', '27.128.12.29', '河北省 石家庄市', 0, '0.00000000'),
(164, NULL, '384400195@qq.com', '$2a$10$HarFT74wPsYUr9FyvQjpN.XP0DSbKyZOfsfU1E.Yk8dQlIQUwv73.', 0, '0.00000000', NULL, '0.00000000', '2022-11-04 05:42:32', NULL, NULL, NULL, '1667511752086700845', '0.00000000', NULL, 'TFwyGkS5NH2GqKNEE8NLM3e7b6y4F9kuHh', '122.238.182.220', '浙江省 嘉兴市', 1, '0.00000000'),
(165, NULL, '13439397777', '$2a$10$eBMSomffwO4/wS/cG/eJru3szSdRe/7SJuTBzPUJWMtnfswS1H0YC', 1, '304.50000000', '2VF8LAE2', '0.00000000', '2022-11-04 05:42:55', 62, '2022-11-04 06:28:47', '58,59,62', '1667511774531911252', '4.50000000', NULL, 'TG4JCK43QRpFyDsGVcvHeJkLHhAoKxUSim', '49.237.42.250', ' ', 0, '0.00000000'),
(166, NULL, '18101390314', '$2a$10$OUBjY6ZoMO0EW.RugX2gYORo9v003eoFVj7nxAaAf/PmgV2NhUDgu', 0, '0.00000000', NULL, '0.00000000', '2022-11-04 06:06:39', 62, NULL, '58,59,62', '1667513199065704095', '0.00000000', NULL, 'TUA1BULiv6shu2sTvPtoxEPetPxXpS55jj', '36.28.25.182', '浙江省 杭州市', 0, '0.00000000'),
(167, NULL, '731192801@qq.com', '$2a$10$2VjuiHVUBSqkbprfYk/.aexKZ0aR96Qs8u85tYkxbo0gkK02N8WAK', 1, '304.50000000', 'E35KKAGR', '0.00000000', '2022-11-04 07:01:19', 62, '2022-11-04 07:03:55', '58,59,62', '1667516478656746795', '4.50000000', NULL, 'THnGCiXPH9wYnFpt6ap7bhCK2nVyoEmez9', '49.237.42.250', ' ', 0, '0.00000000'),
(168, NULL, '1132046559@qq.com', '$2a$10$JgXQIMJ6Uiyegz1kKIitpOJgcnTcgR/pMCVT/QyN.Tgqfev6WUsXq', 1, '304.50000000', 'K2EUXY9A', '10.00000000', '2022-11-04 07:02:31', 62, '2022-11-04 07:33:20', '58,59,62', '1667516550797400345', '4.50000000', NULL, 'TWscJg7L8iSKe6znQue32e1BWbSxQeKSsG', '36.28.140.246', '浙江省 杭州市', 0, '0.00000000'),
(169, NULL, '13054275107', '$2a$10$sc3B7QpTyxla5xsWfFKJSe/70YxpKoVpa9cJSlpQst5uB3JR5yhCW', 1, '300.00000000', 'UK9BHAR7', '15.00000000', '2022-11-04 13:29:49', 62, '2022-11-04 16:03:48', '58,59,62', '1667539789441343180', '0.00000000', NULL, 'TLk46xxyndRVewGnBWaFMnu3MRyTNn5t3N', '111.40.151.140', '黑龙江省 齐齐哈尔市', 0, '0.00000000'),
(170, NULL, '18518477502', '$2a$10$6pi9aY.qLFfhMP.gLFxIH.vXGr4L8GHD6ktpIIMAk6ij4gboBkilS', 1, '300.00000000', 'BGQGAYDP', '0.00000000', '2022-11-04 17:10:51', 86, '2022-11-04 17:32:41', '58,59,62,64,67,69,71,72,86', '1667553051108285309', '0.00000000', NULL, 'TTK4jVLQ2SPZM66cG6FVGBeCzkb82H8CWj', '1.202.112.68', '北京市 北京市', 0, '0.00000000'),
(171, NULL, '13045190345', '$2a$10$H9RAfyn8Duz5v1c4yL0HK.uMTlojU0HHE.EhWlqSvXTV8.pCxANk2', 1, '300.00000000', 'G67CZFQM', '0.00000000', '2022-11-04 18:53:26', 105, '2022-11-04 19:18:56', '58,59,62,66,105', '1667559206492665009', '0.00000000', NULL, 'TURC4AwwjjBKKfCzFp7aTyqkmePCA2PhSr', '112.102.159.229', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(172, NULL, '15525726163', '$2a$10$M60uKw/aUVDLrbyPF8yyD.xYIYFgCigRuZuVWWmykIqsels0/b96.', 0, '0.00000000', NULL, '0.00000000', '2022-11-04 19:00:42', 62, NULL, '58,59,62', '1667559642407395488', '0.00000000', NULL, 'TKTGdvu3Z52KeH31xi1oVS6TDy14nLvraa', '60.221.244.34', '山西省 临汾市', 0, '0.00000000'),
(173, NULL, '13946084062', '$2a$10$uML46kpf/pUFO9aBgCwcY.gajOR2Gl2W4ki0dN0aHwJ5lpsjfsTz6', 1, '300.00000000', '9A27LFC9', '0.00000000', '2022-11-04 20:32:29', 169, '2022-11-04 21:05:54', '58,59,62,169', '1667565149236901724', '0.00000000', NULL, 'TTk46jfDC3iv19WjjeSHTHQQ21hPwgX6gq', '113.0.201.204', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(174, NULL, '13804582466', '$2a$10$zbEtW04H5PL/4Lm0NuLbEuUGfXh6xPC7H1khsvHJy9DlgTw1TrRdy', 1, '300.00000000', '6CGTY27J', '0.00000000', '2022-11-04 20:50:43', 64, '2022-11-04 21:10:33', '58,59,62,64', '1667566243411623064', '0.00000000', NULL, 'TDZw7WyeZBLwdbd7uyTmtMhWnomVPkrzcE', '113.0.38.115', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(175, NULL, '17766548184', '$2a$10$fm8MI..gZ4k.4769lTQeVeX80y7HjlCkoSqvPxBT0GeAKqymlbSq.', 1, '300.00000000', 'RTDSKFSC', '0.00000000', '2022-11-04 21:11:22', 72, '2022-11-04 21:38:58', '58,59,62,64,67,69,71,72', '1667567482030109697', '0.00000000', NULL, 'TX2frVeR92ezfoZgdEvjbwLPFmJ8XrW7K1', '1.189.6.101', '黑龙江省 哈尔滨市', 0, '0.00000000'),
(176, NULL, '18504822606', '$2a$10$oHZ.brCmnOWqmFfyn09V9OgaXytAMIk/e/DeV/RnHpLu/neKHBUhi', 1, '300.00000000', 'H4CVX24V', '0.00000000', '2022-11-05 09:51:58', 122, '2022-11-05 10:51:06', '58,59,62,122', '1667613117727735752', '0.00000000', NULL, 'TJQnyqAAsFintLxWkh46omnbCpDocx9DXa', '220.195.78.26', '内蒙古 ', 0, '0.00000000'),
(177, NULL, '18633224060', '$2a$10$wn12IPbrCFMtrZX2DZ.Qs.cEUWrNg7hZ1vvGnxO4f7ozarY5dXmVW', 0, '0.00000000', NULL, '0.00000000', '2022-11-05 12:43:14', 125, NULL, '58,59,62,125', '1667623394355881095', '0.00000000', NULL, 'TJPC2tcDVWJ8gKdpqq7um4z4MAJzmiBexj', '120.2.29.3', '河北省 保定市', 0, '0.00000000'),
(178, NULL, '15500333348', '$2a$10$b3oKpql3Ea7g3TwkJonea.CSp2q6MGaDC3goPbNg.JsrG1djdFXeu', 0, '0.00000000', NULL, '0.00000000', '2022-11-05 12:58:47', 62, NULL, '58,59,62', '1667624327478827491', '0.00000000', NULL, 'TVv9NqbpyCQLZcrTRW61orueMzky9Mcqbd', '42.101.70.210', '黑龙江省 哈尔滨市', 0, '0.00000000');

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_user_mining`
--

DROP TABLE IF EXISTS `wab_customer_user_mining`;
CREATE TABLE IF NOT EXISTS `wab_customer_user_mining` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `begin_time` datetime NOT NULL,
  `end_Time` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0正在进行中，1结束)',
  `commission` decimal(18,8) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COMMENT='用户挖矿' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `wab_customer_user_mining`
--

INSERT INTO `wab_customer_user_mining` (`id`, `user_id`, `begin_time`, `end_Time`, `status`, `commission`) VALUES
(6, 116, '2022-11-03 02:02:22', '2022-11-04 02:02:22', 1, '4.50000000'),
(7, 65, '2022-11-03 09:36:08', '2022-11-04 09:36:08', 1, '4.70555269'),
(8, 68, '2022-11-03 11:02:25', '2022-11-04 11:02:25', 1, '4.70555269'),
(9, 117, '2022-11-03 11:04:53', '2022-11-04 11:04:53', 1, '4.56750000'),
(10, 119, '2022-11-03 11:09:36', '2022-11-04 11:09:36', 1, '4.56750000'),
(11, 118, '2022-11-03 11:15:19', '2022-11-04 11:15:19', 1, '4.56750000'),
(68, 98, '2022-11-03 11:36:30', '2022-11-04 11:36:30', 1, '4.63601250'),
(69, 126, '2022-11-03 12:41:22', '2022-11-04 12:41:22', 1, '4.56750000'),
(70, 123, '2022-11-03 12:41:53', '2022-11-04 12:41:53', 1, '4.56750000'),
(71, 120, '2022-11-03 12:42:18', '2022-11-04 12:42:18', 1, '4.56750000'),
(72, 121, '2022-11-03 12:43:20', '2022-11-04 12:43:20', 1, '4.56750000'),
(73, 124, '2022-11-03 12:46:39', '2022-11-04 12:46:39', 1, '4.56750000'),
(74, 125, '2022-11-03 12:49:53', '2022-11-04 12:49:53', 1, '4.56750000'),
(75, 91, '2022-11-03 13:27:58', '2022-11-04 13:27:58', 1, '4.70555269'),
(76, 127, '2022-11-03 13:40:18', '2022-11-04 13:40:18', 1, '4.50000000'),
(77, 95, '2022-11-03 13:44:37', '2022-11-04 13:44:37', 1, '4.70555269'),
(78, 86, '2022-11-03 13:56:13', '2022-11-04 13:56:13', 1, '4.70555269'),
(79, 108, '2022-11-02 21:25:52', '2022-11-03 21:25:52', 1, '4.63601250'),
(80, 109, '2022-11-02 21:26:56', '2022-11-03 21:26:56', 1, '4.63601250'),
(81, 128, '2022-11-02 15:11:59', '2022-11-03 15:11:59', 1, '4.50000000'),
(82, 131, '2022-11-02 15:04:20', '2022-11-03 15:04:20', 1, '4.50000000'),
(83, 129, '2022-11-02 19:55:24', '2022-11-03 19:55:24', 1, '4.50000000'),
(84, 135, '2022-11-02 17:47:55', '2022-11-03 17:47:55', 1, '4.50000000'),
(85, 106, '2022-11-02 16:01:19', '2022-11-03 16:01:19', 1, '4.63601250'),
(86, 104, '2022-11-02 19:01:14', '2022-11-03 19:01:14', 1, '4.63601250'),
(87, 63, '2022-11-02 18:28:00', '2022-11-03 18:28:00', 1, '4.70555269'),
(88, 97, '2022-11-02 20:00:32', '2022-11-03 20:00:32', 1, '4.63601250'),
(89, 110, '2022-11-02 23:35:49', '2022-11-03 23:35:49', 1, '4.63601250'),
(90, 101, '2022-11-02 17:43:25', '2022-11-03 17:43:25', 1, '4.63601250'),
(91, 103, '2022-11-02 18:59:19', '2022-11-03 18:59:19', 1, '4.63601250'),
(92, 96, '2022-11-02 17:58:00', '2022-11-03 17:58:00', 1, '4.63601250'),
(93, 67, '2022-11-02 20:00:08', '2022-11-03 20:00:08', 1, '4.70555269'),
(94, 102, '2022-11-02 18:25:22', '2022-11-03 18:25:22', 1, '4.63601250'),
(95, 130, '2022-11-02 15:15:07', '2022-11-03 15:15:07', 1, '4.50000000'),
(96, 134, '2022-11-02 17:39:02', '2022-11-03 17:39:02', 1, '4.50000000'),
(97, 64, '2022-11-02 20:05:41', '2022-11-03 20:05:41', 1, '4.70555269'),
(98, 69, '2022-11-02 20:08:12', '2022-11-03 20:08:12', 1, '4.70555269'),
(99, 62, '2022-11-02 20:58:51', '2022-11-03 20:58:51', 1, '4.70555269'),
(100, 115, '2022-11-02 18:26:14', '2022-11-03 18:26:14', 1, '4.56750000'),
(101, 72, '2022-11-02 23:34:24', '2022-11-03 23:34:24', 1, '4.70555269'),
(102, 71, '2022-11-02 23:33:37', '2022-11-03 23:33:37', 1, '4.70555269'),
(103, 85, '2022-11-02 19:17:31', '2022-11-03 19:17:31', 1, '4.70555269'),
(104, 107, '2022-11-02 21:24:37', '2022-11-03 21:24:37', 1, '4.63601250'),
(105, 66, '2022-11-02 21:54:51', '2022-11-03 21:54:51', 1, '4.70555269'),
(106, 105, '2022-11-02 21:55:21', '2022-11-03 21:55:21', 1, '4.63601250'),
(107, 128, '2022-11-03 15:12:14', '2022-11-04 15:12:14', 1, '4.56750000'),
(108, 130, '2022-11-03 15:15:14', '2022-11-04 15:15:14', 1, '4.56750000'),
(109, 138, '2022-11-03 15:35:08', '2022-11-04 15:35:08', 1, '4.50000000'),
(110, 122, '2022-11-03 15:51:47', '2022-11-04 15:51:47', 1, '4.50000000'),
(111, 106, '2022-11-03 16:01:36', '2022-11-04 16:01:36', 1, '4.70555269'),
(112, 131, '2022-11-03 16:06:33', '2022-11-04 16:06:33', 1, '4.56750000'),
(113, 134, '2022-11-03 17:49:10', '2022-11-04 17:49:10', 1, '4.56750000'),
(114, 135, '2022-11-03 17:51:05', '2022-11-04 17:51:05', 1, '4.56750000'),
(115, 141, '2022-11-03 18:06:17', '2022-11-04 18:06:17', 1, '4.50000000'),
(116, 133, '2022-11-03 18:07:43', '2022-11-04 18:07:43', 1, '4.50000000'),
(117, 132, '2022-11-03 18:09:21', '2022-11-04 18:09:21', 1, '4.50000000'),
(118, 140, '2022-11-03 18:17:25', '2022-11-04 18:17:25', 1, '4.50000000'),
(119, 96, '2022-11-03 18:19:01', '2022-11-04 18:19:01', 1, '4.70555269'),
(120, 63, '2022-11-03 18:28:05', '2022-11-04 18:28:05', 1, '4.77613598'),
(121, 145, '2022-11-03 18:35:06', '2022-11-04 18:35:06', 1, '4.50000000'),
(122, 102, '2022-11-03 18:36:14', '2022-11-04 18:36:14', 1, '4.70555269'),
(123, 147, '2022-11-03 18:41:21', '2022-11-04 18:41:21', 1, '4.50000000'),
(124, 115, '2022-11-03 18:41:43', '2022-11-04 18:41:43', 1, '4.63601250'),
(125, 146, '2022-11-03 18:55:21', '2022-11-04 18:55:21', 1, '4.50000000'),
(126, 103, '2022-11-03 19:01:51', '2022-11-04 19:01:51', 1, '4.70555269'),
(127, 104, '2022-11-03 19:03:15', '2022-11-04 19:03:15', 1, '4.70555269'),
(128, 107, '2022-11-03 21:51:23', '2022-11-04 21:51:23', 1, '4.70555269'),
(129, 109, '2022-11-03 21:52:09', '2022-11-04 21:52:09', 1, '4.70555269'),
(130, 64, '2022-11-03 21:52:59', '2022-11-04 21:52:59', 1, '4.77613598'),
(131, 108, '2022-11-03 21:53:07', '2022-11-04 21:53:07', 1, '4.70555269'),
(132, 67, '2022-11-03 21:54:10', '2022-11-04 21:54:10', 1, '4.77613598'),
(133, 69, '2022-11-03 21:55:09', '2022-11-04 21:55:09', 1, '4.77613598'),
(134, 62, '2022-11-03 22:48:30', '2022-11-04 22:48:30', 1, '4.77613598'),
(135, 110, '2022-11-03 23:37:21', '2022-11-04 23:37:21', 1, '4.70555269'),
(136, 71, '2022-11-03 23:39:06', '2022-11-04 23:39:06', 1, '4.77613598'),
(137, 72, '2022-11-03 23:39:33', '2022-11-04 23:39:33', 1, '4.77613598'),
(138, 85, '2022-11-04 03:39:20', '2022-11-05 03:39:20', 1, '4.77613598'),
(139, 116, '2022-11-04 05:14:41', '2022-11-05 05:14:41', 1, '4.63500000'),
(140, 66, '2022-11-04 05:32:16', '2022-11-05 05:32:16', 1, '4.77613598'),
(141, 105, '2022-11-04 05:34:52', '2022-11-05 05:34:52', 1, '4.70555269'),
(142, 165, '2022-11-04 06:29:05', '2022-11-05 06:29:05', 1, '4.50000000'),
(143, 167, '2022-11-04 07:04:12', '2022-11-05 07:04:12', 1, '4.50000000'),
(144, 168, '2022-11-04 07:33:30', '2022-11-05 07:33:30', 1, '4.50000000'),
(145, 59, '2022-11-04 08:13:59', '2022-11-05 08:13:59', 1, '4.70555269'),
(146, 65, '2022-11-04 10:11:00', '2022-11-05 10:11:00', 1, '4.77613598'),
(147, 117, '2022-11-04 11:05:24', '2022-11-05 11:05:24', 1, '4.63601250'),
(148, 119, '2022-11-04 11:10:08', '2022-11-05 11:10:08', 1, '4.56750000'),
(149, 68, '2022-11-04 11:10:52', '2022-11-05 11:10:52', 1, '4.77613598'),
(150, 118, '2022-11-04 11:17:00', '2022-11-05 11:17:00', 1, '4.63601250'),
(151, 126, '2022-11-04 12:41:38', '2022-11-05 12:41:38', 1, '4.56750000'),
(152, 123, '2022-11-04 12:42:01', '2022-11-05 12:42:01', 1, '4.56750000'),
(153, 120, '2022-11-04 12:42:27', '2022-11-05 12:42:27', 1, '4.56750000'),
(154, 121, '2022-11-04 12:44:35', '2022-11-05 12:44:35', 1, '4.63601250'),
(155, 124, '2022-11-04 12:47:15', '2022-11-05 12:47:15', 1, '4.63601250'),
(156, 91, '2022-11-04 13:28:13', '2022-11-05 13:28:13', 1, '4.77613598'),
(157, 125, '2022-11-04 13:36:46', '2022-11-05 13:36:46', 1, '4.63601250'),
(158, 127, '2022-11-04 13:40:31', '2022-11-05 13:40:31', 1, '4.50000000'),
(159, 95, '2022-11-04 14:28:43', '2022-11-05 14:28:43', 1, '4.77613598'),
(160, 86, '2022-11-04 15:06:00', '2022-11-05 15:06:00', 1, '4.77613598'),
(161, 138, '2022-11-04 15:43:02', '2022-11-05 15:43:02', 1, '4.56750000'),
(162, 106, '2022-11-04 16:01:46', '2022-11-05 16:01:46', 0, '4.70555269'),
(163, 128, '2022-11-04 16:09:59', '2022-11-05 16:09:59', 0, '4.63601250'),
(164, 130, '2022-11-04 16:10:54', '2022-11-05 16:10:54', 0, '4.63601250'),
(165, 129, '2022-11-04 16:21:59', '2022-11-05 16:21:59', 0, '4.56750000'),
(166, 170, '2022-11-04 17:32:49', '2022-11-05 17:32:49', 0, '4.50000000'),
(167, 101, '2022-11-04 17:42:54', '2022-11-05 17:42:54', 0, '4.70555269'),
(168, 141, '2022-11-04 18:08:15', '2022-11-05 18:08:15', 0, '4.56750000'),
(169, 96, '2022-11-04 18:19:30', '2022-11-05 18:19:30', 0, '4.70555269'),
(170, 140, '2022-11-04 18:20:57', '2022-11-05 18:20:57', 0, '4.56750000'),
(171, 63, '2022-11-04 18:28:08', '2022-11-05 18:28:08', 0, '4.77613598'),
(172, 133, '2022-11-04 18:30:38', '2022-11-05 18:30:38', 0, '4.56750000'),
(173, 145, '2022-11-04 18:35:59', '2022-11-05 18:35:59', 0, '4.56750000'),
(174, 132, '2022-11-04 18:36:03', '2022-11-05 18:36:03', 0, '4.56750000'),
(175, 147, '2022-11-04 18:41:26', '2022-11-05 18:41:26', 0, '4.50000000'),
(176, 115, '2022-11-04 18:42:09', '2022-11-05 18:42:09', 0, '4.63601250'),
(177, 97, '2022-11-04 18:44:43', '2022-11-05 18:44:43', 0, '4.70555269'),
(178, 122, '2022-11-04 18:58:03', '2022-11-05 18:58:03', 0, '4.56750000'),
(179, 146, '2022-11-04 19:00:51', '2022-11-05 19:00:51', 0, '4.56750000'),
(180, 104, '2022-11-04 19:06:29', '2022-11-05 19:06:29', 0, '4.77613598'),
(181, 102, '2022-11-04 19:07:44', '2022-11-05 19:07:44', 0, '4.77613598'),
(182, 103, '2022-11-04 19:08:23', '2022-11-05 19:08:23', 0, '4.77613598'),
(183, 171, '2022-11-04 19:18:58', '2022-11-05 19:18:58', 0, '4.50000000'),
(184, 131, '2022-11-04 19:32:28', '2022-11-05 19:32:28', 0, '4.63601250'),
(185, 174, '2022-11-04 21:10:35', '2022-11-05 21:10:35', 0, '4.50000000'),
(186, 134, '2022-11-04 21:34:46', '2022-11-05 21:34:46', 0, '4.63601250'),
(187, 135, '2022-11-04 21:37:06', '2022-11-05 21:37:06', 0, '4.63601250'),
(188, 175, '2022-11-04 21:39:09', '2022-11-05 21:39:09', 0, '4.50000000'),
(189, 107, '2022-11-04 22:13:02', '2022-11-05 22:13:02', 0, '4.77613598'),
(190, 108, '2022-11-04 22:13:57', '2022-11-05 22:13:57', 0, '4.77613598'),
(191, 109, '2022-11-04 22:14:28', '2022-11-05 22:14:28', 0, '4.77613598'),
(192, 62, '2022-11-04 22:54:35', '2022-11-05 22:54:35', 0, '4.91527802'),
(193, 64, '2022-11-04 22:56:31', '2022-11-05 22:56:31', 0, '4.84777802'),
(194, 67, '2022-11-04 22:57:01', '2022-11-05 22:57:01', 0, '4.84777802'),
(195, 69, '2022-11-04 22:57:40', '2022-11-05 22:57:40', 0, '4.84777802'),
(196, 173, '2022-11-04 23:10:22', '2022-11-05 23:10:22', 0, '4.50000000'),
(197, 110, '2022-11-04 23:37:25', '2022-11-05 23:37:25', 0, '4.70555269'),
(198, 71, '2022-11-05 01:29:21', '2022-11-06 01:29:21', 0, '4.84777802'),
(199, 72, '2022-11-05 01:30:23', '2022-11-06 01:30:23', 0, '4.84777802'),
(200, 116, '2022-11-05 05:14:51', '2022-11-06 05:14:51', 0, '4.63500000'),
(201, 66, '2022-11-05 05:32:19', '2022-11-06 05:32:19', 0, '4.84777802'),
(202, 105, '2022-11-05 05:35:01', '2022-11-06 05:35:01', 0, '4.70555269'),
(203, 65, '2022-11-05 11:05:34', '2022-11-06 11:05:34', 0, '4.84777802'),
(204, 68, '2022-11-05 11:20:30', '2022-11-06 11:20:30', 0, '4.84777802'),
(205, 117, '2022-11-05 11:21:20', '2022-11-06 11:21:20', 0, '4.70555269'),
(206, 118, '2022-11-05 11:22:18', '2022-11-06 11:22:18', 0, '4.70555269'),
(207, 119, '2022-11-05 11:45:34', '2022-11-06 11:45:34', 0, '4.70452500'),
(208, 176, '2022-11-05 11:54:36', '2022-11-06 11:54:36', 0, '4.50000000'),
(209, 126, '2022-11-05 12:51:35', '2022-11-06 12:51:35', 0, '4.70452500'),
(210, 124, '2022-11-05 12:52:03', '2022-11-06 12:52:03', 0, '4.70555269'),
(211, 123, '2022-11-05 12:52:20', '2022-11-06 12:52:20', 0, '4.70452500'),
(212, 120, '2022-11-05 12:52:49', '2022-11-06 12:52:49', 0, '4.70452500'),
(213, 121, '2022-11-05 12:53:44', '2022-11-06 12:53:44', 0, '4.70555269'),
(214, 91, '2022-11-05 13:28:31', '2022-11-06 13:28:31', 0, '4.84777802'),
(215, 125, '2022-11-05 13:37:19', '2022-11-06 13:37:19', 0, '4.70555269'),
(216, 127, '2022-11-05 13:40:42', '2022-11-06 13:40:42', 0, '4.56750000'),
(217, 95, '2022-11-05 14:54:02', '2022-11-06 14:54:02', 0, '4.84777802'),
(218, 86, '2022-11-05 15:17:55', '2022-11-06 15:17:55', 0, '4.84777802'),
(219, 169, '2022-11-05 15:51:21', '2022-11-06 15:51:21', 0, '4.50000000');

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_user_receive_income`
--

DROP TABLE IF EXISTS `wab_customer_user_receive_income`;
CREATE TABLE IF NOT EXISTS `wab_customer_user_receive_income` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `commission` decimal(18,8) DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COMMENT='用户领取推广收益' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `wab_customer_user_receive_income`
--

INSERT INTO `wab_customer_user_receive_income` (`id`, `user_id`, `commission`, `receive_time`) VALUES
(23, 69, '83.00000000', '2022-11-03 12:01:26'),
(24, 62, '314.50000000', '2022-11-03 12:01:54');

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_withdraw`
--

DROP TABLE IF EXISTS `wab_customer_withdraw`;
CREATE TABLE IF NOT EXISTS `wab_customer_withdraw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_withdraw` varchar(255) DEFAULT NULL COMMENT '谁提现的',
  `num` decimal(18,8) DEFAULT NULL COMMENT '提现数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT '0' COMMENT '状态(0待处理，1处理中，2提币成功，3提币失败)',
  `user_id` bigint(20) DEFAULT NULL COMMENT '提现用户的id',
  `to_address` varchar(255) DEFAULT NULL COMMENT '提现的地址',
  `orderid` bigint(20) DEFAULT NULL COMMENT '唯一id，和合约数据对应',
  `actual_num` decimal(18,8) DEFAULT NULL COMMENT '实际到账提现金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `wab_customer_withdraw`
--

INSERT INTO `wab_customer_withdraw` (`id`, `from_withdraw`, `num`, `create_time`, `status`, `user_id`, `to_address`, `orderid`, `actual_num`) VALUES
(24, 'juxin2088@gmail.com', '11.00000000', '2022-10-30 19:23:28', 2, 59, 'TYSanTbQ8qLrK5LLs3xUQEYcPQ47hN1ru5', 1586680175157317632, '10.00000000'),
(25, '18103605171', '239.00000000', '2022-11-01 19:11:44', 2, 63, 'TCstawm6BMSqj2TpeoUeNQVPAR2CzCUbwz', 1587401999948189696, '238.00000000');

-- --------------------------------------------------------

--
-- 表的结构 `wab_customer_withdraw_addr`
--

DROP TABLE IF EXISTS `wab_customer_withdraw_addr`;
CREATE TABLE IF NOT EXISTS `wab_customer_withdraw_addr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL COMMENT '提币地址',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='用户提币地址簿表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `wab_customer_withdraw_addr`
--

INSERT INTO `wab_customer_withdraw_addr` (`id`, `addr`, `user_id`, `create_time`) VALUES
(9, 'TYSanTbQ8qLrK5LLs3xUQEYcPQ47hN1ru5', 59, '2022-10-30 19:22:52'),
(10, 'TUr3Cco9mi3t98tgTdUV6JDerxdqNQXdtR', 58, '2022-10-30 20:09:21'),
(11, 'TCUixPKjfs7RSr1qVUFkTVxoLxBYi8tFAV', 60, '2022-10-31 01:35:33'),
(12, '213432', 60, '2022-10-31 01:35:37'),
(13, '1667360793492684631', 120, '2022-11-02 11:51:42');

-- --------------------------------------------------------

--
-- 表的结构 `wab_usdt_pyy_proportion`
--

DROP TABLE IF EXISTS `wab_usdt_pyy_proportion`;
CREATE TABLE IF NOT EXISTS `wab_usdt_pyy_proportion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proportion` decimal(18,4) NOT NULL COMMENT '比例',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 限制导出的表
--

--
-- 限制表 `qrtz_blob_triggers`
--
ALTER TABLE `qrtz_blob_triggers`
  ADD CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`,`trigger_name`,`trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- 限制表 `qrtz_cron_triggers`
--
ALTER TABLE `qrtz_cron_triggers`
  ADD CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`,`trigger_name`,`trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- 限制表 `qrtz_simple_triggers`
--
ALTER TABLE `qrtz_simple_triggers`
  ADD CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`,`trigger_name`,`trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- 限制表 `qrtz_simprop_triggers`
--
ALTER TABLE `qrtz_simprop_triggers`
  ADD CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`,`trigger_name`,`trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`);

--
-- 限制表 `qrtz_triggers`
--
ALTER TABLE `qrtz_triggers`
  ADD CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`,`job_name`,`job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
