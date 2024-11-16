create TABLE category
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    title         VARCHAR(255)          NULL,
    `description` VARCHAR(255)          NULL,
    CONSTRAINT pk_category PRIMARY KEY (id)
);

create TABLE jt_instructor
(
    id             BIGINT       NOT NULL,
    specialization VARCHAR(255) NULL,
    CONSTRAINT pk_jt_instructor PRIMARY KEY (id)
);

create TABLE jt_mentor
(
    id         BIGINT       NOT NULL,
    company    VARCHAR(255) NULL,
    avg_rating INT          NOT NULL,
    CONSTRAINT pk_jt_mentor PRIMARY KEY (id)
);

create TABLE jt_student
(
    id     BIGINT       NOT NULL,
    course VARCHAR(255) NULL,
    batch  VARCHAR(255) NULL,
    CONSTRAINT pk_jt_student PRIMARY KEY (id)
);

create TABLE jt_user
(
    id       BIGINT       NOT NULL,
    name     VARCHAR(255) NULL,
    email    VARCHAR(255) NULL,
    password VARCHAR(255) NULL,
    CONSTRAINT pk_jt_user PRIMARY KEY (id)
);

create TABLE mps_instructor
(
    id             BIGINT       NOT NULL,
    name           VARCHAR(255) NULL,
    email          VARCHAR(255) NULL,
    password       VARCHAR(255) NULL,
    specialization VARCHAR(255) NULL,
    CONSTRAINT pk_mps_instructor PRIMARY KEY (id)
);

create TABLE mps_mentor
(
    id         BIGINT       NOT NULL,
    name       VARCHAR(255) NULL,
    email      VARCHAR(255) NULL,
    password   VARCHAR(255) NULL,
    company    VARCHAR(255) NULL,
    avg_rating INT          NOT NULL,
    CONSTRAINT pk_mps_mentor PRIMARY KEY (id)
);

create TABLE mps_student
(
    id       BIGINT       NOT NULL,
    name     VARCHAR(255) NULL,
    email    VARCHAR(255) NULL,
    password VARCHAR(255) NULL,
    course   VARCHAR(255) NULL,
    batch    VARCHAR(255) NULL,
    CONSTRAINT pk_mps_student PRIMARY KEY (id)
);

create TABLE product
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    title         VARCHAR(255)          NULL,
    `description` VARCHAR(255)          NULL,
    price         DOUBLE                NULL,
    category_id   BIGINT                NULL,
    CONSTRAINT pk_product PRIMARY KEY (id)
);

create TABLE st_user
(
    id             BIGINT       NOT NULL,
    dtype          VARCHAR(31)  NULL,
    name           VARCHAR(255) NULL,
    email          VARCHAR(255) NULL,
    password       VARCHAR(255) NULL,
    course         VARCHAR(255) NULL,
    batch          VARCHAR(255) NULL,
    company        VARCHAR(255) NULL,
    avg_rating     INT          NOT NULL,
    specialization VARCHAR(255) NULL,
    CONSTRAINT pk_st_user PRIMARY KEY (id)
);

create TABLE tpc_instructor
(
    id             BIGINT       NOT NULL,
    name           VARCHAR(255) NULL,
    email          VARCHAR(255) NULL,
    password       VARCHAR(255) NULL,
    specialization VARCHAR(255) NULL,
    CONSTRAINT pk_tpc_instructor PRIMARY KEY (id)
);

create TABLE tpc_mentor
(
    id         BIGINT       NOT NULL,
    name       VARCHAR(255) NULL,
    email      VARCHAR(255) NULL,
    password   VARCHAR(255) NULL,
    company    VARCHAR(255) NULL,
    avg_rating INT          NOT NULL,
    CONSTRAINT pk_tpc_mentor PRIMARY KEY (id)
);

create TABLE tpc_student
(
    id       BIGINT       NOT NULL,
    name     VARCHAR(255) NULL,
    email    VARCHAR(255) NULL,
    password VARCHAR(255) NULL,
    course   VARCHAR(255) NULL,
    batch    VARCHAR(255) NULL,
    CONSTRAINT pk_tpc_student PRIMARY KEY (id)
);

create TABLE tpc_user
(
    id       BIGINT       NOT NULL,
    name     VARCHAR(255) NULL,
    email    VARCHAR(255) NULL,
    password VARCHAR(255) NULL,
    CONSTRAINT pk_tpc_user PRIMARY KEY (id)
);

alter table jt_instructor
    add CONSTRAINT FK_JT_INSTRUCTOR_ON_ID FOREIGN KEY (id) REFERENCES jt_user (id);

alter table jt_mentor
    add CONSTRAINT FK_JT_MENTOR_ON_ID FOREIGN KEY (id) REFERENCES jt_user (id);

alter table jt_student
    add CONSTRAINT FK_JT_STUDENT_ON_ID FOREIGN KEY (id) REFERENCES jt_user (id);

alter table product
    add CONSTRAINT FK_PRODUCT_ON_CATEGORY FOREIGN KEY (category_id) REFERENCES category (id);