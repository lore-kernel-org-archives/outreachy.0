X-GM-THRID: 6251014829496074240
X-Received: by 10.194.172.40 with SMTP id az8mr1279125wjc.3.1455466328267;
        Sun, 14 Feb 2016 08:12:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.75 with SMTP id c72ls419636wmh.26.canary; Sun, 14 Feb
 2016 08:12:07 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr1285155wje.1.1455466327838;
        Sun, 14 Feb 2016 08:12:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si650390wmd.1.2016.02.14.08.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 08:12:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,446,1449529200"; 
   d="scan'208";a="203053831"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 17:12:07 +0100
Date: Sun, 14 Feb 2016 17:12:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Remove unused macros
In-Reply-To: <31a999e2-93a3-48b0-950b-b8ec533158e3@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1602141711450.2066@localhost6.localdomain6>
References: <cover.1455427132.git.bhumirks@gmail.com> <alpine.DEB.2.02.1602140819530.2039@localhost6.localdomain6> <31a999e2-93a3-48b0-950b-b8ec533158e3@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-911125520-1455466327=:2066"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-911125520-1455466327=:2066
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 14 Feb 2016, Bhumika Goyal wrote:

> 
> 
> On Sunday, February 14, 2016 at 12:50:08 PM UTC+5:30, Julia Lawall wrote:
>       On Sun, 14 Feb 2016, Bhumika Goyal wrote:
> 
>       > This patchset remove PlatformAcquireSpinLock and
>       PlatformReleaseSpinLock
>       > macros as they are not used anywhere. Also remove the
>       commented places
>       > where these macros were used. Used grep to find occurences.
> 
>       Isn't this a v2?
> 
>   
>      Actually I broke v1 in two patches so I thought it should be a new
> patchset. v1 had just one patch so can v2 for the same  be a patchset?

v2 would make it more clear that v1 should be ignored.

julia

>      Thanks,
>      Bhumika
> 
>       julia
> 
>       > Bhumika Goyal (2):
>       >   Staging: rtl8723au: Remove unused macros
>       >   Staging: rtl8192u: Remove useless comments
>       >
>       >  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 5 -----
>       >  drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
>       >  2 files changed, 7 deletions(-)
>       >
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/cover.1455427132.git.bhu
>       mirks%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/31a999e2-93a3-48b0-950b-
> b8ec533158e3%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-911125520-1455466327=:2066--

