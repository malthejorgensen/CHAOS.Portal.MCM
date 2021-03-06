DELIMITER //

CREATE PROCEDURE Object_GetByGUIDs
(
    GUIDs                   VARCHAR(21845),
    IncludeMetadata         BOOLEAN,
    IncludeFiles            BOOLEAN,
    IncludeObjectRelations  BOOLEAN,
    IncludeFolders          BOOLEAN,
    IncludeAccessPoints     BOOLEAN
)
BEGIN

    SET @sql_text := concat( 'SELECT Object.* FROM Object WHERE Object.GUID = unhex(''', REPLACE(GUIDs,',',''') OR Object.GUID = unhex('''), '''); ');
    PREPARE stmt FROM @sql_text;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET @sql_text := concat( 'SELECT OM.* ',
                             'FROM  ObjectMetadata AS OM ' ,
                             'WHERE ', IncludeMetadata ,' = 1 AND ( OM.ObjectGuid = unhex(''', REPLACE(GUIDs,',',''') OR OM.ObjectGuid = unhex('''), ''') ); ');
    PREPARE stmt FROM @sql_text;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET @sql_text := concat( 'SELECT FileInfo.* FROM Object INNER JOIN FileInfo ON Object.GUID = FileInfo.ObjectGUID WHERE ', IncludeFiles ,' = 1 AND ( Object.GUID = unhex(''', REPLACE(GUIDs,',',''') OR Object.GUID = unhex('''), ''') ); ');
    PREPARE stmt FROM @sql_text;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;    
                

    SET @sql_text := concat( 'SELECT DISTINCT ObjectRelationInfo.* FROM Object INNER JOIN  ObjectRelationInfo ON ObjectRelationInfo.Object1Guid = Object.GUID OR ObjectRelationInfo.Object2Guid = Object.GUID WHERE ', IncludeObjectRelations ,' = 1 AND ( Object.GUID = unhex(''', REPLACE(GUIDs,',',''') OR Object.GUID = unhex('''), ''') ); ');
    PREPARE stmt FROM @sql_text;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET @sql_text := concat( 'SELECT ObjectFolder.* FROM ObjectFolder WHERE ', IncludeFolders ,' = 1 AND ( ObjectFolder.ObjectGuid = unhex(''', REPLACE(GUIDs,',',''') OR ObjectFolder.ObjectGuid = unhex('''), ''') ); ');
    PREPARE stmt FROM @sql_text;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET @sql_text := concat( 'SELECT AccessPoint_Object_Join.* FROM Object INNER JOIN AccessPoint_Object_Join ON Object.GUID = AccessPoint_Object_Join.ObjectGUID WHERE ', IncludeAccessPoints ,' = 1 AND ( Object.GUID = unhex(''', REPLACE(GUIDs,',',''') OR Object.GUID = unhex('''), ''') ); ');
    PREPARE stmt FROM @sql_text;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END