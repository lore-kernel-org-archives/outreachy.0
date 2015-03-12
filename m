X-GM-THRID: 7888814735360
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,58f6d087f39084
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.166 with SMTP id dx6mr4358950lbc.17.1426197064297;
        Thu, 12 Mar 2015 14:51:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls354208lab.39.gmail; Thu, 12 Mar
 2015 14:51:03 -0700 (PDT)
X-Received: by 10.152.4.229 with SMTP id n5mr6710900lan.1.1426197063748;
        Thu, 12 Mar 2015 14:51:03 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x22f.google.com (mail-la0-x22f.google.com. [2a00:1450:4010:c03::22f])
        by gmr-mx.google.com with ESMTPS id b6si4188lbc.1.2015.03.12.14.51.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 14:51:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22f as permitted sender) client-ip=2a00:1450:4010:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lams18 with SMTP id s18so18832514lam.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 14:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=D9Am6Pq+T63QpoGDueV2BROHUZ5Nw1uWgemAt5DsX5c=;
        b=AFzTMG1yOMNYMTYzD9KZXjKCmDYSpxL+hoYdcT6jwJJbdN/Igj2A7uO8E2lSXeDnEC
         aghbC4xiYnLhiH0OZR79cQT/seK6Fvy7XQRKcIpoTSE7osLBTe4qIwRMc8OKsC4UU4Mm
         cS1oMXqSphzl8Z7XQ/XfBmvRH3aMHOvF+cLW9QmQOUzcP2SRPxpx7B4WJMRxG8/fwNR+
         z6LaOE3p1VxfqYHeX9Kk3ezXIxd/4ieaCoO6bUYXOCygrNMdQzRuC77Hsv3QsOV3SN5o
         NIxZ/1+UEPK/pB+aKOq8VT5MDKZG6QELe5N27FHhNyMMc/E1bO2JEM+3fdRa7PkkSzLn
         q2ZQ==
MIME-Version: 1.0
X-Received: by 10.152.21.168 with SMTP id w8mr37899400lae.46.1426197063630;
 Thu, 12 Mar 2015 14:51:03 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Thu, 12 Mar 2015 14:51:03 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503122113420.2064@localhost6.localdomain6>
References: <20150312143226.GA26267@akanksha>
	<alpine.DEB.2.02.1503122113420.2064@localhost6.localdomain6>
Date: Fri, 13 Mar 2015 03:21:03 +0530
Message-ID: <CAHjTdYdEZ4x6kksbvbevMeYFBRJc8vUwYToObUeWJA-zJPsKhQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: Fix code style issues
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0158ad545b833105111e616b

--089e0158ad545b833105111e616b
Content-Type: text/plain; charset=UTF-8

The definition of fbtft_par_dbg uses a call to dev_info after
rearranging the parameters appropriately. This is done after
checking:
if (unlikely(par->debug & level))
ie the expected value of par->debug &level is 0.
Could you please provide some guidance on what other function
I should use?

Thanks!

--089e0158ad545b833105111e616b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>The definition of fbtft_par_=
dbg uses a call to dev_info after <br></div>rearranging the parameters appr=
opriately. This is done after<br></div>checking:<br>if (unlikely(par-&gt;de=
bug &amp; level)) <br></div>ie the expected value of par-&gt;debug &amp;lev=
el is 0.<br></div>Could you please provide some guidance on what other func=
tion<br></div>I should use?<br><br></div>Thanks!<br></div>

--089e0158ad545b833105111e616b--

