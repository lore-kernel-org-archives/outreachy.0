X-GM-THRID: 6615237556487323648
X-Received: by 2002:a25:2708:: with SMTP id n8-v6mr27565587ybn.96.1540264636689;
        Mon, 22 Oct 2018 20:17:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:34d1:: with SMTP id b200-v6ls837356yba.8.gmail; Mon, 22
 Oct 2018 20:17:15 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63OgMCXqooHgF2jtSAL+48VLofUL7InVKh7OVvn21yamXQ0M1B9yIxN3Q3mbyHoBUJqYmnC
X-Received: by 2002:a25:9d06:: with SMTP id i6-v6mr26573223ybp.4.1540264635718;
        Mon, 22 Oct 2018 20:17:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540264635; cv=none;
        d=google.com; s=arc-20160816;
        b=L/s2auWuQ1LDr1ZUV3Tb4LRs48eW8kRb/LFvy/gheCiZRiQXxFggUijXzSNQwJwv93
         CiYZCvnenD+0uIP4jrmyF5gaOv6TqbZjjJc4/AUseiXL9/o75FJyxiyXD3ZZ5joPyn2J
         AooGX+N0b3EjmmHQanMt6gRH1R9dIYtF0CGgQs30KFkMnsbnQqrevQ1edV5lwGVneoVl
         xoTo4asRLgvL9RxydFYrgUNtvwEeRdgNfDDatfBs29dHJsxvJFwwmfj5ROGllYoeIYEo
         doSKXUD/em9b3JKtgJjClc/5wiZfS69UoetNirCAkYolJv2oAfg2d91LKECAllVcqWpA
         ZwBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TXvgi+OIiKBanpZO4Qi7Ec5RUuMudHfW29LetijAD1c=;
        b=PcNpq4Du9EzmJevpmDYTAaNVKMTt0khFy617f9mI6eTjv1sIDhcCU9a2wgsNuuyFTs
         WcUsvZRRWb/P0TEc1d6XfjGjiEb6vwjWSHrf2DIR/DJysAsLblb9rcHTZr1Bx7EiX1MO
         rwvgYgHgHuYvABVAgHCm3mWuDwrPjv6ZP/ONOtJbwT41O0XnWASGCGkeXA0A3Naqu3ok
         CsX1hB3A9j57W27khrteAYt8Nnnwn1a/vQFqKfJeFas4hSeZZqu8h5hQNtrmoXTXd9p2
         PTvlpdhcbbjVvgJYpbU3jbcz7kChn+j8RMXHT++FX+h5sbgt+N5joZUF9jQKiLuQu5Ji
         h56Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7m6SOPB;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b71-v6si1522800ywb.3.2018.10.22.20.17.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 20:17:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7m6SOPB;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id c32so42239661otb.8
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 20:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TXvgi+OIiKBanpZO4Qi7Ec5RUuMudHfW29LetijAD1c=;
        b=N7m6SOPB6XZif99rq+4U84LApJX0VyD1mbS+bxEQqoZaNyXvQAznb7lLdcYYSAvziR
         dnbJL+wJFS9glMEJx/SPEm8W2gWEURbEtJ295u+bq98rxSosFrZp7SDN4JbAxiDNsVmj
         EUSbosPgplfGhiGXu59I8d5t7Q04ff6BChK8OoLZSI5G2P8fLG4UYQlgnstZVOPghH2X
         0pUsS6rRg2gu78sM0o9BTtMJfnqribNumXaspWd083idVLpAqCRKanCfwMDBwU8ySZ5u
         il4yDU8CNs5o5UZyjHQb/3l2uvLk7PvVbjCabLdwCVQW9o7LtD8wr3dFkE2ag+B00e1L
         TAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TXvgi+OIiKBanpZO4Qi7Ec5RUuMudHfW29LetijAD1c=;
        b=jnCpj0zwxaQh7aexDb01Z7lCkQC5oedFrQtgCYMC9we92+vvSTZtfO0LYkRkvtEPEn
         yIhCBmdHFNbkr49j4S6lzVZxd1lySojhqQvfgifDtIu49GSXuAs06OUFS8o+2XjRwKWN
         4qekxNfvwIs4NEt2shbwWfphRp9viT/j9hiV2qSodzoxvWLZVyjNftjZEanRojmSfKtd
         348C05lrq9iCus8fvP19CtSpC8Pdl9JBOBBLdqdWygipsUX8kEYGT8f0v+lHyIIcn8x/
         Q9DZVQAl6ybBlIPsReI8NvYYG+dAMl8Aw5zF+Qd29Nvu83LzPh0ex08hSGKxp/RUJFJg
         tNmw==
