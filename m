X-GM-THRID: 6810510356795883520
X-Received: by 2002:adf:9d49:: with SMTP id o9mr11814321wre.290.1585978393704;
        Fri, 03 Apr 2020 22:33:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dc86:: with SMTP id r6ls2328334wrj.5.gmail; Fri, 03 Apr
 2020 22:33:12 -0700 (PDT)
X-Google-Smtp-Source: APiQypIhKGmNpGXIZN8vzyzTVK5XXHf67zlGeAaFSIAoCXJigTNkMWgafNKu/o5NRE238T9C6CBF
X-Received: by 2002:adf:a35a:: with SMTP id d26mr13037113wrb.185.1585978392332;
        Fri, 03 Apr 2020 22:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585978392; cv=none;
        d=google.com; s=arc-20160816;
        b=0i4b49y7JMUzEXjp+6N4+om5QOyyQCktYJ+rfn2F0KzwvlBAM3vbjqvvtugUDPh+dQ
         qJcOEvoKx6nVorQm4+x/DnUmefOBwcCGGcDMNRh4OSG7YuuikCU1VepiHWoTEj9AFIE7
         2YkRPK7uuhuIsNfFUozWK4At4+dvZ9Cb2Ro32j3M/zCcMy6ouCqgcyVAZt6QyZCeaf8a
         L4TWwZx9y8wbh4qfKgP9EPRawNQv3dG13rByr7dg6hpVzXxtzJVfpduJd5M4eQ0vkySp
         YFqxEBZyCJJUhW8THYIVKGLxiHRDC6x0zVmtXlSwu9Fa95xBDX+PpQCAh4tHZvoFTitO
         mNkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=2+oKRcPZHxkfIkP4AUWqiQPlyvpomjdi/0UKgF056LA=;
        b=rpgPWDVjjJnWke96ZJbGghIfi0yghpns/vDSq6syPjIpaeacm4Xo+bET9z0+LIVqI9
         G/JRvt/oA3jQZLZY6ki+AYQ9djZAOM4Z5f1Gg4g7+pU4sk7rJNChjglPhDYsQzeN48Z6
         wxkFrY6cx60NK7H5TmurZVV+V51tLYNg6+QHWYZn5rbuziA+dL9azAcloic7YWKMGelG
         VkYCunvz49flZJoj/DbSvHZD2WOmdWRE5QWTtl/HVBYPGsIcbaYJoB4YcsaCptMsupjH
         dyBHI3h6vfCl/EWHryrwP2clK25rImRVgI7BDgSIOb+wOr0h6wHUj8FcWnwzECtULD2G
         y2AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cJW/iWM4";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z84si560295wmc.2.2020.04.03.22.33.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 22:33:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cJW/iWM4";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id z14so3590004wmf.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Apr 2020 22:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2+oKRcPZHxkfIkP4AUWqiQPlyvpomjdi/0UKgF056LA=;
        b=cJW/iWM4hsE1teVHq9bpj19KjWAGRI12yHdt0V2T6egHPbydRPiqKPwxyAF5v50QFW
         pSlVVdkEmUpG0DtLyVTCr/qIAS7Du8/THRVg1Bt3x67zw9llau0s3OKG1opc6SBMJDFm
         Y2wezE8Gfnb5Y8E0xF7EyMcOgsr2Kb31+GhWgQZVyYANyYdvCC1vLImPsSwoUHbMziu3
         GXcaGXO0HPjPddmmlpp3rs4NslMQLgAoHHJGixtPWMtV1eHsv7yvVMmDHns7L9zEIgBl
         +n0zbZAhiG0QLMYP4qy2iclrTdBy8bR84SrEs63+9wnQh2dLiMVe+yJMVokTw1ntvLoY
         zG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2+oKRcPZHxkfIkP4AUWqiQPlyvpomjdi/0UKgF056LA=;
        b=Y5HJw2cyqZu/j9qVitFq87+rwjQ9uVRpmFxgybICtH1zWK2qvSG59qikhmdlvLmMqN
         s1GoHHPVvN3aEIqZ0v/+xzNG4oFfGlrvl5xs/JdkU1tzMLcVgFf9Ob44IgtKl6CT5Wpf
         lKOX2RDdiDYpJrcU4Z+/iv/tl2laUvcuknFxtIVlNqk5tEiwuRVTC2tEsa1BT4qLoamd
         okrYNEhKzeowvUSDPB9UWYUIyH5JxM1Fi3XfPhYMYAw6S5SI/fk5bcGDlu5RenFLyJ6C
         IlyrEPkuDkAggpwHX1ISfGFDn/+nd34RDB7VFPffm26P8ak8ZHiuHBsvpRrj9iKI6K0O
         kBrg==
