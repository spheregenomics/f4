# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "----- Emptying database -----"
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"
end

puts "----- Seeding badges table -----"
Badge.create({id: 1, badge_name: 'test badge'})

puts "----- Seeding courses table -----"
Course.create([
  {
    id: 4, 
    course_name: 'French for English Speakers',
    course_type: 1,
    synopsis: 'French to level 2B', 
    course_language: 3,
    status: 13,
    target_level: 11,
    owner: 'Sean',
    version: 1
  },
  {
    id: 5, 
    course_name: 'English for French Speakers',
    course_type: 1,
    synopsis: 'English for French Speakers to 2B',
    course_language: 4,
    status: 13,
    target_level: 11, 
    owner: 'Sean',
    version: 1
  }
])

puts "----- Seeding layout_fields table -----"
LayoutField.create([
  {id: 1, field_name: 'textFile', field_value: 'lorum.txt', version: -1, lesson_layout_id: 1},
  {id: 2, field_name: 'textFile', field_value: 'lorum.txt', version: 1, lesson_layout_id: 2},
  {id: 3, field_name: 'audioFile', field_value: 'newsInSlowFrenchEpisode80.mp3', version: 1, lesson_layout_id: 2},
  {id: 4, field_name: 'imageFile', field_value: 'fromage.jpg', version: 1, lesson_layout_id: 2}
])

puts "----- Seeding layout_tables table -----"
LayoutTable.create([
  {
    id: 1,
    table_number: 1,
    row_num: 1,
    col1: "Homme D'Affairs",
    col2: "Bonjour, Madame", 
    version: 1,
    lesson_layout_id: 3
  },
  {
    id: 2,
    table_number: 1, 
    row_num: 2,
    col1: "Bonjour, Monsieur. Un petit instant, s'il vous plat, je finis ce rapport.",
    col2: "Bonjour, Madame",
    lesson_layout_id: 3
  },
  {
    id: 3,
    table_number: 1,
    row_num: 3,
    col1: "Je pense que je grossis.",
    col2: "Bonjour, Madame",
    lesson_layout_id: 3
  },
  {
    id: 4,
    table_number: 1,
    row_num: 4,
    col1: "Madame",
    col2: "Ah? Vous ne russissez pas maigrir?.",
    lesson_layout_id: 3
  },
  {
    id: 5,
    table_number: 1,
    row_num: 1,
    col1: "c'est",
    col2: "this is, that is",
    version: 1,
    lesson_layout_id: 4
  },
  {
    id: 6,
    table_number: 1,
    row_num: 2,
    col1: "s'il vous plat",
    col2: "Please",
    version: 1,
    lesson_layout_id: 4
  },
  {
    id: 7,
    table_number: 1,
    row_num: 3,
    col1: "voici",
    col2: "here is, here are",
    version: 1,
    lesson_layout_id: 4
  },
  {
    id: 8,
    table_number: 1,
    row_num: 4,
    col1: "ou",
    col2: "where",
    version: 1,
    lesson_layout_id: 4
  },
  {
    id: 9,
    table_number: 1,
    row_num: 5,
    col1: "tres",
    col2: "very",
    version: 1,
    lesson_layout_id: 4
  },
  {
    id: 10,
    table_number: 1,
    row_num: 1,
    col2: "m.sing.",
    col3: "f.sing",
    col4: "m+f pl",
    version: 1,
    lesson_layout_id: 5
  },
  {
    id: 11,
    table_number: 1,
    row_num: 2,
    col1: "my",
    col2: "mon",
    col3: "ma",
    col4: "mes",
    version: 1,
    lesson_layout_id: 5
  },
  {
    id: 12,
    table_number: 1,
    row_num: 3,
    col1: "his/hers/its",
    col2: "son",
    col3: "sa",
    col4: "ses",
    version: 1,
    lesson_layout_id: 5
  },
  {
    id: 13,
    table_number: 1,
    row_num: 4,
    col1: "our",
    col2: "votre",
    col3: "votre",
    col4: "vos",
    version: 1,
    lesson_layout_id: 5
  }
])

puts "----- Seeding lesson_layouts table -----"
LessonLayout.create([
  {id: 1, device_type: 20, seq: 1, layout_type: 24, version: 1, lesson_id: 1},
  {id: 2, device_type: 20, seq: 2, layout_type: 25, version: 1, lesson_id: 1},
  {id: 3, device_type: 20, seq: 4, layout_type: 26, version: 1, lesson_id: 1},
  {id: 4, device_type: 20, seq: 5, layout_type: 27, version: 1, lesson_id: 1},
  {id: 5, device_type: 20, seq: 6, layout_type: 28, version: 1, lesson_id: 1},
])

puts "----- Seeding lessons table -----"
Lesson.create([
  {
    id: 1,
    lesson_name: 'Lesson 1',
    lesson_type: 17, 
    seq: 1,
    synopsis: "Lesson 1 synopsis",
    status: 18,
    unit_id: 1
  },
  {
    id: 2,
    lesson_name: 'Lesson 2',
    lesson_type: 17,
    seq: 2,
    synopsis: "Lesson 2 synopsis",
    status: 18,
    unit_id: 1
  },
  {
    id: 3,
    lesson_name: 'Lesson 3',
    lesson_type: 17,
    seq: 3,
    synopsis: "Lesson 3 synopsis",
    status: 18,
    unit_id: 1
  },
  {
    id: 4,
    lesson_name: 'Lesson 3',
    lesson_type: 17,
    seq: 1,
    synopsis: "Lesson 3 synopsis",
    status: 18,
    unit_id: 1
  }
])

