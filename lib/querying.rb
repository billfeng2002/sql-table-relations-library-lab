def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year
   FROM books
   WHERE books.series_id=1
   ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT name, motto
   FROM characters
   ORDER BY LENGTH(motto) DESC
   LIMIT 1
   "
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT characters.species, COUNT(characters.id)
   FROM characters
   GROUP BY characters.species
   ORDER BY COUNT(characters.id) DESC
   LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name
   FROM authors
   JOIN series ON series.author_id=authors.id
   JOIN subgenres ON series.subgenre_id=subgenres.id"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title
   FROM characters
   JOIN character_books ON characters.id=character_books.character_id
   JOIN books ON character_books.book_id=books.id
   JOIN series ON books.series_id=books.id
   WHERE characters.species='human'
   GROUP BY series.title
   ORDER BY count(characters.id)
   LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, count(character_books.id)
   FROM character_books
   JOIN characters ON character_books.character_id=characters.id
   GROUP BY character_books.character_id
   ORDER BY count(character_books.id) DESC, characters.name ASC"
end
