CLASS zcl_app_keyword_scanner_amdp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_app_keyword_scanner.

    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS get_keywords
      RETURNING VALUE(rt_keywords) TYPE zapp_t_keywords_sort.
    CLASS-DATA st_keywords TYPE zapp_t_keywords_sort.
ENDCLASS.



CLASS zcl_app_keyword_scanner_amdp IMPLEMENTATION.
  METHOD get_keywords.

    DATA lt_keywords TYPE STANDARD TABLE OF string.
    DATA lr_keyword TYPE REF TO string.
    DATA ls_keywords TYPE zapp_s_keywords.

    lt_keywords = VALUE #( ( |ABS| )
                           ( |ABSOLUTE| )
   ( |ACTION| )
   ( |ADA| )
   ( |ADD| )
   ( |ADMIN| )
   ( |AFTER| )
   ( |ALL| )
   ( |ALLOCATE| )
   ( |ALTER| )
   ( |ALWAYS| )
   ( |AND| )
   ( |ANY| )
   ( |ARE| )
   ( |ARRAY| )
   ( |ARRAY_AGG| )
   ( |ARRAY_MAX_CARDINALITY| )
   ( |AS| )
   ( |ASC| )
   ( |ASENSITIVE| )
   ( |ASSERTION| )
   ( |ASSIGNMENT| )
   ( |ASYMMETRIC| )
   ( |AT| )
   ( |ATOMIC| )
   ( |ATTRIBUTE| )
   ( |ATTRIBUTES| )
   ( |AUTHORIZATION| )
   ( |AVG| )
   ( |BEFORE| )
   ( |BEGIN| )
   ( |BEGIN_FRAME| )
   ( |BEGIN_PARTITION| )
   ( |BERNOULLI| )
   ( |BETWEEN| )
   ( |BIGINT| )
   ( |BINARY| )
   ( |BLOB| )
   ( |BOOL| )
   ( |BOOLEAN| )
   ( |BOTH| )
   ( |BREADTH| )
   ( |BREAK| )
   ( |BY| )
   ( |CALL| )
   ( |CALLED| )
   ( |CARDINALITY| )
   ( |CASCADE| )
   ( |CASCADED| )
   ( |CASE| )
   ( |CAST| )
   ( |CATALOG_NAME| )
   ( |CEIL| )
   ( |CEILING| )
   ( |CHAIN| )
   ( |CHAR| )
   ( |CHAR_LENGTH| )
   ( |CHARACTER| )
   ( |CHARACTER_LENGTH| )
   ( |CHARACTER_SET_CATALOG| )
   ( |CHARACTER_SET_NAME| )
   ( |CHARACTER_SET_SCHEMA| )
   ( |CHARACTERISTICS| )
   ( |CHARACTERS| )
   ( |CHECK| )
   ( |CLASS_ORIGIN| )
   ( |CLOB| )
   ( |CLOSE| )
   ( |COALESCE| )
   ( |COBOL| )
   ( |COLLATE| )
   ( |COLLATION| )
   ( |COLLATION_CATALOG| )
   ( |COLLATION_NAME| )
   ( |COLLATION_SCHEMA| )
   ( |COLLECT| )
   ( |COLUMN| )
   ( |COLUMN_NAME| )
   ( |COMMAND_FUNCTION| )
   ( |COMMAND_FUNCTION_CODE| )
   ( |COMMIT| )
   ( |COMMITTED| )
   ( |CONCAT| )
   ( |CONDITION| )
   ( |CONDITION_NUMBER| )
   ( |CONNECT| )
   ( |CONNECTION| )
   ( |CONNECTION_NAME| )
   ( |CONST| )
   ( |CONSTRAINT| )
   ( |CONSTRAINT_CATALOG| )
   ( |CONSTRAINT_NAME| )
   ( |CONSTRAINT_SCHEMA| )
   ( |CONSTRAINTS| )
   ( |CONSTRUCTOR| )
   ( |CONTAINS| )
   ( |CONTINUE| )
   ( |CONTINUE| )
   ( |CONVERT| )
   ( |CORR| )
   ( |CORRESPONDING| )
   ( |COUNT| )
   ( |COVAR_POP| )
   ( |COVAR_SAMP| )
   ( |CREATE| )
   ( |CROSS| )
   ( |CUBE| )
   ( |CUME_DIST| )
   ( |CURRENT| )
   ( |CURRENT_CATALOG| )
   ( |CURRENT_DATE| )
   ( |CURRENT_DEFAULT_TRANSFORM_GROUP| )
   ( |CURRENT_PATHCURRENT_ROLE| )
   ( |CURRENT_TRANSFORM_GROUP_FOR_TYPE| )
   ( |CURRENT_USER| )
   ( |CURSOR| )
   ( |CURSOR_NAME| )
   ( |CYCLE| )
   ( |DATA| )
   ( |DATE| )
   ( |DATETIME_INTERVAL_CODE| )
   ( |DATETIME_INTERVAL_PRECISION| )
   ( |DAY| )
   ( |DEALLOCATE| )
   ( |DEC| )
   ( |DECIMAL| )
   ( |DECLARE| )
   ( |DEFAULT| )
   ( |DEFAULTS| )
   ( |DEFERRABLE| )
   ( |DEFERRED| )
   ( |DEFINED| )
   ( |DEFINER| )
   ( |DEGREE| )
   ( |DELETE| )
   ( |DENSE_RANK| )
   ( |DEPTH| )
   ( |DEREF| )
   ( |DERIVED| )
   ( |DESC| )
   ( |DESCRIBE| )
   ( |DESCRIPTOR| )
   ( |DETERMINISTIC| )
   ( |DIAGNOSTICS| )
   ( |DISCONNECT| )
   ( |DISPATCH| )
   ( |DISTINCT| )
   ( |DO| )
   ( |DOMAIN| )
   ( |DOUBLE| )
   ( |DROP| )
   ( |DYNAMIC| )
   ( |DYNAMIC_FUNCTION| )
   ( |DYNAMIC_FUNCTION_CODE| )
   ( |EACH| )
   ( |EDGE| )
   ( |ELEMENT| )
   ( |ELSE| )
   ( |ELSEIF| )
   ( |END| )
   ( |END_FRAME| )
   ( |END_PARTITION| )
   ( |END-EXEC| )
   ( |ENFORCED| )
   ( |ENUM| )
   ( |EQUALS| )
   ( |ESCAPE| )
   ( |EVERY| )
   ( |EXCEPT| )
   ( |EXCLUDE| )
   ( |EXCLUDING| )
   ( |EXEC| )
   ( |EXECUTE| )
   ( |EXISTS| )
   ( |EXP| )
   ( |EXPRESSION| )
   ( |EXTERNAL| )
   ( |EXTRACT| )
   ( |FALSE| )
   ( |FETCH| )
   ( |FILTER| )
   ( |FINAL| )
   ( |FIRST| )
   ( |FIRST_VALUE| )
   ( |FLAG| )
   ( |FLOAT| )
   ( |FLOOR| )
   ( |FOLLOWING| )
   ( |FOR| )
   ( |FOREACH| )
   ( |FOREIGN| )
   ( |FORTRAN| )
   ( |FOUND| )
   ( |FRAME_ROW| )
   ( |FREE| )
   ( |FROM| )
   ( |FULL| )
   ( |FUNCTION| )
   ( |FUSION| )
   ( |GENERAL| )
   ( |GENERATED| )
   ( |GET| )
   ( |GLOBAL| )
   ( |GO| )
   ( |GOTO| )
   ( |GRANT| )
   ( |GRANTED| )
   ( |GRAPH| )
   ( |GROUP| )
   ( |GROUPING| )
   ( |GROUPS| )
   ( |HAVING| )
   ( |HIERARCHY| )
   ( |HOLD| )
   ( |HOOK| )
   ( |HOUR| )
   ( |IDENTITY| )
   ( |IF| )
   ( |IFNULL| )
   ( |IGNORE| )
   ( |IMMEDIATE| )
   ( |IMMEDIATELY| )
   ( |IMPLEMENTATION| )
   ( |IMPORT| )
   ( |IN| )
   ( |INCLUDE| )
   ( |INCLUDING| )
   ( |INCREMENT| )
   ( |INDICATOR| )
   ( |INITIALLY| )
   ( |INNER| )
   ( |INOUT| )
   ( |INPUT| )
   ( |INSENSITIVE| )
   ( |INSERT| )
   ( |INSTANCE| )
   ( |INSTANTIABLE| )
   ( |INSTEAD| )
   ( |INT| )
   ( |INTEGER| )
   ( |INTERSECT| )
   ( |INTERSECTION| )
   ( |INTERVAL| )
   ( |INTO| )
   ( |INVOKER| )
   ( |IS| )
   ( |ISOLATION| )
   ( |JOIN| )
   ( |KEY| )
   ( |KEY_MEMBER| )
   ( |KEY_TYPE| )
   ( |LAG| )
   ( |LANGUAGE| )
   ( |LARGE| )
   ( |LAST| )
   ( |LAST_VALUE| )
   ( |LATERAL| )
   ( |LEAD| )
   ( |LEADING| )
   ( |LEFT| )
   ( |LENGTH| )
   ( |LEVEL| )
   ( |LIKE| )
   ( |LIKE_REGEX| )
   ( |LIST| )
   ( |LN| )
   ( |LOCAL| )
   ( |LOCALTIME| )
   ( |LOCALTIMESTAMP| )
   ( |LOCATOR| )
   ( |LOWER| )
   ( |LPAD| )
   ( |LTRIM| )
   ( |MAP| )
   ( |MATCH| )
   ( |MATCHED| )
   ( |MAX| )
   ( |MAXVALUE| )
   ( |MEMBER| )
   ( |MERGE| )
   ( |MESSAGE_LENGTH| )
   ( |MESSAGE_OCTET_LENGTH| )
   ( |MESSAGE_TEXT| )
   ( |METHOD| )
   ( |MIN| )
   ( |MINUTE| )
   ( |MINVALUE| )
   ( |MOD| )
   ( |MODIFIES| )
   ( |MODULE| )
   ( |MONTH| )
   ( |MORE| )
   ( |MULTISET| )
   ( |MUMPS| )
   ( |NAME| )
   ( |NAMES| )
   ( |NAMESPACE| )
   ( |NATIONAL| )
   ( |NATURAL| )
   ( |NCHAR| )
   ( |NCLOB| )
   ( |NESTING| )
   ( |NEW| )
   ( |NEXT| )
   ( |NFC| )
   ( |NFD| )
   ( |NFKC| )
   ( |NFKD| )
   ( |NO| )
   ( |NONE| )
   ( |NORMALIZE| )
   ( |NORMALIZED| )
   ( |NOT| )
   ( |NTH_VALUE| )
   ( |NTILE| )
   ( |NULL| )
   ( |NULLABLE| )
   ( |NULLIF| )
   ( |NULLS| )
   ( |NUMBER| )
   ( |NUMERIC| )
   ( |NVARCHAR| )
   ( |OBJECT| )
   ( |OCCURRENCES_REGEX| )
   ( |OCTET_LENGTH| )
   ( |OCTETS| )
   ( |OF| )
   ( |OFFSET| )
   ( |OLD| )
   ( |ON| )
   ( |ONLY| )
   ( |OPEN| )
   ( |OPTION| )
   ( |OPTIONS| )
   ( |OR| )
   ( |ORDER| )
   ( |ORDERING| )
   ( |ORDINALITY| )
   ( |OTHERS| )
   ( |OUT| )
   ( |OUTER| )
   ( |OUTPUT| )
   ( |OVER| )
   ( |OVERLAPS| )
   ( |OVERLAY| )
   ( |OVERRIDING| )
   ( |PAD| )
   ( |PARAMETER| )
   ( |PARAMETER_MODE| )
   ( |PARAMETER_NAME| )
   ( |PARAMETER_ORDINAL_POSITION| )
   ( |PARAMETER_SPECIFIC_CATALOG| )
   ( |PARAMETER_SPECIFIC_NAME| )
   ( |PARAMETER_SPECIFIC_SCHEMA| )
   ( |PARTIAL| )
   ( |PARTITION| )
   ( |PASCAL| )
   ( |PATH| )
   ( |PERCENT| )
   ( |PERCENT_RANK| )
   ( |PERCENTILE_CONT| )
   ( |PERCENTILE_DISC| )
   ( |PERIOD| )
   ( |PERSISTENT| )
   ( |PLACING| )
   ( |PLI| )
   ( |PORTION| )
   ( |POSITION| )
   ( |POSITION_REGEX| )
   ( |POWER| )
   ( |PRECEDES| )
   ( |PRECEDING| )
   ( |PRECISION| )
   ( |PREPARE| )
   ( |PRESERVE| )
   ( |PRIMARY| )
   ( |PRIOR| )
   ( |PRIVILEGES| )
   ( |PROCEDURE| )
   ( |PUBLIC| )
   ( |RANGE| )
   ( |RANK| )
   ( |READ| )
   ( |READS| )
   ( |REAL| )
   ( |RECURSIVE| )
   ( |REF| )
   ( |REFERENCES| )
   ( |REFERENCING| )
   ( |REGR_AVGX| )
   ( |REGR_AVGY| )
   ( |REGR_COUNT| )
   ( |REGR_INTERCEPT| )
   ( |REGR_R2| )
   ( |REGR_SLOPE| )
   ( |REGR_SXX| )
   ( |REGR_SXY| )
   ( |REGR_SYY| )
   ( |RELATIVE| )
   ( |RELEASE| )
   ( |REPEATABLE| )
   ( |RESPECT| )
   ( |RESTART| )
   ( |RESTRICT| )
   ( |RESULT| )
   ( |RETURN| )
   ( |RETURNED_CARDINALITY| )
   ( |RETURNED_LENGTH| )
   ( |RETURNED_OCTET_LENGTH| )
   ( |RETURNED_SQLSTATE| )
   ( |RETURNS| )
   ( |REVOKE| )
   ( |RIGHT| )
   ( |ROLE| )
   ( |ROLLBACK| )
   ( |ROLLUP| )
   ( |ROUTINE| )
   ( |ROUTINE_CATALOG| )
   ( |ROUTINE_NAME| )
   ( |ROUTINE_SCHEMA| )
   ( |ROW| )
   ( |ROW_COUNT| )
   ( |ROW_NUMBER| )
   ( |ROWS| )
   ( |RPAD| )
   ( |RTRIM| )
   ( |SAVEPOINT| )
   ( |SCALE| )
   ( |SCHEMA| )
   ( |SCHEMA_NAME| )
   ( |SCOPE| )
   ( |SCOPE_CATALOG| )
   ( |SCOPE_NAME| )
   ( |SCOPE_SCHEMA| )
   ( |SCROLL| )
   ( |SEARCH| )
   ( |SECOND| )
   ( |SECTION| )
   ( |SECURITY| )
   ( |SELECT| )
   ( |SELF| )
   ( |SENSITIVE| )
   ( |SEQUENCE| )
   ( |SERIALIZABLE| )
   ( |SERVER_NAME| )
   ( |SESSION| )
   ( |SESSION_USER| )
   ( |SESSION_CONTEXT| )
   ( |SET| )
   ( |SETS| )
   ( |SIMILAR| )
   ( |SIMPLE| )
   ( |SIZE| )
   ( |SMALLINT| )
   ( |SOME| )
   ( |SOURCE| )
   ( |SPACE| )
   ( |SPECIFIC| )
   ( |SPECIFIC_NAME| )
   ( |SPECIFICTYPE| )
   ( |SQL| )
   ( |SQLEXCEPTION| )
   ( |SQLSTATE| )
   ( |SQLWARNING| )
   ( |SQRT| )
   ( |ST_CIRCULARSTRING| )
   ( |ST_COMPOUNDCURVE| )
   ( |ST_CURVE| )
   ( |ST_CURVEPOLYGON| )
   ( |ST_GEOMCOLLECTION| )
   ( |ST_GEOMETRY| )
   ( |ST_LINESTRING| )
   ( |ST_MULTICURVE| )
   ( |ST_MULTILINESTRING| )
   ( |ST_MULTIPOINT| )
   ( |ST_MULTIPOLYGON| )
   ( |ST_MULTISURFACE| )
   ( |ST_POINT| )
   ( |ST_POLYGON| )
   ( |ST_SURFACE| )
   ( |START| )
   ( |STATE| )
   ( |STATEMENT| )
   ( |STATIC| )
   ( |STDDEV_POP| )
   ( |STDDEV_SAMP| )
   ( |STRUCTURE| )
   ( |STYLE| )
   ( |SUBCLASS_ORIGIN| )
   ( |SUBMULTISET| )
   ( |SUBSTRING| )
   ( |SUBSTRING_REGEX| )
   ( |SUBSTR_AFTER| )
   ( |SUBSTR_BEFORE| )
   ( |SUCCEEDS| )
   ( |SUM| )
   ( |SWITCH| )
   ( |SYMMETRIC| )
   ( |SYSTEM| )
   ( |SYSTEM_TIME| )
   ( |SYSTEM_USER| )
   ( |TABLE| )
   ( |TABLE_NAME| )
   ( |TABLESAMPLE| )
   ( |TEMPORARY| )
   ( |TEXT| )
   ( |THEN| )
   ( |TIES| )
   ( |TIME| )
   ( |TIMESTAMP| )
   ( |TIMEZONE_HOUR| )
   ( |TIMEZONE_MINUTE| )
   ( |TO| )
   ( |TOP_LEVEL_COUNT| )
   ( |TRAILING| )
   ( |TRANSACTION| )
   ( |TRANSACTION_ACTIVE| )
   ( |TRANSACTIONS_COMMITTED| )
   ( |TRANSACTIONS_ROLLED_BACK| )
   ( |TRANSFORM| )
   ( |TRANSFORMS| )
   ( |TRANSLATE| )
   ( |TRANSLATE_REGEX| )
   ( |TRANSLATION| )
   ( |TREAT| )
   ( |TREE| )
   ( |TRIGGER| )
   ( |TRIGGER_CATALOG| )
   ( |TRIGGER_NAME| )
   ( |TRIGGER_SCHEMA| )
   ( |TRIM| )
   ( |TRIM_ARRAY| )
   ( |TRUE| )
   ( |TRUNCATE| )
   ( |TYPE| )
   ( |UESCAPE| )
   ( |UNBOUNDED| )
   ( |UNCOMMITTED| )
   ( |UNDER| )
   ( |UNION| )
   ( |UNIQUE| )
   ( |UNKNOWN| )
   ( |UNNAMED| )
   ( |UNNEST| )
   ( |UPDATE| )
   ( |UPPER| )
   ( |USAGE| )
   ( |USER| )
   ( |USER_DEFINED_TYPE_CATALOG| )
   ( |USER_DEFINED_TYPE_CODE| )
   ( |USER_DEFINED_TYPE_NAME| )
   ( |USER_DEFINED_TYPE_SCHEMA| )
   ( |USING| )
   ( |VALUE| )
   ( |VALUE_OF| )
   ( |VALUES| )
   ( |VAR_POP| )
   ( |VAR_SAMP| )
   ( |VARBINARY| )
   ( |VARCHAR| )
   ( |VARYING| )
   ( |VERSIONING| )
   ( |VERTEX| )
   ( |VIEW| )
   ( |VOID| )
   ( |WHEN| )
   ( |WHENEVER| )
   ( |WHERE| )
   ( |WHILE| )
   ( |WIDTH_BUCKET| )
   ( |WINDOW| )
   ( |WITH| )
   ( |WITHIN| )
   ( |WITHOUT| )
   ( |WORK| )
   ( |WRITE| )
   ( |YEAR| )
   ( |ZONE| )
   ).
    LOOP AT lt_keywords REFERENCE INTO lr_keyword.
      ls_keywords-keyword = lr_keyword->*.
      INSERT ls_keywords INTO TABLE rt_keywords.
    ENDLOOP.
  ENDMETHOD.

  METHOD class_constructor.
    st_keywords = get_keywords( ).
  ENDMETHOD.

  METHOD zif_app_keyword_scanner~scan_keyword.

    IF zcl_app_utilities=>is_sqlscript_token( iv_sqlscript = ir_token_ext->sqlscript  ) = abap_false
    OR zcl_app_utilities=>is_comment( iv_comment = ir_token_ext->comment  ) = abap_true
    OR ir_token_ext->str_up IS INITIAL.
      RETURN.
    ENDIF.

    CASE ir_token_ext->str_up(1).
      WHEN '''' OR '"'.
        RETURN.
    ENDCASE.

    ir_token_ext->str = ir_token_ext->str_up.

    READ TABLE st_keywords TRANSPORTING NO FIELDS
    WITH TABLE KEY keyword =  ir_token_ext->str_up.
    IF sy-subrc <> 0.
      TRANSLATE ir_token_ext->str TO LOWER CASE.
    ENDIF.

  ENDMETHOD.

  METHOD zif_app_keyword_scanner~is_keyword.
    READ TABLE st_keywords TRANSPORTING NO FIELDS
     WITH TABLE KEY keyword = iv_token_up.
    IF sy-subrc = 0.
      rv_result = abap_true.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
