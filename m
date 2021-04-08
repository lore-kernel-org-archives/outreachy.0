X-GM-THRID: 6948695492025909248
X-Received: by 2002:a05:6402:10c6:: with SMTP id p6mr9791733edu.241.1617872052090;
        Thu, 08 Apr 2021 01:54:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:22c9:: with SMTP id q9ls2761575eja.11.gmail; Thu, 08
 Apr 2021 01:54:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJ6h4CHwuRIExpwKlPjZz2lIqWqjV4bO62/JEyqYmNP9VwGxqCSN70AaTzOmyO28OZNdYB
X-Received: by 2002:a17:906:f88a:: with SMTP id lg10mr8843425ejb.349.1617872050563;
        Thu, 08 Apr 2021 01:54:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617872050; cv=none;
        d=google.com; s=arc-20160816;
        b=DB2klSfNv5E5I7ZYDzD61T3e1fgkyVPxxyQRU8AEWx7YEyx1qg09DXwNFxGDtryetn
         W3oO2PZL0WCpwioFH6kfoXz+u9Oa/NEyFWTYSkQtCuR6MlFUiB8U89O50XDMy60FyxZU
         vq5XSQW0ym/mkqsjNDLyxVviS5+zTelipKf4I2tGjDB/XzVdetBltlf/wwHG62tEgMwn
         y+beQoOc1JJs7nbIH7/+BY2YM9VGlnE1Qd5+oyRUZh7jUEg4M3Zn8hzYnWl4ZwibZFyv
         pup36TJ+ilMCXxayk3SL3NPghB2KsAuH4H/BtcV1faNqaqrGayGl+1pmQd7IwNIxrpvj
         szRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=PFjb4M4qZ42/kP3yjYxwlj/QX9cQcIrD4jv8uFzQdcc=;
        b=x4eZH5CASkmQd/dn70xhXD7XiVa9aAX/F5Mns7o2GQLgBQdGzqp6NvlQK/3CSZ8DBs
         WYchrwzxEvA2tmqn9QegxhWjvd1cpPTjNzBaEjOIUAu9DkjKL1l95bX21w+t5XJ05/B8
         ozrKGnJ0dk1evGjG+klrfcZC3AEYv9E7od/GablSZFwS8OzsqzAVJWIPBsyoIwbwqzuL
         SO/A7bPf5YGnjnbH4HLlOMD7avSkOJmQF154cQc4hB6Nbgj/b0lBbjAEGcB5nrYKnJY5
         +AzeKpZQ8fYNLQK3fWzf1y/tjp3jIQ/Y1yNrEsckfqtU8/5DA/TpSijV/lsBWZNX0zcq
         TmBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ck26si3950367edb.1.2021.04.08.01.54.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 01:54:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A24su1KCfvk0iGvnlHejQsceALOonbusQ8zAX?=
 =?us-ascii?q?/mh6QxBNb4i8n8ehgPwU2XbP+VMscVsL8OruBICrR3TA+ZlppawYOrm/VAfr0V?=
 =?us-ascii?q?HYSL1Kx43k3jHmBmnC5vdQvJ0QCJRWJdXsATFB/KXHySaiFdJI+rS62YSJocub?=
 =?us-ascii?q?8Ht3VwFtbMhbnn1EIyKWCFd/SgUDJbdRLuv/2uN9qzCteWsaY62AbxFvNdTrnc?=
 =?us-ascii?q?HBl57tfHc9aSIP1QiUgTukrJ78HhSIty1/bxpzwKwv+WWArgrh5q/LiZCG4yLb?=
 =?us-ascii?q?vlW+071m3P/ajvpKHoill9UcIDSEsHfOWK1RH5m5+A0TjM7qwlAwi9XIqwonJK?=
 =?us-ascii?q?1ImhXsV3DwpwDs1Qnm2Csv7HGnyUbwuwqbneXpAC8/T9BHmJgcaB/F8iMbzalB?=
 =?us-ascii?q?7J4=3D?=
X-IronPort-AV: E=Sophos;i="5.82,205,1613430000"; 
   d="scan'208";a="378068035"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Apr 2021 10:54:09 +0200
Date: Thu, 8 Apr 2021 10:54:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove camelcase
 in several files
In-Reply-To: <2284292.R3b5UFg5HO@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104081053200.5197@hadrien>
References: <20210408080714.29481-1-fmdefrancesco@gmail.com> <YG7AkJjSThRbb/f5@kroah.com> <2284292.R3b5UFg5HO@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 8 Apr 2021, Fabio M. De Francesco wrote:

> On Thursday, April 8, 2021 10:36:32 AM CEST Greg KH wrote:
> > On Thu, Apr 08, 2021 at 10:07:14AM +0200, Fabio M. De Francesco wrote:
> > > Remove camelcase in a symbol that is used by several files.
> >
> > What symbol?
> >
>
> I'm not sure I understand what you are asking. You mean
> that I have to specify the name of the variable that I changed?
> Or you mean that I shouldn't use the term "symbol" but write
> "variable", "function", "macro", and so on?

He wants the name of the symbol.  Each changed line includes lots of
symbols, so it is a significant effort to scan the patch to see what
symbol is being changed.

julia

>
> >
> > > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > >  	u8 LpsIdleCount;
> > >  	u8 power_mgnt;
> > >  	u8 org_power_mgnt;
> > > -	u8 bFwCurrentInPSMode;
> > > +	u8 b_fw_current_in_ps_mode;
> >
> > The "b" here means "byte" so you can drop the "b_" as that means
> > nothing, we do not use this type of notation in the kernel as the
> > compiler can check it for us.
> >
>
> OK, I didn't know what the 'b' meant in this context. I'll drop it.
>
> Thanks,
>
> Fabio
>
> > thanks,
> >
> > greg k-h
> >
>
>
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2284292.R3b5UFg5HO%40localhost.localdomain.
>

