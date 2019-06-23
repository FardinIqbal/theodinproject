# CREATE TRACK Frontend
# *********************************

track = create_or_update_track(
  title: "Front End Only",
  description: "This track takes you through all of the front-end content in our curriculum. You'll learn HTML, CSS and JavaScript, but you will not encounter any Ruby or Rails.",
  position: 1,
)

position = 0
courses_in_track = [
  { course_id: Course.find_by_title('Web Development 101').id, track_position: position += 1 },
  { course_id: Course.find_by_title('Javascript').id, track_position: position += 1 },
  { course_id: Course.find_by_title('HTML and CSS').id, track_position: position += 1 },
  { course_id: Course.find_by_title('Getting Hired').id, track_position: position += 1 },
]

courses_in_track.each do |course_attrs|
  track.track_courses.create!(course_attrs)
end
