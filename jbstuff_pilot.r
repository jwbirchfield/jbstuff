### Pilot script for the `jbstuff` package


## DO THESE ONCE

# Create a project that is a package using RStudio

# Specify this file `jbstuff_pilot.r` is not included in the package
use_build_ignore('jbstuff_pilot.r')

# Set up git for the local directory:
use_git()

# To connect to Github, create a Github repo and then in Terminal:
# git remote add origin https://github.com/jwbirchfield/jbstuff
# git branch -M main
# git push -u origin main

# After this, use the Git pane in RStudio.

# Configure the MIT license:
use_mit_license() # do once

# Set up testing with testthat:
use_testthat() # do once

# Edit description; see description of regexcite or another package for example.
file.edit('DESCRIPTION')

# Create a readme skeleton:
use_readme_rmd()

# After editing README.Rmd, build the README.md file that goes on the Github splash page:
build_readme()


## DO THESE WHENEVER NEEDED

# Commit to Git and push to Github through the Git pane.

# Edit key files:
file.edit('NAMESPACE')
file.edit('LICENSE')
file.edit('LICENSE.md')

# Declare a dependency:
use_package('rlang')

# All code that runs when building the package goes in the `R/` directory.
# For now, each exported functions gets its own file (same name).
# Nonexported functions go in `utils.r`.
# Create the file, or open it if it exists:
use_r('inv_logit')
use_r('utils')

# Now write the damn functions.

# Write Roxygen skeletons so the functions will have help files. Use a template.

# After completing the Roxygen skeleton in each function, update the `man/` folder:
document()

# Create test files:
use_test('inv_logit')

# Write tests.

# Run all tests:
test()

# Check the package works:
check()

# Simulate building and installing and loading the package:
load_all()

# Actually install the package:
install()

