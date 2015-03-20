X-GM-THRID: 9199559901184
X-Received: by 10.236.37.72 with SMTP id x48mr87722456yha.33.1426863116756;
        Fri, 20 Mar 2015 07:51:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.108 with SMTP id j12ls644648igh.35.gmail; Fri, 20 Mar
 2015 07:51:56 -0700 (PDT)
X-Received: by 10.43.82.202 with SMTP id ad10mr3883361icc.14.1426863116537;
        Fri, 20 Mar 2015 07:51:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l42si329149yhq.1.2015.03.20.07.51.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 07:51:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,437,1422918000"; 
   d="scan'208";a="126954952"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Mar 2015 15:51:55 +0100
Date: Fri, 20 Mar 2015 15:51:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ste_rmi4: Use SIMPLE_DEV_PM_OPS()
 macro
In-Reply-To: <CAK-LDbLf0nk2iv2eeRKTOzd7PTke8jH2Cdk_prOdWTjNQjW1fw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503201550180.2987@hadrien>
References: <20150320071750.GA8322@vaishali-Ideapad-Z570> <alpine.DEB.2.10.1503200906150.2554@hadrien> <CAK-LDbJavp-uek_E=VKPSHObYRsCV90cOZcChFEPbzkqAMWoMA@mail.gmail.com> <CAK-LDbLf0nk2iv2eeRKTOzd7PTke8jH2Cdk_prOdWTjNQjW1fw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> >> How does this work?  I guess that before the pm field could sometimes be
> >> null, if power management is not supported.  Not the field is not null.
> >> Are the fields for the functions now null if there is no power management,
> >> or are there just trivial definitions?  (It's not a suggestion about
> >> changing the patch; I am just wondering).
> >
> > Yes. I think members of  synaptics_rmi4_dev_pm_ops can be null if there
> > is no power management after this change.
> >
> > As far as I understand, 'SIMPLE_DEV_PM_OPS' macro is defined as follows:
> >
> > #define SIMPLE_DEV_PM_OPS(name, suspend_fn, resume_fn) \
> > const struct dev_pm_ops name = { \
> >         SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn) \
> > }
> >
> > And then 'SET_SYSTEM_SLEEP_PM_OPS' like this:
> >
> > #ifdef CONFIG_PM_SLEEP
> > #define SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn) \
> >         .suspend = suspend_fn, \
> >         .resume = resume_fn, \
> >         .freeze = suspend_fn, \
> >         .thaw = resume_fn, \
> >         .poweroff = suspend_fn, \
> >         .restore = resume_fn,
> > #else
> > #define SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn)
> > #endif
> >
> > So, when CONFIG_PM is not enabled, we can simply remove these
> > guards. And we can write like this:
> > static const struct dev_pm_ops synaptics_rmi4_dev_pm_ops{
> > };
> >
> > However, at first I was unsure about this change. But as this patch is
> > not giving any kind of build error I guess this change should work.
> >
> > Although this is my understanding. It may possible that I am wrong.
> > Correct me if I am missing something.
> >
> > Thank You.
>
> Ah, I think I am missing something. May be I can use this macro when
> there is CONFIG_PM_SLEEP. But the way here CONFIG_PM is used
> it seems like it should be CONFIG_PM_SLEEP. Though I don't have
> knowledge about this particular driver. So, it would be good if you can
> enlighten me on this particular topic.

Actually, I don't know.  There is just the observation that a NULL value
is turned into a & value, which cannot be NULL.  So one could check on
what the driver infrastructure does with a NULL value in the field, and
what it now does with a non-NULL value in the field, but a NULL value in
each of the substructures.

julia

