LE (Aesthician)
clients
products






many to many to many (recording_session) joins all 3

nested route =  studios/id/session/new (associates that session to that studio and itself(engineer), will also need an artist)

form for new session (CRUD for session can be reused) need show/ index for :session 

artist (use a dropdown)
(need new/show/index)

engineer/user => (name)
has_many sessions
has_many artists through sessions
has_many studios through sessions

studio (name, location)
has_many sessions
has_many artists through sessions
has_many engineers through sessions


artist => (name/account) 
artist has_many sessions
artist has_many engineers through sessions
has_many studios through sessions

session => (date/time(maybe string as a placeholder), studio, status, engineer, artist)
belongs_to artist
belongs_to engineer
belongs_to studio

