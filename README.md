![](https://codeship.com/projects/45a5ce80-16e5-0134-478c-3e8c5d75eee7/status?branch=master)

## Logging the Loggerhead (Shrike)

### Summary
There is only one [Shrike](https://en.wikipedia.org/wiki/Loggerhead_shrike) native to North America and it is a surprisingly important part of the ecosystem. While they were once extremely common throughout the eastern US and Canada, no other bird species has seen their populations reduced as much since the 1960s. The Conservation Centers for Species Survival needs an application to serve as a central repository for researchers in Canada, the US and Mexico to log their research. How amazing would it be to be part of research that may prevent this amazing animal from going extinct?

### Requested Features
* Support for multiple user types and access roles
	* General Public
		* No authorization required, static information
	* Citizen Scientist
		* Registration with contact information
		* Access to hot spot locations for observations
		* Can contribute observation data
	* Researcher
		* Registration with contact information and affiliation
		* Full access to collected data
		* Banding protocol information and procedures
	* Admin
		* Vet registering users before providing access
* Import data from outside sources, typically `.xls` and `.gis`
* Submit observation data for an individual bird including:
	* Photos
	* Geospatial data, location descriptions, etc.
	* Measurements, color, age, etc.
* Map service integration for bird locations
* Private discussion forum for registered users

### Contributing

Create a new feature branch:

    git checkout -b <your branch name>

Make your changes and stage changes:

    git add -A

Commit:

    git commit -m "<your commit message>"

When ready to submit a pull request, merge master and resolve conflicts:

    git checkout master
    git pull
    git checkout -
    git merge master

Push up changes and submit pull request in GitHub:

    git push
