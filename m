X-GM-THRID: 6264490857152380928
Date: Mon, 21 Mar 2016 06:03:58 -0700 (PDT)
From: sveta.orlik.code@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <4cac9960-7b07-454e-bb84-f37a13e2e7ad@googlegroups.com>
Subject: [PATCH] Staging: ioo: ad9832: Replace 'unsigned' with 'unsigned
 int'
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_355_1633627615.1458565438294"
X-Google-Token: EL7iv7cF2DwE94quiis0
X-Google-IP: 46.242.29.57

------=_Part_355_1633627615.1458565438294
Content-Type: multipart/alternative; 
	boundary="----=_Part_356_1749606433.1458565438294"

------=_Part_356_1749606433.1458565438294
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Replace 'unsigned' with 'unsigned int' to avoid checkpatch.pl warning.

Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/frequency/ad9832.c 
b/drivers/staging/iio/frequency/ad9832.c
index 18b27a1..358400b 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -31,7 +31,7 @@ static unsigned long ad9832_calc_freqreg(unsigned long 
mclk, unsigned long fout)
 }
 
 static int ad9832_write_frequency(struct ad9832_state *st,
-                  unsigned addr, unsigned long fout)
+                  unsigned int addr, unsigned long fout)
 {
     unsigned long regval;
 
-- 
2.5.0


------=_Part_356_1749606433.1458565438294
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Replace &#39;unsigned&#39; with &#39;unsigned int&#39;=
 to avoid checkpatch.pl warning.<br><br>Signed-off-by: Svetlana Orlik &lt;s=
veta.orlik.code@gmail.com&gt;<br>---<br>=C2=A0drivers/staging/iio/frequency=
/ad9832.c | 2 +-<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>=
<br>diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/i=
io/frequency/ad9832.c<br>index 18b27a1..358400b 100644<br>--- a/drivers/sta=
ging/iio/frequency/ad9832.c<br>+++ b/drivers/staging/iio/frequency/ad9832.c=
<br>@@ -31,7 +31,7 @@ static unsigned long ad9832_calc_freqreg(unsigned lon=
g mclk, unsigned long fout)<br>=C2=A0}<br>=C2=A0<br>=C2=A0static int ad9832=
_write_frequency(struct ad9832_state *st,<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 unsigned addr, unsig=
ned long fout)<br>+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 =C2=A0 unsigned int addr, unsigned long fout)<br>=C2=A0=
{<br>=C2=A0=C2=A0=C2=A0=C2=A0 unsigned long regval;<br>=C2=A0<br>-- <br>2.5=
.0<br><br></div>
------=_Part_356_1749606433.1458565438294--

------=_Part_355_1633627615.1458565438294--

