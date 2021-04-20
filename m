X-GM-THRID: 6952926381632126976
X-Received: by 2002:a1c:20c8:: with SMTP id g191mr5260379wmg.125.1618936657486;
        Tue, 20 Apr 2021 09:37:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1e5:: with SMTP id g5ls13570704wrd.1.gmail; Tue, 20 Apr
 2021 09:37:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDthNzMtWSlNfuEeV8uhm8faiHUVshoZhdy41mObRQ10uon7Fg1pGpAUmP0olINLvrHQe6
X-Received: by 2002:adf:f250:: with SMTP id b16mr21316730wrp.347.1618936655961;
        Tue, 20 Apr 2021 09:37:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618936655; cv=none;
        d=google.com; s=arc-20160816;
        b=I2wx67uqSbCJKQJC7mDYSLs23jsPl6Cyi1YHqFAsISBpsPNAjlmhKYw34V+OfmXoCO
         ataznhx4GTyviiKzw+Hr36smhjgzHuqsPD/lEUZ2H3NoEfMdgpleg0A+IDyFwnNIIOei
         /EVCJjb/hifL5Ey/C5bwuSbrVnIMhC6JNUzsRm5lvA2ibjV+YQjocpWb3SymyYJDoKuQ
         FbIxijT1YXauYtpgzGmXfCwDtetwl3fmAFIcuh7cI0fx4rcg3hs7S/9lXxzR4cgCIaZ/
         wdVTTHFh38q0IGla44I41P9vGsPtS0YBA6n1r815vu8fP79rEi5rSDWRskiMHMzKTVjf
         7Ovw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=AYAUXvF2Ji6uHHkgvXG6vfF7lsQ/8lu06EpNJlfiskI=;
        b=0/nCp2tgtqCYp5eNGOZn8N0tNJ2G7gAU+P+U2U7coex0g+qCyWkjE8ZFDdmgd+7ABS
         QYUJRd2FxZtouvLPY+BqjmE49x9Ml+6T+L7xaQPCX7YsVgOgsLq6Zd1gMtf5eZd1ZZTw
         fgnCYDVLd6b4JDT9xDIWYKfFyPZsxYe+Hhfo7rOnmxhkLeoAR5pe6//uVX4Jc5CCBTt4
         m/XauWYWix5ce5SRmgFQXJwy6E4/92gLxihPnytqZqS2z06/3SkN9A28bff28ym2GwN9
         P8g2a/5oXihjti38FdfkYFjlzjgXdXY1hifZedB0VbzGKc918V4OwwiEgy48+nB/bNti
         MCdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s21si284739wmh.2.2021.04.20.09.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 09:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AhLbGuanVdjhahH9+8jKmX14nF67pDfMYimdD?=
 =?us-ascii?q?5ilNYBxZY6Wkvuqpm+kW0gKxtS0YX2sulcvFFK6LR37d8pAd2/hrAZ6JWg76tG?=
 =?us-ascii?q?y0aLxz9IeK+UyZJwTS/vNQvJ0QDJRWJdH0DUd3lsr2pDS/euxQo+Wv37uvgY7l?=
 =?us-ascii?q?vg5QZCVncbtp4Qs8KgvzKDwLeCBjBZ40UKWR/dBGoT3IQwVsUu2BCnMIX/fOqr?=
 =?us-ascii?q?Tw/fqMC3JoaW9EmWz+6kLP1JfBDxOa0h0COgk/vIsKzG6tqX2G2oyT99+hxg/Y?=
 =?us-ascii?q?13XPhq4m6OfJ+59mDMyIhtN9EEScti+YIKBgXqCPpzw5ydvfm2oCoZ33oxs+M6?=
 =?us-ascii?q?1Iik/5TyWOoRfz103a3Dsv8HPp1FOUxVT5p8iRflIHIvsEuoJDbgGc0UApu9Zx?=
 =?us-ascii?q?3ctwshP8i7NnSRCFliX+49DJUlVHkVW5pHw6iOJ7tQ0sbaIuLLwUp40c+EtUFd?=
 =?us-ascii?q?M7FiTg5OkcYZxTJfCZ57JdcFGfZ3Dd+lNzyMGxRB0Ib2O7fnQ=3D?=
