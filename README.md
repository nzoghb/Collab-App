
# crew
"think Facebook-events meets Eventbrite"

## Authors
* Nick Zoghb
* Maaz Uddin

## Purpose
Your digital life - whether on facebook, twitter or email - is littered 
with events, dates and times. CREW aims to collate those into one social 
feed and reduce the clutter

## Features
* Ability to have different tabs based on Private, Friends, or Regional 
events
* Ability to create new events as either public or private and invite 
certain individuals
	* People invited can then choose what drinks/snacks/food they might 
	bring or who will bring a ball to a game etc.
* Ability to create a profile and add friends groups (or users can log in 
as guests)
	* Profile can be editted to reflect events one is interested in
* Location-based checkin
	* People have the option to checkin at the event when their location 
	matches the location of the event.
	* Checkin can be done anonomously if chosen to do so for privacy purposes
	* Checkin can help other friends decide to go or not and also give a 
	count of how many people are at the event
* Notifications
	* Pop up notifications for events I'm going to that are happening soon 
	(eg. in an hour or in a day)
* Calendar
	* Lists all the events that I have RSVPed to
* Search Feature
	* Ability to search for an event or a category
* List by different Categories
	* Use common categories (eg. tech/movies/food etc.)
	* Allow users to create their own categories - favorites (maybe?)

## Control Flow
* New members will be prompted to sign up, connect their 
facebook/email/etc. or skip process
	* After this they'll head to the main feed
* Returning members will see the logo while the app starts up
	* After this they'll head to the main feed
* The main feed will be divided into 3 tabs: CITYWIDE, 
FRIENDS, ME (each displaying corresponding events)
	* Events in this view will have the option of "quicksave" 
	to add to your in-app calendar for later consultation
	* Event thumbnails will consist of the most important details; 
	title, picture, date, time, venue and hosts... maybe description (?)
	* Events can be tapped to expand their details
	* Search feature will allow users to filter feed to matching results 
	in event title or hosting party
	* Topbar hashtag system allows for easy filtering of feed into certain 
	categories (as tagged by event creators)
* EVENT view will include more details
	* Includes a social hub for people attending the event to discuss 
	event/answer questions
	* There will be a button to private message the host a question
	* There will be a MapKit-integrated feature to find the location
	* Option to add date/time to calendar
	* Option to see how many people are going and which friends are going
	* Option to see which friends are already there (?)&#42;
	* Option to check in (option to auto-check in? [geolocation])&#42;
	* Private events will have the option for users to delegate specific 
	roles amongst attendees (e.g. bring spoons)
* Top corner will be able to be tapped ("+" button) to create a new event.
* Another button will be available to invoke the sidebar
	* Sidebar will contain the PROFILE, CALENDAR, MY EVENTS, FRIENDS, 
	SETTINGS options. Each will take the user to their respective views
	* Sidebar will also contain the user's profile picture, if applicable
* All peripheral views (see below) will have a "go back" option
	* CALENDAR view will and an option to click on dates to see the events 
	happening then (option to integrate with phone notification/calendar app)
	* MY EVENTS view will be similar to main feed view
	* FRIENDS view will be a table view with friends of the user, if applicable
	* PROFILE/ME view will have various options to change profile picture, 
	personal & contact info
	* SETTINGS view will have various ways to change privacy, location 
	settings and event category preferences

&#42; potential privacy issues arise
&#42;&#42; tentative ideas: groups, guest accounts

## Implementation
### Model
* User.swift
* Event.swift
* Tags.swift(?)
* Groups.swift(?)

### View
* EventListTableView
	* MyEventsView
	* FriendsEventsView
	* LocationEventsView
* MyProfileView
	* UpcomingEventsView
	* CalendarView
* CategoriesView
* SettingsView

### Controller
* MyEventsTableViewController
* FriendsEventsViewController
* LocationEventsViewController
* MyProfileViewController
* UpcomingEventsViewController
* CalendarViewController
* CategoriesViewController
* SettingsView