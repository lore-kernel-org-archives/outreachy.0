X-GM-THRID: 6671334644654276608
X-Received: by 2002:a17:902:d24:: with SMTP id 33mr15818424plu.246.1553360393298;
        Sat, 23 Mar 2019 09:59:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:227:: with SMTP id 36ls6221296plc.8.gmail; Sat, 23
 Mar 2019 09:59:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyw136HKJANG0Df3e3Y20BdDERegahJ1PB68lBMrFatkXRAjTqbYUbTf2TGeIVn0OQStx9D
X-Received: by 2002:a17:902:8c8b:: with SMTP id t11mr15630282plo.148.1553360392606;
        Sat, 23 Mar 2019 09:59:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553360392; cv=none;
        d=google.com; s=arc-20160816;
        b=fwID5OJdNwrSR33n+vf2LN7yQex+qE539iBndcJKinLRztDxgokXSfTh58aLiOhgse
         H3C5UccDbR+B6XImn0n+km2uuRXGHJ9CwKiB5Qsu6no/Zvfu4DRNBK0iVaRAg3d+SoC4
         7AhHg2f3Hd7XTbjAfPUYbKEzo+W60Oqre6qpGlnUy5zO8tZtXzIzOlxxQOjwdDLuh2qZ
         +3U/kxwl9CJdGhiu4eIyXhZZu9PmMWS3bzt8bb8WNo/vCm9GA5rfLKvlS5QKJ0LPXRUa
         cG/s8WSlfdtgXlAH+tnbkDCZLn9kaP5VP+kqYnspuwi+zMkq7jsqKVaYXQLgHkJoK+gn
         N+7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=3tFP3ygxBrm6i7eH1XSBHWGXv670hhDknrMg4PBd4kI=;
        b=A48ivNLXqhvQPL/iEJwe0Test7oXbMRgTQe7MkjLZl8GSoby5cxRLw7yOWdQjSNup0
         U7ko/kxq+rRaM2eKENH85gUeky/LuK7FKSyF4I3pW74+pnwJfD7Nsy7y7qJwhEaFqfDY
         /Q9u+wJ8pgp/GK0mAGSPJU++pW0W/eCxeC2AY/W/YSCIx6jPXZepEJrltRgR32qikDow
         FmPY/ldiVs4FUyQLwJSjocFm7HZPFnLwRAOhrqaHLn7R+DFnGsdMs/QzKithV+DHSLyd
         g2kTgmG2FlZ7n6B5nn8k3zO/XHw/MVTcoM4ikExkM6xiuE6yf3meqRshndGUxg+ZmA1n
         yJkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HguW6vVP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id k13si543715pll.0.2019.03.23.09.59.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 09:59:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HguW6vVP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x332.google.com with SMTP id e5so4573410otk.12
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 09:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3tFP3ygxBrm6i7eH1XSBHWGXv670hhDknrMg4PBd4kI=;
        b=HguW6vVP7d/iWbIJKYflwvent5lbR9fixFYat9XGxPcW6dn6UgvxMy+AQBi/Llr7D7
         vnbjuPpwcDhmmZBdg8siJm9XyeC8MwZSnbh/Rd1qpmZA8PGXzA2JDnM7cgmqKawPsF4v
         4U7/OWPjD5+/BF/HMZw4FU+x82FrUGWhacKHhg4fWuJGoyRuDfx7PDUUgpBpfZRxSGDW
         rIbU/Qd7f3ewDtFiLIKLOaRW3ePS5kieWSXXFl/vrvJhnABLXO2cKKM58QyIBPARZFXf
         QWBOzZm+NF4WgFuv8hwFNsgeZBlZ22ZHEKPab49TaJ0CSYS5IRlPRtyPGW+ml11+K4hS
         K7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3tFP3ygxBrm6i7eH1XSBHWGXv670hhDknrMg4PBd4kI=;
        b=mYwwsKURnGvyYQvrHdVrjAsnpuKDwr+T5FZMGblcNWh6GCkMMIm42P0DzaSBNp7oOl
         HPJc7KxNto+/HgdkxODAieg+VHCFvT0DguxPpr3tcr0VzoGW1eLEz+HIgoml6F+sK/mB
         6OEnOJvfXMs9HwT9rJifakhv2qeD3e4xkUvs2bb2EyIzdWxkSF0givbu72ds5oZ3MWvt
         bENXn+MmyYnwyjAHTHpCyi58iaLlCFN22iVUC4GYxGMkWSRTyUilt6RSuyG9J2TfPbqA
         1JPQ0Q2ECCQvgLEahGTt6ziroo3B58GY+MIVkkC36qr5+l9BVx9rws2s5ovS8YuWZywj
         clkw==
