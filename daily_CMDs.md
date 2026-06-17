بالتأكيد. بما أنك ثبتت fish + tmux + Neovim + nnn + fzf + ripgrep + fd + bat، سأجمع لك أهم الاختصارات العملية في ورقة غش (Cheat Sheet) واحدة.

Fish

التنقل

Ctrl + R

بحث في الأوامر السابقة.

Tab

إكمال تلقائي.

Alt + ← / →

التنقل بين الكلمات.

Ctrl + A

بداية السطر.

Ctrl + E

نهاية السطر.

Ctrl + U

حذف ما قبل المؤشر.

Ctrl + K

حذف ما بعد المؤشر.


---

tmux

البادئة (Prefix)

افتراضيًا:

Ctrl+b

إذا غيرتها إلى Ctrl+a استخدمها بدلًا منها.

النوافذ

Prefix + c

نافذة جديدة.

Prefix + n

النافذة التالية.

Prefix + p

النافذة السابقة.

Prefix + ,

إعادة تسمية النافذة.

Prefix + &

إغلاق النافذة.

الـ Panes

Prefix + %

تقسيم رأسي.

Prefix + "

تقسيم أفقي.

Prefix + o

التنقل بين الـ Panes.

Prefix + x

إغلاق Pane.

Prefix + z

تكبير/تصغير Pane.

الجلسات

tmux ls

tmux new -s work

tmux attach -t work

tmux kill-session -t work


---

nnn

التنقل

Enter

دخول مجلد / فتح ملف.

Backspace

رجوع.

.

إظهار الملفات المخفية.

~

الذهاب للـ Home.

/

بحث.

إدارة الملفات

Space

تحديد ملف.

c

نسخ.

m

نقل.

d

حذف.

r

إعادة تسمية.

Plugins

;

ثم:

p

preview-tui

f

fzopen

الخروج

q


---

fzf

بحث ملفات

fzf

فتح ملف في Neovim

nvim (fzf)

داخل fzf:

Ctrl + J

أسفل.

Ctrl + K

أعلى.

Enter

اختيار.

Esc

خروج.


---

fd

بديل سريع لـ find:

fd init.lua

fd ".lua"

fd nvim ~/.config


---

ripgrep (rg)

بحث داخل الملفات:

rg "function"

rg "TODO"

rg "lazy.nvim" ~/.config


---

bat

عرض الملفات بشكل جميل:

bat init.lua

bat config.fish


---

Neovim

الحركة

h j k l

يسار، أسفل، أعلى، يمين.

w

الكلمة التالية.

b

الكلمة السابقة.

gg

بداية الملف.

G

نهاية الملف.

التحرير

i

إدراج.

a

إدراج بعد المؤشر.

o

سطر جديد.

dd

حذف سطر.

yy

نسخ سطر.

p

لصق.

u

تراجع.

Ctrl+r

إعادة.

البحث

/

ثم النص.

n

النتيجة التالية.

N

النتيجة السابقة.

الحفظ والخروج

:w

:q

:wq

:q!


---

Workflow يومي سريع

tmux

ثم:

fm

(أو n إذا لم تنشئ alias)

اختر الملف → اخرج من nnn → يفتح في Neovim داخل Pane جديدة.

للبحث في مشروع:

rg "الكلمة"

للعثور على ملف:

fd الاسم

للتنقل السريع:

fzf

هذه المجموعة وحدها كافية لإنجاز معظم الأعمال اليومية بسرعة عالية دون الحاجة لمزيد من الأدوات.
