X-GM-THRID: 6339053517033963520
Date: Thu, 13 Oct 2016 05:18:06 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1610120710390.3282@hadrien>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien> <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com> <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com> <alpine.DEB.2.10.1610112221080.3192@hadrien> <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com>
 <alpine.DEB.2.10.1610120710390.3282@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_669_1126950437.1476361086147"
X-Google-Token: EP72_b8FTqNfSup_qDA0
X-Google-IP: 117.246.90.206

------=_Part_669_1126950437.1476361086147
Content-Type: multipart/alternative; 
	boundary="----=_Part_670_1729322451.1476361086147"

------=_Part_670_1729322451.1476361086147
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


This patch fixes the checkpatch issue by replacing BBvClearFOE with 
bbvclearfoe. 

Signed-off-by: Varsha Rao <rvarsha016@gmail.com> 
--- 
 drivers/staging/vt6655/
baseband.h | 2 +- 
 1 file changed, 1 insertion(+), 1 deletion(-) 

diff --git a/drivers/staging/vt6655/baseband.h 
b/drivers/staging/vt6655/baseband.h 
index 6d9a936..a732fba 100644 
--- a/drivers/staging/vt6655/baseband.h 
+++ b/drivers/staging/vt6655/baseband.h 
@@ -58,7 +58,7 @@ 
 #define TOP_RATE_2M         0x00200000 
 #define TOP_RATE_1M         0x00100000 
  
-#define BBvClearFOE(dwIoBase)                                \ 
+#define bbvclearfoe(dwIoBase)                                \ 
         BBbWriteEmbedded(dwIoBase, 0xB1, 0) 
  
 #define BBvSetFOE(dwIoBase)                                \ 
-- 
2.7.4 


------=_Part_670_1729322451.1476361086147
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>This patch fixes the checkpatch issue by replacing BBv=
ClearFOE with bbvclearfoe.
<br><br>Signed-off-by: Varsha Rao &lt;<a href=3D"mailto:rvarsha016@gmail.co=
m" target=3D"_blank" rel=3D"nofollow">rvarsha016@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/vt6655/<div dir=3D"ltr"><wbr>baseband.h | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/vt6655/<wbr>baseband.h b/drivers/staging/v=
t6655/<wbr>baseband.h
<br>index 6d9a936..a732fba 100644
<br>--- a/drivers/staging/vt6655/<wbr>baseband.h
<br>+++ b/drivers/staging/vt6655/<wbr>baseband.h
<br>@@ -58,7 +58,7 @@
<br>=C2=A0#define TOP_RATE_2M =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x00200000
<br>=C2=A0#define TOP_RATE_1M =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x00100000
<br>=C2=A0
<br>-#define BBvClearFOE(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>+#define bbvclearfoe(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0\
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BBbWriteEmbedded(=
<wbr>dwIoBase, 0xB1, 0)
<br>=C2=A0
<br>=C2=A0#define BBvSetFOE(dwIoBase)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0\
<br>--=20
<br>2.7.4
</div><br></div>
------=_Part_670_1729322451.1476361086147--

------=_Part_669_1126950437.1476361086147--

