X-GM-THRID: 6802949681377705984
X-Received: by 2002:a19:ee13:: with SMTP id g19mr4992408lfb.11.1584010163978;
        Thu, 12 Mar 2020 03:49:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b24a:: with SMTP id n10ls1003730ljm.5.gmail; Thu, 12 Mar
 2020 03:49:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvD26YRwlbKOiQiECW4JeWTnK7E6S42l2QJujbKWoao7IhIKphwkA7A5fWkN1V7V5TKo5/K
X-Received: by 2002:a2e:9205:: with SMTP id k5mr4905260ljg.133.1584010162301;
        Thu, 12 Mar 2020 03:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584010162; cv=none;
        d=google.com; s=arc-20160816;
        b=Fg3CU4lUDGI7wDPvjeyEUla7ujTmnEPSahtw/DR+WepdqRSTjWseic315uUNourKhi
         7C+U2I8S7NlvK+dlX0orFN4cp2FYzW6bRaMZT/g0H1Yyt9IDkhwDmD1SLnCnanRcR0L5
         otYcPvUMwahWWC4+5jjETXc16TyIXhA9Mqk5hmcn2TTDJkcsyHKlLCqledgRIGmAPBOq
         uOZrrPJshOmUKIlIJi81LNOvBmQKeq/1bWPXPQQ4OSsLVsOK7f9vUn2DaV7G6pckr1aD
         UYxFMKaGIANLVf67ZTndKUL6fj7vhCnC6Ey3ZX3NQuIVIKr6KhrfHj0UBm8O6X7xu4To
         Zwyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=P2A+MWPDJS9BMNvSSXTXy86pJe3j87twEPJ+EN89k3Q=;
        b=X4F3OmLpIj0bTBobasiN0E889RQX1pbth5jfMRjEfMfrIPmSZ3Jh60/dfN2c+lw6y1
         3JcTQHlQVBh88C/O7NOHAwrJNNCV+QnY/B0TYLY9lZMJLUSc+F83QQzCiasoWzpeJG06
         7OqZOJCk2gkXTozW5bFAuHAnkBxneiheeg9P9ZS99MR4Uv6MWfI/RHC1TMoCRBzPr0MY
         9Tg+qMySYp623bUQVxBNUMQ6r0mbzlqEy50syCAvpPjoFQlH8mO+fqP+0ZAhaxJUnpiC
         YriuTU0DUVX3r4ARY6bbVlbpVpJ1Z9Rex6WsGbI0c0ErscpCx6qPrZRCBj10Xu3UIo1G
         7J2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p14si276022lfo.0.2020.03.12.03.49.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 03:49:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,544,1574118000"; 
   d="scan'208";a="439991803"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2020 11:49:21 +0100
Date: Thu, 12 Mar 2020 11:49:20 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Stefano Brivio <sbrivio@redhat.com>
cc: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>, 
    Shreeya Patel <shreeya.patel23498@gmail.com>, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com, 
    hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
In-Reply-To: <20200312113416.23d3db5c@elisabeth>
Message-ID: <alpine.DEB.2.21.2003121145540.2418@hadrien>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com> <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com> <20200312113416.23d3db5c@elisabeth>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Mar 2020, Stefano Brivio wrote:

> Hi Lakshmi,
>
> On Wed, 11 Mar 2020 19:42:06 -0700
> Lakshmi Ramasubramanian <nramas@linux.microsoft.com> wrote:
>
> > On 3/11/2020 6:58 AM, Shreeya Patel wrote:
> >
> > > Remove unnecessary if and else conditions since both are leading to the
> > > initialization of "phtpriv->ampdu_enable" with the same value.
> > >
> > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> >
> > Stating this based on the patch descriptions I have seen.
> > Others, please advise\correct me if I am wrong.
> >
> > Patch description should state the problem first[1] and then describe
> > how that is fixed in the given patch.
> >
> > For example:
> >
> > In the function rtw_update_ht_cap(), phtpriv->ampdu_enable is set to the
> > same value in both if and else statements.
> >
> > This patch removes this unnecessary if-else statement.
>
> That's my general preference as well, but I can't find any point in the
> "Describe your changes" section of submitting-patches.rst actually
> defining the order. I wouldn't imply that from the sequence the steps
> are presented in.
>
> In case it's possible to say everything with a single statement as
> Shreeya did here, though, I guess that becomes rather a linguistic
> factor, and I personally prefer the concise version here.

https://kernelnewbies.org/PatchPhilosophy suggests:

In patch descriptions and in the subject, it is common and preferable to
use present-tense, imperative language. Write as if you are telling git
what to do with your patch.

It provides the following as an example of a good description:

    somedriver: fix sleep while atomic in send_a_packet()

    The send_a_packet() function is called in atomic context but takes a mutex,
    causing a sleeping while atomic warning.  Change the skb_lock to be a spin
    lock instead of a mutex to fix.

So this illustrates the order that Lakshmi suggests, even though I don't
think that order is ever suggested explicitly.  On the other hand it
avoids "This patch...", which would add some clutter, in my opinion.

julia

>
> --
> Stefano
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200312113416.23d3db5c%40elisabeth.
>

