X-GM-THRID: 6250414560297091072
X-Received: by 10.31.169.130 with SMTP id s124mr1922871vke.1.1455291455857;
        Fri, 12 Feb 2016 07:37:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.82 with SMTP id a79ls747484ioa.105.gmail; Fri, 12 Feb
 2016 07:37:35 -0800 (PST)
X-Received: by 10.107.135.209 with SMTP id r78mr2869703ioi.19.1455291455288;
        Fri, 12 Feb 2016 07:37:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p10si585305igg.1.2016.02.12.07.37.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:37:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="202858590"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 16:37:33 +0100
Date: Fri, 12 Feb 2016 16:37:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: rtl8192u: r8192U_dm:
 Replace MSECS with msecs_to_jiffies
In-Reply-To: <CA+5yK5EDZjdokuq0+h+2t3+zKbTgjc+xrnXs=2FWz2XhObYSYQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602121637200.2510@hadrien>
References: <20160212144041.GA1328@amitoj-Inspiron-3542> <alpine.DEB.2.10.1602121547280.2510@hadrien> <CA+5yK5EDZjdokuq0+h+2t3+zKbTgjc+xrnXs=2FWz2XhObYSYQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 12 Feb 2016, Amitoj Kaur Chawla wrote:

> On Fri, Feb 12, 2016 at 8:22 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> -                     priv->fsync_timer.expires = jiffies + MSECS(priv->ieee80211->fsync_time_interval*priv->ieee80211->fsync_multiple_timeinterval);
> >> +                     priv->fsync_timer.expires = jiffies +
> >> +                             msecs_to_jiffies(priv->ieee80211->fsync_time_interval*priv->ieee80211->fsync_multiple_timeinterval);
> >
> > You're no worse than before, but maybe there could be some way not to
> > exceed the 80 character limit quite so much.  Maybe some subcomputation
> > that could get a meaningful name.
> >
> > julia
>
> Yes, most of the changes are exceeding the 80 characters limit.
> To do a subcomputation would be helpful but wouldn't that be a
> separate patch altogether?

OK.

julia

>
> Amitoj
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5EDZjdokuq0%2Bh%2B2t3%2BzKbTgjc%2BxrnXs%3D2FWz2XhObYSYQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

