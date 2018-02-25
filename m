X-GM-THRID: 6526024412200697856
X-Received: by 10.28.93.145 with SMTP id r139mr643801wmb.32.1519538811481;
        Sat, 24 Feb 2018 22:06:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.170.1 with SMTP id t1ls1048170wme.7.gmail; Sat, 24 Feb 2018
 22:06:49 -0800 (PST)
X-Google-Smtp-Source: AG47ELsQ7vrxEmDnl/jMMni/A1zAeo2XTQ+Qh5Wdt1vT+wdVe6X73jiBxteL8N9TAUkJrSqC+FqE
X-Received: by 10.28.105.80 with SMTP id e77mr261034wmc.26.1519538809706;
        Sat, 24 Feb 2018 22:06:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519538809; cv=none;
        d=google.com; s=arc-20160816;
        b=Dqipgk6aJ/hsYpgcWndN6ZPmmELIIFwNbkU7oHj2cxixZap+1feaN0kT8TRWhnDYBF
         kSt0KUH5PHfWGBNnvV1kwf5312ImT+1/jAb5n5/0dxBMYJnO22nuuAkF4UbDFAmeyztd
         /aZ3vQjm+FpmYerP6uOvJxN5Ostr0wTK9JIiNoCTq31jXP+GtLD0RHaNZ9kPcirdJplo
         5uSB5nrz5yWgudZTW847Y6AY1ms5XBe8yM4z8Nk40aJtVgghuTtwGQ6u6gycIK/QOi68
         rAy7BOaPSjN5PGGBRJvH4+h/j/NzIloN1X2BuumVwWu3l/G1duyAWe5EPAnJOLCqudZI
         PUCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=EZeWEYdUWhBv3v4mZH3o2GtUQafyssJsrtDeEFpOWIc=;
        b=r6vn/OVN+H+hxryrppHOwcoGMpWA0Cpmgw+MbaEiFCbGyPrwWm1rir9gzrFtuMe1LJ
         BmLM2gFnU7bl6jBnDHwGND9urRQKI1pUcXd7rTbpUKKDgQpG7EQbCquuAQWqOeqGoX5l
         DC83y4t27fCniTanGPiKWb9+vQymPijQaujyvTHZsMYdG2bxcLlUge7qzPNBiDcW4kNw
         XAHrSdO0Sa3o9ybj14iZ90YVvAvLA8xIuywisuQwgFuV0ThQ1X5aX6+bamWYRP3vYjdc
         fZzTV+6rn4UIP7K9bCaSAtI/dP3PwvLwIpJu2e0/feTAOSyCsbrsQuCf7T/GKJnuAMOw
         EkEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=momQDX0L;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id v8si285283wrg.2.2018.02.24.22.06.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 22:06:49 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=momQDX0L;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z9so11437735wmb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 22:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EZeWEYdUWhBv3v4mZH3o2GtUQafyssJsrtDeEFpOWIc=;
        b=momQDX0Lxzg2rfGAzaiT7gI+xwfJXAxgCX8CxuzUZF9+kV4rmqpngMFR0z30w1RxKd
         6SiF5HCChBn1w05V7RNoSe5ZbeUeGG4nlGlpR3NWGKXwbCp8GxDvklXKY/L2E7bCPIJq
         33/Xx0vdS1J8aC3kQeD1K+Pk9lotv0omJK7yBX57tHi+7Yd3gspeQqYnD5Z6KbsT/6iB
         kAQ2d+2W3qR8BG0DnQf9eTQVbGHhzR/BTjTkTdsSrn48mYkSkpr61NOVxjHZYXnCWT+r
         rn2i3rc6BmmWHrlP8rZEY+fOkMcz1eWO7H4Zd5dJBPNeiqCIenbIFqdqr1tnX2uWS9VY
         naaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EZeWEYdUWhBv3v4mZH3o2GtUQafyssJsrtDeEFpOWIc=;
        b=ThJM5GONeTQqchFlOeIaYR+LmMxNldo1cQW5W69Ezm/mHsZTqb+OU6VJIHrHjt1jmG
         4k0NePERy58gXnjENS/kz59/Jxj8SA1pXhrPeaNZnTLsu3hCfrGLdlZMZL48t+l665DE
         PKzyYNabvHPE13pVKi275TEcCzLGdG4wUT044OaDHxnKoInmJKtAxz2YnlDfxz7/M/PO
         Dt87NZYw7RjBnCuRNLwkyowsx5BBmWKTgiBosc/ODybBuEosEemBg9+gYJhOLT1UdSRV
         PoH/J/V8uK8YuJ3TO+7boAPoehdy6xLVMfFgdgf09u+ctYWknWIQZ8S8INaj7voLPuWu
         oL8g==
