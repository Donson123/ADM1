COPY           5 RECORDS INTO region   FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES_FOR_SF-3>/region.tbl'      USING DELIMITERS '|', '|\n';
COPY          25 RECORDS INTO nation   FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES_FOR_SF-3>/nation.tbl'      USING DELIMITERS '|', '|\n';
COPY       30000 RECORDS INTO supplier FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES_FOR_SF-3>/supplier.tbl'    USING DELIMITERS '|', '|\n';
COPY      450000 RECORDS INTO customer FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES_FOR_SF-3>/customer.tbl'    USING DELIMITERS '|', '|\n';
COPY      600000 RECORDS INTO part     FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES_FOR_SF-3>/part.tbl'        USING DELIMITERS '|', '|\n';
COPY     2400000 RECORDS INTO partsupp FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES_FOR_SF-3>/partsupp.tbl'    USING DELIMITERS '|', '|\n';
COPY     4500000 RECORDS INTO orders   FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES_FOR_SF-3>/orders.tbl'      USING DELIMITERS '|', '|\n';
COPY    17996609 RECORDS INTO lineitem FROM '/<REPLACE_WITH_ABSOLUTE_PATH_TO_DATA_FILES_FOR_SF-3>/lineitem.tbl'    USING DELIMITERS '|', '|\n';
