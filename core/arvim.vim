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

" =============================================================================
" قسم التدقيق الإملائي العربي - ArVim Spellcheck
" =============================================================================

" 1. تحديد لغة التدقيق (العربية والإنجليزية معاً)
set spelllang=ar,en_us

" 2. تلوين الكلمات الخاطئة بشكل واضح (خلفية حمراء ونص أبيض)
highlight SpellBad ctermbg=red ctermfg=white gui=undercurl guisp=red

" 3. تلوين الكلمات المقترحة (خلفية زرقاء)
highlight SpellCap ctermbg=blue ctermfg=white

" 4. زر سحري لتفعيل/تعطيل التدقيق (F3)
" اضغط F3 لتشغيل التدقيق أو إطفائه
nnoremap <F3> :set spell!<CR>

" 5. نصيحة للمستخدم:
" عند الوقوف على كلمة خاطئة (باللون الأحمر):
" اضغط z= لرؤية الاقتراحات الصحيحة
" اضغط zg لإضافة الكلمة لقاموسك الشخصي

" =============================================================================
" قسم الاختصارات الذكية (Snippets) - ArVim Smart Typing
" =============================================================================

" 1. اختصارات دينية واجتماعية
iabbrev باسم بسم الله الرحمن الرحيم
iabbrev صلم صلى الله عليه وسلم
iabbrev رضي رضي الله عنه
iabbrev تعلى تعالى
iabbrev جلا جلاله

" 2. اختصارات تقنية وشخصية (باسمك الصحيح)
iabbrev مطور مطور ArVim: محمد مزيردة
iabbrev توقيعي تحياتي، محمد مزيردة - مطور ومبرمج ArVim 🌙
iabbrev ارك ArVim (المحرر العربي الحديث)

" 3. اختصارات ديناميكية (الوقت والتاريخ لعام 2026)
" اكتب 'تاريخ' ليظهر تاريخ اليوم تلقائياً
iabbrev تاريخ <C-R>=strftime("%Y-%m-%d")<CR>
" اكتب 'وقت' ليظهر الوقت الحالي
iabbrev وقت <C-R>=strftime("%H:%M")<CR>

" 4. ترويسة ملف برمجية (Template)
" اكتب 'هيد' لإنشاء ترويسة احترافية لملفاتك
iabbrev هيد " ======================================================<CR>" ملف: <C-R>=expand("%:t")<CR><CR>" المطور: محمد مزيردة<CR>" التاريخ: <C-R>=strftime("%Y-%m-%d")<CR><CR>" الوصف: <CR>" ======================================================

