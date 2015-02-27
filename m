X-GM-THRID: 4714696540160
X-Received: by 10.112.25.7 with SMTP id y7mr2247508lbf.21.1425061396212;
        Fri, 27 Feb 2015 10:23:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.44.136 with SMTP id e8ls219831lam.91.gmail; Fri, 27 Feb
 2015 10:23:15 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr2272171lam.9.1425061395807;
        Fri, 27 Feb 2015 10:23:15 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-lb0-x22f.google.com (mail-lb0-x22f.google.com. [2a00:1450:4010:c04::22f])
        by gmr-mx.google.com with ESMTPS id mv2si465332lbc.0.2015.02.27.10.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 10:23:15 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::22f as permitted sender) client-ip=2a00:1450:4010:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x22f.google.com with SMTP id p9so19044698lbv.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 10:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=zyoSSNRtBbya4fbDkKrcLqtLzpu0+iWfsjaqvZJxr3A=;
        b=yHV+UjXbqitO8O0q2HLTFpbgx2QNlKs9VC1FF5oInVXxvmsYv0L+NUa6339DEc+NKD
         zWOu3iCp9vxMEsndsvqUvEWzbiaGhJ1ygdCvvfOsO+UJNh8uNgEhKfcFyLNL3hnYkCzy
         +uVxX2ydat1IHsAZ7Qd49qGBmCy/NCRqNqOxDeemYm7aBFWKZAw/hEZeUcKqXDDgH2mM
         3sHxAjRXt31IzWd8XoPdNhxJ/l/bhNgc/ns/ThJ9sJ+e6NXIRT5L/9BSAwB36co8po4b
         Ni46EzleO8xb2vkSJ2MVRhp92jZrxqv8/yQYvi9f1gonwsyawPnJ44SeXapwMMlg3PiV
         RUpA==
MIME-Version: 1.0
X-Received: by 10.112.169.39 with SMTP id ab7mr13630550lbc.85.1425061395719;
 Fri, 27 Feb 2015 10:23:15 -0800 (PST)
Received: by 10.112.59.9 with HTTP; Fri, 27 Feb 2015 10:23:15 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502271913560.3793@hadrien>
References: <20150227180728.GA22813@gmail.com>
	<alpine.DEB.2.10.1502271913560.3793@hadrien>
Date: Fri, 27 Feb 2015 23:53:15 +0530
Message-ID: <CAHjTdYebB4CS1V5mTMLwr_zhYbD=Ud6cc+be53W87k71J0_dcQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Refactor loop to
 increase compactness
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c386e0466bd6051015f6e5

--001a11c386e0466bd6051015f6e5
Content-Type: text/plain; charset=UTF-8

My understanding was that since the inner nested else
and the outer else were doing the same thing, we could
make it more compact by assigning it before-hand and only
updating the values when required.

--001a11c386e0466bd6051015f6e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>My understanding was that since the inner n=
ested else<br></div>and the outer else were doing the same thing, we could<=
br></div>make it more compact by assigning it before-hand and only<br>updat=
ing the values when required.<br></div></div>

--001a11c386e0466bd6051015f6e5--

