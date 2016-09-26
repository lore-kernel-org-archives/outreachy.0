X-GM-THRID: 6334597152345423872
X-Received: by 10.25.228.71 with SMTP id b68mr1131629lfh.0.1474907357072;
        Mon, 26 Sep 2016 09:29:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.147 with SMTP id g19ls2166272lji.38.gmail; Mon, 26 Sep
 2016 09:29:16 -0700 (PDT)
X-Received: by 10.25.199.147 with SMTP id x141mr1123178lff.12.1474907356322;
        Mon, 26 Sep 2016 09:29:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si674095wmr.2.2016.09.26.09.29.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 09:29:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,400,1470693600"; 
   d="scan'208";a="238326955"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Sep 2016 18:29:15 +0200
Date: Mon, 26 Sep 2016 18:29:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Forest Bond <forest@alittletooquiet.net>, 
    Rithvik Patibandla <rithvikp98@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6656: Remove unneccesary
 return variable
In-Reply-To: <20160926162818.GA4292@namrata-HP-Pavilion-g6-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609261828560.3199@hadrien>
References: <20160926122923.GA18805@namrata-HP-Pavilion-g6-Notebook-PC> <alpine.DEB.2.10.1609261630010.3199@hadrien> <20160926162818.GA4292@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 26 Sep 2016, Namrata A Shettar wrote:

> On Mon, Sep 26, 2016 at 04:31:11PM +0200, Julia Lawall wrote:
> >
> >
> > On Mon, 26 Sep 2016, Namrata A Shettar wrote:
> >
> > > On Mon, Sep 26, 2016 at 01:26:47PM +0200, Julia Lawall wrote:
> > > >
> > > >
> > > > On Mon, 26 Sep 2016, Greg Kroah-Hartman wrote:
> > > >
> > > > > On Mon, Sep 26, 2016 at 04:42:03PM +0530, Namrata A Shettar wrote:
> > > > > > Remove uneccessary return variable 'ret'. Return value directly.
> > > > > >
> > > > > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/vt6656/card.c | 8 ++------
> > > > > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> > > > > > index 53b469c..33de99a 100644
> > > > > > --- a/drivers/staging/vt6656/card.c
> > > > > > +++ b/drivers/staging/vt6656/card.c
> > > > > > @@ -708,8 +708,6 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
> > > > > >   */
> > > > > >  int vnt_radio_power_off(struct vnt_private *priv)
> > > > > >  {
> > > > > > -	int ret = true;
> > > > > > -
> > > > > >  	switch (priv->rf_type) {
> > > > > >  	case RF_AL2230:
> > > > > >  	case RF_AL2230S:
> > > > > > @@ -728,7 +726,7 @@ int vnt_radio_power_off(struct vnt_private *priv)
> > > > > >
> > > > > >  	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> > > > > >
> > > > > > -	return ret;
> > > > > > +	return true;
> > > >
> > > > One could also wonder why the return type is int and not bool, but if no
> > > > one cares about the value then it is certainly better to just get rid of
> > > > it.
> > > >
> > > > julia
> > >
> > > I should have changed the return type to 'bool' when I eliminated the
> > > 'ret' variable. But I found that returning 'true' or 'false' with return
> > > type 'int' works well too. I would have to change it if I weren't dropping
> > > the return value I suppose.
> > >
> > > >
> > > > > >  }
> > > > >
> > > > > If this function can never "fail", why return anything at all?  Just
> > > > > make the function not return anything, it's not like the return value is
> > > > > even checked.
> > >
> > > The description given in the comments for the two functions suggest that
> > > return value be 'true' if success else 'false'. I grepped once to check
> > > if the return value is used anywhere..it isn't, so I'll remove the
> > > return value along with the comment on the return value?
> > >
> > > Also, I found another another function 'vnt_get_current_tsf' whose return
> > > value isn't checked anywhere, so can I safely remove the return value
> > > from that function too?
> >
> > As a general principle, it should be fine.  The only issue is to be sure
> > that the function is not stored in a structure field that has some
> > particular type.  The point is just that you have to check all of the
> > references, and not just teh references that have the form of a function
> > call.
> >
> > julia
> >
>
> Alright. So I'll remove the return values of all these functions and the
> comments and resend the patch?. Hope that is what was meant.

Seems reasonable.

julia


>
> thanks,
>
> namrata
> > >
> > > > >
> > > > > >
> > > > > >  /*
> > > > > > @@ -745,8 +743,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
> > > > > >   */
> > > > > >  int vnt_radio_power_on(struct vnt_private *priv)
> > > > > >  {
> > > > > > -	int ret = true;
> > > > > > -
> > > > > >  	vnt_exit_deep_sleep(priv);
> > > > > >
> > > > > >  	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > > > > > @@ -765,7 +761,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
> > > > > >
> > > > > >  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> > > > > >
> > > > > > -	return ret;
> > > > > > +	return true;
> > > > > >  }
> > > > > i
> > > > > Same here.
> > > > >
> > > > > thanks,
> > > > >
> > > > > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160926162818.GA4292%40namrata-HP-Pavilion-g6-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