X-IronPort-AV: E=Sophos;i="5.82,237,1613430000"; 
   d="scan'208";a="504182184"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Apr 2021 18:37:35 +0200
Date: Tue, 20 Apr 2021 18:37:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Coccinelle: understanding its output
In-Reply-To: <1987250.8xKNmIyY3v@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104201837130.176476@hadrien>
References: <3557115.gcaS8tdjop@linux.local> <alpine.DEB.2.22.394.2104192054440.23529@hadrien> <1987250.8xKNmIyY3v@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 20 Apr 2021, Fabio M. De Francesco wrote:

> On Monday, April 19, 2021 8:58:24 PM CEST Julia Lawall wrote:
> > On Mon, 19 Apr 2021, Fabio M. De Francesco wrote:
> > > I think that I don't yet understand Coccinelle's output.
> > >
> > > I've just run the following command:
> > > spatch --sp-file scripts/coccinelle/free/kfree.cocci --dir drivers/
> staging/
> > > wlan-ng/prism2fw.c
> > >
> > > It outputs something that looks like a patch:
> > >
> > > HANDLING: drivers/staging/wlan-ng/prism2fw.c
> > >
> > >      (ONCE) already tagged but only removed, so safe
> > >
> > > diff =
> > > --- drivers/staging/wlan-ng/prism2fw.c
> > > +++ /tmp/cocci-output-17844-0c6c7c-prism2fw.c
> > >
> > > First, what is /tmp/cocci-output-17844-0c6c7c-prism2fwc? It is not a file
> in
> > > / tmp. If it is a file, where is it?
> > >
> > > The output goes on with lines like the following ones:
> > >   @@ -1008,8 +1005,6 @@ static int writeimage(struct wlandevice
> > >
> > >         rstmsg = kzalloc(sizeof(*rstmsg), GFP_KERNEL);
> > >         rwrmsg = kzalloc(sizeof(*rwrmsg), GFP_KERNEL);
> > >         if (!rstmsg || !rwrmsg) {
> > >
> > > -               kfree(rstmsg);
> > > -               kfree(rwrmsg);
> > >
> > >                 netdev_err(wlandev->netdev,
> > >
> > >                            "%s: no memory for firmware download, aborting
> > >
> > > download\n",
> > >
> > >                            __func__);
> > >
> > > Please read the two lines with a trailing '-'... Does Coccinelle mean that
> > > they should be removed? If yes, I'm not able to understand why, because I
> > > think they must not be removed. Am I wrong?
> >
> > Sorry.  I think that the *s are a left over from a version of the semantic
> > patch that was trying to do more.  The semantic patches in the Linux
> > kernel are meant to be used with make coccicheck, which would have avoided
> > this problem.  The key is the lines
> >
> "make coccicheck" fails with the following message:
>
> Python error: No module named coccilib.elems
> coccicheck failed
> make: *** [Makefile:1937: coccicheck] Error 255
> >
> > virtual org
> > virtual report
> >
> > near the top of the file.  This means that the semantic patch should only
> > be run with either the option -D org (producing emacs org mode) or the
> > option -D report (producing text).  Both of these modes suppress the -
> > that you are seeing.
> >
> Run of "spatch -D report --sp-file scripts/coccinelle/api/kfree_mismatch.cocci
> --dir drivers/staging/" fails too:
>
> init_defs_builtins: /usr/bin/../lib/coccinelle/standard.h
> Python error: No module named coccilib.elems
>
> I think that it depends on some package I have not yet installed, or to some
> environment variable that must be set for the Python interpreter to find the
> coccili.elems module... I really don't know.
>
> Do you have any idea for solving this problem?

How did you install Coccinelle?

julia