X-Gm-Message-State: APf1xPCwiGamcELdHSEiJs6nOWrjMnsJlHDBDEqdK4yZO0AYk3IX3o3M
	b6gqDYKZ3SKbyePsnMuoRz8=
X-Received: by 10.28.62.16 with SMTP id l16mr408141wma.54.1519538809258;
        Sat, 24 Feb 2018 22:06:49 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com (IGLD-84-229-101-166.inter.net.il. [84.229.101.166])
        by smtp.gmail.com with ESMTPSA id n24sm7410661wmi.21.2018.02.24.22.06.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 22:06:48 -0800 (PST)
Date: Sun, 25 Feb 2018 08:06:44 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: merge 'if'
 statements that test the same condition
Message-ID: <20180225060643.GA21345@gmail.com>
References: <20180224074733.GA6487@gmail.com>
 <alpine.DEB.2.20.1802240859300.16912@hadrien>
 <20180224090203.GA29453@gmail.com>
 <alpine.DEB.2.20.1802241037120.16912@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802241037120.16912@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 24, 2018 at 10:38:55AM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:
> 
> > On Sat, Feb 24, 2018 at 09:03:20AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:
> > >
> > > > Merge the instructions of two 'if' statements that test the same
> > > > condition and move a 'memcpy' instruction related to a different variable.
> > > > Issue found with coccicheck.
> > > >
> > > > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > > > ---
> > > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
> > > >  1 file changed, 3 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > index 621810d..f6f2c7f8 100644
> > > > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > @@ -962,15 +962,13 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
> > > >
> > > >  				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
> > > >
> > > > +				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> > > >  				kfree(priv->wilc_ptk[key_index]->seq);
> > >
> > > How about moving the memcpy up a line to be next to the kmalloc, and to be
> > > separated by a blank line from the kfree, which is on a different
> > > location.
> > >
> > > These kmallocs should also have null tests to check for failure.  That
> > > could be the first patch in the series with this patch being the second
> > > one.  The missing null checks represent a small bug, and a bug should not
> > > depend on a cleanup.
> > >
> > > julia
> > >
> > Hi, the file has about 17 calls to kmalloc that are not tested for null.
> > Wouldn't it be better to fix all of them in a different patch?
> 
> Sure.  It's just that your choices are either to wait for Greg to take one
> patch before taking the next, or put them in a series.
> 
> But maybe it would be just as well to get this one out of the way.  The
> degree of difficulty is quite different, because to add error handlig
> code, you have to figure out how to handle the error.  So that needs to be
> done slowly and carefully.
> 
Hi, regarding adding null checks to kmalloc calls.
I wonder if it is possible to do it without deeply know the whole picture of
what the code does and with what other code it interacts.
I saw that there are kmalloc calls from a function 'add_network_to_shadow'
which is part of a code that enters a working queue. The other calls are from
functions that implement callbacks of 'struct cfg80211_ops'.
I saw that other drivers that implemets these callbacks return -ENOMEM.
In case of kmalloc returning null, is it enough to free everything else
that was allocated in the function and return -ENOMEM?

Dafna

> julia
> 
> >
> > Dafna
> >
> > > >
> > > > -				if (params->seq_len > 0)
> > > > +				if (params->seq_len > 0) {
> > > >  					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
> > > > -
> > > > -				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> > > > -
> > > > -				if (params->seq_len > 0)
> > > >  					memcpy(priv->wilc_ptk[key_index]->seq, params->seq, params->seq_len);
> > > > +				}
> > > >
> > > >  				priv->wilc_ptk[key_index]->cipher = params->cipher;
> > > >  				priv->wilc_ptk[key_index]->key_len = params->key_len;
> > > > --
> > > > 2.7.4
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180224074733.GA6487%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >

