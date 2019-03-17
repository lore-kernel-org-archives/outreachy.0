X-GM-THRID: 6669456947091079168
Date: Sun, 17 Mar 2019 13:19:13 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <434bf516-9e31-4dcf-ab81-32842a588aee@googlegroups.com>
Subject: [PATCH] Edit CamelCase function names to make code more readable
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1346_940314326.1552853953794"
X-Google-Token: EMHXuuQFXBlLE9dzijY0
X-Google-IP: 103.87.57.22

------=_Part_1346_940314326.1552853953794
Content-Type: multipart/alternative; 
	boundary="----=_Part_1347_2076960288.1552853953795"

------=_Part_1347_2076960288.1552853953795
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


[PATCH] Edit CamelCase function names to make code more readable
Issue reported by checkpatch.pl tool

Signed-off-by:vatsalanarang<vatsalanarang@gmail.com>
---
 drivers/staging/sm750fb/ddk75
0_display.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c 
b/drivers/staging/sm750fb/ddk750_display.c
index f38051eedb6c..7f28e4cc4c79 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -85,7 +85,7 @@ static void primary_wait_vertical_sync(int delay)
        }
 }

-static void swPanelPowerSequence(int disp, int delay)
+static void sw_panel_power_sequence(int disp, int delay)
 {
        unsigned int reg;

@@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
        primary_wait_vertical_sync(delay);
 }

-void ddk750_setLogicalDispOut(enum disp_output output)
+void ddk750_set_logical_disp_out(enum disp_output output)
 {
        unsigned int reg;

@@ -147,12 +147,12 @@ void ddk750_setLogicalDispOut(enum disp_output output)

        if (output & PNL_SEQ_USAGE) {
                /* set  panel sequence */
-               swPanelPowerSequence((output & PNL_SEQ_MASK) >> 
PNL_SEQ_OFFSET,
-                                    4);
+               sw_panel_power_sequence
+               ((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET, 4);
        }

        if (output & DAC_USAGE)
-               setDAC((output & DAC_MASK) >> DAC_OFFSET);
+               set_DAC((output & DAC_MASK) >> DAC_OFFSET);

        if (output & DPMS_USAGE)
                ddk750_set_dpms((output & DPMS_MASK) >> DPMS_OFFSET);

------=_Part_1347_2076960288.1552853953795
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div><h2 id=3D":jp" class=3D"hP" tabindex=
=3D"-1" data-thread-perm-id=3D"thread-f:1628282640046426689" data-legacy-th=
read-id=3D"1698d26f21e70a41"><font size=3D"2">[PATCH] Edit CamelCase functi=
on names to make code more readable</font></h2></div><div>Issue reported by=
 <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank" data=
-saferedirecturl=3D"https://www.google.com/url?q=3Dhttp://checkpatch.pl&amp=
;source=3Dgmail&amp;ust=3D1552939293515000&amp;usg=3DAFQjCNFRioZpvivQJ_TE9r=
bSp6l3gIxMdA">checkpatch.pl</a> tool</div>
<br>
Signed-off-by:vatsalanarang&lt;<a href=3D"mailto:vatsalanarang@gmail.com" t=
arget=3D"_blank">va<wbr>tsalanarang@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/sm750fb/ddk75<div id=3D":l6" class=3D"a3s aXjCH "><wb=
r>0_display.c | 10 +++++-----<br>
=C2=A01 file changed, 5 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/drivers/staging/sm750fb/ddk7<wbr>50_display.c b/drivers/stagin=
g/sm750fb/ddk7<wbr>50_display.c<br>
index f38051eedb6c..7f28e4cc4c79 100644<br>
--- a/drivers/staging/sm750fb/ddk7<wbr>50_display.c<br>
+++ b/drivers/staging/sm750fb/ddk7<wbr>50_display.c<br>
@@ -85,7 +85,7 @@ static void primary_wait_vertical_sync(int delay)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0}<br>
<br>
-static void swPanelPowerSequence(int disp, int delay)<br>
+static void sw_panel_power_sequence(int disp, int delay)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int reg;<br>
<br>
@@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 primary_wait_vertical_sync(del<wbr>ay);<br>
=C2=A0}<br>
<br>
-void ddk750_setLogicalDispOut(enum disp_output output)<br>
+void ddk750_set_logical_disp_out(en<wbr>um disp_output output)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int reg;<br>
<br>
@@ -147,12 +147,12 @@ void ddk750_setLogicalDispOut(enum disp_output output=
)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (output &amp; PNL_SEQ_USAGE) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* set=C2=A0 panel =
sequence */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0swPanelPowerSequenc=
e((output &amp; PNL_SEQ_MASK) &gt;&gt; PNL_SEQ_OFFSET,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sw_panel_power_sequ=
ence<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((output &amp; PNL_=
SEQ_MASK) &gt;&gt; PNL_SEQ_OFFSET, 4);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (output &amp; DAC_USAGE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0setDAC((output &amp=
; DAC_MASK) &gt;&gt; DAC_OFFSET);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0set_DAC((output &am=
p; DAC_MASK) &gt;&gt; DAC_OFFSET);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (output &amp; DPMS_USAGE)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ddk750_set_dpms((ou=
tput &amp; DPMS_MASK) &gt;&gt; DPMS_OFFSET);</div></div>
------=_Part_1347_2076960288.1552853953795--

------=_Part_1346_940314326.1552853953794--

