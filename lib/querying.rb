def select_books_titles_and_years_in_first_series_order_by_year
  "select title, year
  from books
  where series_id = 1
  order by year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto
  from characters
  order by motto
  limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(species)
  from characters
  group by species
  order by count(species) desc
  limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name
  from authors
  join series
  on authors.id = series.author_id
  join subgenres
  on subgenres.id = series.subgenre_id
  "
end

def select_series_title_with_most_human_characters
  "select series.title
  from series
  join characters
  on series.id = characters.series_id
  where characters.species = 'human'
  group by series.title
  limit 1
  "
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.book_id)
  from character_books
  join books
  on books.id = character_books.book_id
  join characters
  on characters.id = character_books.character_id
  group by characters.name
  order by count(character_books.book_id) desc"
end
