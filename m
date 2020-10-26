X-GM-THRID: 6883028084998537216
X-Received: by 2002:a17:902:bb86:b029:d5:28ac:8800 with SMTP id m6-20020a170902bb86b02900d528ac8800mr10134584pls.27.1603684827159;
        Sun, 25 Oct 2020 21:00:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls2510801pgn.8.gmail; Sun, 25 Oct
 2020 21:00:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZ5Jq/pwOLvUFIrZneRwMBmXJgqvdZHkwIr4FpSFegBxX/9YAMp01c6wbye4g6Sx7CNGED
X-Received: by 2002:a63:f20:: with SMTP id e32mr15210015pgl.61.1603684825629;
        Sun, 25 Oct 2020 21:00:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603684825; cv=none;
        d=google.com; s=arc-20160816;
        b=v5Aa67cPt09h0rJbCOjhfw5zUtpNEi0f7YtYVRNRFN4cZc/m3ktpbtGinu+3a6vqhY
         FQ4DZqxK1AJ2IHsHrtirDZemO+XHYR0AeXngFvwdSY6s9U1TbJFILjjpz0sTi/qIp0nK
         rc+42VVyioevn4LXrYbK8TApHjBXojXYpUejSIwGFodBMi1XISBKZA7nr+9yVxq6rqU1
         QUn6atbSbUiqOkFY0dRIIzer8pXY58jiRLh992EETlibnPre6h7FA6IWr529wxRg50lo
         L2+fMUHqWmLlv/HfqqUYQLlUeCK53UrXquspyIbB0dpMEo51ryFfPCCCYAFRTV6uPoF/
         ZIoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=kVgDhO+taFxq8t0BEttCnWGSdkvbHL8UkilhT38HKvE=;
        b=rufPCTeAjaIdKfzgaotv5kAXQUcUZjvUbiqkoISOWuNhr0CDtUPfRyJbKyFsWkC+1y
         0WwGnkTHTQdDNZ4SXeGnodH1mzvKxRWzp5eZghGwrGzAhHJv0ZtAl9oEArw9lJPcx/RE
         9HmoRCm//LpmoHc5Hx2PyCUrXj9IoOZlX4EmJvYrwz1nMCnh7YXkf9JBkONvNir6Ps5E
         hg+L3si8oaxDg/xUYqPElCFHTitIpFP5tLsm7seBb5MNDtp0L2jkFeEw80p3v0OSnf37
         sINTjP/byolzmZSjm/4vbnk8chk1VwLA9G66jpJI6q8KhS0QU8FBIo+Xnm3c2j+ESPwV
         4zxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m2uVth1f;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id cl2si606612pjb.0.2020.10.25.21.00.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 21:00:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m2uVth1f;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 126so5039176pfu.4
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2020 21:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=kVgDhO+taFxq8t0BEttCnWGSdkvbHL8UkilhT38HKvE=;
        b=m2uVth1fXM21zwTKn1Ec0oTOM0cCzhuuFEvzo4StIgPSNeOtntNMqm27OcWUVdiA1m
         0/yZ8VtMgSlDk5vwnkKTRUrrKXgsQgdT2Uu4FNo883nlWqN4Fvy9s0EAXhSF1fYBVX+8
         Aq7Gfq+riF+VyZoGFG+8Nu6n44R0XSLAr0YP8uMxX7opVXB95PC9EPcxbD++8PC1U8R1
         i/IaDtftPdyKPIR7yW87IreAiTnVOaN0zPlce8rKrmKAQuBHFP9S4BrS1KKNikwM1sSC
         MFXlnILiPFCO1DmkiULfEBWbSspMsVXEVjtKVlF2Nvh/rTRxpDwTiQofJN+Dl62IHAZl
         aemA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kVgDhO+taFxq8t0BEttCnWGSdkvbHL8UkilhT38HKvE=;
        b=mvxnw520vlMmvtRLtnVPWYg+JBFmNjQKKYkRgUWIOyW39XwRGJ12GFJM1Gz6iIBWe+
         oR7NvjUpdHhXqXshNXtvWQjl8UJKlMAXpyMeFEN/dNnYkX4aEIADJUtKtNkUkavwCfA2
         RuVsoQ1RgUYyGjsCDhUXYiApxvjVis0t6qR80gPm0iaCijUGr78g9m/1d+nUbWL7mPAX
         5TNDpQiJn3DAhCO4PE885iVG7RdFY4HQ/m6hLvbkFI/2So1RL/3nhinh1gDm9P0nF+m7
         Klo5uJy4455KEEraLjZYSO2yHGDFVdQ2CmFr2SlFdJvCauq0QwY2rkDe3CC0oBkAKD87
         r+Og==
X-Gm-Message-State: AOAM532ICLAfbgI7sa9MUeLHv3yHsyI6558HKhqpngW/j4Ld7wSif/6f
	4RDuinrbmnN56nF5SQishG+3OAhTm2Q=
X-Received: by 2002:aa7:99dc:0:b029:15f:d774:718e with SMTP id v28-20020aa799dc0000b029015fd774718emr11914740pfi.62.1603684825148;
        Sun, 25 Oct 2020 21:00:25 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id s19sm6103421pfe.26.2020.10.25.21.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 21:00:24 -0700 (PDT)
Date: Mon, 26 Oct 2020 09:30:17 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-media@vger.kernel.org
Subject: Re: [PATCH v5 1/2] staging: media: imx: remove commented code
Message-ID: <20201026040017.GA5074@my--box>
References: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>

On Fri, Oct 16, 2020 at 11:10:33PM +0530, Deepak R Varma wrote:

Hello All,
Request for review / ack of this patch.

Thank you.
Deepak.

> The virtual channel is always treated as 0 once the stream enters
> CSI's. Commented code in the "#if 0" can be safely removed as it will
> not serve any purpose in future.  Issue reported by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v4:
>    - Rephrase patch description to make it exact and accurate as
>      suggested by Julia.
>    - Add linux-media to the recipient list. Suggested by Hans.
> Changes since v3:
>    - Rephrase Patch description
>    - Implement feedback from Vaishali & Helen to mention checkpatch in
>      the patch description.
> Changes since v2:
>    - None
> Changes since v1:
>    - Implement feedback from Julia to be exact with the patch description
> 
>  drivers/staging/media/imx/imx-media-csi.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 21ebf7769696..9320e3974d86 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1131,13 +1131,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>  		 * enters the CSI's however, they are treated internally
>  		 * in the IPU as virtual channel 0.
>  		 */
> -#if 0
> -		mutex_unlock(&priv->lock);
> -		vc_num = imx_media_find_mipi_csi2_channel(&priv->sd.entity);
> -		if (vc_num < 0)
> -			return vc_num;
> -		mutex_lock(&priv->lock);
> -#endif
>  		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
>  					  &priv->format_mbus[CSI_SINK_PAD]);
>  	}
> -- 
> 2.25.1
> 

