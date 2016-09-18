X-GM-THRID: 6331266648892243968
X-Received: by 10.129.95.11 with SMTP id t11mr2519790ywb.112.1474196217633;
        Sun, 18 Sep 2016 03:56:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.68 with SMTP id b65ls1989267iti.13.canary; Sun, 18 Sep
 2016 03:56:56 -0700 (PDT)
X-Received: by 10.36.0.77 with SMTP id 74mr1772596ita.23.1474196216952;
        Sun, 18 Sep 2016 03:56:56 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si5573175pfe.0.2016.09.18.03.56.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so5579426pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 03:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2HwDYnu3u8obw9EHCXTOU7HhkzZs+oueWyPzY5yQTbM=;
        b=NQncweKeE6q+bsyY3RKzY1vCvHaWDDQqi/gSwfaM7SgFx9c6i1ngBvgvNdmkbAjrDi
         RD9v5ilPYTBEUkdSX0+ox7a8Fhp3oaEyla62+gNUEhCBKoSXiHQLzxSUjIuohfz/q7m4
         WrY6wuC9LrGTekjadjQSG6eLSkUJJXRC7gO7u9ti6/C5Wr4oUD9H2+73kTO0Og/z6TZ2
         W5Nbq8xQYrJYM2hrzHmhBuGTQjxHjWWr4Lkh02r+/GVaP5w59u0y4MFPmW92stvrj37H
         jdjeSZJ6pstzLjLZpzGug/cgS8/+6FuaP5o0uTP98K0k4hbLpbWjBVubNLA1/wUjWH3S
         Me3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2HwDYnu3u8obw9EHCXTOU7HhkzZs+oueWyPzY5yQTbM=;
        b=HTWtv8LBFtXiD7QVUdkpPvShZeAOOzvOmj6oX1tOmEy26Apiu1bFFFyfzBOiLt/I6C
         +kwL2xnzwhyxwvn7ewr5b4T5xQJyKBFInv3WgSyWK0L2edKPSaEY2n2S+dd5aEG0JMcA
         cHBG8mj1sJwJhtQGRmJr58S9VrSopkqJ1KIT3g7pZkX+SYA8Nz5oKdDzslQtUsN4UeXZ
         gNo+hIHn6VPQpFrk/nXQ+UnGZy98cZucw1G/OwN47Ppsk3b7df5JZqVPnHP+7bERoKcq
         LlY+GioBR5MoH0rnB24t0YHdVyzs1FYgN+55K7iav0WQDSRAKYGUSDWva2L4FWx5mbZ+
         iwYg==
X-Gm-Message-State: AE9vXwOO0XeWLuW7xBjPsXgIr23+FxGKYwmEAHCjBH0YUrbvFeTcXQuJLRPkdhW7udYqwQ==
X-Received: by 10.66.54.165 with SMTP id k5mr11935397pap.75.1474196216774;
        Sun, 18 Sep 2016 03:56:56 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ps2sm23890538pab.10.2016.09.18.03.56.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:56:55 -0700 (PDT)
Date: Sun, 18 Sep 2016 16:26:48 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 4/4] staging: vt6655: device_main: Break up multiple
 assignments
Message-ID: <20160918105641.GB4690@namrata-HP-Pavilion-g6-Notebook-PC>
References: <cover.1474187686.git.namrataashettar@gmail.com>
 <7452f9668c5132d600519456ac4f627ba94cad9a.1474187686.git.namrataashettar@gmail.com>
 <20160918104140.GB10846@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160918104140.GB10846@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Sep 18, 2016 at 12:41:40PM +0200, Greg Kroah-Hartman wrote:
> On Sun, Sep 18, 2016 at 02:35:53PM +0530, Namrata A Shettar wrote:
> > Break up multiple assignments on the same line to resolve checkpatch
> > issue.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/vt6655/device_main.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> > index f109eea..86532ca 100644
> > --- a/drivers/staging/vt6655/device_main.c
> > +++ b/drivers/staging/vt6655/device_main.c
> > @@ -669,7 +669,8 @@ static void device_init_td1_ring(struct vnt_private *priv)
> >  
> >  	if (i > 0)
> >  		priv->apTD1Rings[i-1].next_desc = cpu_to_le32(priv->td1_pool_dma);
> > -	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
> > +	 priv->apCurrTD[1] = &priv->apTD1Rings[0];
> > +	 priv->apTailTD[1] = priv->apCurrTD[1];
> 
> Same problem here, please be careful with your indentation, always run
> your patches through checkpatch.pl before sending them out so that
> people don't have to remind you to run your patches through
> checkpatch.pl before sending them out.
> 
> thanks,
> 
> greg k-h

Really sorry for that :/ Will be more careful the next time around.

thanks,

namrata

