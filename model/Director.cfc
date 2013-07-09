/**
 * I am the directors table
 * @persistent true
 * @table directors
 */
component
{

	property name="id" column="directorid" fieldtype="id" generator="increment";

	property name="firstname" ormtype="string";
	property name="lastname" ormtype="string";

	property name="movies" fieldtype="one-to-many" cfc="Movie"
		fkcolumn="fk_movieid" singularname="movie" inverse="true";

}
