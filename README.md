EventHub Lite

EventHub Lite is a Flutter-based mobile application designed to help users browse, favorite, and purchase tickets for events. It features a paginated event list with search and category filtering, detailed event views, and offline support using Hive caching. The app uses Riverpod for state management and monitors network connectivity to provide a seamless online and offline experience.

Features

Event Browsing: View a paginated list of events with infinite scrolling, fetched from events.json or cached in Hive when offline.

Search and Filter: Search events by title and filter by categories (e.g., Tech, Business, Arts).

Event Details: View detailed event information, including title, description, venue, speakers, and ticket availability, with a cached image.

Favorites: Toggle favorite status for events, synced to favorites.json and Hive, with visual feedback (red heart for favorited, grey for unfavorited).

Ticket Purchase: Buy tickets or join a waitlist for events, with navigation to a checkout screen.

Network Awareness: Displays network status (green for online, grey for offline) and refreshes connectivity on pull-to-refresh.

Offline Support: Caches events and favorites in Hive for offline access.