X-Gm-Message-State: AGi0PuZZACP77Wmib5060GkvkEheppeexeE85wkr4GTcy+GOUWzpNxqn
	xxsZ2mO9AcwOA1j7ysyThLI3x8w87VM=
X-Received: by 2002:a1c:2484:: with SMTP id k126mr12830453wmk.52.1585978391835;
        Fri, 03 Apr 2020 22:33:11 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id o145sm14753452wme.42.2020.04.03.22.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 22:33:11 -0700 (PDT)
Message-ID: <bace205763db970618b1d1541133826a874b1e21.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: omap4iss: Use
 BIT() macro
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  outreachy-kernel@googlegroups.com
Date: Sat, 04 Apr 2020 01:33:09 -0400
In-Reply-To: <20200401045531.5de93729@elisabeth>
References: <20200331225817.14834-1-jane.pnx9@gmail.com>
	 <20200401045531.5de93729@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-04-01 at 04:55 +0200, Stefano Brivio wrote:
> On Tue, 31 Mar 2020 18:58:17 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
> 
> > Use BIT() across the driver, since bit masking
> > is better be done using the BIT macro.
> > Change is done using this coccinelle script:
> > 
> > @bit@
> > @@
> > BIT(...)
> > 
> > @depends on bit@
> > expression E;
> > constant c;
> > @@
> > 
> > (
> > -(1 << E)
> > +BIT(E)
> > |
> > -(1 << c)
> > +BIT(c)
> > )
> > 
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> > Change in v2:
> > - removed unneeded parentheses around BIT,
> >   they are not needed.
> > - reverted two hunks in iss_reg.h, using BIT
> >   in both places makes the code confusing to
> >   understand.
> > Changes suggested by Stefano Brivio.
> > 
> >  drivers/staging/media/omap4iss/iss.c        |  4 +-
> >  drivers/staging/media/omap4iss/iss.h        | 22 +++----
> >  drivers/staging/media/omap4iss/iss_csiphy.c |  6 +-
> >  drivers/staging/media/omap4iss/iss_regs.h   | 72 ++++++++++-----------
> >  drivers/staging/media/omap4iss/iss_video.h  | 16 ++---
> >  5 files changed, 60 insertions(+), 60 deletions(-)
> > 
> > diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> > index 6fb60b58447a..2dc5c1bb34f9 100644
> > --- a/drivers/staging/media/omap4iss/iss.c
> > +++ b/drivers/staging/media/omap4iss/iss.c
> > @@ -243,7 +243,7 @@ static void iss_isr_dbg(struct iss_device *iss, u32 irqstatus)
> >  	dev_dbg(iss->dev, "ISS IRQ: ");
> > 
> >  	for (i = 0; i < ARRAY_SIZE(name); i++) {
> > -		if ((1 << i) & irqstatus)
> > +		if (BIT(i) & irqstatus)
> >  			pr_cont("%s ", name[i]);
> >  	}
> >  	pr_cont("\n");
> 
> Fine.
> 
> > @@ -290,7 +290,7 @@ static void iss_isp_isr_dbg(struct iss_device *iss, u32 irqstatus)
> >  	dev_dbg(iss->dev, "ISP IRQ: ");
> > 
> >  	for (i = 0; i < ARRAY_SIZE(name); i++) {
> > -		if ((1 << i) & irqstatus)
> > +		if (BIT(i) & irqstatus)
> >  			pr_cont("%s ", name[i]);
> >  	}
> >  	pr_cont("\n");
> 
> Fine.
> 
> > diff --git a/drivers/staging/media/omap4iss/iss.h b/drivers/staging/media/omap4iss/iss.h
> > index b88f9529683c..70371461b5be 100644
> > --- a/drivers/staging/media/omap4iss/iss.h
> > +++ b/drivers/staging/media/omap4iss/iss.h
> > @@ -50,20 +50,20 @@ enum iss_mem_resources {
> >  };
> > 
> >  enum iss_subclk_resource {
> > -	OMAP4_ISS_SUBCLK_SIMCOP		= (1 << 0),
> > -	OMAP4_ISS_SUBCLK_ISP		= (1 << 1),
> > -	OMAP4_ISS_SUBCLK_CSI2_A		= (1 << 2),
> > -	OMAP4_ISS_SUBCLK_CSI2_B		= (1 << 3),
> > -	OMAP4_ISS_SUBCLK_CCP2		= (1 << 4),
> > +	OMAP4_ISS_SUBCLK_SIMCOP		= BIT(0),
> > +	OMAP4_ISS_SUBCLK_ISP		= BIT(1),
> > +	OMAP4_ISS_SUBCLK_CSI2_A		= BIT(2),
> > +	OMAP4_ISS_SUBCLK_CSI2_B		= BIT(3),
> > +	OMAP4_ISS_SUBCLK_CCP2		= BIT(4),
> >  };
> > 
> >  enum iss_isp_subclk_resource {
> > -	OMAP4_ISS_ISP_SUBCLK_BL		= (1 << 0),
> > -	OMAP4_ISS_ISP_SUBCLK_ISIF	= (1 << 1),
> > -	OMAP4_ISS_ISP_SUBCLK_H3A	= (1 << 2),
> > -	OMAP4_ISS_ISP_SUBCLK_RSZ	= (1 << 3),
> > -	OMAP4_ISS_ISP_SUBCLK_IPIPE	= (1 << 4),
> > -	OMAP4_ISS_ISP_SUBCLK_IPIPEIF	= (1 << 5),
> > +	OMAP4_ISS_ISP_SUBCLK_BL		= BIT(0),
> > +	OMAP4_ISS_ISP_SUBCLK_ISIF	= BIT(1),
> > +	OMAP4_ISS_ISP_SUBCLK_H3A	= BIT(2),
> > +	OMAP4_ISS_ISP_SUBCLK_RSZ	= BIT(3),
> > +	OMAP4_ISS_ISP_SUBCLK_IPIPE	= BIT(4),
> > +	OMAP4_ISS_ISP_SUBCLK_IPIPEIF	= BIT(5),
> >  };
> > 
> >  /*
> 
> Nice.
> 
> > diff --git a/drivers/staging/media/omap4iss/iss_csiphy.c b/drivers/staging/media/omap4iss/iss_csiphy.c
> > index 96f2ce045138..e2cad0a31098 100644
> > --- a/drivers/staging/media/omap4iss/iss_csiphy.c
> > +++ b/drivers/staging/media/omap4iss/iss_csiphy.c
> > @@ -179,10 +179,10 @@ int omap4iss_csiphy_config(struct iss_device *iss,
> >  		    lanes->data[i].pos > (csi2->phy->max_data_lanes + 1))
> >  			return -EINVAL;
> > 
> > -		if (used_lanes & (1 << lanes->data[i].pos))
> > +		if (used_lanes & BIT(lanes->data[i].pos))
> >  			return -EINVAL;
> > 
> > -		used_lanes |= 1 << lanes->data[i].pos;
> > +		used_lanes |= BIT(lanes->data[i].pos);
> >  		csi2->phy->used_data_lanes++;
> >  	}
> > 
> > @@ -190,7 +190,7 @@ int omap4iss_csiphy_config(struct iss_device *iss,
> >  	    lanes->clk.pos > (csi2->phy->max_data_lanes + 1))
> >  		return -EINVAL;
> > 
> > -	if (lanes->clk.pos == 0 || used_lanes & (1 << lanes->clk.pos))
> > +	if (lanes->clk.pos == 0 || used_lanes & BIT(lanes->clk.pos))
> >  		return -EINVAL;
> > 
> >  	csi2_ddrclk_khz = pipe->external_rate / 1000
> 
> So far so good.
> 
> > diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> > index 09a7375c89ac..85c6fefeb13a 100644
> > --- a/drivers/staging/media/omap4iss/iss_regs.h
> > +++ b/drivers/staging/media/omap4iss/iss_regs.h
> > @@ -93,10 +93,10 @@
> >  #define CSI2_SYSCONFIG					0x10
> >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> > -#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> > +#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
> 

Hi Stefano,
honestly i'am confused about how is there a difference between BIT(x)
and (1 << x)

 So i'am just going to interpret this hunk as i understand it and
please correct me.

#define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
	shift binary 3 by 12: "write 3 starting at bit 12"
		0011 ---- ---- ----		

#define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
	"write 0 at bit 12"
		0000 ---- ---- ----

#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
	"shift binary 1 by 12": "write 1 at bit 12"
		0001 ---- ---- ----
#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
	"shift binary 1 by 12": _isn't this what BIT() does?_
		0001 ---- ---- ----

now i dont understand what you meant by "That doesn't make bit 12 any
special", does that assume that iam wrong with what BIT() is defined
for? 

#define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
	"shift binary 2 by 12": write 2 at bit 12
		0010 ---- ---- ----
 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

for your previous explanation: _quoting_ :

1. #define ISS_CTRL                                        0x80
        "we have a register at 0x80"
        https://en.wikipedia.org/wiki/Hardware_register

2. how big is it? Datasheet tells you, but before you even look for it:
   #define ISS_CTRL_CLK_DIV_MASK                          (3 << 4)
        "at least 7 bits"

   #define ISS_CLKCTRL                                     0x84
   #define ISS_CLKCTRL_VPORT2_CLK                          BIT(30)
        "probably they are all the same size, might be 32 bits"

3. picture it:
        |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
   (might be bigger, not too important)

4. #define ISS_CTRL_INPUT_SEL_MASK                      (3 << 2)
        "these bits define the input selection [whatever it is]":

        |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
                                       ^^     ^^  | << shift by 2
                                       2^1 + 2^0 = 3
                                                   ^----(3 << 2)


5. #define ISS_CTRL_INPUT_SEL_CSI2A                     (0 << 2)
        "to select input CSI2A [whatever it is]", we need:
        |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
                                       ^^     ^^  | << shift by 2
                                        0  +  0   = 0
                                                    ^----(0 << 2)


   #define ISS_CTRL_INPUT_SEL_CSI2B                     (1 << 2)
        "to select input CSI2B [whatever it is]", we need:
        |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  1 _|_ b1 _|_ b0 _|
                                       ^^     ^^  | << shift by 2
                                        0  + 2^0  = 1
                                                    ^----(1 << 2)


Now, that's how the current #defines work. I think they are
actually intuitive (you could use the GENMASK() macro, but I think
the difference is not that big).

With your change:

5. #define ISS_CTRL_INPUT_SEL_CSI2A                     (0 << 2)
        "to select input CSI2A [whatever it is]", we need:
        |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
                                       ^^     ^^  | << shift by 2
                                        0  +  0  =  0
                                                    ^----(0 << 2)


   #define ISS_CTRL_INPUT_SEL_CSI2B                     BIT(2)
        "to select input CSI2B [whatever it is]", we need:
        |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_  1 _|_ b1 _|_ b0 _|
                                               ^
                                               ' this bit set.
                What, why? How is this related with the rest?
++++
now right at this point i got an overlapped definition of BIT()
this expansion/explanation of BIT(2) in my mind got translated to:

     SetBit(register,bit) => (register|=(1<<bit))
NOT
     shift binary 1 by 2
++++

Basically i forgot about this patch and i'am more into clearing this
confusion because i'am definitely missing something thats very basic
and probably have a wrong understanding of something.

Thank You,
Sam


> Nope (and many other snippets like this below). This is a region
> starting at bit 12. You can write 0, 1, 2, or 3. That doesn't make bit
> number 12 any special.
> 
> It's a 1 written into this region starting at bit 12. It's not bit 12.
> For the compiler it's the same. For humans, and for hardware design,
> it's definitely not.
> 
> Now, going back to your "somehow" understanding my table... why
> "somehow"? :) Please tell me what's not clear, instead.
> 



