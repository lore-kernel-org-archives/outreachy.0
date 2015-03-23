X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.11.70 with SMTP id o6mr256726wjb.6.1427149251582;
        Mon, 23 Mar 2015 15:20:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.201 with SMTP id n9ls750293lag.41.gmail; Mon, 23 Mar
 2015 15:20:50 -0700 (PDT)
X-Received: by 10.112.148.10 with SMTP id to10mr262027lbb.18.1427149250895;
        Mon, 23 Mar 2015 15:20:50 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x230.google.com (mail-la0-x230.google.com. [2a00:1450:4010:c03::230])
        by gmr-mx.google.com with ESMTPS id wz2si216282lbb.0.2015.03.23.15.20.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 15:20:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) client-ip=2a00:1450:4010:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x230.google.com with SMTP id g8so145781811lag.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2015 15:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Z7FmHdDSoamgfBibWhzdNdVE8nsFMqCZR9uYiZwYWwc=;
        b=otGioywJDVOCBaELakqDBBX3Y+zK4vj9Uh2E/YwnIELUZbXkh2bBbnQ8UlvhmrPoeK
         dwas+rUAPzoMS7xc6syErvoiBBv1c7Cj58t1tukcEmKrYA7iA1ufS0HZ8e4HdCsd0XBH
         FpPAR+CMn2eACmXMMO81EGRtDNWQzSZMnfiO9xVwibgVKFDeY6az31jscoUWQEA1Z+aM
         z0skcfY6KfCET5wSHKp6xwXAcDs/yRyZ7lg5agOhccuusF8jUwEzODltSXfQVNMOE/oM
         UJSSzOCI9Ey/9XWH1XW5H3dlmzbrHRAeeh08XjLbIg2HkT1QenDHsrk8ODo/+vHwmM4Q
         BFGQ==
MIME-Version: 1.0
X-Received: by 10.112.126.199 with SMTP id na7mr1089562lbb.114.1427149250816;
 Mon, 23 Mar 2015 15:20:50 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Mon, 23 Mar 2015 15:20:50 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1503231448490.2432@hadrien>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
	<68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka@gmail.com>
	<alpine.DEB.2.02.1503230748590.2075@localhost6.localdomain6>
	<CAHjTdYeeFQ5ftSzbzso0DTkW9DPoNkmn9FHwa11_Ag3FDgA8mQ@mail.gmail.com>
	<alpine.DEB.2.10.1503231448490.2432@hadrien>
Date: Tue, 24 Mar 2015 03:50:50 +0530
Message-ID: <CAHjTdYdgAfhfaeGU6mhsqkv-4GM1uNY0sYEWrz6F9D9WVmiMxQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 08/10] Staging: rtl8712: Fix incorrect
 assignment type in rtl8712_xmit.c
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c3776a22ee840511fc1456

--001a11c3776a22ee840511fc1456
Content-Type: text/plain; charset=UTF-8

Alright, I would request you to keep this patchset on hold
and I'll try to re-examine the code properly.
I know I should've done this before-hand but I'll be more
careful on v2 of this !

--001a11c3776a22ee840511fc1456
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Alright, I would request you to keep this p=
atchset on hold<br></div>and I&#39;ll try to re-examine the code properly.<=
br></div>I know I should&#39;ve done this before-hand but I&#39;ll be more<=
br></div>careful on v2 of this !<br></div>

--001a11c3776a22ee840511fc1456--

