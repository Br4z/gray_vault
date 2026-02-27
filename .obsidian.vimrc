set clipboard=unnamed

" -------------------------------- Normal mode ------------------------------- "

" Navigation
nnoremap n h
nnoremap e gj
nnoremap i gk
nnoremap o l

nnoremap E j
nnoremap I k

nnoremap N g0
nnoremap O g$

" Insert
nnoremap l i
nnoremap L I

" Open line
nnoremap h o
nnoremap H O

" End of word
nnoremap j e
nnoremap J E

" Next search
nnoremap k n
nnoremap K N

" -------------------------------- Visual mode ------------------------------- "

" Navigation
vnoremap n h
vnoremap e gj
vnoremap i gk
vnoremap o l

vnoremap E j
vnoremap I k

vnoremap N g0
vnoremap O g$

" Inner text object
vnoremap l i
vnoremap L I

" Other end of selection
vnoremap h o
vnoremap H O

" End of word
vnoremap j e
vnoremap J E

" Next search
vnoremap k n
vnoremap K N

" --------------------------- Operator pending mode -------------------------- "

" Navigation
onoremap n h
onoremap e gj
onoremap i gk
onoremap o l

onoremap E j
onoremap I k

onoremap N g0
onoremap O g$

" Inner text object (e.g., "clw" becomes "ciw")
onoremap l i
onoremap L I

" End of word
onoremap j e
onoremap J E

" Next search
onoremap k n
onoremap K N
