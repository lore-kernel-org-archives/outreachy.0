X-GM-THRID: 6334597152345423872
X-Received: by 10.66.80.3 with SMTP id n3mr4781143pax.109.1474907313565;
        Mon, 26 Sep 2016 09:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.106.72 with SMTP id l69ls325338itc.16.gmail; Mon, 26 Sep
 2016 09:28:30 -0700 (PDT)
X-Received: by 10.66.199.37 with SMTP id jh5mr6472406pac.141.1474907310682;
        Mon, 26 Sep 2016 09:28:30 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id f12si4339686pfk.0.2016.09.26.09.28.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 09:28:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so8995092pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 09:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6Xqt9ixQgPCqVHsi34Jp8bDR6E6sgnE5Z85us/1AWgU=;
        b=AMUr/F4lu7IG7F2qJXKuM5El94PNl0aExF48C0jG0DZ8wjYyZh7V6tvT7wP8UCWQg8
         5y61ICi3baFhsC0gXNsM+LkH/YP8NWt5u6GJ8biL430v5QTLr7s/omfQhiwKrzsH8bDA
         vqSaE7HCkRzzSTCJ4ZBFqJg26pg7+mtEEYH0bL4sJV8DqVi1PV3C40+8BEbfALIvpx2y
         UcwW2PEXe4uo2FNCM/JgSgEZREnMcsGPZWiH/SqX7AV0hZWbqeO6KntBC3DV2AO86lEr
         pFmvV4zjOnf5NxhTzTUzcauXRlfmQkrbtbYK6aJzh8nPotkJU7CW36zatoJSDLtT7pXT
         DaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6Xqt9ixQgPCqVHsi34Jp8bDR6E6sgnE5Z85us/1AWgU=;
        b=I2jMPV5HiMJqK3dUFxgXh8mzMTMPvrveih3otkKn2fXMI1hes2Qrup+TiZR3fAjW2z
         ebjO/xgC4qR1k8neJQ8Dzqp7lMzPhY+gO9GKSr6j35M+yNpSN16RtWJQEECDBjLGTtib
         SdUE0mR/A2QEy3+WxTUk5W+wpZzOw9GHNngOa9QRQq6pUqcoloWdLtOdXsX4qCFMkO17
         e1VjvcBJnw2ZSk4DesbbmNz3yYfwHYM1/rnfkVMR5rBW1uijjfXZqzl6tZ4/WxKvBmgG
         jPHkL1MUp36ONmIRRTb7WvX3s/ve5ukqoujvpDvKWMBMUFjsMkItE+TegE7k258S6Uo/
         aDIg==
X-Gm-Message-State: AE9vXwNY30P6+M8lpk1ls8CezkSBVr0G/tFeay5gvWV971JiuqT+RptAORfAu7fVXeIgig==
X-Received: by 10.66.77.170 with SMTP id t10mr40249156paw.105.1474907310248;
        Mon, 26 Sep 2016 09:28:30 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id z12sm32283269pfk.53.2016.09.26.09.28.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 09:28:29 -0700 (PDT)
Date: Mon, 26 Sep 2016 21:58:22 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6656: Remove
 unneccesary return variable
Message-ID: <20160926162818.GA4292@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160926122923.GA18805@namrata-HP-Pavilion-g6-Notebook-PC>
 <alpine.DEB.2.10.1609261630010.3199@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609261630010.3199@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Sep 26, 2016 at 04:31:11PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 26 Sep 2016, Namrata A Shettar wrote:
> 
> > On Mon, Sep 26, 2016 at 01:26:47PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Mon, 26 Sep 2016, Greg Kroah-Hartman wrote:
> > >
> > > > On Mon, Sep 26, 2016 at 04:42:03PM +0530, Namrata A Shettar wrote:
> > > > > Remove uneccessary return variable 'ret'. Return value directly.
> > > > >
> > > > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > > > ---
> > > > >  drivers/staging/vt6656/card.c | 8 ++------
> > > > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> > > > > index 53b469c..33de99a 100644
> > > > > --- a/drivers/staging/vt6656/card.c
> > > > > +++ b/drivers/staging/vt6656/card.c
> > > > > @@ -708,8 +708,6 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
> > > > >   */
> > > > >  int vnt_radio_power_off(struct vnt_private *priv)
> > > > >  {
> > > > > -	int ret = true;
> > > > > -
> > > > >  	switch (priv->rf_type) {
> > > > >  	case RF_AL2230:
> > > > >  	case RF_AL2230S:
> > > > > @@ -728,7 +726,7 @@ int vnt_radio_power_off(struct vnt_private *priv)
> > > > >
> > > > >  	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> > > > >
> > > > > -	return ret;
> > > > > +	return true;
> > >
> > > One could also wonder why the return type is int and not bool, but if no
> > > one cares about the value then it is certainly better to just get rid of
> > > it.
> > >
> > > julia
> >
> > I should have changed the return type to 'bool' when I eliminated the
> > 'ret' variable. But I found that returning 'true' or 'false' with return
> > type 'int' works well too. I would have to change it if I weren't dropping
> > the return value I suppose.
> >
> > >
> > > > >  }
> > > >
> > > > If this function can never "fail", why return anything at all?  Just
> > > > make the function not return anything, it's not like the return value is
> > > > even checked.
> >
> > The description given in the comments for the two functions suggest that
> > return value be 'true' if success else 'false'. I grepped once to check
> > if the return value is used anywhere..it isn't, so I'll remove the
> > return value along with the comment on the return value?
> >
> > Also, I found another another function 'vnt_get_current_tsf' whose return
> > value isn't checked anywhere, so can I safely remove the return value
> > from that function too?
> 
> As a general principle, it should be fine.  The only issue is to be sure
> that the function is not stored in a structure field that has some
> particular type.  The point is just that you have to check all of the
> references, and not just teh references that have the form of a function
> call.
> 
> julia
> 

Alright. So I'll remove the return values of all these functions and the
comments and resend the patch?. Hope that is what was meant.

thanks,

namrata
> >
> > > >
> > > > >
> > > > >  /*
> > > > > @@ -745,8 +743,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
> > > > >   */
> > > > >  int vnt_radio_power_on(struct vnt_private *priv)
> > > > >  {
> > > > > -	int ret = true;
> > > > > -
> > > > >  	vnt_exit_deep_sleep(priv);
> > > > >
> > > > >  	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > > > > @@ -765,7 +761,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
> > > > >
> > > > >  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> > > > >
> > > > > -	return ret;
> > > > > +	return true;
> > > > >  }
> > > > i
> > > > Same here.
> > > >
> > > > thanks,
> > > >
> > > > greg k-h


