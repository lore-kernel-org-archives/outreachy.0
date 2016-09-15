X-GM-THRID: 6330315334745063424
X-Received: by 10.129.160.134 with SMTP id x128mr7821722ywg.25.1473971207041;
        Thu, 15 Sep 2016 13:26:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls4385805otw.27.gmail; Thu, 15 Sep
 2016 13:26:46 -0700 (PDT)
X-Received: by 10.200.39.131 with SMTP id w3mr7991966qtw.13.1473971206688;
        Thu, 15 Sep 2016 13:26:46 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id l185si384374ywb.5.2016.09.15.13.26.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:26:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id t7so69479438qkh.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=1ed6SrR6u9pNenek0voKYNPpyimgcw3Lx+6yEevqWnM=;
        b=ID0CQ9qUlu/FL92oWgUfZOfBZ4iCLZKTvx+D6HErI9ixZMXk2ytgtHrsWz3G/fCyw7
         R2HAcA4whpwIy2/K9X6dA2kB355AqqFzeyjzY81N/Ob0o+HHDj3JHL9KdFTrRtqL7wR4
         y1UWbqc06raT4OyHtJLgYR6QalvIk09eqRDejJWdgkRxU71K8rdGWlKzAk9mRuiJlUuh
         n1B2QDW+nACKulpLq/ZXXBBWaACeLT3cTWwxDvLoTx3nltQTatqswJUDdkjZu6hsZ3GE
         3pZneteG3FIbBcxX3q2cIh2oIZbNodRwelMbQ6Tw457Z8xmk7txhvVqqT3R4Hkrh5erC
         peDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1ed6SrR6u9pNenek0voKYNPpyimgcw3Lx+6yEevqWnM=;
        b=bsFuGe7AsOM1YdZOVjFLBaCXXoWKD4ymdeFusXDxTtgScLnoWP0wdWVqML2SVZ9Ig/
         ndmfjvX+3lCMCuw1gjJWaCHmxzNG6NYfVwvXHSfU/DmKZeSQoDqfPqbZgMxv9L0ClBUv
         Rha1QOZJwfCgyGKXWN5Tb5LSayA6e/Q99NDjjjRWJj/3rwCq15oJcdCj5kaRn7mSZ8C2
         vEYzXdb2D/90VJrHTgjA4z2x3PNFVoV7U1ea4fYU3of10c+HGmWhsAXQ6WKWDx5QZzey
         znd0x0bjr5nSwL7S8qvjDGTPtoOCs+wCx96lmt7iArBfnA4vb7VedVBm6fBUwrM33/u2
         /Dvg==
X-Gm-Message-State: AE9vXwOmQlP7RpCHA6ef0ymAMmSPM4dZECO03XRYbnTIxdndicbk727L99yLiSmMnGxpLyoFVxEOI4si2pDZRQ==
X-Received: by 10.55.188.193 with SMTP id m184mr12172564qkf.129.1473971206493;
 Thu, 15 Sep 2016 13:26:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 13:26:26 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 01:56:26 +0530
Message-ID: <CAFrQyDHKpW8d2Yrx1Mswi08DyBpQtOFwV7TEcZnagpHcfqo7Uw@mail.gmail.com>
Subject: [PATCH v2 0/6] staging: vt6656: Fix multiple checkpatch issues
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c0430a62c1b5e053c91aa34

--94eb2c0430a62c1b5e053c91aa34
Content-Type: text/plain; charset=UTF-8

Fix checkpatch issues.These issues were detected by checkpatch.pl script.

---
Changes in v2:
   -  Commit log messages of the patchset made imperative
   -  Subject line and description of patches 3 and 6 changed
   -  Removed insertion of blank space in patch 2


Namrata A Shettar(6):
*staging: vt6656: Remove unnecessary blank lines*
staging: vt6656: main_usb: Remove unnecessary blank lines
staging: vt6656: main_usb: Replace type declaration with *pointer of same
type
staging: vt6656: rf: Add space around '-'
staging: vt6656: rxtx: Remove unneccessary blank lines
staging: vt6656: rxtx: Break up multiple assignments


drivers/staging/vt6656/wcmd.c | 3 ---
drivers/staging/vt6656/main_usb.c | 8 ++------
drivers/staging/vt6656/rf.c | 4 ++--
drivers/staging/vt6656/rxtx.c | 7 ++-----
4 files changed, 6 insertions(+), 16 deletion(-)


--
2.7.4

--94eb2c0430a62c1b5e053c91aa34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Fix checkpatch issues.These issues w=
ere detected by <a href=3D"http://checkpatch.pl" target=3D"_blank">checkpat=
ch.pl</a> script.<br><br>---<br></div><div>Changes in v2:<br></div><div>=C2=
=A0=C2=A0 -=C2=A0 Commit log messages of the patchset made imperative<br></=
div><div>=C2=A0=C2=A0 -=C2=A0 Subject line and description of patches 3 and=
 6 changed<br></div><div>=C2=A0=C2=A0 -=C2=A0 Removed insertion of blank sp=
ace in patch 2 <br></div><div><br></div><div><br></div>Namrata A Shettar(6)=
:<font size=3D"2"><b><span style=3D"font-weight:normal"><br>staging: vt6656=
: Remove unnecessary blank lines</span></b></font><font size=3D"2"><span st=
yle=3D"font-weight:normal"><br>staging: vt6656: main_usb: Remove unnecessar=
y blank lines<br></span></font><font size=3D"2"><span style=3D"font-weight:=
normal">staging: vt6656: main_usb: Replace type declaration with *pointer o=
f same type</span></font><font size=3D"2"><span style=3D"font-weight:normal=
"><br>staging: vt6656: rf: Add space around &#39;-&#39;<br></span></font><f=
ont size=3D"2"><span style=3D"font-weight:normal">staging: vt6656: rxtx: Re=
move unneccessary blank lines<br></span></font><font size=3D"2"><span style=
=3D"font-weight:normal">staging: vt6656: rxtx: Break up multiple assignment=
s<br><br></span></font><br>drivers/staging/vt6656/wcmd.c | 3 ---<br><font s=
ize=3D"2"><span style=3D"font-weight:normal"></span></font>drivers/staging/=
vt6656/main_us<wbr>b.c | 8 ++------<br>drivers/staging/vt6656/rf.c | 4 ++--=
<br>drivers/staging/vt6656/rxtx.c | 7 ++-----<br>4 files changed, 6 inserti=
ons(+), 16 deletion(-)<br><br><br><span><font color=3D"#888888">--<br>
2.7.4</font></span></div></div>

--94eb2c0430a62c1b5e053c91aa34--

