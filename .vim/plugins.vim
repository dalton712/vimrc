1   let s:plugin_dir = expand('~/.vim/plugged')                                                                                                                               
  1                                                                                                                                                                           
  2 function! s:ensure(repo)                                                                                                                                                  
  3   let name = split(a:repo, '/')[-1]                                                                                                                                       
  4   let path = s:plugin_dir . '/' . name                                                                                                                                    
  5                                                                                                                                                                           
  6   if !isdirectory(path)                                                                                                                                                   
  7     if !isdirectory(s:plugin_dir)                                                                                                                                         
  8       call mkdir(s:plugin_dir, 'p')                                                                                                                                       
  9     endif                                                                                                                                                                 
 10     execute '!git clone --depth=1 https://github.com/' . a:repo . ' ' . shellescape(path)                                                                                 
 11   endif                                                                                                                                                                   
 12                                                                                                                                                                           
 13   execute 'set runtimepath+=' . fnameescape(path)                                                                                                                         
 14 endfunction                                                                                                                                                               
 15                                                                                                                                                                           
 16 call s:ensure('ghifarit53/tokyonight-vim')                                                                                                                                
 17 call s:ensure('junegunn/fzf')                                                                                                                                             
 18 call s:ensure('junegunn/fzf.vim')
