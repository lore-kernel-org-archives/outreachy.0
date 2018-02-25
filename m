X-GM-THRID: 6526024412200697856
X-Received: by 10.28.0.87 with SMTP id 84mr613217wma.31.1519548650021;
        Sun, 25 Feb 2018 00:50:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.138 with SMTP id m132ls1114460wma.5.canary-gmail; Sun,
 25 Feb 2018 00:50:48 -0800 (PST)
X-Google-Smtp-Source: AG47ELtOrF+/KuXeEm8nMCZqn3K052vooW4jTjsX5bTWBBECsE1COCZo1eECF0QgC4sEAPPKcOf6
X-Received: by 10.28.87.194 with SMTP id l185mr741654wmb.9.1519548648268;
        Sun, 25 Feb 2018 00:50:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519548648; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+KIBqTa/5wCKmIL9nFs7vOpwwTgTZgfkFRlhhRrDuPXcmJwizonuTvUzj+BWIwt5C
         7QzofbwEjdrppZ7fKdqz5ColabFvmPu2Ac1sXz9UEyWmCItZ/jnEP36j0vsrL75ZxOhg
         Hyc0cefEEfZ7VULiqOZNAJ9xl8mSs/6jOFfRdvgo5Ii49MzMPMf5LbnVOimrYd5dXEjs
         VoFp30IVDP1WyEp9Xm8PRbHSlFD7z5RW6qcX/XzSeBr0DmyNdj3uKz4twMkULkyLwYlN
         4MZ0AL5Xx6hbgKgu+DSfnDlh/UnvNQMLPtoshCXgX8dzmB+4mAgW8kG6gmsbBknMsj8X
         +tvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=yzRdp+AaBi6Xdg+EjPLXnAAYQcarDICzsVEO3XuNR9U=;
        b=j5IR7HW/94HoVDM78YNxGXOxhhHB2rc4zaofFUyzRfCi9SA2BPVCwj4/wZ0PhbFzRd
         JZAayKYXHmBM2svYFLT9LNwLgw/l2eCJWGJBzSnEUsbqdtUzwSxvc9BE0WyM0SJKp0pE
         cwgS/GFNPVj7dI8TVOFtznoqPO4bN3U6y5NbR3OzGNSleQCs7oijaj7IhQJ5ukxV9N51
         +gH+JzT67WzosxUKozrQoLPvZIks8gMbXj1d6lj71CGpgMAXkcG9DMLFQDVgId2fR7Vr
         qZZUwwwlVh0Jz83muTaLwVid45n+w/XS1xF2mjQihZiRorwPQFpS86y7d4niISq2X8JP
         n18Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v8si293367wrg.2.2018.02.25.00.50.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 00:50:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,392,1515452400"; 
   d="scan'208";a="315180306"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2018 09:50:47 +0100
Date: Sun, 25 Feb 2018 09:50:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: merge 'if' statements
 that test the same condition
In-Reply-To: <20180225060643.GA21345@gmail.com>
Message-ID: <alpine.DEB.2.20.1802250931420.2531@hadrien>
References: <20180224074733.GA6487@gmail.com> <alpine.DEB.2.20.1802240859300.16912@hadrien> <20180224090203.GA29453@gmail.com> <alpine.DEB.2.20.1802241037120.16912@hadrien> <20180225060643.GA21345@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 25 Feb 2018, Dafna Hirschfeld wrote:

> On Sat, Feb 24, 2018 at 10:38:55AM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:
> >
> > > On Sat, Feb 24, 2018 at 09:03:20AM +0100, Julia Lawall wrote:
> > > >
> > > >
> > > > On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:
> > > >
> > > > > Merge the instructions of two 'if' statements that test the same
> > > > > condition and move a 'memcpy' instruction related to a different variable.
> > > > > Issue found with coccicheck.
> > > > >
> > > > > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > > > > ---
> > > > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
> > > > >  1 file changed, 3 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > > index 621810d..f6f2c7f8 100644
> > > > > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > > @@ -962,15 +962,13 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
> > > > >
> > > > >  				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
> > > > >
> > > > > +				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> > > > >  				kfree(priv->wilc_ptk[key_index]->seq);
> > > >
> > > > How about moving the memcpy up a line to be next to the kmalloc, and to be
> > > > separated by a blank line from the kfree, which is on a different
> > > > location.
> > > >
> > > > These kmallocs should also have null tests to check for failure.  That
> > > > could be the first patch in the series with this patch being the second
> > > > one.  The missing null checks represent a small bug, and a bug should not
> > > > depend on a cleanup.
> > > >
> > > > julia
> > > >
> > > Hi, the file has about 17 calls to kmalloc that are not tested for null.
> > > Wouldn't it be better to fix all of them in a different patch?
> >
> > Sure.  It's just that your choices are either to wait for Greg to take one
> > patch before taking the next, or put them in a series.
> >
> > But maybe it would be just as well to get this one out of the way.  The
> > degree of difficulty is quite different, because to add error handlig
> > code, you have to figure out how to handle the error.  So that needs to be
> > done slowly and carefully.
> >
> Hi, regarding adding null checks to kmalloc calls.
> I wonder if it is possible to do it without deeply know the whole picture of
> what the code does and with what other code it interacts.
> I saw that there are kmalloc calls from a function 'add_network_to_shadow'
> which is part of a code that enters a working queue. The other calls are from
> functions that implement callbacks of 'struct cfg80211_ops'.
> I saw that other drivers that implemets these callbacks return -ENOMEM.
> In case of kmalloc returning null, is it enough to free everything else
> that was allocated in the function and return -ENOMEM?

-ENOMEM is very standard for kmalloc, so it is probably fine.  Maybe look
around elsewhere in the function to see what frees are done, to see what
would be adapted to each situation.  If it looks like each case will be
different, don't feel obliged to do them all.  Indeed, unless they are all
quite the same, it might be better to do them one by one.  Then if a
mistake is found later in one of them, it will be possible to revert that
patch without reverting all of them.

Your commit message should carefully explain your reasoning in each case.

julia

