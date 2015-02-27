X-GM-THRID: 4704101728256
X-Received: by 10.112.40.81 with SMTP id v17mr2280729lbk.5.1425061710243;
        Fri, 27 Feb 2015 10:28:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.71 with SMTP id r7ls208740lag.42.gmail; Fri, 27 Feb
 2015 10:28:29 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr2229263lbb.6.1425061709693;
        Fri, 27 Feb 2015 10:28:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si167339wic.1.2015.02.27.10.28.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 10:28:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,661,1418079600"; 
   d="scan'208";a="123715252"
Received: from unknown (HELO hadrien.local) ([88.128.80.16])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 19:28:28 +0100
Date: Fri, 27 Feb 2015 19:28:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?UTF-8?Q?Ay=C5=9Fe_Melike_Yurto=C4=9Flu?= <aysemelikeyurtoglu@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Removed Use of
 volatile is usually wrong
In-Reply-To: <CAPYvaxOw3+5qPLe+8Bm6GkmYoemcnRdSV7qH-YEseUUip-XP6w@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1502271928030.3793@hadrien>
References: <1425059769-20058-1-git-send-email-aysemelikeyurtoglu@gmail.com> <alpine.DEB.2.10.1502271914561.3793@hadrien> <CAPYvaxOw3+5qPLe+8Bm6GkmYoemcnRdSV7qH-YEseUUip-XP6w@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1328707251-1425061709=:3793"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1328707251-1425061709=:3793
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 27 Feb 2015, Ayşe Melike Yurtoğlu wrote:

> changing the value of a variable as a result of hardware affects , you need
> to define this variable as "volatile".
> Otherwise the compiler (compiler) this variable cannot fulfill the task of
> optimizing could become.I thought that was so wrong

These are general statements.  You need to argue why it is not needed in
this specific case.

julia

> 2015-02-27 20:15 GMT+02:00 Julia Lawall <julia.lawall@lip6.fr>:
>       On Fri, 27 Feb 2015, Melike Yurtoglu wrote:
>
>       > WARNING: Use of volatile is usually wrong.
>       > That was found by running checkpatch.
>
>       How do you know that it is wrong in this case?
>
>       julia
>
>       >
>       > Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
>       > ---
>       >  drivers/staging/wlan-ng/hfa384x.h | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/wlan-ng/hfa384x.h
>       b/drivers/staging/wlan-ng/hfa384x.h
>       > index 8f20910..47f65c3 100644
>       > --- a/drivers/staging/wlan-ng/hfa384x.h
>       > +++ b/drivers/staging/wlan-ng/hfa384x.h
>       > @@ -1166,7 +1166,7 @@ typedef struct hfa384x_usbctlx {
>       >       CTLX_STATE state;       /* Tracks running state */
>       >
>       >       struct completion done;
>       > -     volatile int reapable;  /* Food for the reaper task */
>       > +     int reapable;   /* Food for the reaper task */
>       >
>       >       ctlx_cmdcb_t cmdcb;     /* Async command callback */
>       >       ctlx_usercb_t usercb;   /* Async user callback, */
>       > --
>       > 1.8.3.2
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1425059769-20058-1-git-s
> end-email-aysemelikeyurtoglu%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAPYvaxOw3%2B5qPLe%2B8Bm
> 6GkmYoemcnRdSV7qH-YEseUUip-XP6w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1328707251-1425061709=:3793--

