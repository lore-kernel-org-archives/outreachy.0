X-GM-THRID: 6619244143382102016
X-Received: by 2002:a19:a28f:: with SMTP id l137-v6mr1010848lfe.14.1541169210087;
        Fri, 02 Nov 2018 07:33:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:47c9:: with SMTP id u192-v6ls22662lja.12.gmail; Fri, 02
 Nov 2018 07:33:29 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dqTOJux4ELKTe+6Qth5eK25oCShwKoIiuE/dl4PaiBPCHYeoj1fmGZdNDkd7q0mm4DzdN3
X-Received: by 2002:a2e:9857:: with SMTP id e23-v6mr136705ljj.3.1541169209161;
        Fri, 02 Nov 2018 07:33:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541169209; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z53rFrNWKcitZ6VXQGDuPImbtz+1mIRubP6K+HAad+bO/RQXqpZGC8L8BtKGoG8Eu6
         nHoeBkFmOJ5tif3TYPiEeeVo0CUxTQsynkrWIguYJsatU5ty3j8HcBeUd/a6tVlVtMAw
         cVE2uo3716Eq0BGViNc2h899g18YDvoR38BA9HTPN5byOsqYRAIGqqmZG++EI5CxSkDV
         L0KIEr1/3q4YiQKuYnV6QGZ3xkX8sdhrtecLRQR5+o9lN8pCGx5tktSRFM2ctFNInMle
         6Zx6oMvbIMKrlB5Z6ADhToE27D5N8ss5E1CgaK3a2t59VqJTXp3+c42/+5MERmGOTiqP
         T+Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EMVrhq/0MvwcoWiiSq0Dob2Sd7alVXRR5EdjNfFyKZg=;
        b=pSIo9QhwEZkfuHWmoTtQhVui5UykPxOmegCHJMaIk0QATF0kBZj6/aALThM0SRH00M
         kEmilHDB36B9wCWaTsbAFuEXReAHLf3UJIs+gr5MRkQDHoV2KKvzIl5VT2YPD/YR9C3Z
         GxBLA64dEaHnT3cfvNZeSf/j+YCuNNT+AhjjSv4/Bu2Y/SOfC0gz+aRW1jFqgnxUxyE8
         kKahQyqCdW+7t7bReadiSV67cG1Ze+Xi1iSTZqj+74tod8wVQpnkGzExMLPNR5il+vNi
         oo7qDleNEwmCwXL3fC3/6BZOZIWHcrtPqIK1Xs98v97Ct9PeL16kaVI69ldozWCfAZXJ
         BJtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=KfHe62QE;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y66-v6si937517lje.0.2018.11.02.07.33.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 07:33:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=KfHe62QE;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541169200; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=gG6jea1r/GFi+JirrgUs/0axKRE7JvWTbItyymNLmxapGLVETDISC1/W+5+RNp70137tPHmfM+8wkOayczHZDmBZkhMPw1XMuJ6wXdmk52ZilC81cVGkcV4IGp+NoUoWzeWKBab3Cq6BqULvI0LgcrZiNrUTxc6NeUBtglpmp9E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541169200; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=EMVrhq/0MvwcoWiiSq0Dob2Sd7alVXRR5EdjNfFyKZg=; 
	b=SYqp3LM0VuxVcG/74z94ES/QCocs3SuBv5/fnGmtjmPnqYlN97rBtKJq7AYJE584CsL/9OWtnr+vcyO8I+sVZ5pFdMjLU/vE/wBIkC4mGhgmhwafU28yscfJuqSRuWeO2O39z8KllbibQu8QtfYO7LrBZ+u6ea42HfCDcl0qRs4=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541169200;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1450; bh=EMVrhq/0MvwcoWiiSq0Dob2Sd7alVXRR5EdjNfFyKZg=;
	b=KfHe62QEzb2Rse+sS6LnBYUapq4HT5Y/sQFm50e33QH3+oP7yvCHJOLO4g4RsYel
	SPrH3KlbC5knnkam7w+Z/cTYbsiYkNWr6dwh5S5lWV/vNoxi60OFiNymUPVPBIhUSgJ
	zuxBJgG3pTEiMaQHKGwBc2KOckYMateS1msJG+8o=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541169198754443.9788221969193; Fri, 2 Nov 2018 15:33:18 +0100 (CET)
Date: Fri, 2 Nov 2018 14:33:17 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Sasha Levin <sashal@kernel.org>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: greybus Align
 parameters to parentheses
Message-ID: <20181102143317.GA12871@kvasir.local>
References: <cover.1541162672.git.code@wizofe.uk>
 <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541162672.git.code@wizofe.uk>
 <20181102142657.GF194472@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181102142657.GF194472@sasha-vm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Fri, Nov 02, 2018 at 10:26:57AM -0400, Sasha Levin wrote:
> On Fri, Nov 02, 2018 at 12:48:01PM +0000, Ioannis Valasakis wrote:
> > Align parameters to the right side of the left parentheses
> > Reported by checkpatch.
> > 
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> > drivers/staging/greybus/core.c | 6 +++---
> > 1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
> > index dafa430d176e..d28773e06838 100644
> > --- a/drivers/staging/greybus/core.c
> > +++ b/drivers/staging/greybus/core.c
> > @@ -28,7 +28,7 @@ int greybus_disabled(void)
> > EXPORT_SYMBOL_GPL(greybus_disabled);
> > 
> > static bool greybus_match_one_id(struct gb_bundle *bundle,
> > -				     const struct greybus_bundle_id *id)
> > +				 const struct greybus_bundle_id *id)
> > {
> > 	if ((id->match_flags & GREYBUS_ID_MATCH_VENDOR) &&
> > 	    (id->vendor != bundle->intf->vendor_id))
> > @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
> > static const struct greybus_bundle_id *
> > greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
> > {
> > -	if (id == NULL)
> > +	if (!id == NULL)
> > 		return NULL;
> 
> This change doesn't look right. It also doesn't do what the commit log
> says this commit does.
> 
> --
> Thanks,
> Sasha
Indeed, I am sending a correction to this patch.

-- 
ta
ioannis


