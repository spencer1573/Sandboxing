require 'mkmf'

# abort exits with a 1 and with a message
#
# it talks about it here:
# http://www.sitepoint.com/exit-exit-abort-raise-get-me-outta-here/

abort "missing malloc()" unless have_func "malloc"
abort "missing free()"   unless have_func "free"

# still a little fuzzy how the makefile works
create_makefile "my_malloc/my_malloc"


