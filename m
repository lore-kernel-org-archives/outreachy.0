X-GM-THRID: 6331266648892243968
X-Received: by 10.67.14.131 with SMTP id fg3mr2572141pad.142.1474197222385;
        Sun, 18 Sep 2016 04:13:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls9217308otc.1.gmail; Sun, 18 Sep
 2016 04:13:42 -0700 (PDT)
X-Received: by 10.157.13.47 with SMTP id 44mr11851923oti.27.1474197222051;
        Sun, 18 Sep 2016 04:13:42 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si4435312pab.1.2016.09.18.04.13.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so2590293pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 04:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7j2+jVS30oc83CsaJiqmp4NMLTtZghh1k2l3Lwm7pa8=;
        b=c30O4W8MoEndn+w8OVkbIwUd8oNw8SYaWdvt5/mwgWm06+D8C50tZSlD3wTl11abMw
         wMPGlwcSoTiEpHLtkIn1/oOc9sYPLXnaQgK7Fmoo4xaP+lm0sQWt19Wxvqp7AbrWWL1t
         vd8DXjMv49fXXCko5PdypmHkY16G5wLPzIgZ7lWA0T/s4jprMJoprnnFkSNjn1bu6yUH
         XIf0moWzcYeMjX5NqRBREk7WRWgvLN8APIofpeTaXy1S6R2J8pM+RXd/jP/Wy4J0zN2Q
         biNN19vZ2vd+0zf9iOBXyO499e0PLcwt8sEbqD25NhSgQS8Moy5R0FUXUjZNPRxvGgKf
         xuSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7j2+jVS30oc83CsaJiqmp4NMLTtZghh1k2l3Lwm7pa8=;
        b=XUNrgsZDSLMnoOUvi9v/6kVFfRGB6FpUWkHNzOhUUyMmLFJfT9yHtJDBF9DHCQKmWE
         W69V2fmas9ybZoULDl+DWjgjn1YhNrsPBw+6vT1zjQXQo3rBlZgnrJPoxWVz+DX2fxFG
         QwNUFXN2iTID5HRiC5seTu/IvsHBXClbPrNj15c0nL0A1yKgCNFVpRKSDtneQV1r+NbR
         ELadVXE8nXgs4sAMIMtY4bD+rcRoAFimJDa1UvfBxiQfmdjZFuEPYYbWy/wBCg+Kf+rs
         swYMmOoBg9eYrzOzobVAElF5Kn9ujXBfHTI8FEVo1oPKdZIOUYiq6Q8zT2iO0VlMMpEB
         R41Q==
X-Gm-Message-State: AE9vXwNKPwUmCUu32wvwz0okaDKDFuijLr6iZCSBbh+f8WgV0Vp2ch+Nvd4TccS9JOiihw==
X-Received: by 10.66.245.177 with SMTP id xp17mr38181721pac.118.1474197221836;
        Sun, 18 Sep 2016 04:13:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id 81sm63945045pfm.90.2016.09.18.04.13.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:13:41 -0700 (PDT)
Date: Sun, 18 Sep 2016 16:43:36 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 3/4] staging: vt6655: card:
 Break multiple assignments
Message-ID: <20160918111335.GA4830@namrata-HP-Pavilion-g6-Notebook-PC>
References: <cover.1474187686.git.namrataashettar@gmail.com>
 <fe7f635d9b75bb93286245415d4a54497a8a4842.1474187686.git.namrataashettar@gmail.com>
 <20160918104059.GA10846@kroah.com>
 <20160918105441.GA4690@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160918110718.GA18330@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160918110718.GA18330@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Sep 18, 2016 at 01:07:18PM +0200, Greg Kroah-Hartman wrote:
> On Sun, Sep 18, 2016 at 04:24:48PM +0530, Namrata A Shettar wrote:
> > On Sun, Sep 18, 2016 at 12:40:59PM +0200, Greg Kroah-Hartman wrote:
> > > On Sun, Sep 18, 2016 at 02:35:39PM +0530, Namrata A Shettar wrote:
> > > > Break multiple assignments on same line to resolve checkpatch issue.
> > > > 
> > > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > > ---
> > > >  drivers/staging/vt6655/card.c | 6 ++++--
> > > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > > > index afb1e8b..00e7858 100644
> > > > --- a/drivers/staging/vt6655/card.c
> > > > +++ b/drivers/staging/vt6655/card.c
> > > > @@ -528,8 +528,10 @@ CARDvSafeResetTx(
> > > >  	struct vnt_tx_desc *pCurrTD;
> > > >  
> > > >  	/* initialize TD index */
> > > > -	priv->apTailTD[0] = priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
> > > > -	priv->apTailTD[1] = priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
> > > > +        priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
> > > > +	priv->apTailTD[0] = priv->apCurrTD[0];
> > > > +        priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
> > > > +	priv->apTailTD[1] = priv->apCurrTD[1];
> > > 
> > > Does that look correct to you?
> > > 
> > > (hint, odd indentation)
> > > 
> > > And really, the original code is fine, I would recommend just leaving
> > > this alone, it makes more sense as-is, don't you think?
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > Does this hold true for any multiple assignments warning by running
> > checkpatch.pl? or is it only for the change that has been made here?
> 
> Use your best judgement :)

Alright! Thanks :)

