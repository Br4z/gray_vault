set clipboard=unnamed

" -------------------------------- Normal mode ------------------------------- "

" Navigation
nnoremap n h
nnoremap e j
nnoremap i k
nnoremap o l

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
vnoremap e j
vnoremap i k
vnoremap o l

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
onoremap e j
onoremap i k
onoremap o l

" Inner text object (e.g., 'clw' becomes 'ciw')
onoremap l i
onoremap L I

" End of word
onoremap j e
onoremap J E

" Next search
onoremap k n
onoremap K N
