X-GM-THRID: 6334597152345423872
X-Received: by 10.13.211.198 with SMTP id v189mr5287219ywd.22.1474892974688;
        Mon, 26 Sep 2016 05:29:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.34.81 with SMTP id o78ls2445222ito.6.gmail; Mon, 26 Sep
 2016 05:29:33 -0700 (PDT)
X-Received: by 10.66.160.225 with SMTP id xn1mr5381649pab.90.1474892973601;
        Mon, 26 Sep 2016 05:29:33 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si4190928pab.2.2016.09.26.05.29.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 05:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so8748582pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 05:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=gqaDSkBZw3mhlwwZioiI+dnXc28fmg/s6Ggveyo3llg=;
        b=QxIBt6BAUwEp98mxofT7gaav7u9n6zdi1QVCG0RougGwlxbSyrpOPqcSGf05ndKy+P
         ve/0BbcU263CeMMNY3ML8MX0ZTWCRvcpz1dqEL7JxaiJA7q2iZx2AMyP6bBRs8Hj41QU
         LhRi8oOkw7Vu6UZup7HAmKiDOWpKhFrd1nRCPVBR0fLogcctbEsqsimzKXySxFT7my3a
         ul4GPCbwgjwMYxsox2xTSEE/aWqfrVIBq7Wd7JJcJnSnyvhrZrxnTipyALq0ytSr9p2W
         YpLoMk4383TD2Iq3nZlNvEIgq8mRPkDjbay03flOrzzXVSHxGzqVf9FI6hT1XycLu6Mw
         /LwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gqaDSkBZw3mhlwwZioiI+dnXc28fmg/s6Ggveyo3llg=;
        b=hd4MLOFEcLnDru8bFlqXhDSXK7PLij8eh5Hsy8UDNTtHAcO1XPAfz2ebti7ubXXgO4
         wFz0gZNdtOdx1gOxSvr4kiRz1o0Eor3NmrJI2ayYKv83XpecrvTa3AaWbYZesx6tO33/
         V3iIRbQ4FK7WDTmimshZlTxVGurJwcctC6MU6QBYcAw72Zrw4FnQKk+IeslgCOygM0lv
         rsOxr8frrjsmcg9sU0lr0P2f0KpB76n3kZUmBtVT66ZntaA5SrdARf9ej1WwPFgKGqVO
         7XaahFpe8Ip/tNR0H2s/g/IOF0wPFBMlNvMNkjv5o5k/P9SOGSZQ3MxxVD0qpUVVA9lQ
         Xvpg==
X-Gm-Message-State: AE9vXwPVpRjNik5HjHCIa5dP2r3NbHYC0DSZVeG6qqwq2k3SCjDgrraLmDy8IfUSgmMJLg==
X-Received: by 10.66.150.202 with SMTP id uk10mr37412764pab.10.1474892973443;
        Mon, 26 Sep 2016 05:29:33 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ad15sm30939473pac.33.2016.09.26.05.29.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 05:29:32 -0700 (PDT)
Date: Mon, 26 Sep 2016 17:59:27 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	GregKroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6656: Remove
 unneccesary return variable
Message-ID: <20160926122923.GA18805@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609261326010.3508@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Sep 26, 2016 at 01:26:47PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 26 Sep 2016, Greg Kroah-Hartman wrote:
> 
> > On Mon, Sep 26, 2016 at 04:42:03PM +0530, Namrata A Shettar wrote:
> > > Remove uneccessary return variable 'ret'. Return value directly.
> > >
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  drivers/staging/vt6656/card.c | 8 ++------
> > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> > > index 53b469c..33de99a 100644
> > > --- a/drivers/staging/vt6656/card.c
> > > +++ b/drivers/staging/vt6656/card.c
> > > @@ -708,8 +708,6 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
> > >   */
> > >  int vnt_radio_power_off(struct vnt_private *priv)
> > >  {
> > > -	int ret = true;
> > > -
> > >  	switch (priv->rf_type) {
> > >  	case RF_AL2230:
> > >  	case RF_AL2230S:
> > > @@ -728,7 +726,7 @@ int vnt_radio_power_off(struct vnt_private *priv)
> > >
> > >  	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> > >
> > > -	return ret;
> > > +	return true;
> 
> One could also wonder why the return type is int and not bool, but if no
> one cares about the value then it is certainly better to just get rid of
> it.
> 
> julia

I should have changed the return type to 'bool' when I eliminated the
'ret' variable. But I found that returning 'true' or 'false' with return
type 'int' works well too. I would have to change it if I weren't dropping
the return value I suppose.

> 
> > >  }
> >
> > If this function can never "fail", why return anything at all?  Just
> > make the function not return anything, it's not like the return value is
> > even checked.

The description given in the comments for the two functions suggest that
return value be 'true' if success else 'false'. I grepped once to check
if the return value is used anywhere..it isn't, so I'll remove the
return value along with the comment on the return value?

Also, I found another another function 'vnt_get_current_tsf' whose return
value isn't checked anywhere, so can I safely remove the return value
from that function too?

thanks,

namrata

> >
> > >
> > >  /*
> > > @@ -745,8 +743,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
> > >   */
> > >  int vnt_radio_power_on(struct vnt_private *priv)
> > >  {
> > > -	int ret = true;
> > > -
> > >  	vnt_exit_deep_sleep(priv);
> > >
> > >  	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > > @@ -765,7 +761,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
> > >
> > >  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> > >
> > > -	return ret;
> > > +	return true;
> > >  }
> > i
> > Same here.
> >
> > thanks,
> >
> > greg k-h
> >