puts "----- Seeding lookups table -----"
Lookup.create([
  {id: 1, field_name: "course_type", lookup_text: "Language", model_name: "course"},
  {id: 2, field_name: "course_type", lookup_text: "Programming", model_name: "course"},
  {id: 3, field_name: "course_language", lookup_text: "English", model_name: "course"},
  {id: 4, field_name: "course_language", lookup_text: "French", model_name: "course"},
  {id: 5, field_name: "course_language", lookup_text: "Spanish", model_name: "course"},
  {id: 6, field_name: "course_language", lookup_text: "German", model_name: "course"},
  {id: 7, field_name: "course_language", lookup_text: "Italian", model_name: "course"},
  {id: 8, field_name: "target_level", lookup_text: "A1", model_name: "course"},
  {id: 9, field_name: "target_level", lookup_text: "A2", model_name: "course"},
  {id: 10, field_name: "target_level", lookup_text: "B1", model_name: "course"},
  {id: 11, field_name: "target_level", lookup_text: "B2", model_name: "course"},
  {id: 12, field_name: "unit_type", lookup_text: "Type 1", model_name: "unit"},
  {id: 13, field_name: "status", lookup_text: "Active", model_name: "course"},
  {id: 14, field_name: "status", lookup_text: "Inactive", model_name: "course"},
  {id: 15, field_name: "status", lookup_text: "Active", model_name: "unit"},
  {id: 16, field_name: "status", lookup_text: "Inactive", model_name: "unit"},
  {id: 17, field_name: "lesson_type", lookup_text: "Type 1", model_name: "lesson"},
  {id: 18, field_name: "status", lookup_text: "Active", model_name: "lesson"},
  {id: 19, field_name: "status", lookup_text: "Inactive", model_name: "lesson"},
  {id: 20, field_name: "device_type", lookup_text: "iPhone 4x", model_name: "lesson_layout"},
  {id: 21, field_name: "device_type", lookup_text: "iPhone 5", model_name: "lesson_layout"},
  {id: 22, field_name: "device_type", lookup_text: "iPad Mini", model_name: "lesson_layout"},
  {id: 23, field_name: "device_type", lookup_text: "iPad", model_name: "lesson_layout"},
  {
    id: 24,
    field_name: "layout_type",
    lookup_text: "iPhone Learn Layout 1",
    model_name: "lesson_layout",
    note: "Text view only"
  },
  {
    id: 25,
    field_name: "layout_type",
    lookup_text: "iPhone Learn Layout 2",
    model_name: "lesson_layout",
    note: "Text view, 1 image, 1 audio file"
  },
  {
    id: 26,
    field_name: "layout_type",
    lookup_text: "iPhone Learn Layout 3",
    model_name: "lesson_layout",
    note: "Conversation tableview"
  },
  {
    id: 27,
    field_name: "layout_type",
    lookup_text: "iPhone Learn Layout 4",
    model_name: "lesson_layout",
    note: "Two column list tableview"
  },
  {
    id: 28,
    field_name: "layout_type",
    lookup_text: "iPhone Learn Layout 5",
    model_name: "lesson_layout",
    note: "Four column list table view"
  }
])

puts "----- Seeding media table -----"
Media.create({
    id: 1,
    media_filename: "filename1",
    file_bitmap: 3,
    media_name: "French in slow french",
    description: "test",
    media_catagory_id: 1,
    seq: 1
})

puts "----- Seeding media_catagories table -----"
MediaCatagory.create([
  {
    id: 1,
    seq: 1,
    media_cat: "Texts",
    description: "Texts with associated audio files.",
    version: 1
  },
  {
    id: 1,
    seq: 1,
    media_cat: "Video",
    description: "Video clips with subtitles in fluent and foreign languages",
    version: 1
  }
])

puts "----- Seeding sentences table -----"
Sentence.create({id: 1, language: "FR", sentence: "Test"})

puts "----- Seeding tags table -----"
Tag.create({id: 1, tag: "tag1", tag_type: "f4", tag_system_bitmap: 4})

puts "----- Seeding units table -----"
Unit.create([
  {
    id: 1,
    unit_name: "Unit 1",
    unit_type: 12,
    seq: 1,
    synopsis: "Introduction",
    status: 15,
    course_id: 4
  },
  {
    id: 2,
    unit_name: "Unit 2",
    unit_type: 12,
    seq: 2,
    synopsis: "Getting around town",
    status: 15,
    course_id: 4
  }
])

puts "----- Seeding users table -----"
User.create({id: 1, user_name: "sean", diaspora_login: "test", shapado_login: "test"})

puts "----- Seeding words table -----"
Word.create({id: 1, word_fluent: "Dof", fluent_language: "EN", word_foreign: "chien", foreign_language: "FR"})