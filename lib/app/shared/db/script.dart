class Script{
  //tabela user
  static final String TABLE_MOVIE= "tb_movie";
  static final String COLUMN_ID = "_id";
  static final String COLUMN_DATE = "date";
  static final String COLUMN_GENRE = "genero";
  static final String COLUMN_LINK = "link";
  static final String COLUMN_POSTER = "poster";
  static final String COLUMN_SY = "sinopse";
  static final String COLUMN_SYNFULL = "sinopseFull";
  static final String COLUMN_TITLE = "titulo";

  static final String SQL = 'CREATE TABLE '+ TABLE_MOVIE
      + '('+ COLUMN_ID +' INTEGER PRIMARY KEY, ' + COLUMN_DATE +
      ' TEXT, ' + COLUMN_GENRE + ' TEXT, ' + COLUMN_LINK + ' TEXT, '+ COLUMN_POSTER +
      ' TEXT, ' + COLUMN_SY + ' TEXT, ' + COLUMN_SYNFULL + ' TEXT, ' + COLUMN_TITLE + 
      ' TEXT)';
}