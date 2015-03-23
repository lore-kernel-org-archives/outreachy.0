X-GM-THRID: 9490543935488
X-Received: by 10.112.73.33 with SMTP id i1mr6817532lbv.0.1427109585314;
        Mon, 23 Mar 2015 04:19:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.35 with SMTP id u3ls285715wiz.29.canary; Mon, 23 Mar
 2015 04:19:44 -0700 (PDT)
X-Received: by 10.194.178.67 with SMTP id cw3mr11113679wjc.2.1427109584969;
        Mon, 23 Mar 2015 04:19:44 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x22e.google.com (mail-la0-x22e.google.com. [2a00:1450:4010:c03::22e])
        by gmr-mx.google.com with ESMTPS id b6si27985lbc.1.2015.03.23.04.19.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 04:19:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22e as permitted sender) client-ip=2a00:1450:4010:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22e as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x22e.google.com with SMTP id to5so23508654lab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2015 04:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=xA5PTtVK6jYEXnrzMKYx3eiswMQrq2JOF9YomUDlphs=;
        b=ZTo3ulHS9CwljaJGfwXI6e4fpKH69nFOmvIacM5tTauCSw2cy/kix5VOkvUQq4/8W2
         3iAadijcO4Tnauuj0aiXpc3y2Cyc6uPemxkFphMuBB6KxukaKkhRuEhaYxp2OtobrqA4
         fiCWjp5fDv1ooQu/giTlcdvGAmdEwWhrUckWZAYLbRD8GPLdWr4ML78Kcyu1zCXW0FeE
         LMGyCAMZ+nUnkD5Cm87aOwPjpbIClM7e4ckHMAAAdsXRthbpSc9XHooOdbOBTmc+UJ5u
         dQzVcQkL7kXtf5z/tL9Ge51yxTSPgMMkNowfds+yoBgzjewFfNucj46cUiM3iqnCCMBA
         44Ew==
MIME-Version: 1.0
X-Received: by 10.112.126.199 with SMTP id na7mr31483863lbb.114.1427109584869;
 Mon, 23 Mar 2015 04:19:44 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Mon, 23 Mar 2015 04:19:44 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503230748590.2075@localhost6.localdomain6>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
	<68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka@gmail.com>
	<alpine.DEB.2.02.1503230748590.2075@localhost6.localdomain6>
Date: Mon, 23 Mar 2015 16:49:44 +0530
Message-ID: <CAHjTdYeeFQ5ftSzbzso0DTkW9DPoNkmn9FHwa11_Ag3FDgA8mQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 08/10] Staging: rtl8712: Fix incorrect
 assignment type in rtl8712_xmit.c
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c3776adca18d0511f2d763

--001a11c3776adca18d0511f2d763
Content-Type: text/plain; charset=UTF-8

Sparse complained because ptxdesc->txdw0, ptxdesc->txdw1, ptxdesc->txdw2,
ptxdesc->txdw3, ptxdesc->txdw4 and ptxdesc->txdw5 are declared as unsigned
int
and so the error was about the conversion to __le32.

I realize that maybe it would make more sense to change and declare them as
__le32
instead of otherwise?

--001a11c3776adca18d0511f2d763
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Sparse complained because ptxdesc-&gt;txdw0=
,  ptxdesc-&gt;txdw1,  ptxdesc-&gt;txdw2,  <br>ptxdesc-&gt;txdw3,  ptxdesc-=
&gt;txdw4 and  ptxdesc-&gt;txdw5 are declared as unsigned int<br></div>and =
so the error was about the conversion to __le32.<br><br></div>I realize tha=
t maybe it would make more sense to change and declare them as __le32<br>in=
stead of otherwise?<br></div></div>

--001a11c3776adca18d0511f2d763--

