X-GM-THRID: 6803246482935775232
X-Received: by 2002:a5d:56c5:: with SMTP id m5mr20254407wrw.35.1584349623950;
        Mon, 16 Mar 2020 02:07:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls8964169wrv.9.gmail; Mon, 16 Mar
 2020 02:07:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuzGAzV0R/T52i+efRoN9sF5z7Yc0/u+nYRJGH5pGiygT+iWc5tLMqsMNd5Gsfq97KJzglm
X-Received: by 2002:a5d:428a:: with SMTP id k10mr4921118wrq.150.1584349622289;
        Mon, 16 Mar 2020 02:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584349622; cv=none;
        d=google.com; s=arc-20160816;
        b=dFCa8ofLwdz2xhl5Cm2yHx6GQHcS950F1sgSP+sBOk0Ep4VwZh7NGXodHxVOJ55DHW
         gNoTNHkqeiuyzBMpt+4O36hAsvt9UJy6yVFeUYTwE86rf6LbX4RzvhEFoxCtqliJ0WPl
         S6L8WEumsq76jcN0bND3wNQphxGAM5gVMBNBf1UejsF0SDDAtqq5h3HUdCZssy1klEvP
         I5mB24MBPnOCHSf8iH+GQ55Za/wVIx6gtzhwktEjOvN8Kag30ePsniifS8QYK4at7Fb8
         O9Ih7abfYKqPhWoUS2YkoHClYWlGMelkutcY8ry2SMICv1hEWnY7V03l4W1QQn4SfMpK
         BX9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iQgNkxaxi0ZGTjU79WO+6GC3iTqIBNZsILdrUHneB04=;
        b=z4e3sJPnpTxobsvmJkkweyjWCtaOWWmvgJe1qLoST+NB3H2IooJx2fxsDUN+ZiBFAR
         vHmQokN2FlLYAUKJVk98nxiaZmedWoHT5M9//C2DqRQY5B2o9cUecHl+s8d9+t13lPjP
         K8BSXZBrULry+4RPsS5EjDfWVs7J2ZCs6q7HqXsMkKvVYLnivRFGjWTwaXrNohmbrhQ2
         oFIDDoP4+1879JlAc6yqYFvJ7fH0xXHO3PlvZnc7fyh5Kup62tyIR5G9DSq4hkrJNDfp
         fRirM/X/iCCwS89NiiQMGiO+gaf/0UXmvyS1WMAXGbidAVMkU045XCbpqq09tTMUOEMg
         2Pbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y185si550454wmd.2.2020.03.16.02.07.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 02:07:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,559,1574118000"; 
   d="scan'208";a="440494129"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 10:07:01 +0100
Date: Mon, 16 Mar 2020 10:07:01 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Stefano Brivio <sbrivio@redhat.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Fixes for simple
 typos in C comments
In-Reply-To: <20200316012751.GA608@tulip.local>
Message-ID: <alpine.DEB.2.21.2003161006480.5216@hadrien>
References: <20200312091042.GA4246@tulip.local> <20200315212901.6b515c24@elisabeth> <20200316012751.GA608@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 16 Mar 2020, R Veera Kumar wrote:

> On Sun, Mar 15, 2020 at 09:29:01PM +0100, Stefano Brivio wrote:
> > Hi,
> >
> > On Thu, 12 Mar 2020 14:40:48 +0530
> > R Veera Kumar <vkor@vkten.in> wrote:
> >
> > > Fixes for simple typos in C comments.
> > > Found using checkpatch.pl.
> >
> > This looks good to me, except for the same points Julia had on your
> > patch:
> > 	"[Outreachy kernel] [PATCH] staging: rts5208: Fix long line in C func call argument"
> >
> > Can you please fix that up (title and description) and resend?
> >
>
> But, this patch has already been accepted by Greg KH and is in
> staging-testing and staging-next branch. May be late.

Yes, you can let it go.

julia


>
> Regards,
> Veera
>
> > --
> > Stefano
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200316012751.GA608%40tulip.local.
>

