#!/bin/bash

# =============================================================================
# ArVim Smart Installer - مثبت المحرر العربي الحديث
# المطور: محمد مزيردة (Mohamed Mzerda)
# الإصدار: 1.0 (2026)
# =============================================================================

# الألوان للتنسيق
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🌙 جاري بدء عملية تثبيت ArVim على جهازك...${NC}"

# 1. التأكد من وجود محرر Vim
if ! command -v vim &> /dev/null
then
    echo "⚠️ لم يتم العثور على Vim. يرجى تثبيته أولاً (sudo apt install vim)."
    exit
fi

# 2. إنشاء المسارات اللازمة في مجلد المستخدم الأساسي
mkdir -p ~/.arvim/core

# 3. نسخ ملفات الإعدادات من المشروع إلى النظام
echo -e "${GREEN}📂 جاري نسخ ملفات الإعدادات...${NC}"
cp ~/ArVim_Project/core/arvim.vim ~/.arvim/core/

# 4. ربط ArVim بملف الإعدادات الرئيسي .vimrc
VIMRC="$HOME/.vimrc"
LINK_LINE="source ~/.arvim/core/arvim.vim"

if [ -f "$VIMRC" ]; then
    if grep -qF "$LINK_LINE" "$VIMRC"; then
        echo -e "${GREEN}✅ ArVim مرتبط بالفعل بملف .vimrc الخاص بك.${NC}"
    else
        echo -e "${BLUE}📝 إضافة ArVim إلى ملف .vimrc...${NC}"
        echo "" >> "$VIMRC"
        echo "\" --- ArVim Activation ---" >> "$VIMRC"
        echo "$LINK_LINE" >> "$VIMRC"
    fi
else
    echo -e "${BLUE}📄 إنشاء ملف .vimrc جديد وربط ArVim...${NC}"
    echo "$LINK_LINE" > "$VIMRC"
fi

# 5. رسالة النجاح النهائية
echo -e "\n${GREEN}======================================================"
echo "✨ تهانينا! ArVim جاهز الآن للعمل."
echo "المطور: محمد مزيردة (Mohamed Mzerda)"
echo "------------------------------------------------------"
echo "🚀 للاستخدام: افتح أي ملف بـ Vim واضغط:"
echo "   - [F3] لتفعيل التدقيق الإملائي العربي."
echo "   - [F2] لقلب اتجاه الكتابة (RTL)."
echo "   - اكتب 'باسم' أو 'تاريخ' لرؤية الاختصارات الذكية."
echo -e "======================================================${NC}"

