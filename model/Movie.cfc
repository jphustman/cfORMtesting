/**
 * I am the movie table
 * @persistent true
 * @table movies
 */
component
{

	property name="id" column="movieid" fieldtype="id" generator="increment";

	property name="title" ormtype="string";

	property name="director" fieldtype="many-to-one" cfc="Director"
		fkcolumn="fk_movieid";

}
