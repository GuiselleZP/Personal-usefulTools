so ~/.vim/plugins.vim 		"Direcciona al archivo donde se encuentran los plugins"

"NERDTREE"
"autocmd vimenter * NERDTree	"Activa automaticamente el complemento NERDTree"
nmap <F6> :NERDTreeToggle<CR>	"Comando para iniciar NERDTree desde vim"
"Comando que cierra NERDTree cuando no hay ventanas abiertas"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Activar Flake8"
autocmd FileType python map <C-f> :call Flake8()<CR>

"YouCompleteMe"
let g:ycm_autoclose_preview_window_after_completion=1

"Compilar código de python desde vim presionando Ctrl+r"
map <C-p> :w<CR>:!clear;python %<CR>

set nocompatible 			"Activa modo de no compativilidad con Vi"
set history=100	 			"Tamanio historial de comandos"
set encoding=utf-8			"Soporte UTF-8 para Python"

"VISUALIZACION"
set showmode	 			"Activa indicator de modos"
set showcmd 	 			"Activa la indicacion de comandos"
syntax enable	 			"Coloreado de sintaxis"
set number					"Mostrar numeros de linea"
set number relativenumber	"Mostrar numeros relativos"
set showmatch				"Cuando se cierra un parentesis, llave o corchete muestra con que caracter coincide"
colorscheme iceberg			"color del tema"
set cursorline				"Mostrar linea horizontal en la linea de trabajo"
set colorcolumn=80			"Limite de caracteres por linea"
							"Escribir hasta la columna sin tocarla :v"
highlight ColorColumn ctermbg = 66	"Color de la columna"
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

"SANGRADO, SALTOS DE LINEA Y TABULADORES"
set autoindent 				"Respetar automáticamente el sangrado de la línea precedente
set tabstop=4				"tabulador"
set shiftwidth=4			"al agregar una llave + ENTER se crea una nueva linea tabulada"

" BÚSQUEDAS
set hlsearch				"Iluminar todas las apariciones buscada
set ignorecase smartcase 	"Ignorar mayusculas y minusculas salvo si se usan mayusculas en la cadena de busqueda
set incsearch 				"Búsqueda incrementa.

"CERRADO AUTOMATICO DE CORCHETES, LLAVES ..."
inoremap " ""<left>
inoremap ' ''<left>
inoremap << <><left>
inoremap <<< << <left>
inoremap ( ()<left>
inoremap (( ()
inoremap [ []<left>
inoremap { {}<left>
inoremap {} {}
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap ` ```
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

"emmet
execute pathogen#infect()
syntax on
filetype plugin indent on
