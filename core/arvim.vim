" =============================================================================
" ArVim Core - إصدار الذكاء العربي (2026)
" المطور: محمد مزيردة (Mohamed Mzerda)
" =============================================================================

" 1. إعدادات الترميز واللغة
set encoding=utf-8
set fileencoding=utf-8

if has("arabic")
    set arabicshape
    set allowrevins
endif

" 2. خريطة الأوامر العربية (Langmap)
set langmap=شa,لb,ؤc,يd,ثe,بf,لg,اh,هi,تj,نk,مl,ةm,ىn,خo,حp,ضq,قr,سs,فt,عu,لv,صw,ءx,غy,ئz,قصdd,حثdw,حب:w,خر:q,غرu

" 3. السحر التقني: أرقام الأسطر النسبية
set number
set relativenumber

" 4. اللوحة الفنية: الثيم الداكن (Dark Theme)
set background=dark
syntax on
highlight Normal ctermbg=none
highlight LineNr ctermfg=grey
highlight CursorLineNr ctermfg=yellow
highlight Visual ctermbg=blue

" 5. التدقيق الإملائي العربي (Arabic Spellcheck)
" لتفعيله يدوياً اكتب :set spell spelllang=ar
set spelllang=ar,en_us
highlight SpellBad ctermbg=red ctermfg=white " تمييز الخطأ بخلفية حمراء

" 6. الاختصارات الذكية (Snippets) - ممتعة جداً
iabbrev باسم بسم الله الرحمن الرحيم
iabbrev صلم صلى الله عليه وسلم
iabbrev توقيعي كتبه: محمد مزيردة - مطور ArVim
iabbrev تاريخي <C-R>=strftime("%Y-%m-%d")<CR>

" 7. شريط الحالة المعرب (Custom Statusline)
set laststatus=2
set statusline=%#PmenuSel#\ %{mode()}\ %#CursorLine#\ 📄\ %f\ %=\ 💾\ %y\ │\ 📍\ %l/%L\ 

" 8. رسالة ترحيب
if has("multi_byte")
    autocmd VimEnter * echohl String | echo "🌙 ArVim: أهلاً بك في عالم محمد مزيردة التقني" | echohl None
endif

" 9. تبديل الاتجاه بضغطة زر
nnoremap <F2> :set invrl<CR>
" تبديل التدقيق الإملائي بضغطة زر F3
nnoremap <F3> :set spell!<CR>
