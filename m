X-GM-THRID: 2118621593600
X-Received: by 10.180.104.101 with SMTP id gd5mr427131wib.6.1424556836746;
        Sat, 21 Feb 2015 14:13:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.199 with SMTP id dm7ls314632wib.49.gmail; Sat, 21 Feb
 2015 14:13:55 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr463192wjb.6.1424556835432;
        Sat, 21 Feb 2015 14:13:55 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-la0-x22b.google.com (mail-la0-x22b.google.com. [2a00:1450:4010:c03::22b])
        by gmr-mx.google.com with ESMTPS id mv2si3284741lbc.0.2015.02.21.14.13.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 14:13:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:4010:c03::22b as permitted sender) client-ip=2a00:1450:4010:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:4010:c03::22b as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by labms9 with SMTP id ms9so12266287lab.10
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 14:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=pTRGwylrdeufCmGxLMNbn6eAm3tP+Yjps1CzvhwdbMw=;
        b=LrjCOqvyIPAznQLnIxO0AyCXxdodtTSEiJxtPkmKk0Tdhmvz42E0VQco/0P/Gxd+bf
         4QGQK3DJxSEsk+Ri619nqT9DpDeG61SSF4IvF8JDOOcrv5H8E4Qo6dRuIeLMjxVDDBB7
         HB8G+TWZ7Vd7KK0r/6r3jVPnaD471Nyrar6OzL6LVVy0BxoC9J5unv0wCuimGpP6qsnq
         6/OrNvR3MdgpsZakG4mCdIlMYbfsd3odAQzikKLzUn7anigXs8krHpZmtzQ2EgLzL8Ye
         T4LJ5U+VGV8mvOGA2BDog8GqI1GSxk3ayQD4SiJ6ffyKnXejcC1cYrVXSbmlqTvTg8YT
         M0IQ==
MIME-Version: 1.0
X-Received: by 10.112.142.134 with SMTP id rw6mr3668936lbb.100.1424556835327;
 Sat, 21 Feb 2015 14:13:55 -0800 (PST)
Received: by 10.25.141.195 with HTTP; Sat, 21 Feb 2015 14:13:55 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502212147350.2296@localhost6.localdomain6>
References: <cover.1424551058.git.gulsah.1004@gmail.com>
	<41ef579e532df4325288a101ce4f9aff77aa1d93.1424551058.git.gulsah.1004@gmail.com>
	<alpine.DEB.2.02.1502212147350.2296@localhost6.localdomain6>
Date: Sun, 22 Feb 2015 00:13:55 +0200
Message-ID: <CAK8sc8ARMM_Dq5R9KMhgGje_L7dKvKrNJpPOS+VGAfAbkz+s=A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: arch: alpha: boot:
 Deleted unnecessary brackets.
From: =?UTF-8?B?R8O8bMWfYWggS8O2c2U=?= <gulsah.1004@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0118249221d673050fa07c20

--089e0118249221d673050fa07c20
Content-Type: text/plain; charset=UTF-8

Hi Julia

2015-02-21 22:50 GMT+02:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Sat, 21 Feb 2015, Gulsah Kose wrote:
>
> Also, you should not be working on files in the arch directory, only on
> files in the drivers/staging directory.
>

I was confusion in the staging directories. Thank you for early warning.

Regards

--089e0118249221d673050fa07c20
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julia<br><div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2015-02-21 22:50 GMT+02:00 Julia Lawall <span dir=3D"ltr">=
&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@=
lip6.fr</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Sat, 21 Feb 2015, Gulsah Kose wrote:<br>

<br>
Also, you should not be working on files in the arch directory, only on<br>
files in the drivers/staging directory.=C2=A0 <br></blockquote><div><span i=
d=3D"result_box" class=3D"" lang=3D"en"><span class=3D""><br>I </span><span=
 class=3D"">was</span> <span class=3D"">confusion</span> <span class=3D"">i=
n</span> <span class=3D"">the staging directories</span><span class=3D"">.<=
/span></span> Thank you for early warning. </div></div><br clear=3D"all"></=
div><div class=3D"gmail_extra">Regards<br></div></div></div>

--089e0118249221d673050fa07c20--

