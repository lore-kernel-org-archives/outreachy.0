X-GM-THRID: 6950149887170183168
X-Received: by 2002:a25:cc3:: with SMTP id 186mr35583427ybm.178.1618214375930;
        Mon, 12 Apr 2021 00:59:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:6ad:: with SMTP id j13ls7048937ybt.5.gmail; Mon, 12
 Apr 2021 00:59:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwv1s+kvPmDtSKLynHwL7FlGC58mD++w9V9mdkNEE/mwgJRQvArqA3ytKdstNOBl05LQF7c
X-Received: by 2002:a25:a42a:: with SMTP id f39mr36130335ybi.414.1618214374511;
        Mon, 12 Apr 2021 00:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618214374; cv=none;
        d=google.com; s=arc-20160816;
        b=iB4m0yQ+1vWaRmkdweWf/lba7s09cE6VDqV/Q57Dcb4C/zKfnN9KqrfoFvposqVHwT
         mhdaRzXwz/DhN/NRxN0zcVd5BfaVhAmPFadHbkR0FUq8niybMvb16iD6Z7TcpMcCUGBV
         fpCM5A4wR1dhbP+MwTBY1vonFbvKfZdGG3bRgvvpKLpnECJwzK+KtutKTYbabrkiCjN/
         yhGohtKYCErR/8bzy9djR2m8v5GJMQKR5YzRl1GTL3SvjebsmM8ClpoSRTQi92cw8BNw
         tBlpy68qQg9MG9ZHYv3rz2b/OCQIvIEniCN9QgfRaUN75DmyDV+GWGzUrDjBQ+H/uc8u
         COfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=svFmgmywrBOMRGGlXJDvnuvLp7x0h0E/u68wx4on/6k=;
        b=YmZWfKXPoVepHWzQO60oruXcNNzHHN4ytCtcQ3R1OknOBNe8URTtNdbYy2MHlj0E+Z
         Lon5QrhKOGTt+kzmgk9H9MySjpQpFXyQA+AoNAUMAypBaJejLtWbPjelGnCHEBy6fg81
         CSpb8mKCalSN00YFxttG3mCWPpBojqOfQf/A3fE9HjtRgKr6hLif7+OAknEvEDpr7g9d
         lx7jBmolREMLpaSXCAuCqcipgYuuNcIjRijHm/iuKgSS1784t5X0Wh6UqW1j/SCe9J2g
         fHP1in3pkRy1iQdHT7GQL/SbvJEAZ/0vw8OPRQp/v9UWQynBMh3lCWi31vL9U05Lgwin
         7+rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HSlcPoLB;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id i10si756625ybj.3.2021.04.12.00.59.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 00:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HSlcPoLB;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62e.google.com with SMTP id d17so638481plg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 00:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=svFmgmywrBOMRGGlXJDvnuvLp7x0h0E/u68wx4on/6k=;
        b=HSlcPoLBn0yTP0kYKoy3Ps5iQr1AJfbcwNMXQnTtzS6a2KgFCAa9zRbKsmDJQFC9ir
         A21UeT5y9Z3SAmUiWgbZ0BTdCUG5SHhcBkXJdR48qfYIDiJcLh6AxgGNR8o9HTRLPxjI
         mS/H4qeHlS5csGYt+ZRSIUcowhPVhmZQklrrN4NXwZIcuBAe2U99/4GMv+yEOxCpK9pf
         16UbW83pB66v6HS0azMVa+uAHnnQOoA96bCXUI3BGQFpvCqh1XRrRqvoudtsNTgUGV4j
         CFUpl8UHyJct0j83FwBlc1WyWJb0NBlvv2ZC5BNIXYGKTrndubVeEihg9KVrsOZsoP+W
         RJ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=svFmgmywrBOMRGGlXJDvnuvLp7x0h0E/u68wx4on/6k=;
        b=TdqCTLzDyN908nLOtNW0iD349+j2vvTdskO2qt1t/77SoJyh4KSgEh55w1amL9QRlm
         +IqE1zuCwuMCxfx5WGxTGvFCSDVnvTNpfTO66c5i185u8p4V94ISAeLXeWjYFnQWVCGr
         KQqMmda93FgZ3fiy6KggkSdsaWxnp9UJYRl9q6XudFGfhglayNYjOvx56KE/nhLwbUvr
         H4naHnE4ML5rgurd3hpyT1uUYYDDGKs3i1Z1HVkKwtyfzDrqAdFQieSWUgBYa1zR4Prc
         2J6+U0ZgA9BKP92QrbRSjcAUfQDrcHG9cAdL7ZKTIeB2LvDZODNkUop8uLV9zEfzTOvQ
         2xQQ==
X-Gm-Message-State: AOAM5316d9RsgzAqZI8yWSePVhRhbGMoPUDuKAH6/rnHfVw4s/lZHvZN
	vkYUHe+XTfRckWrG9NlY+xM=
X-Received: by 2002:a17:90a:9409:: with SMTP id r9mr27108514pjo.157.1618214373993;
        Mon, 12 Apr 2021 00:59:33 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id s195sm9035338pfc.211.2021.04.12.00.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 00:59:33 -0700 (PDT)
Date: Mon, 12 Apr 2021 13:29:18 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Larry.Finger@lwfinger.net, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH] staging: rtl8188eu: replaced msleep() by usleep_range()
Message-ID: <YHP91sDmPJIqG95G@kali>
References: <YHPkbTPPra2isn5e@kali>
 <YHPmVtAGH7WWGfjJ@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHPmVtAGH7WWGfjJ@kroah.com>

On Mon, Apr 12, 2021 at 08:19:02AM +0200, Greg KH wrote:
> On Mon, Apr 12, 2021 at 11:40:53AM +0530, Mitali Borkar wrote:
> > Fixed the warning:-msleep < 20ms can sleep for up to 20ms by replacing
> > msleep(unsigned long msecs) by usleep_range(unsigned long min, unsigned long max)
> > in usecs as msleep(1ms~20ms) can sleep for upto 20 ms.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > index 50d3c3631be0..6afbb5bf8118 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > @@ -5396,7 +5396,7 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
> >  			return H2C_SUCCESS;
> >  
> >  		if ((pstapriv->tim_bitmap & BIT(0)) && (psta_bmc->sleepq_len > 0)) {
> > -			msleep(10);/*  10ms, ATIM(HIQ) Windows */
> > +			usleep_range(10000 , 20000);/*  10ms, ATIM(HIQ) Windows */
> 
> How do you know you can sleep for 20000 here?
>

When i ran checkpatch.pl it warned that msleep<20 ms can sleep for 20ms.
I checked Documentation, it stated that msleep(1ms~20ms) will often
sleep longer, ~20ms for any value given in between 1~20ms. 

That's why I took 20msec/20000usec as max sleep value. 


> And given that you just changed how the sleep works, are you sure the
> functionality is the same now?

I am still learning, I am not sure about this.
> 
> Only change this type of warning if you have the hardware and can test
> the change properly.
> 
> thanks,
> 
> greg k-h