X-Gm-Message-State: APjAAAUkq1aCgNd7E+CL3/J9mGCcl4cZcgg3B8KHuEGro89fXwinaNIb
	Uf66wuqIAZ3wQRdYKMhaA58=
X-Received: by 2002:a9d:7f0b:: with SMTP id j11mr1767828otq.132.1553360392178;
        Sat, 23 Mar 2019 09:59:52 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:840:8f42:af3b:ec99])
        by smtp.gmail.com with ESMTPSA id a20sm5009578oih.57.2019.03.23.09.59.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 23 Mar 2019 09:59:51 -0700 (PDT)
Date: Sat, 23 Mar 2019 11:59:44 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: media: davinci_vpfe: Drop
 macros
Message-ID: <20190323165749.GB9278@madhuleo>
References: <20190322214534.24852-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903222307510.2433@hadrien>
 <20190322225705.GA9278@madhuleo>
 <alpine.DEB.2.21.1903230900410.2537@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903230900410.2537@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 23, 2019 at 09:01:26AM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 22 Mar 2019, Madhumthia Prabakaran wrote:
> 
> > On Fri, Mar 22, 2019 at 11:13:12PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Fri, 22 Mar 2019, Madhumitha Prabakaran wrote:
> > >
> > > > Drop macros instead use functions set_bit() and clear_bit directly.
> > > >
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > >
> > > > ---
> > > > Changes in v3:
> > > > - Drop inline functions and use functions
> > > >
> > > > Changes in v2:
> > > > - Convert macros into inline functions
> > > > ---
> > > >  .../staging/media/davinci_vpfe/dm365_ipipeif.c   | 16 ++++++++--------
> > > >  .../staging/media/davinci_vpfe/dm365_ipipeif.h   |  2 --
> > > >  2 files changed, 8 insertions(+), 10 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > > index 4380e0a8e6dc..81010bc19f0e 100644
> > > > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > > @@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> > > >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> > > >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> > > >  		case MEDIA_BUS_FMT_Y8_1X8:
> > > > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > >
> > > I don't think that the arguments are in the right order.  And one of the
> > > arguments does not have the right type.  When I try to compile the result
> > > of applying this patch, it gives a lot of errors.  You should ensure that
> > > a patch doesn't give errors or warnings before submitting it.
> >
> > Perhaps, in menuconfig, I couldn't able to configure particular driver.
> > So, when I build it, it showed no error. I assume, I don't have support
> > for that driver.
> 
> Do you get a .o file for the .c file you changed?  I did make allyesconfig
> and then make drivers/staging/media/davinci_vpfe/dm365_ipipeif.o
> 
> julia

I didn't get the .o file. I will fix and resend the patch. 

thanks

> 
> >
> > thanks
> > >
> > > julia
> > >
> > > >  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
> > > >  			break;
> > > >
> > > >  		default:
> > > > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > > -			RESETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > > +			clear_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > >  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
> > > >  			break;
> > > >  		}
> > > > @@ -344,16 +344,16 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> > > >  		switch (isif_port_if) {
> > > >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> > > >  		case MEDIA_BUS_FMT_YUYV10_1X20:
> > > > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > >  			break;
> > > >
> > > >  		case MEDIA_BUS_FMT_YUYV8_2X8:
> > > >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> > > >  		case MEDIA_BUS_FMT_Y8_1X8:
> > > >  		case MEDIA_BUS_FMT_YUYV10_2X10:
> > > > -			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > > +			set_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > >  			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
> > > >  			break;
> > > >
> > > > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > > > index 4685d64016de..4d126fc871f3 100644
> > > > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > > > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > > > @@ -166,8 +166,6 @@ struct vpfe_ipipeif_device {
> > > >  #define IPIPEIF_RSZ_MIN			16
> > > >  #define IPIPEIF_RSZ_MAX			112
> > > >  #define IPIPEIF_RSZ_CONST		16
> > > > -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
> > > > -#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
> > > >
> > > >  #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
> > > >  #define IPIPEIF_ADOFS_LSB_SHIFT		5
> > > > --
> > > > 2.17.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322214534.24852-1-madhumithabiw%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322225705.GA9278%40madhuleo.
> > For more options, visit https://groups.google.com/d/optout.
> >

