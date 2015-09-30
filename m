X-GM-THRID: 6200282727557627904
X-Received: by 10.152.20.195 with SMTP id p3mr746092lae.5.1443633887752;
        Wed, 30 Sep 2015 10:24:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.79.106 with SMTP id i10ls214983wix.18.gmail; Wed, 30 Sep
 2015 10:24:47 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr4967389wij.5.1443633887341;
        Wed, 30 Sep 2015 10:24:47 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id o5si273207wib.0.2015.09.30.10.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 10:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id lk2so209123476wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 10:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Sl9JF+FyH5InmbLiRYSX9bok5BwWxH30ENOMJW0LAvs=;
        b=0PSeBeWg0d2vNQu3TnbaV8nJIkvbFHmIqX6LU2Tkuc4ECYlq35Z7sFsvc8UY6R4Xuf
         8OZpLu8eacBVkOMsbzz2PzlSj2BHmUZLqeb34x1jzARfwvYJFh6vITJR6K27eH+huxYX
         TOdrkf6oKzmo5sUTATTWy9KkO/+aiYjYfbcE74/QniC8c1EHaVTLCfIbjHVz4qxl2tDG
         xIOWMOqdVh+491+J4S0/kvWL7a/c0totAmjNznU0/6XNrQxj/MY/AaajHNvqYtTqQlAq
         xOD9RAioWh5uYtusp4V1+iOwqtFJ/A/IzAHjgGfvIiTodj4U9rvzZd1xTuBypLrvUDas
         XdVg==
MIME-Version: 1.0
X-Received: by 10.180.103.41 with SMTP id ft9mr5723803wib.95.1443633887146;
 Wed, 30 Sep 2015 10:24:47 -0700 (PDT)
Received: by 10.28.47.210 with HTTP; Wed, 30 Sep 2015 10:24:47 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1509301647590.2526@hadrien>
References: <1443615808-6064-1-git-send-email-aybuke.147@gmail.com>
	<alpine.DEB.2.10.1509301647590.2526@hadrien>
Date: Wed, 30 Sep 2015 20:24:47 +0300
Message-ID: <CAEAX3JqSBe4HY0+1b6NhGoJ=HH-fbCf=sATKyh7fwTNvLF+71A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Use preferred kernel type
From: aybuke ozdemir <aybuke.147@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=20cf306845910780ce0520fa351f

--20cf306845910780ce0520fa351f
Content-Type: text/plain; charset=UTF-8

Okey, I'll send the correct v2. I edited my name field. But I have one
question.

Am I just should edit the for uint*_t found by checkpatch.pl in ethernet.c
file or change all the uint* types in same file.
Because checkpatch.pl only find 2 uint* type control in file. But more than
2.

Thanks.

--20cf306845910780ce0520fa351f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Okey, I&#39;ll send the correct v2. <span id=3D"resul=
t_box" class=3D"" lang=3D"en"><span class=3D"">I edited</span> <span class=
=3D"">my</span> <span class=3D"">name field</span><span class=3D"">. But I =
have one question.<br><br></span></span><span id=3D"result_box" class=3D"" =
lang=3D"en"><span class=3D"">Am I</span> <span class=3D"">just</span> <span=
 class=3D"">should</span> <span class=3D"">edit the</span> <span class=3D""=
>for</span> <span class=3D"">uint*_t</span> <span class=3D"">found by</span=
> <span class=3D""><a href=3D"http://checkpatch.pl">checkpatch.pl</a> in </=
span></span><span id=3D"result_box" class=3D"" lang=3D"en"><span class=3D""=
><span class=3D"im"><span class=3D"im">ethernet.c file </span></span>or </s=
pan></span><span id=3D"result_box" class=3D"" lang=3D"en"><span class=3D"">=
change</span> <span class=3D"">all</span> <span class=3D"">the uint*</span>=
 <span class=3D""></span><span class=3D"">types in same file.<br></span></s=
pan></div><div><span id=3D"result_box" class=3D"" lang=3D"en"><span class=
=3D"">Because <a href=3D"http://checkpatch.pl">checkpatch.pl</a> </span></s=
pan><span id=3D"result_box" class=3D"" lang=3D"en"><span class=3D""></span>=
<span class=3D""></span><span class=3D"">only</span> <span class=3D"">find<=
/span> <span class=3D"">2 uint* type control in file. But more than 2.<br><=
/span></span></div><div><span id=3D"result_box" class=3D"" lang=3D"en"><spa=
n class=3D""><br>Thanks.<br></span></span></div><span id=3D"result_box" cla=
ss=3D"" lang=3D"en"><span class=3D""></span></span></div>

--20cf306845910780ce0520fa351f--

