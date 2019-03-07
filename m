X-GM-THRID: 6665628449675149312
X-Received: by 2002:a1c:9c93:: with SMTP id f141mr1127936wme.10.1551987275843;
        Thu, 07 Mar 2019 11:34:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2356:: with SMTP id j83ls59805wmj.4.gmail; Thu, 07 Mar
 2019 11:34:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqwJnEDXKhcUXzpKrZTpDLurkdUvbblNi/u0qVAM2XxKj2vGLBqoZ+B8lhMaU2LRPFi0l4m6
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr1213848wmd.0.1551987274942;
        Thu, 07 Mar 2019 11:34:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551987274; cv=none;
        d=google.com; s=arc-20160816;
        b=PJAycuWiZ25hcwlJ32/NieJju5VV92qJar+bXOxCpGvphg7yTRLcLCOrUyMu4y36gI
         oqXYcqRn4T6gu/1nh5MO2/cKBBI4RgJqEfqnnovydVyaBYpmh+w5LGpem3dw4n9y7L6G
         MDH+N7YUjD+fitsbPJKeMkUu3SVQTektsSsNvJiH+WczzJ/XIu1ov1VMJADB07mPkzeR
         60i1c5NvP1Kp4AoCEjwT/FldB4Nv/CM9jVs4JUBlT0o7XSaaufEx/grbSu5JUN6b8Ata
         34LdBZOaSbEAZXCHjMaOz/vxLq6GUtStE5tpMfp/oA2Cx5S+WOqcgIXdAL0/uPf0rKx1
         i3BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ms7nh5KVV+hmhddJo+n66kUfYqcZJKoADK2Tei+u9FE=;
        b=uPDo6uVXWZ5Gzp/EnFf6jy/z5a1muGer+bP+3eedqNVeLos7dfHL20VaipTww80qzI
         VO27WsDM8/8HGkmAblhtTzY0Fv6jPIfovYgnplnDSydUjR/6m1XeMDZeDCYozOe3b8Xl
         I3YFaTiDke1wZa8O5C8HGzd+uSaETip17usA2GFwnsFUW7Ez8SWOQSY7bGXmhwPpIW/f
         +DLZIkgVvj3dm7Q+AJ7Xqbr06vPaPWFgbprSYVV9IsyyCDte4wjObl7/8+zvfLBCx2Jb
         KbNRQxSRKr5glNcCuuqPdiu+s4V9RE5wFKiCHdEXfneUxrv2XikIB1ESBSyNg/qPHZ6u
         2r2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r15si274113wmc.4.2019.03.07.11.34.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 11:34:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,451,1544482800"; 
   d="scan'208";a="372407077"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2019 20:34:34 +0100
Date: Thu, 7 Mar 2019 20:34:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove an unused
 function
In-Reply-To: <20190307155446.GA21316@madhuleo>
Message-ID: <alpine.DEB.2.21.1903072034020.2558@hadrien>
References: <20190307124236.20430-1-madhumithabiw@gmail.com> <alpine.DEB.2.20.1903071420470.5181@hadrien> <20190307155446.GA21316@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, Madhumthia Prabakaran wrote:

> On Thu, Mar 07, 2019 at 02:21:40PM +0100, Julia Lawall wrote:
> >
> >
> > On Thu, 7 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > Remove an unused function to improve codebase.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/mac.h | 2 --
> > >  1 file changed, 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
> > > index 99de843b4551..59538ac09fc5 100644
> > > --- a/drivers/staging/vt6655/mac.h
> > > +++ b/drivers/staging/vt6655/mac.h
> > > @@ -887,8 +887,6 @@ void MACvSetShortRetryLimit(struct vnt_private *priv,
> > >  			    unsigned char byRetryLimit);
> > >
> > >  void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
> > > -void MACvGetLongRetryLimit(struct vnt_private *priv,
> > > -			   unsigned char *pbyRetryLimit);
> >
> > This is the prototype of a function.  Is there a definition somewhere?  If
> > so, it would be good to remove the definition at the same time.
> >
> > julia
> >
> > >
> > >  void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
> > >
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190307124236.20430-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> Also, I found the other function, for which I have to remove function prototype and function definition. So, am i need to submit it as patch series or can i commit in one single patch?

Same file -> series
Different files -> separate patches are fine.

julia

