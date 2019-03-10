X-GM-THRID: 6666118349921976320
X-Received: by 2002:a1c:cb8d:: with SMTP id b135mr2042574wmg.22.1552232786244;
        Sun, 10 Mar 2019 08:46:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c10f:: with SMTP id w15ls225480wmi.12.gmail; Sun, 10 Mar
 2019 08:46:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtRzB8DqrKAYpKAw2SFV9bF+pnji/i37Zrdkt2T/W4eThKNJpjXgHf3TZlVY6MlJbGj7BO
X-Received: by 2002:a1c:a8c1:: with SMTP id r184mr1813678wme.4.1552232785298;
        Sun, 10 Mar 2019 08:46:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552232785; cv=none;
        d=google.com; s=arc-20160816;
        b=KvePPASsBnd4BlwPKA9SZKKIgIawJkJK6BX5BpMVhUAubf68TVnH3THjaZQeuQQU4l
         L9TQHjuiuMrPfq/iUN1o0bVyAmPb9W7pNAxlhvAlb0c8QCM8JLkmXk2fCpqoYM9FG/bu
         fdivmEuF2vIWwkBin4yyYH+nOgNATrY6Rsvojr3SlgjjBc2iTc9dRJIzGu2M1jvm/evT
         c8xBpupCoLkd7M1Z5mKwmDE0vUGFV99L7hKPYh2bm5oWwdzbC9Gdb6Oug+lotVjaR0n7
         SzJ577q/fpuaCWILnRmYjfz6KxXGl2Ls+x+Lm56iKilAXOLtOuys4P5fanQW/udFaR8d
         B5iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dkaCtT0cmer1esl/xarTIfecuMVVt8uKiJPRRTmJKRU=;
        b=QKY0wPwGKgCUwuRDlS/LW022a7O1oKCsV6BguA0CBN9FNPs+B95/2sZmLHZsHGDR0f
         V7Sm60P/lu9+Pxw6qkSo23mF0m36v/CckvfiagzkvtMHo8UF4HE1YYIvbTJ9IKpVhdBl
         qS0KtXvzrVnzI3pphM2HJmAjFLR9gmkm91SgegBnpa83leKBqMsfhgj2BaTR20xGqEx+
         mjm6j24rNskWiO6desHHQGMigZ42saTTWjWsOf6wHT6NyTEK1qcUdx4OTezuClgkOZnE
         jNRc1huUU4eEfeZHqK51Eoia897128wRNb/04HRRQCFksHKiiE9q7+y2q1Pgevl49Heu
         NYSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vY2hi2XZ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b8si169546wru.1.2019.03.10.08.46.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 08:46:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vY2hi2XZ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x541.google.com with SMTP id m12so1902545edv.4
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 08:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dkaCtT0cmer1esl/xarTIfecuMVVt8uKiJPRRTmJKRU=;
        b=vY2hi2XZEZDBP8ymjUfx932rz8tlFj40t+Waxgq5fCXjEbj3WR94O/ZYmrTO+e0KSq
         myD4iIlrk3vYbnhGpUHJAAOB5kvyVDK9vdJWVyKLH3x5rRRV0cX1BfM6cNx5uX5MZ1u+
         Ae+yel5Mi8pchogoM0kSF3TMo5BFKSE+e0FnZD2iVT0rhFVDOSZToeIUnv2o3yTIYvMv
         vA5imQql6Nrr0MSXYfIMCx7L0sRaN5zgpkMiXjuGAkTVkljweuUiU8ldFFzKrppGg12G
         bIwHnvml3G+Rkt3NNBgYj2Domx5IyQ1Ll8irOUcwd3melyxejONg4d+d0hHjbh9qIqnI
         wz9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dkaCtT0cmer1esl/xarTIfecuMVVt8uKiJPRRTmJKRU=;
        b=MAHnY4kiEi98QuXCDkH8DQwpaDU5Av1FXjVbR2k0in4FK52XLEjY/cZrTX2QswJWM5
         Rjt6P/2VRSGV/CJZiiaLsGJ3qQ49FBL4HGarEnod76ztH2G2ZHbe2NRHeYQky3krlule
         n2rLa9bVSU36mmNshhIRfr7G7/sp2RDSVNLqhwT+L0XNxXC6AKUZLygiKK5lyJdItbOK
         4xSreaE3+kX7MeFnukiHsU36iTY0LePtswbhf1/Qwwv7kGHwnzs/RycBQwTyV401axH+
         M5gKKWQ4nHWyHmnj0UuRXbKYT9+X4/9i+C1NWd6NQb56BxY8HYeWyHPsR8Q2fnHu0HB6
         PMWQ==
