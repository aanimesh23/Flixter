# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

## Flix Part 2

### User Stories

#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [x] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [x] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthough GIF

<img src="https://media.giphy.com/media/llryRjI4jMyv4ZiP61/giphy.gif" width=250><br>

### Notes
I was stuggliung with implementing the Collection View layout as it wouldn't be the right size even though I had set the height and width, later I found out the relations weren't configured correctly and so I had to redo thge section to make it work correctly. I was also challenged when I had to parse the movie ID to get a JSON and then retrieve the the trailer key and then make a call to youtube.  

---

## Flix Part 1

### User Stories

#### REQUIRED (10pts)
- [x] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [x] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [x] (3pts) User can view the movie poster image for each movie.

#### BONUS
- [x] (2pt) User can view the app on various device sizes and orientations.
- [x] (1pt) Run your app on a real device.

### App Walkthough GIF

<img src="https://media.giphy.com/media/JOGJCbDLhMTU8DF95C/giphy.gif" width=250><br>

### Notes
I stuggled with version control as when I initiallized my project in git, I lost all the progress I had made. Luckily, the changes were stashed and I was able to recover my lost work and then restore the state of the app to retain all my hardwork.
