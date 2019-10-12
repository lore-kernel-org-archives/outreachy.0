X-GM-THRID: 6746714652058583040
X-Received: by 2002:adf:a141:: with SMTP id r1mr16338288wrr.122.1570858609986;
        Fri, 11 Oct 2019 22:36:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:db07:: with SMTP id s7ls3290082wri.6.gmail; Fri, 11 Oct
 2019 22:36:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqySk9n+Hf7X4D7bjptJsr/DlSiS4cb8AGVO5sn/WusPliC7nx3CmRX+tlo2R73LA2TBnSQW
X-Received: by 2002:adf:f0c8:: with SMTP id x8mr1809397wro.206.1570858609169;
        Fri, 11 Oct 2019 22:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570858609; cv=none;
        d=google.com; s=arc-20160816;
        b=D0MrY5/daEMlrvDsg3lSBodlWUyVJdovPGLHJjLGK4Vi8md9AMFUScfcXUoiHsfyZb
         gffhY1/paU+KSXjLCzjjirHwTc1qS62jM1scNJ9jsyfDby/1pCzhnrVimKSv3kEw1MF5
         KvQ+nA4tO5bN8OhDwLgtK1ZAegmNZlEtbMd8NMBCG1y+QGravwIZcPGXiQUbovt41Bn9
         jZbRNuaashOo5O5cC+OTX7fL2iY3sK7W//5Rm93e4K3RlpmIbJICiDaT6uiYu54MUytp
         dZBZNY07OOL40ULDWnVgJlchMJ9GplBWK3vVQR2lmxvyecCHfYzGoXVz1F8Neo3+DXdn
         zwMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8iXO7wkDCPjk31g3Ua52XCzujMRhWNa/5rRJbPL2X24=;
        b=psm2oXCv8J4WjUfAHnMdNJnu/iPnx9b7XjwZG/CIv6xUK6hvMPPb3Ck1cDRPddWcwZ
         uZc5UkIkcnJYXhQFtVv4H7wn51csO7GT+S2y+2ZkjwgZUtWU51CFtrozmDgcnVJW4NMe
         fBBZt4lRNTUxh1mktqLa3E4I9ghH/yMET1qQn9tbRhoplKH5iR3M1RQri5zYD6rtGWCA
         QpFQBdJ7KyOBqxPiOrCsyRlNsQ00gfftr5HE5c/JUGuOGA8LWDMCVk441IzfR2/2gpIi
         s2y1997yDd9q3yB3LwkuiJYnJ/WTEddnWwX5nQv5NQNHG0ZhDSKvtBx1ceDBjWsECWPd
         fgqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q137si913382wme.3.2019.10.11.22.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 22:36:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,286,1566856800"; 
   d="scan'208";a="405848700"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 07:36:48 +0200
Date: Sat, 12 Oct 2019 07:36:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com, 
    laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: media: omap4iss: Fix
 lines ending with "("
In-Reply-To: <20191012005810.4459-1-jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910120735430.2637@hadrien>
References: <20191012005810.4459-1-jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 11 Oct 2019, Jamal Shareef wrote:

> Fix lines ending with open left parenthesis "(".
> Issue found by checkpatch.

This looks better as a patch, but the resulting code does not look so
nice.  Could you introduce a new local variable and pull out the calls to
iss_reg_read?

julia


>
> Also fix checkpatch "alignment should match open
> parenthesis" issue.
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.c | 65 +++++++++++++++++-----------
>  1 file changed, 40 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 1a966cb2f3a6..9d6676b4618a 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -559,9 +559,11 @@ static int iss_reset(struct iss_device *iss)
>  	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
>  		    ISS_HL_SYSCONFIG_SOFTRESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> +							    OMAP4_ISS_MEM_TOP,
> +							    ISS_HL_SYSCONFIG) &
> +						ISS_HL_SYSCONFIG_SOFTRESET),
> +						1000, 10, 100);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISS reset timeout\n");
>  		return -ETIMEDOUT;
> @@ -583,9 +585,11 @@ static int iss_isp_reset(struct iss_device *iss)
>
>  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> -		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> +	timeout =
> +	iss_poll_condition_timeout(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
> +						ISP5_CTRL) &
> +				   ISP5_CTRL_MSTANDBY_WAIT,
> +				   1000000, 1000, 1500);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISP5 standby timeout\n");
>  		return -ETIMEDOUT;
> @@ -595,9 +599,11 @@ static int iss_isp_reset(struct iss_device *iss)
>  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
>  		    ISP5_SYSCONFIG_SOFTRESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
> -		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
> +	timeout =
> +	iss_poll_condition_timeout(!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
> +						  ISP5_SYSCONFIG) &
> +				     ISP5_SYSCONFIG_SOFTRESET),
> +				     1000000, 1000, 1500);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISP5 reset timeout\n");
>  		return -ETIMEDOUT;
> @@ -964,7 +970,9 @@ iss_register_subdev_group(struct iss_device *iss,
>  		}
>
>  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> -				board_info->board_info, NULL);
> +						   board_info->board_info,
> +						   NULL);
> +
>  		if (!subdev) {
>  			dev_err(iss->dev, "Unable to register subdev %s\n",
>  				board_info->board_info->type);
> @@ -1108,33 +1116,40 @@ static int iss_create_links(struct iss_device *iss)
>  	}
>
>  	/* Connect the submodules. */
> -	ret = media_create_pad_link(
> -			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> +				    &iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SINK, 0);
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
> +				    &iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SINK, 0);
> +
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
> -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SOURCE_VP,
> +				    &iss->resizer.subdev.entity,
> +				    RESIZER_PAD_SINK, 0);
> +
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
> -			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SOURCE_VP,
> +				    &iss->ipipe.subdev.entity,
> +				    IPIPE_PAD_SINK, 0);
> +
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
> -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->ipipe.subdev.entity,
> +				    IPIPE_PAD_SOURCE_VP,
> +				    &iss->resizer.subdev.entity,
> +				    RESIZER_PAD_SINK, 0);
> +
>  	if (ret < 0)
>  		return ret;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191012005810.4459-1-jamal.k.shareef%40gmail.com.
>

