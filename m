X-GM-THRID: 6331266648892243968
X-Received: by 10.36.5.84 with SMTP id 81mr1841752itl.9.1474196833943;
        Sun, 18 Sep 2016 04:07:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.201 with SMTP id p70ls2770075ioi.2.gmail; Sun, 18 Sep
 2016 04:07:13 -0700 (PDT)
X-Received: by 10.107.9.79 with SMTP id j76mr2677140ioi.79.1474196833510;
        Sun, 18 Sep 2016 04:07:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si4048938pfw.1.2016.09.18.04.07.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:07:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CE125884;
	Sun, 18 Sep 2016 11:07:12 +0000 (UTC)
Date: Sun, 18 Sep 2016 13:07:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 3/4] staging: vt6655: card:
 Break multiple assignments
Message-ID: <20160918110718.GA18330@kroah.com>
References: <cover.1474187686.git.namrataashettar@gmail.com>
 <fe7f635d9b75bb93286245415d4a54497a8a4842.1474187686.git.namrataashettar@gmail.com>
 <20160918104059.GA10846@kroah.com>
 <20160918105441.GA4690@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160918105441.GA4690@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 18, 2016 at 04:24:48PM +0530, Namrata A Shettar wrote:
> On Sun, Sep 18, 2016 at 12:40:59PM +0200, Greg Kroah-Hartman wrote:
> > On Sun, Sep 18, 2016 at 02:35:39PM +0530, Namrata A Shettar wrote:
> > > Break multiple assignments on same line to resolve checkpatch issue.
> > > 
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/card.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > > index afb1e8b..00e7858 100644
> > > --- a/drivers/staging/vt6655/card.c
> > > +++ b/drivers/staging/vt6655/card.c
> > > @@ -528,8 +528,10 @@ CARDvSafeResetTx(
> > >  	struct vnt_tx_desc *pCurrTD;
> > >  
> > >  	/* initialize TD index */
> > > -	priv->apTailTD[0] = priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
> > > -	priv->apTailTD[1] = priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
> > > +        priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
> > > +	priv->apTailTD[0] = priv->apCurrTD[0];
> > > +        priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
> > > +	priv->apTailTD[1] = priv->apCurrTD[1];
> > 
> > Does that look correct to you?
> > 
> > (hint, odd indentation)
> > 
> > And really, the original code is fine, I would recommend just leaving
> > this alone, it makes more sense as-is, don't you think?
> > 
> > thanks,
> > 
> > greg k-h
> 
> Does this hold true for any multiple assignments warning by running
> checkpatch.pl? or is it only for the change that has been made here?

Use your best judgement :)

