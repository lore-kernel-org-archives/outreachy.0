X-GM-THRID: 6330315334745063424
X-Received: by 10.200.52.230 with SMTP id x35mr3965970qtb.23.1473891393590;
        Wed, 14 Sep 2016 15:16:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.24 with SMTP id v24ls761942ioi.3.gmail; Wed, 14 Sep
 2016 15:16:32 -0700 (PDT)
X-Received: by 10.36.89.85 with SMTP id p82mr7274784itb.0.1473891392017;
        Wed, 14 Sep 2016 15:16:32 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id w132si52052ywg.1.2016.09.14.15.16.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 15:16:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id t7so29971872qkh.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 15:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=fTLlVEK70nYph22ch8Z7nCpdEyV4TTeY2W4Q5A4KTa0=;
        b=NIJ92reb87YW/GKiE1JPDJvz5OYdh7bEP1VNpp+HvpuFgmuKcR8RYTM7S8zgSyJnzv
         PxTKITT4b8eHEeFxuHgigxSOEx5DxMJmFzHaU8ppJYwuMdJjY3au0vut1jtkjQq78Vo2
         WsuFZ8CbHKSmtS6fCB1Ik1Zg0jR7Fs9dbZMJ4GPhfaVXnNCY7k5UD9gP4QMrOSp8rDzh
         ALcQ6EXd1piuuZimB9wWnce8/j3w7NS7/WluKAKY6arANcZGdv30AN+gOiwSZHgHpYvn
         AJU0s1xlyE9UW581IF9AhripHlt7C1kZvZmUHm9w4BVlEJV41wIobZZRpbYfqRFs9MJ3
         X+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=fTLlVEK70nYph22ch8Z7nCpdEyV4TTeY2W4Q5A4KTa0=;
        b=HXsHxrY5Bd+pb4KO2aCIq1ojcma3ZmgXYQQJteOFuTRfn9kQLLNB9iiBtHiX/keUTe
         D3SLGVWWH+aWIbzvqKUhz2EhqgxRHCtouXLuLpV4t+ogl6Ypr9DhEX6XAOb4Ey3qhMua
         3UzNcQ2edyl9VPWjFBzGPfIMA3zjUktoPj0pBcELF12nxu13/6FKGGISVVTEVtKwblYj
         JAKtZFcgaMzFIF3c98Xr77bw/JvbctPtVH2acYFpfuHw9McBH18rch6TXFSHbH0Am9WT
         /S6tqU2cDE6aQ9MWqiyPyeGi+OvEC2FIchH0wGaR3/45Z3poeVPPqID/Ao+JlwLCiP0T
         NBuw==
X-Gm-Message-State: AE9vXwNbXnMWq1vNQ2iQxhriJlyDMVrkQpmFE+YmNTZalMtmV2ts8smFjaYW7l5wVGzyOJfxPuqynRVDSdE/2Q==
X-Received: by 10.55.108.194 with SMTP id h185mr5813268qkc.37.1473891391822;
 Wed, 14 Sep 2016 15:16:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Wed, 14 Sep 2016 15:16:11 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 03:46:11 +0530
Message-ID: <CAFrQyDFa-=oAuQdZmJYn+SyWGvStXL+CrNQEVRHC7sJWmp8HWA@mail.gmail.com>
Subject: [PATCH 0/6] staging: vt6656: Fix multiple checkpatch issues
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>
Content-Type: multipart/alternative; boundary=001a11487766d8e191053c7f1433

--001a11487766d8e191053c7f1433
Content-Type: text/plain; charset=UTF-8

Fix checkpatch issues.These issues are detected by checkpatch.pl script.

Namrata A Shettar(6):
*staging: vt6656: Remove unnecessary blank lines*
staging: vt6656: main_usb: Remove unnecessary blank lines
staging: vt6656: main_usb: Replace data type declaration with variable of
same type
staging: vt6656: rf: Add space around '-'
staging: vt6656: rxtx: Remove unneccessary blank lines
staging: vt6656: rxtx: Fix multiple assignments


drivers/staging/vt6656/wcmd.c | 3 ---
drivers/staging/vt6656/main_usb.c | 9 +++------
drivers/staging/vt6656/rf.c | 4 ++--
drivers/staging/vt6656/rxtx.c | 7 ++-----
4 files changed, 7 insertions(+), 16 deletion(-)


--
2.7.4

--001a11487766d8e191053c7f1433
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Fix checkpatch issues.These issues are detected by <a=
 target=3D"_blank" href=3D"http://checkpatch.pl">checkpatch.pl</a> script.<=
br><br></div>Namrata A Shettar(6):<font size=3D"2"><b><span style=3D"font-w=
eight:normal"><br>staging: vt6656: Remove unnecessary blank lines</span></b=
></font><font size=3D"2"><span style=3D"font-weight:normal"><br>staging: vt=
6656: main_usb: Remove unnecessary blank lines<br></span></font><font size=
=3D"2"><span style=3D"font-weight:normal">staging: vt6656: main_usb: Replac=
e data type declaration with variable of same type</span></font><font size=
=3D"2"><span style=3D"font-weight:normal"><br>staging: vt6656: rf: Add spac=
e around &#39;-&#39;<br></span></font><font size=3D"2"><span style=3D"font-=
weight:normal">staging: vt6656: rxtx: Remove unneccessary blank lines<br></=
span></font><font size=3D"2"><span style=3D"font-weight:normal">staging: vt=
6656: rxtx: Fix multiple assignments<br><br></span></font><br>drivers/stagi=
ng/vt6656/wcmd.c | 3 ---<br><font size=3D"2"><span style=3D"font-weight:nor=
mal"></span></font>drivers/staging/vt6656/main_us<wbr>b.c | 9 +++------<br>=
drivers/staging/vt6656/rf.c | 4 ++--<br>drivers/staging/vt6656/rxtx.c | 7 +=
+-----<br>4 files changed, 7 insertions(+), 16 deletion(-)<br><br><br><span=
><font color=3D"#888888">--<br>
2.7.4</font></span></div>

--001a11487766d8e191053c7f1433--

