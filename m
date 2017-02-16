X-GM-THRID: 6387647463261470720
X-Received: by 10.99.141.73 with SMTP id z70mr416645pgd.72.1487242810331;
        Thu, 16 Feb 2017 03:00:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.110.142 with SMTP id w136ls1914119itc.22.canary-gmail; Thu,
 16 Feb 2017 03:00:09 -0800 (PST)
X-Received: by 10.99.113.76 with SMTP id b12mr508086pgn.162.1487242809532;
        Thu, 16 Feb 2017 03:00:09 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id z191si1300250itc.0.2017.02.16.03.00.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 03:00:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id 203so3354787ith.2
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 03:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=X189DIuJr6bCSkLailO1ZaQADxhujlkwRVknEHqIKSk=;
        b=TskT3KF4A8nj2Q6RM2OHQJyuXpfYtixvP7GsfVE2SqWUAy2BAIAFKY1Jx80RqMdFl8
         Y2Xq0yyD4I/fUg2iW16TkCF04hL6fEqH0zQvaEIogUG8jM+8pvTXaTcBdHNOe5yiWBTW
         IULUrBqvJmnMGhJjrbGeGfN4VfZCeda6TpYKWpn0+YRPOG+UGnXgPfRx6XDjifCjr8rv
         ed8XTXxnFAOOeUmiD8H5HnhtQJL+BIo84JHwdZ1s3QjzDrps6tHqag7qTF82T1OadseL
         q2skCh85fd9grhWpHvtZ9DRw90prqW1Dt4N3JZcfdv00+5/R56GeEh09TKjxsp5cW60K
         Fo0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=X189DIuJr6bCSkLailO1ZaQADxhujlkwRVknEHqIKSk=;
        b=Hr2wUseLjnwlKTutlLA/j87IOnwfQc9JEF3PyV27Ltk9i1+NfCWyQYfOlJqEyojO6L
         eIvmZz8Dh4RbeMde36E/YHeVRAFpQY8YU5BU+drqyQ2tKVE2WTbF0nsoj7APvtgFVe0C
         6Jbm8p2o5EymwWO3ZDV+q9dTtJll0JSwuux1EJLffhp8/5Dk/QKE4fIWD3JIz2HedvzM
         XojrmIVwrpIMWmOgBW/BZPIfs62yS9Ogki17mmLDmmGgiJBMbZK151PGE80+6wqn6qdw
         lkx/V9EEQE1Em4rTr0X2SBS1Y2OBuUQ1JduBP4oPwD8eIINeBbuNhqDt/kU7tF3CawOA
         ZADw==
X-Gm-Message-State: AMke39mJuGBZOvFPz3PZwb/jKDcC2XgGwNt8zHzc3QyUYgegmpJhlKmk2+6Cx2gJnKQ0kB1jm5RjADtQR2Zp+A==
X-Received: by 10.36.200.9 with SMTP id w9mr13391718itf.113.1487242809307;
 Thu, 16 Feb 2017 03:00:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.211.84 with HTTP; Thu, 16 Feb 2017 02:59:38 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702161117310.3091@hadrien>
References: <1487239937-26115-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702161117310.3091@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Thu, 16 Feb 2017 16:29:38 +0530
Message-ID: <CAOCi2DGNp1U2kQKV_0GUrF29k0-bzmWbzuU9Q95CLxr7yz7XvQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: add blank line after declaration
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=94eb2c057e1457fcdc0548a3b34c

--94eb2c057e1457fcdc0548a3b34c
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 16, 2017 at 3:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Thu, 16 Feb 2017, Gargi Sharma wrote:
>
> > add blank line after struct declaration to fix the checkpatch issue, add
> > blank line after declarations.
>
> This does not look right.  The code before and the code after are all
> declarations.  I think that checkpatch is misinterpreting the code.  This

Okay, will revert this commit.

Thanks,
Gargi

