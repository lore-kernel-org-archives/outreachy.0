X-GM-THRID: 6671334644654276608
X-Received: by 2002:a2e:90c9:: with SMTP id o9mr7943846ljg.102.1553328088283;
        Sat, 23 Mar 2019 01:01:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5085:: with SMTP id f5ls1119731lfm.13.gmail; Sat, 23 Mar
 2019 01:01:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxGuKXpJPXw0HgQa+8CizScJSYzIuTVKLJo+wt9gINZS+MgvEG731BvEm+DQKwj5kYJLMoT
X-Received: by 2002:a19:ca02:: with SMTP id a2mr7115195lfg.88.1553328087267;
        Sat, 23 Mar 2019 01:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553328087; cv=none;
        d=google.com; s=arc-20160816;
        b=xVcT1ypWDoJGDe+FV9/FYgGH9iUPU01TdVkr0DID7cNoQlpN6TlHymCcF2wSwAKIH1
         Y38Xab6C1SVesKCGch/Yc59sErBc4VoFWaIKViqPCx7ANepaicbWl2kbz+6AUYh1T29v
         eXPyScOO/Ypn7v0aoABLXgb5+VbxcBzkf/o48G6+cE8bpg/LKAxIup+pf2clAiuF7pgy
         zJ4qJsNkRRHRuy2oQo3CyySlAe1A4Lb39vALF8Ueb8MACWx3z+DSmv6CLbDLVtZW6psa
         ePIehmGPjg3L1OX4QDM+BcNCWsGwCSpNWHEeHdsW1D+TV9v0APyro2xZ6EjbXyeyicYZ
         IiQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zy/hFpZolQlUK/SPMeRbnzE8+/0NuInMXWjlb+szrwk=;
        b=EliOBoUfZNVrtU6vGxZNyEDFHfl6gdjiY28gCdl8H9zOpi1WnsQ3m9EhHan601p821
         P4U8S59ShOEei4+308l54vTs/7TSnbUqkGWLpNNipkJb62I14+o35E/rbLZ2SN6pN6QP
         W2qXe20FzMNf15rYLiITNriYaXSMpXjmDhbpYR4JC+oP3CY4UKLrixG2AfiFdylY7gGn
         5Ds7t+SnRVyZqb20BVXZwZX3C2Cwd8dCYy9rQ2F88Qu3hXCojTGPUI1JXSRbITR8AVeb
         FhRlFs2eVrOGWBqO2fkLCcLWm0KbwUBz4L1DsLYii8nRMpWgXUte5S9x/HIkfCSJnpcn
         dYnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y13si329414lfg.4.2019.03.23.01.01.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 01:01:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375394909"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 09:01:26 +0100
Date: Sat, 23 Mar 2019 09:01:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: media: davinci_vpfe: Drop
 macros
In-Reply-To: <20190322225705.GA9278@madhuleo>
Message-ID: <alpine.DEB.2.21.1903230900410.2537@hadrien>
References: <20190322214534.24852-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1903222307510.2433@hadrien> <20190322225705.GA9278@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Madhumthia Prabakaran wrote:

> On Fri, Mar 22, 2019 at 11:13:12PM +0100, Julia Lawall wrote:
> >
> >
> > On Fri, 22 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > Drop macros instead use functions set_bit() and clear_bit directly.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > >
> > > ---
> > > Changes in v3:
> > > - Drop inline functions and use functions
> > >
> > > Changes in v2:
> > > - Convert macros into inline functions
> > > ---
> > >  .../staging/media/davinci_vpfe/dm365_ipipeif.c   | 16 ++++++++--------
> > >  .../staging/media/davinci_vpfe/dm365_ipipeif.h   |  2 --
> > >  2 files changed, 8 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > index 4380e0a8e6dc..81010bc19f0e 100644
> > > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > @@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> > >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> > >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> > >  		case MEDIA_BUS_FMT_Y8_1X8:
> > > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> >
> > I don't think that the arguments are in the right order.  And one of the
> > arguments does not have the right type.  When I try to compile the result
> > of applying this patch, it gives a lot of errors.  You should ensure that
> > a patch doesn't give errors or warnings before submitting it.
>
> Perhaps, in menuconfig, I couldn't able to configure particular driver.
> So, when I build it, it showed no error. I assume, I don't have support
> for that driver.

Do you get a .o file for the .c file you changed?  I did make allyesconfig
and then make drivers/staging/media/davinci_vpfe/dm365_ipipeif.o

julia

>
> thanks
> >
> > julia
> >
> > >  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
> > >  			break;
> > >
> > >  		default:
> > > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > -			RESETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > +			clear_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > >  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
> > >  			break;
> > >  		}
> > > @@ -344,16 +344,16 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> > >  		switch (isif_port_if) {
> > >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> > >  		case MEDIA_BUS_FMT_YUYV10_1X20:
> > > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > >  			break;
> > >
> > >  		case MEDIA_BUS_FMT_YUYV8_2X8:
> > >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> > >  		case MEDIA_BUS_FMT_Y8_1X8:
> > >  		case MEDIA_BUS_FMT_YUYV10_2X10:
> > > -			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > > +			set_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > >  			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
> > >  			break;
> > >
> > > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > > index 4685d64016de..4d126fc871f3 100644
> > > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > > @@ -166,8 +166,6 @@ struct vpfe_ipipeif_device {
> > >  #define IPIPEIF_RSZ_MIN			16
> > >  #define IPIPEIF_RSZ_MAX			112
> > >  #define IPIPEIF_RSZ_CONST		16
> > > -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
> > > -#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
> > >
> > >  #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
> > >  #define IPIPEIF_ADOFS_LSB_SHIFT		5
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322214534.24852-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322225705.GA9278%40madhuleo.
> For more options, visit https://groups.google.com/d/optout.
>

