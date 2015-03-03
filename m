X-GM-THRID: 6344288501760
X-Received: by 10.112.159.227 with SMTP id xf3mr147389lbb.11.1425418826118;
        Tue, 03 Mar 2015 13:40:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.100 with SMTP id lj4ls90702lab.86.gmail; Tue, 03 Mar
 2015 13:40:24 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr137683lbb.17.1425418824645;
        Tue, 03 Mar 2015 13:40:24 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x234.google.com (mail-la0-x234.google.com. [2a00:1450:4010:c03::234])
        by gmr-mx.google.com with ESMTPS id wz2si31678lbb.0.2015.03.03.13.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 13:40:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::234 as permitted sender) client-ip=2a00:1450:4010:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x234.google.com with SMTP id mn12so4273974lab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 13:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=pcb2FtNaPPlZhWUBva96ztokUgkePZwQi2RItOGJtrE=;
        b=l3h0vHr7eyDfF8B+aroVgdTTfAZ0ZvHuY1CUOXSL2FI6jCFl3lNXrLYrtp7lWbn7Ur
         O7W6m4pGBRPYBHMxt8Gp2TzRSydpSt1n42c1asSGlO8FDcV3zwRgXJ24KbwZX1wEESrc
         URrvEsd2wJZr2YhTbmYd01qL8cfQO3GtruTyKJJJP/UduOQuTkdwhxbk4L63lU2n4b7R
         gA5H/G3T/ZCynx8DLXL/cAEcp7zqCeU5+fcY+6Qn7w4hZmst4VtOjy8gFszUs0e24ca2
         4QuxAJLFqsn0wxI20Qz6f2Mz2V0GfppmJ9So+Y1W/CyDwhrDRddS2OZ3U4jAbiYsLmsI
         kySw==
MIME-Version: 1.0
X-Received: by 10.112.150.163 with SMTP id uj3mr707688lbb.51.1425418824572;
 Tue, 03 Mar 2015 13:40:24 -0800 (PST)
Received: by 10.114.221.8 with HTTP; Tue, 3 Mar 2015 13:40:24 -0800 (PST)
Date: Tue, 3 Mar 2015 22:40:24 +0100
Message-ID: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com>
Subject: Cannot locate pMgntInfo
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi,

While working on a patch, I needed to find out the type of
pMgntInfo->RegRfOff on line 2770, in file
drivers/staging/rtl8192u/r8192U_core.c. But I cannot find where
pMgntInfo is defined, I saw that is used in  rtl8192u and rtl8192eu
directories. I tried recursive grep to find it and I could not locate
where it is defined. I suppose it's some kind of macro...

Can you help me find out?

Regards,

Ksenija

