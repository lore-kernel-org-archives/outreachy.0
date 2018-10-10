X-GM-THRID: 6610740007472726016
X-Received: by 2002:a19:7712:: with SMTP id s18-v6mr844822lfc.20.1539183554970;
        Wed, 10 Oct 2018 07:59:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3e03:: with SMTP id l3-v6ls396913lja.5.gmail; Wed, 10
 Oct 2018 07:59:14 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61TzZ04NvS/BL8FC6Ah6XFnn0AmAOLU9ZbwVyqLS1I/mqRDkB+k5nhlB5Jckreno6eq/fkh
X-Received: by 2002:a2e:8798:: with SMTP id n24-v6mr953445lji.32.1539183554214;
        Wed, 10 Oct 2018 07:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1539183554; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z80rTxHlE7ydo49drtJq+X/4tqVo/EPSzuWFTyHcmt/WZAj7C9BMJm60iS+ZtcNz8t
         Fo707Zi0oNw45et+Zz/KihLxYJxWFXNqVFUJoVlNbvdmgcq+CmIrny3iXL4ahr1rPK7Q
         jbhVFK+k0njcttUQ7cK+V0RKlO/fM99DU+IFhiIISt4Ek4f1a6iKBuSZRMJuKUHqcMQI
         ea4CXMjIRKRVTFBfRlO5abrbHGd69rAySYNy0Hz0Cf2KzT+raj71tcpfoJr1ZtrC5VbP
         wpy9DICatA7mbXpwjFGVQZqXAsTl40824OyEEH33HK+8iLE383P9z5g6aEetWLRcDaEC
         iFKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mVo3UwUIBT7J8BviXTnKyOWV3AOH2WjgUlK65GquVVs=;
        b=A2aW9qbyZITDXVaj/fYaXWC1c06mQYAErwjKYeVts+J1SzjBXMUOfcdHJjks+7LGhI
         78ongG0Z9OLMSGU0zS8ZgPl1vspc0nkGWjRQv2drX4p3D6XdI4cJ37a5ItornSaNFItE
         ttB6KP0/WRKORF3ZVqDVebGguCjPEm/6IlgVRGuSB8cRhnYIEgBqVhNbtZ91S6ZQslGz
         A+xsGQR/YhuME2arJUYyC8+RApPcn1yYBOKQSUA2Ma7Kq/MSQQU0ZvQ0EqYOBzdSXZbR
         w6DPBWKmqK6mSFLYGz4dhkeFHL4xlThb0C06TdH43HjWt3VHDJ29PQy4Bjg3BjrwP2WB
         lfyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=J5lAMzPv;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id z13-v6si956630ljb.4.2018.10.10.07.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 07:59:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=J5lAMzPv;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1539183548; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=NM2Z3OZV5eE8wcGjXGL+A823iq4RnzdEqntD3qz3lDIV1MegtVnB3tK08wHhFW13Mjv5O2cWcJI+or1HnAebUbnGlJUcRmygBlf1+GvyndLQDbET8Cm1KnMDbif3HGqMiHRAt0mDN6GObfNNOY4kNFaSwUytpwSt1FIge4+c+oc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1539183548; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=mVo3UwUIBT7J8BviXTnKyOWV3AOH2WjgUlK65GquVVs=; 
	b=Kd9F8fc90mhsnB1cxfwCKD9wcOv8yLnhMFNEB1Liy4Ig6GrU4Yt4F6qe8YSklwlWopjzPhcHGQQUlpF1PSRDXpCR/7qCYemLBgxKHSdewcn984H3Efyew7oLP7hAobeaMXiyGWEqOUYYidc3vVfl7FTqGpDXkDtzVjJSwgCl18w=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1539183548;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1866; bh=mVo3UwUIBT7J8BviXTnKyOWV3AOH2WjgUlK65GquVVs=;
	b=J5lAMzPv+1BoHHnXWZIkBJ6RFYS9wPRfkL+F+ypG2rq0GsUYkLQNKP6Q58cagAm5
	Gy27YiNvG+KaWdy/Amnxyi3UeNlBC5/M+zrwhsHI+pfaDaZnRLTkgy6W2LgyUSV7YAk
	u74m+7YuB3xKmW1a0F8Bl5u3qEgo/xxwOK5keVGg=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1539183546634887.0758726934582; Wed, 10 Oct 2018 16:59:06 +0200 (CEST)
Date: Wed, 10 Oct 2018 15:59:05 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: replace udelay
 with usleep_range
Message-ID: <20181010145905.GA21890@kvasir.local>
References: <cover.1539182155.git.code@wizofe.uk>
 <6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code@wizofe.uk>
 <alpine.DEB.2.20.1810101654100.3396@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1810101654100.3396@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 10, 2018 at 04:54:38PM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 10 Oct 2018, Ioannis Valasakis wrote:
> 
> > Fix warning and replace a udelay inside a non-atomic context and
> > it can be safely replace by a usleep_range(t, t + delta), where delta is
> > 20% of t, as that is between 10 and 20 microseconds.
> > Reported by checkpatch.
> 
> It looks like your delta is 5%?
> 
> julia

Indeed. Thanks for the quick reply, I am going to submit a new version.

> 
> >
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> >  drivers/staging/wilc1000/wilc_wlan.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> > index 8b184aa30d25..661c594b0a3c 100644
> > --- a/drivers/staging/wilc1000/wilc_wlan.c
> > +++ b/drivers/staging/wilc1000/wilc_wlan.c
> > @@ -436,7 +436,7 @@ void chip_wakeup(struct wilc *wilc)
> >  		} while (wilc_get_chipid(wilc, true) == 0);
> >  	} else if ((wilc->io_type & 0x1) == HIF_SDIO) {
> >  		wilc->hif_func->hif_write_reg(wilc, 0xfa, 1);
> > -		udelay(200);
> > +		usleep_range(200, 210);
> >  		wilc->hif_func->hif_read_reg(wilc, 0xf0, &reg);
> >  		do {
> >  			wilc->hif_func->hif_write_reg(wilc, 0xf0,
> > --
> > 2.19.1
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code%40wizofe.uk.
> > For more options, visit https://groups.google.com/d/optout.
> >


