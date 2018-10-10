X-GM-THRID: 6610740007472726016
X-Received: by 2002:a1c:e482:: with SMTP id b124-v6mr153417wmh.22.1539184419075;
        Wed, 10 Oct 2018 08:13:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8309:: with SMTP id f9-v6ls966419wmd.3.gmail; Wed, 10
 Oct 2018 08:13:38 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61YLLLrUO718jWtpn4EHjeyoQnHwJ+fLsg3W3TSE5oUxeDHX5JGs1y0Pa9oyvqoSNTqDO7S
X-Received: by 2002:a1c:96d4:: with SMTP id y203-v6mr153339wmd.8.1539184418066;
        Wed, 10 Oct 2018 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1539184418; cv=pass;
        d=google.com; s=arc-20160816;
        b=oq4dfQ5nIazYtBYPFeczq7TdoQYE3XbjrIuX/T44195IXRb/aZ2WizP4EK9NYWUAyF
         bTbXmOqWtaI7yymAhSyl1jGLcQFvFB6ezp5RgbKhQ/w9LmiCkc5zQrjkQIq+RETLt76e
         eTLuRFt7ARjNe2UQ4Ym2KcN+dHtWpLb+/v7afzJoLmdx++4VknRMYc/9/K569Fp/SW2m
         hvrtxwcPJNCQoDrIaFNE/5Q9GsAOvvT1Fh51pUUYD+3KPGapADtd80phUXYFOb6S1uK8
         D33qWFjbjgYoAblfp4skZyLXtq3AkUVR/5eH27gQOxO8WMTGvmm9cC3EQakePwGapCT5
         29Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zK8i4ujEv86V8kSJ3QjOC4kw0ND1elDe1zokAw5yOek=;
        b=oNrusqwSFNXtLI9nIuNLif+dgVPSoF4weY1c4sO+qXmxx+A8WWJq8p6c+cg4vvBDCj
         BI1/N6aHGVc+fpolmw4Q29q+Gz3rc9/EmTAJjGcFwRUu/QWBpmT+w110tBGIys/VSv2T
         x3h3/JMguqeczc+7Ju447N4FdkIF9khspc0hyDSCVBu3MGRA+YDxuC6Oiz6kr3A4AVjD
         zCqEuCmRArIkvCQbS/bT2Xg/L3VTo1dN2ejEkyYXun/G98MUoY0ZQwOKQi9nf5uapGWd
         96Xs7xpMkOcUVuhuJrB/VRjNRsP3Why6bSNkFWHn5S6vYR9GZk3HVnczF9fGb7oob+7l
         7m3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QTaao9YF;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id 191-v6si979082wmv.0.2018.10.10.08.13.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 08:13:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QTaao9YF;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1539184413; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=DTzZxkdl0DPw/PaKj3fTXmyF4NT2SSM+UART3j1TtNOe4C9Du/KXSS9QNKyRg2I5M704XNU2KzhpFJnMEcWyRfAoRAlV2avMuZt5CYKubnQCgwCBVUrRMSEU8fa89hvERh67/c6oij1hPlVWM+F64yMKAlZ6awwI+lqN0ddEm0w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1539184413; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=zK8i4ujEv86V8kSJ3QjOC4kw0ND1elDe1zokAw5yOek=; 
	b=YpNYPVUwgxRncuH1WUf2QvhVSDJiqxFr/ywN0NWiq7YtFqL1Bbl7sUwreR6F25EsP4qBCl4MOZGBHNHxXROisAOhaffYQNhuQdmTL9JI/3Yx8Q/skPyGcYmWOo0F8/ILfVbUsz0mTPZaXgGy/aUKBKoQu4XFhruIZoyD+XgZpTw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1539184413;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2603; bh=zK8i4ujEv86V8kSJ3QjOC4kw0ND1elDe1zokAw5yOek=;
	b=QTaao9YFtUDRPSDawz58qDKVkvH+iXVvmsia/w8O7jjI9OuufI/KqIHkieKUZgzI
	L78pxlUgQtwMiAq0cfEx7MVi6ycnRMny4qf1f5DlAsKV69IfEdIRqoHe+mTAM3C+8Z/
	KAflm3S/dObcsHpH8a9JKdowAy7uegzWeBwv06Sg=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1539184412396283.0752036620164; Wed, 10 Oct 2018 17:13:32 +0200 (CEST)
Date: Wed, 10 Oct 2018 16:13:31 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: replace udelay
 with usleep_range
Message-ID: <20181010151331.GA21920@kvasir.local>
References: <cover.1539182155.git.code@wizofe.uk>
 <6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code@wizofe.uk>
 <alpine.DEB.2.20.1810101654100.3396@hadrien>
 <20181010145905.GA21890@kvasir.local>
 <alpine.DEB.2.20.1810101701390.3396@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1810101701390.3396@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 10, 2018 at 05:02:25PM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 10 Oct 2018, Ioannis Valasakis wrote:
> 
> > On Wed, Oct 10, 2018 at 04:54:38PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Wed, 10 Oct 2018, Ioannis Valasakis wrote:
> > >
> > > > Fix warning and replace a udelay inside a non-atomic context and
> > > > it can be safely replace by a usleep_range(t, t + delta), where delta is
> > > > 20% of t, as that is between 10 and 20 microseconds.
> > > > Reported by checkpatch.
> > >
> > > It looks like your delta is 5%?
> > >
> > > julia
> >
> > Indeed. Thanks for the quick reply, I am going to submit a new version.
> 
> Did you see the 20% rule somewhere?  Theer was anther patch that Greg
> rejected, as he considered that one would need the hardware to find the
> correct range.
> 
> julia

There's no rule but I was going through old approved commits 
and this is where I saw that 10-20 microseconds allowance.

I don't have the hardware indeed but I hope I can get some 
insight form the cc:ed developers from Microchip.
> 
> >
> > >
> > > >
> > > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > > ---
> > > >  drivers/staging/wilc1000/wilc_wlan.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> > > > index 8b184aa30d25..661c594b0a3c 100644
> > > > --- a/drivers/staging/wilc1000/wilc_wlan.c
> > > > +++ b/drivers/staging/wilc1000/wilc_wlan.c
> > > > @@ -436,7 +436,7 @@ void chip_wakeup(struct wilc *wilc)
> > > >  		} while (wilc_get_chipid(wilc, true) == 0);
> > > >  	} else if ((wilc->io_type & 0x1) == HIF_SDIO) {
> > > >  		wilc->hif_func->hif_write_reg(wilc, 0xfa, 1);
> > > > -		udelay(200);
> > > > +		usleep_range(200, 210);
> > > >  		wilc->hif_func->hif_read_reg(wilc, 0xf0, &reg);
> > > >  		do {
> > > >  			wilc->hif_func->hif_write_reg(wilc, 0xf0,
> > > > --
> > > > 2.19.1
> > > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code%40wizofe.uk.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> >


