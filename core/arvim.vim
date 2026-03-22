" =============================================================================
" ArVim Core - إصدار اللوحة الفنية (2026)
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
set langmap=شa,لb,ؤc,يd,ثe,بf,لg,اh,هi,تj,نk,مl,ةm,ىn,خo,خo,حp,ضq,قr,سs,فt,عu,لv,صw,ءx,غy,ئz,قصdd,حثdw,حب:w,خر:q,غرu

" 3. السحر التقني: أرقام الأسطر النسبية
set number
set relativenumber

" 4. اللوحة الفنية: الثيم الداكن (Dark Theme)
set background=dark
syntax on

" تحسين ألوان الواجهة العربية (الوضع الليلي)
highlight Normal ctermbg=none
highlight LineNr ctermfg=grey
highlight CursorLineNr ctermfg=yellow
highlight Visual ctermbg=blue

" 5. شريط الحالة المعرب (Custom Statusline)
set laststatus=2
set statusline=%#PmenuSel#\ %{mode()}\ %#CursorLine#\ 📄\ %f\ %h%m%r%=\ 💾\ %y\ │\ 📍\ %l/%L\ 

" 6. رسالة ترحيب احترافية باسمك الصحيح
if has("multi_byte")
    autocmd VimEnter * echohl String | echo "🌙 ArVim: أهلاً بك في عالم محمد مزيردة التقني" | echohl None
endif

" 7. تبديل الاتجاه بضغطة زر
nnoremap <F2> :set invrl<CR>
