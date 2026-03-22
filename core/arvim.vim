" =============================================================================
" ArVim Core - الإصدار الأول (2026)
" المطور: محمد مزردة (Mohamed Mzerda)
" =============================================================================

set encoding=utf-8
set fileencoding=utf-8

if has("arabic")
    set arabicshape
    set allowrevins
endif

" خريطة الأوامر العربية (Langmap)
set langmap=شa,لb,ؤc,يd,ثe,بf,لg,اh,هi,تj,نk,مl,ةm,ىn,خo,حp,ضq,قr,سs,فt,عu,لv,صw,ءx,غy,ئz,قصdd,حثdw,حب:w,خر:q,غرu

set number
set cursorline
syntax on

" رسالة ترحيب احترافية
if has("multi_byte")
    autocmd VimEnter * echohl String | echo "ArVim: أهلاً بك في المحرر العربي الحديث" | echohl None
endif

" تبديل الاتجاه بضغطة زر
nnoremap <F2> :set invrl<CR>
