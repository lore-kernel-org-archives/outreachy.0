X-GM-THRID: 6467580145196597248
X-Received: by 10.36.172.101 with SMTP id m37mr733752iti.25.1505898449855;
        Wed, 20 Sep 2017 02:07:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.94 with SMTP id s91ls352427ioe.35.gmail; Wed, 20 Sep
 2017 02:07:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBYrcuUa7ysNNAcRLj48jxGqthqJoib3q/Z/slSbsyfGyeevOrH0Ocb+9qupYwaMOAp3C8K
X-Received: by 10.31.51.133 with SMTP id z127mr2123311vkz.116.1505898448957;
        Wed, 20 Sep 2017 02:07:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505898448; cv=none;
        d=google.com; s=arc-20160816;
        b=jMW5Jx0WPNv7ItFDmSR7/5OENABij83gxE77y5Q/L1qw3YFhTIIgZF2QB4YkKO80fO
         C/SCsHEFHprmqSi7A2atTK3X+32MSAxBT4x65wKBEta//++99nPQ6Jkd+IRkfWdUTGES
         Oixh0mgC0FM4IH7Ny95n19CnxYmwzPE1Xpd7MSa37ReHnPIC3HsILdedrWHrQ3kFsPle
         KJcJt1S9enyWtMlAO7HoWgX7zG9cBxlmvW3nmur6l0Y05UPsAMmMCu7nV6btTBvj4uR6
         FkDdoVq6LpEEAhyMOonCrA22PukUEyBL2pGVNWaPV/F6hM/kTx1aUeiVj8prKjfFBNBd
         64YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=5RYiGCdz05DQUNaahfHPXqgeUBl9cXMlLlBrdLqzfeA=;
        b=h4BPb0tM6LZZawHNLJN8WcPJD4iGs/pcuMyW1e+CmqngdXdQhgKs5zFvhj3Y/VUBml
         8RLsxNFCkWvhP9rW4lDKkMsWi1QMrxEam/1TUpAmRK3SmbpyK6VJbIvms3zI7VGx1Kte
         STX8o7NcC9SUZ5khtIxSn9BUSthS/uO19ZH2D0LSry+HF+9/7YR3zr7xAmbLDGQ0l2q0
         xqmpfJeSRX7cglhlZgTVTU4KpDOYOd/CYbzkRZGs7SOESYpeItsrNSME04Z3khJZfY8v
         I3CJqiaGkXWTAuaHpiqcb4qtVr/aghcGDZnfpsHt+KG3H+I/qHLfGwU441cfjiJbw5lF
         uMjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k199si109707vka.9.2017.09.20.02.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 02:07:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,420,1500933600"; 
   d="scan'208";a="291915383"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Sep 2017 11:07:24 +0200
Date: Wed, 20 Sep 2017 11:06:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Use
 netdev_info instead of printk
In-Reply-To: <CALta04zspRuf0a2ELBCYZOXK=K4UDkPTeEDJN=sUBYuZEzJbXg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709201104510.3290@hadrien>
References: <20170919195406.n6kztu5q3pnduhir@fireworks> <alpine.DEB.2.20.1709192225010.2518@hadrien> <CALta04zspRuf0a2ELBCYZOXK=K4UDkPTeEDJN=sUBYuZEzJbXg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Sep 2017, Georgiana Chelu wrote:

> On 19 September 2017 at 23:28, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Tue, 19 Sep 2017, Georgiana Chelu wrote:
> >
> >> Replace printk with netdev_info because struct ieee80211_device
> >> contains a net_device structure.
> >>
> >> Issue found by checkpatch.pl script.
> >> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> >> dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> >>
> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
> >
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> >
> > Maybe all the locally defined debug levels are not really needed, and the
> > calls to the debug macros could also be replaced by appropriate calls to
> > netdev logging functions.
> >
> > julia
>
> I think there are two options:
>
> 1. Replace IEEE80211_DEBUG(IEEE80211_DL_ERR, ...) occurrences with
> netdev_err(dev, ...),
> but these debug messages are shown only when CONFIG_IEEE80211_DEBUG is defined
> in the kernel configuration.
>
> 2. Change the IEEE80211_DEBUG macro to use netdev_* instead of printk.
> But, that would require extra checking in order to use the correct
> netdev_* macro.
>
>
> extern u32 ieee80211_debug_level;
> #define IEEE80211_DEBUG(level, fmt, args...) \
> do { if (ieee80211_debug_level & (level)) \
>          printk(KERN_DEBUG "ieee80211: " fmt, ## args); } while (0)
>
>
> So, what is your opinion?

One option would be to drop the whole mess and put everything at _debug,
because everything was ultimately done with KERN_DEBUG before.
Unfortunately this code doesn't seem to have a specific maintainer who
might know whether all the debugging messages are still useful.  Perhaps
Greg would have an opinion.

julia

>
> Thank you,
> Georgiana
>
> >
> >> ---
> >>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> >> index 8aa38dcf0dfd..0f86195680e8 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> >> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> >> @@ -143,7 +143,7 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, P
> >>
> >>       if (ACT_ADDBARSP == type) {
> >>               // Status Code
> >> -             printk(KERN_INFO "=====>to send ADDBARSP\n");
> >> +             netdev_info(ieee->dev, "=====>to send ADDBARSP\n");
> >>
> >>               put_unaligned_le16(StatusCode, tag);
> >>               tag += 2;
> >> @@ -345,7 +345,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
> >>       pBaTimeoutVal = (u16 *)(tag + 5);
> >>       pBaStartSeqCtrl = (PSEQUENCE_CONTROL)(req + 7);
> >>
> >> -     printk(KERN_INFO "====================>rx ADDBAREQ from :%pM\n", dst);
> >> +     netdev_info(ieee->dev, "====================>rx ADDBAREQ from :%pM\n", dst);
> >>  //some other capability is not ready now.
> >>       if ((ieee->current_network.qos_data.active == 0) ||
> >>               (!ieee->pHTInfo->bCurrentHTSupport)) //||
> >> --
> >> 2.11.0
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170919195406.n6kztu5q3pnduhir%40fireworks.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALta04zspRuf0a2ELBCYZOXK%3DK4UDkPTeEDJN%3DsUBYuZEzJbXg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