X-Gm-Message-State: APjAAAVMs6ajIohB8qaZgJ6qGcwPk5R9Dnu3MxTlVrZa5r/cGqThD+AM
	8qypHMnfJFUvGMTKBxO9aU/74hUOVNPur0W7Mg==
X-Received: by 2002:a17:906:15d4:: with SMTP id l20mr553897ejd.11.1552232784710;
 Sun, 10 Mar 2019 08:46:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190308202328.14042-1-jbi.octave@gmail.com> <20190308202328.14042-2-jbi.octave@gmail.com>
 <20190309070713.GA2723@kroah.com>
In-Reply-To: <20190309070713.GA2723@kroah.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Sun, 10 Mar 2019 15:45:48 +0000
Message-ID: <CAOuULM6tvQd0eJuEK5DcVx=SU+Tz8wtBJE3f7pt5o96rMDdUFw@mail.gmail.com>
Subject: Re: [PATCH 2/2] staging: aacraid: remove boilerplate license text
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000bdcf810583bf5bf9"

--000000000000bdcf810583bf5bf9
Content-Type: text/plain; charset="UTF-8"

On Sat, 9 Mar 2019 at 07:07, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Fri, Mar 08, 2019 at 08:23:28PM +0000, Jules Irenge wrote:
> > Remove boilerplate license text.
> >
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/scsi/aacraid/aachba.c | 23 -----------------------
> >  1 file changed, 23 deletions(-)
> >
> > diff --git a/drivers/scsi/aacraid/aachba.c
> b/drivers/scsi/aacraid/aachba.c
> > index 955ddb32aa40..e70b45a74d0a 100644
> > --- a/drivers/scsi/aacraid/aachba.c
> > +++ b/drivers/scsi/aacraid/aachba.c
> > @@ -1,33 +1,10 @@
> >  // SPDX-License-Identifier: GPL-2.0+
> >  /*
> > - *   Adaptec AAC series RAID controller driver
> > - *   (c) Copyright 2001 Red Hat Inc.
> > - *
> > - * based on the old aacraid driver that is..
> > - * Adaptec aacraid device driver for Linux.
>
> >Those lines are not "boilerplate license text" :(
>
> >In fact, one of those lines is a copyright line, and lawyers get _VERY_
> >upset when you delete them (despite them not really meaning much, but
> >that's a different discussion...)
>

Thanks for letting me know. I take good note.


>
> >   *
> >   * Copyright (c) 2000-2010 Adaptec, Inc.
> >   *               2010-2015 PMC-Sierra, Inc. (aacraid@pmc-sierra.com)
> >   *            2016-2017 Microsemi Corp. (aacraid@microsemi.com)
> >   *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License as published by
> > - * the Free Software Foundation; either version 2, or (at your option)
> > - * any later version.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - *
> > - * You should have received a copy of the GNU General Public License
> > - * along with this program; see the file COPYING.  If not, write to
> > - * the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
>
> >These three paragraphs are what is "boilerplate license text", that is
> >good to remove.
>
>
> > - *
> > - * Module Name:
> > - *  aachba.c
> > - *
> > - * Abstract: Contains Interfaces to manage IOs.
>
> >Those lines are not boilerplate.
>
> >thanks,
>
>
Thanks for the above information. I will stick on staging

Kind regards,
Jules

--000000000000bdcf810583bf5bf9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><br></div></div></div></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div></div>=
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, 9 Mar 2019 at 07:07, Greg KH &lt;<a h=
ref=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri,=
 Mar 08, 2019 at 08:23:28PM +0000, Jules Irenge wrote:<br>
&gt; Remove boilerplate license text.<br>
&gt; <br>
&gt; Signed-off-by: Jules Irenge &lt;<a href=3D"mailto:jbi.octave@gmail.com=
" target=3D"_blank">jbi.octave@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/scsi/aacraid/aachba.c | 23 -----------------------<br>
&gt;=C2=A0 1 file changed, 23 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/scsi/aacraid/aachba.c b/drivers/scsi/aacraid/aach=
ba.c<br>
&gt; index 955ddb32aa40..e70b45a74d0a 100644<br>
&gt; --- a/drivers/scsi/aacraid/aachba.c<br>
&gt; +++ b/drivers/scsi/aacraid/aachba.c<br>
&gt; @@ -1,33 +1,10 @@<br>
&gt;=C2=A0 // SPDX-License-Identifier: GPL-2.0+<br>
&gt;=C2=A0 /*<br>
&gt; - *=C2=A0 =C2=A0Adaptec AAC series RAID controller driver<br>
&gt; - *=C2=A0 =C2=A0(c) Copyright 2001 Red Hat Inc.<br>
&gt; - *<br>
&gt; - * based on the old aacraid driver that is..<br>
&gt; - * Adaptec aacraid device driver for Linux.<br>
<br>
&gt;Those lines are not &quot;boilerplate license text&quot; :(<br>
<br>
&gt;In fact, one of those lines is a copyright line, and lawyers get _VERY_=
<br>
&gt;upset when you delete them (despite them not really meaning much, but<b=
r>
&gt;that&#39;s a different discussion...)<br></blockquote><div>=C2=A0</div>=
<div>Thanks for letting me know. I take good note.<br></div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt;=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0* Copyright (c) 2000-2010 Adaptec, Inc.<br>
&gt;=C2=A0 =C2=A0*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A020=
10-2015 PMC-Sierra, Inc. (<a href=3D"mailto:aacraid@pmc-sierra.com" target=
=3D"_blank">aacraid@pmc-sierra.com</a>)<br>
&gt;=C2=A0 =C2=A0*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2016-2017 Micro=
semi Corp. (<a href=3D"mailto:aacraid@microsemi.com" target=3D"_blank">aacr=
aid@microsemi.com</a>)<br>
&gt;=C2=A0 =C2=A0*<br>
&gt; - * This program is free software; you can redistribute it and/or modi=
fy<br>
&gt; - * it under the terms of the GNU General Public License as published =
by<br>
&gt; - * the Free Software Foundation; either version 2, or (at your option=
)<br>
&gt; - * any later version.<br>
&gt; - *<br>
&gt; - * This program is distributed in the hope that it will be useful,<br=
>
&gt; - * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
&gt; - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the=
<br>
&gt; - * GNU General Public License for more details.<br>
&gt; - *<br>
&gt; - * You should have received a copy of the GNU General Public License<=
br>
&gt; - * along with this program; see the file COPYING.=C2=A0 If not, write=
 to<br>
&gt; - * the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, U=
SA.<br>
<br>
&gt;These three paragraphs are what is &quot;boilerplate license text&quot;=
, that is<br>
&gt;good to remove.<br>
<br>
<br>
&gt; - *<br>
&gt; - * Module Name:<br>
&gt; - *=C2=A0 aachba.c<br>
&gt; - *<br>
&gt; - * Abstract: Contains Interfaces to manage IOs.<br>
<br>
&gt;Those lines are not boilerplate.<br>
<br>
&gt;thanks,<br>
<br></blockquote><div>=C2=A0</div><div>Thanks for the above information. I =
will stick on staging =C2=A0 <br></div><div><br></div><div>Kind regards,</d=
iv><div>Jules<br></div></div></div>

--000000000000bdcf810583bf5bf9--

