COPY region   FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES>/region.tbl'   ( DELIMITER '|' );
COPY nation   FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES>/nation.tbl'   ( DELIMITER '|' );
COPY supplier FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES>/supplier.tbl' ( DELIMITER '|' );
COPY customer FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES>/customer.tbl' ( DELIMITER '|' );
COPY part     FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES>/part.tbl'     ( DELIMITER '|' );
COPY partsupp FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES>/partsupp.tbl' ( DELIMITER '|' );
COPY orders   FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES>/orders.tbl'   ( DELIMITER '|' );
COPY lineitem FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES>/lineitem.tbl' ( DELIMITER '|' );