> warning is normally targeted at local variables in functions.
>
> The code is fine as is.
>
> julia
>
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/hfa384x.h | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/wlan-ng/hfa384x.h
b/drivers/staging/wlan-ng/hfa384x.h
> > index 5f1851c..f199847 100644
> > --- a/drivers/staging/wlan-ng/hfa384x.h
> > +++ b/drivers/staging/wlan-ng/hfa384x.h
> > @@ -1175,6 +1175,7 @@ struct hfa384x_usbctlx {
> >       enum ctlx_state state;  /* Tracks running state */
> >
> >       struct completion done;
> > +
> >       volatile int reapable;  /* Food for the reaper task */
> >
> >       ctlx_cmdcb_t cmdcb;     /* Async command callback */
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
msgid/outreachy-kernel/1487239937-26115-1-git-send-
email-gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

--94eb2c057e1457fcdc0548a3b34c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br><br>On Thu, Feb 16, 2017 at 3:49 PM, Julia Lawall=
 &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall=
@lip6.fr</a>&gt; wrote:<br>&gt;<br>&gt;<br>&gt;<br>&gt; On Thu, 16 Feb 2017=
, Gargi Sharma wrote:<br>&gt;<br>&gt; &gt; add blank line after struct decl=
aration to fix the checkpatch issue, add<br>&gt; &gt; blank line after decl=
arations.<br>&gt;<br>&gt; This does not look right.=C2=A0 The code before a=
nd the code after are all<br>&gt; declarations.=C2=A0 I think that checkpat=
ch is misinterpreting the code.=C2=A0 This<br><br></div>Okay, will revert t=
his commit.<br><div><br>Thanks,<br>Gargi<br><br>&gt; warning is normally ta=
rgeted at local variables in functions.<br>&gt;<br>&gt; The code is fine as=
 is.<br>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt; Signed-off-by: Gargi Sharma=
 &lt;<a href=3D"mailto:gs051095@gmail.com" target=3D"_blank">gs051095@gmail=
.com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; =C2=A0drivers/staging/wlan-ng/<w=
br>hfa384x.h | 1 +<br>&gt; &gt; =C2=A01 file changed, 1 insertion(+)<br>&gt=
; &gt;<br>&gt; &gt; diff --git a/drivers/staging/wlan-ng/<wbr>hfa384x.h b/d=
rivers/staging/wlan-ng/<wbr>hfa384x.h<br>&gt; &gt; index 5f1851c..f199847 1=
00644<br>&gt; &gt; --- a/drivers/staging/wlan-ng/<wbr>hfa384x.h<br>&gt; &gt=
; +++ b/drivers/staging/wlan-ng/<wbr>hfa384x.h<br>&gt; &gt; @@ -1175,6 +117=
5,7 @@ struct hfa384x_usbctlx {<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 enum ctlx=
_state state; =C2=A0/* Tracks running state */<br>&gt; &gt;<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0 struct completion done;<br>&gt; &gt; +<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0 volatile int reapable; =C2=A0/* Food for the reaper ta=
sk */<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 ctlx_cmdcb_t cmdcb; =
=C2=A0 =C2=A0 /* Async command callback */<br>&gt; &gt; --<br>&gt; &gt; 2.7=
.4<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this message beca=
use you are subscribed to the Google Groups &quot;outreachy-kernel&quot; gr=
oup.<br>&gt; &gt; To unsubscribe from this group and stop receiving emails =
from it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@=
googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@<wbr>googl=
egroups.com</a>.<br>&gt; &gt; To post to this group, send email to <a href=
=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank">outreachy-k=
ernel@googlegroups.<wbr>com</a>.<br>&gt; &gt; To view this discussion on th=
e web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/1=
487239937-26115-1-git-send-email-gs051095%40gmail.com" target=3D"_blank">ht=
tps://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1487239937-26115=
-1-git-send-<wbr>email-gs051095%40gmail.com</a>.<br>&gt; &gt; For more opti=
ons, visit <a href=3D"https://groups.google.com/d/optout" target=3D"_blank"=
>https://groups.google.com/d/<wbr>optout</a>.<br>&gt; &gt;<br><br></div></d=
iv>

--94eb2c057e1457fcdc0548a3b34c--