X-Gm-Message-State: ABuFfoifzh2DPaIYJDU30492vdezPsrk+Nav9M7UhhXrD/uYpm5SeQmn
	FUP+J2fc+eeYr5vfTrGR8JOnDIiZMus=
X-Received: by 2002:a9d:1ea3:: with SMTP id n32mr29328951otn.352.1540264635233;
        Mon, 22 Oct 2018 20:17:15 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id b37sm11249062oth.62.2018.10.22.20.17.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 20:17:14 -0700 (PDT)
Date: Mon, 22 Oct 2018 23:17:11 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging:rtl8192u: Fix
 misspellings in comments - Style
Message-ID: <20181023031711.GA6194@v>
References: <cover.1540229302.git.kimbrownkd@gmail.com>
 <552e36244c1487a002b7f130d8b5ee07cb8afff7.1540229302.git.kimbrownkd@gmail.com>
 <alpine.DEB.2.21.1810221852140.2333@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810221852140.2333@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Oct 22, 2018 at 06:53:04PM +0100, Julia Lawall wrote:
> In the subject line, normally the words at the beginning are separated by
> spaces.  Do git log --oneline on the affected file and follow what seems
> most popular.

Thanks for the quick reply, Julia! I did check the git log for this
driver, and the format that I used seemed to be the most popular. Over
the last 4 months, one author has submitted dozens of patches for this
driver with this format, so I matched it.

If you think the normal subject line format with spaces is preferable,
please let me know, and I'll change it.

Kimberly

> 
> julia
> 
> On Mon, 22 Oct 2018, Kimberly Brown wrote:
> 
> > Fix two spelling mistakes in comments. 'informations' should be
> > 'information', and 'imblance' should be 'imbalance'. Issues found by
> > checkpatch.
> >
> > This is a coding style change which should have no impact on runtime
> > code execution.
> >
> > Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
> >  drivers/staging/rtl8192u/r819xU_phyreg.h | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > index 900f7866d381..e064f43fd8b6 100644
> > --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > @@ -243,7 +243,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
> >  			cmdpkt_beacontimerinterrupt_819xusb(dev);
> >  	}
> >
> > -	/* Other informations in interrupt status we need? */
> > +	/* Other information in interrupt status we need? */
> >
> >  	DMESG("<---- cmpk_handle_interrupt_status()\n");
> >  }
> > diff --git a/drivers/staging/rtl8192u/r819xU_phyreg.h b/drivers/staging/rtl8192u/r819xU_phyreg.h
> > index 65ee6088324c..dc9ddf100eab 100644
> > --- a/drivers/staging/rtl8192u/r819xU_phyreg.h
> > +++ b/drivers/staging/rtl8192u/r819xU_phyreg.h
> > @@ -53,7 +53,7 @@
> >  /* page c */
> >  #define rOFDM0_TRxPathEnable		0xc04
> >  #define rOFDM0_XARxAFE				0xc10  /* RxIQ DC offset, Rx digital filter, DC notch filter */
> > -#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imblance matrix */
> > +#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imbalance matrix */
> >  #define rOFDM0_XBRxAFE				0xc18
> >  #define rOFDM0_XBRxIQImbalance		0xc1c
> >  #define rOFDM0_XCRxAFE				0xc20
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/552e36244c1487a002b7f130d8b5ee07cb8afff7.1540229302.git.kimbrownkd%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1810221852140.2333%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

