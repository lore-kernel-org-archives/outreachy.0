X-GM-THRID: 4704101728256
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9f5cf49a175017bf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.42.228 with SMTP id j64mr13977234yhb.36.1425061411638;
        Fri, 27 Feb 2015 10:23:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.97 with SMTP id b94ls655677iod.91.gmail; Fri, 27 Feb
 2015 10:23:31 -0800 (PST)
X-Received: by 10.67.29.231 with SMTP id jz7mr14455081pad.9.1425061411354;
        Fri, 27 Feb 2015 10:23:31 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-ig0-x231.google.com (mail-ig0-x231.google.com. [2607:f8b0:4001:c05::231])
        by gmr-mx.google.com with ESMTPS id e3si237056igq.1.2015.02.27.10.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 10:23:31 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2607:f8b0:4001:c05::231 as permitted sender) client-ip=2607:f8b0:4001:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2607:f8b0:4001:c05::231 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x231.google.com with SMTP id l13so2516881iga.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 10:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Hvy02BYrYxwW0bdrA9p6bAt73sR2cQ7FyGb8xdoGz5E=;
        b=U88/v3dw9rAvoyGtaTDh5yz+26umXWbtdRx7FjQUcn3/2F532hYh9T5mC1fI6+xAbZ
         dLunXLxSIkLjMTmdQNhcior95IRM7igV/et8IjAHMhhb1M1hZYKmhlENmJ8Si1c4IIPD
         ZCHvaG2MwTyhse5/CIdu9VbYb5+aZbQGmY1LdrmZMq30g58OCTXeIRuGJP/yo8AHiYGo
         byEoRGw1poaK9ppy4+oi7Qd4a/PSHdl5tQs7zE9dBgFNaL/BTNQVSciPK/0jAe/gHIJk
         1z+kc8RK2P+QfFuVFK6LOMIuJbfwj8LT5RKFsbbaaVMd1dIcipv0lkrXj4ptN0pP8pva
         YqSg==
MIME-Version: 1.0
X-Received: by 10.107.155.131 with SMTP id d125mr20636879ioe.17.1425061411214;
 Fri, 27 Feb 2015 10:23:31 -0800 (PST)
Received: by 10.64.13.113 with HTTP; Fri, 27 Feb 2015 10:23:31 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502271914561.3793@hadrien>
References: <1425059769-20058-1-git-send-email-aysemelikeyurtoglu@gmail.com>
	<alpine.DEB.2.10.1502271914561.3793@hadrien>
Date: Fri, 27 Feb 2015 20:23:31 +0200
Message-ID: <CAPYvaxOw3+5qPLe+8Bm6GkmYoemcnRdSV7qH-YEseUUip-XP6w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Removed Use of
 volatile is usually wrong
From: =?UTF-8?Q?Ay=C5=9Fe_Melike_Yurto=C4=9Flu?= <aysemelikeyurtoglu@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1140aace32fcc0051015f7ce

--001a1140aace32fcc0051015f7ce
Content-Type: text/plain; charset=UTF-8

changing the value of a variable as a result of hardware affects , you need
to define this variable as "volatile".
Otherwise the compiler (compiler) this variable cannot fulfill the task of
optimizing could become.I thought that was so wrong

2015-02-27 20:15 GMT+02:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Fri, 27 Feb 2015, Melike Yurtoglu wrote:
>
> > WARNING: Use of volatile is usually wrong.
> > That was found by running checkpatch.
>
> How do you know that it is wrong in this case?
>
> julia
>
> >
> > Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/hfa384x.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wlan-ng/hfa384x.h
> b/drivers/staging/wlan-ng/hfa384x.h
> > index 8f20910..47f65c3 100644
> > --- a/drivers/staging/wlan-ng/hfa384x.h
> > +++ b/drivers/staging/wlan-ng/hfa384x.h
> > @@ -1166,7 +1166,7 @@ typedef struct hfa384x_usbctlx {
> >       CTLX_STATE state;       /* Tracks running state */
> >
> >       struct completion done;
> > -     volatile int reapable;  /* Food for the reaper task */
> > +     int reapable;   /* Food for the reaper task */
> >
> >       ctlx_cmdcb_t cmdcb;     /* Async command callback */
> >       ctlx_usercb_t usercb;   /* Async user callback, */
> > --
> > 1.8.3.2
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1425059769-20058-1-git-send-email-aysemelikeyurtoglu%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a1140aace32fcc0051015f7ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">changing the value of a variable as a result of hardware a=
ffects , you need to define this variable as &quot;volatile&quot;.<br>Other=
wise the compiler (compiler) this variable cannot fulfill the task of optim=
izing could become.I thought that was so wrong<br></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">2015-02-27 20:15 GMT+02:00 Julia Law=
all <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D=
"_blank">julia.lawall@lip6.fr</a>&gt;</span>:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><span class=3D"">On Fri, 27 Feb 2015, Melike Yurtoglu wrote:<br>
<br>
&gt; WARNING: Use of volatile is usually wrong.<br>
&gt; That was found by running checkpatch.<br>
<br>
</span>How do you know that it is wrong in this case?<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Melike Yurtoglu &lt;<a href=3D"mailto:aysemelikeyurtogl=
u@gmail.com">aysemelikeyurtoglu@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wlan-ng/hfa384x.h | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-=
ng/hfa384x.h<br>
&gt; index 8f20910..47f65c3 100644<br>
&gt; --- a/drivers/staging/wlan-ng/hfa384x.h<br>
&gt; +++ b/drivers/staging/wlan-ng/hfa384x.h<br>
&gt; @@ -1166,7 +1166,7 @@ typedef struct hfa384x_usbctlx {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0CTLX_STATE state;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
/* Tracks running state */<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct completion done;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0volatile int reapable;=C2=A0 /* Food for the reap=
er task */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int reapable;=C2=A0 =C2=A0/* Food for the reaper =
task */<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ctlx_cmdcb_t cmdcb;=C2=A0 =C2=A0 =C2=A0/* As=
ync command callback */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ctlx_usercb_t usercb;=C2=A0 =C2=A0/* Async u=
ser callback, */<br>
&gt; --<br>
&gt; 1.8.3.2<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1425059769-20058-1-git-send-email-aysemeli=
keyurtoglu%40gmail.com" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/1425059769-20058-1-git-send-email-aysemelikeyurtoglu%40gm=
ail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a1140aace32fcc0051015f7ce--

