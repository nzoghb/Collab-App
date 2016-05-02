
# crew
"think Facebook-events meets Eventbrite"

## Authors
* Nick Zoghb
* Maaz Uddin

## Purpose
Your digital life - whether on facebook, twitter or email - is littered 
with events, dates and times. <b><i>crew</i></b> aims to collate those into one social 
feed and reduce the clutter

## Features
* Ability to have different tabs: Crew, Me, Nearby
* Ability to create a profile and add friends groups (or users can log in 
as guests)
	* Profile can be edited to reflect events one is interested in
* Calendar
	* Lists all the events that I have RSVPed to

## Control Flow
* The main feed will be divided into 3 tabs, as metioned before
	* Event thumbnails will consist of the most important details; 
	title, picture, date, time, venue and hosts... maybe description (?)
	* Events can be tapped to expand their details
* Top corner will be able to be tapped ("+" button) to create a new event.
* There will be a sidebar to go to the following views:
	* CALENDAR view will and an option to click on dates to see the events 
	happening then (option to integrate with phone notification/calendar app)
	* CREW view will be a table view with friends of the user, if applicable
	* PROFILE/ME view will have various options to change profile picture, 
	personal & contact info
	* SETTINGS view will have various ways to change privacy, location 
	settings and event category preferences

&#42; potential privacy issues arise <p>
&#42;&#42; tentative ideas: groups, guest accounts

## Implementation
### Model
* EventItem.swift
* EventItemCell.swift

### View
* CrewEventsView.swift
* MyEventsView.swift
* NearbyEventsView.swift
* SideBarMenuView.swift

### Controller
* EventItemViewController.swift
* EventListTableViewController.swift
* SideBarMenuViewController.swift
* MyProfileViewController.swift
* MyCrewsViewController.swift
* MyCalendarViewController.swift
* MySettingsViewController.swift
* NewEventViewController.swift

## Credits
* SWRevealViewController for SideBarMenu

RETIRED:

* Ability to create new events as either public or private and invite 
certain individuals
	* People invited can then choose what drinks/snacks/food they might 
	bring or who will bring a ball to a game etc.
* New members will be prompted to sign up, connect their 
facebook/email/etc. or skip process
* After this they'll head to the main feed
* Returning members will see the logo while the app starts up
* After this they'll head to the main feed
* Having "crews" and "nearby" events
* EVENT view will include more details
	* Includes a social hub for people attending the event to discuss 
	event/answer questions
	* There will be a button to private message the host a question
	* There will be a MapKit-integrated/core location feature to find the location
	* Option to add date/time to calendar
	* Option to see how many people are going and which friends are going
	* Option to see which friends are already there (?)&#42;
	* Option to check in (option to auto-check in? [geolocation])&#42;
	* Private events will have the option for users to delegate specific 
	roles amongst attendees (e.g. bring spoons)
BONUS:
* Location-based checkin
    * People have the option to checkin at the event when their location 
    matches the location of the event.
    * Checkin can be done anonomously if chosen to do so for privacy purposes
    * Checkin can help other friends decide to go or not and also give a 
    count of how many people are at the event