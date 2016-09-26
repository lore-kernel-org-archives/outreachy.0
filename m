X-GM-THRID: 6334597152345423872
X-Received: by 10.28.35.203 with SMTP id j194mr786574wmj.20.1474889211850;
        Mon, 26 Sep 2016 04:26:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.69 with SMTP id 66ls1430341ljj.3.gmail; Mon, 26 Sep 2016
 04:26:51 -0700 (PDT)
X-Received: by 10.25.199.147 with SMTP id x141mr1022148lff.12.1474889211181;
        Mon, 26 Sep 2016 04:26:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si691399wmd.1.2016.09.26.04.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 04:26:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,399,1470693600"; 
   d="scan'208";a="194661962"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Sep 2016 13:26:50 +0200
Date: Mon, 26 Sep 2016 13:26:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
cc: Namrata A Shettar <namrataashettar@gmail.com>, 
    Forest Bond <forest@alittletooquiet.net>, 
    Rithvik Patibandla <rithvikp98@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6656: Remove unneccesary
 return variable
In-Reply-To: <20160926112353.GA4505@kroah.com>
Message-ID: <alpine.DEB.2.10.1609261326010.3508@hadrien>
References: <20160926111158.GA9984@namrata-HP-Pavilion-g6-Notebook-PC> <20160926112353.GA4505@kroah.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 26 Sep 2016, Greg Kroah-Hartman wrote:

> On Mon, Sep 26, 2016 at 04:42:03PM +0530, Namrata A Shettar wrote:
> > Remove uneccessary return variable 'ret'. Return value directly.
> >
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/vt6656/card.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> > index 53b469c..33de99a 100644
> > --- a/drivers/staging/vt6656/card.c
> > +++ b/drivers/staging/vt6656/card.c
> > @@ -708,8 +708,6 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
> >   */
> >  int vnt_radio_power_off(struct vnt_private *priv)
> >  {
> > -	int ret = true;
> > -
> >  	switch (priv->rf_type) {
> >  	case RF_AL2230:
> >  	case RF_AL2230S:
> > @@ -728,7 +726,7 @@ int vnt_radio_power_off(struct vnt_private *priv)
> >
> >  	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> >
> > -	return ret;
> > +	return true;

One could also wonder why the return type is int and not bool, but if no
one cares about the value then it is certainly better to just get rid of
it.

julia

> >  }
>
> If this function can never "fail", why return anything at all?  Just
> make the function not return anything, it's not like the return value is
> even checked.
>
> >
> >  /*
> > @@ -745,8 +743,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
> >   */
> >  int vnt_radio_power_on(struct vnt_private *priv)
> >  {
> > -	int ret = true;
> > -
> >  	vnt_exit_deep_sleep(priv);
> >
> >  	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > @@ -765,7 +761,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
> >
> >  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> >
> > -	return ret;
> > +	return true;
> >  }
> i
> Same here.
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160926112353.GA4505%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

