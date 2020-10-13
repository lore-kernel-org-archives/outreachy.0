X-GM-THRID: 6883028084998537216
X-Received: by 2002:a9d:6b0b:: with SMTP id g11mr162434otp.349.1602604100585;
        Tue, 13 Oct 2020 08:48:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:2c1:: with SMTP id a1ls240471oid.11.gmail; Tue, 13
 Oct 2020 08:48:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfi1CYs0OqZ8wNFTh/ohqh8dVR6F11Jh5tOdzTYKdWe/wEm8UulTpNEg/E7Fqm8puYuKST
X-Received: by 2002:aca:ecd6:: with SMTP id k205mr214142oih.109.1602604097772;
        Tue, 13 Oct 2020 08:48:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602604097; cv=none;
        d=google.com; s=arc-20160816;
        b=vX7f0QX6g9kg9cntWcmzSeExwLDbDYJXpW3wrfYbCH6keUKm9sSMPW7ObdfZnlUmX9
         GX1TyPUZUkzpz99cz8dtAJF8YA3H9Cs1+cwJX9E10bn9nHoT8o6OtA32P2iZDEBW87L6
         Ifg1lAjVOGniR/nPcgavv1zeiR0C8udQ6DAqCUGIQf0w6M87bc4m7OsHIA+12aJ5uLFj
         2CmhN6lMu3vVlxxSkVUJi5N09D7EWC2AzkIE0XZ6lO+zuK7uqcEyuT3vMYNaSvhBE9eG
         LcnnEVm/vsKNyB5onQIE936svsxp2JOTeDIBYLHcZ2AXB04q2CUn8isTIatlXMbFZL0U
         gEWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=/mkEQJbV49a9mHaO5lC9gq7sXEgqdEZOEbr19jeqT0o=;
        b=shllYSE4OTrVs/YXAB1KpJegukMhRkxj1DLFYDbRCeqdHiA4vPc2o/nB3wnuf/thKr
         CIL8Jd3HAwMKn0BEHxYVfo0Rp9349mUpBQG16tEpIP3NlG2SxGC+O4SNH/Wu6CTjix4U
         1o2l/YXvk2LWQ/i2QBPPMrhYNPMndIVSgLejZ5fdKxltfi4eRAi2o3cXvWhUqt7OqEMz
         MNorJWdqIi2pIngA6dZK3PVHzcUSmBFzXAHFRU0RTmWeWjwX5z8dLkH5/UqEq6T+5eez
         Z878Jo5maKGgGoVlC05DnqPGE1DcBN/MHneLXHIi35AhAgALfy4Y5NfdQVqEt31JUudB
         oQxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id d22si39079ooj.1.2020.10.13.08.48.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 08:48:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Received: by mail-qt1-f194.google.com with SMTP id c13so221891qtx.6
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 08:48:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/mkEQJbV49a9mHaO5lC9gq7sXEgqdEZOEbr19jeqT0o=;
        b=UoDoMu3i5Qoi2zgYJf3PCwc7jN/YJfCyjQasvQgildzB4xm2PHQZTStKPNsd8eLhdY
         Ag+Xb2aWDPqSqVyhsDnzknYZ2+yirfTZQwlndlAhfPrpDCX7U6IMU2eYFjaZfgkyJL0f
         DXWSZ0MdjhyUs3p9mecWWOAz2golPqnKch8HJNd5HoXdFQUjnXxNuRP8yYzlGRyijhwd
         jiSYDJ+Lolv3gO+mR4+0zYE5HiWRCOmVvYseUlwvNHYEAffJdLDjrfrg+YMM2wRNDaF4
         eBfUKYByc3lpZbiV50VvXXJ+2w/wPtJoF6l+KJo6mvnRePz1mW0hrGhNXFzd/yHC0YUf
         k9Ww==
X-Gm-Message-State: AOAM5319EadjTKesc+8W2Orj8TL8BYfgje5lIs9lavIqPp4D4UWfWLel
	PfICarTZoXQ+MroorA+5A4w=
X-Received: by 2002:ac8:1910:: with SMTP id t16mr217349qtj.351.1602604097069;
        Tue, 13 Oct 2020 08:48:17 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from ?IPv6:2804:14c:483:7f66::1004? ([2804:14c:483:7f66::1004])
        by smtp.gmail.com with ESMTPSA id h125sm101166qkc.36.2020.10.13.08.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 08:48:16 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] staging: media: imx: remove
 unnecessary variable use
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
References: <f484d024b14104cff4f54bad3da52151847a0b28.1602601012.git.mh12gx2825@gmail.com>
 <77d7f86b1cdccd1882fd331042812cd750be1320.1602601012.git.mh12gx2825@gmail.com>
From: Helen Koike <helen@koikeco.de>
Message-ID: <88d6ec98-9c7d-707f-9571-26118aa70e58@koikeco.de>
Date: Tue, 13 Oct 2020 12:48:10 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <77d7f86b1cdccd1882fd331042812cd750be1320.1602601012.git.mh12gx2825@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello,

On 10/13/20 12:04 PM, Deepak R Varma wrote:
> Use of variable vc_num is unnecessary here as it is used only once.
> Instead, the value can directly be used in place of the variable. 
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

As mentioned by Vaishali in the previous version, if you found this
through checkpatch.pl, please, mention it here.

You can even copy the warning you are fixing:

Example: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e4d7efbb91efc3040e3f1c645571c1769095ae79

This is nice, because you are giving credit to the tool, and also let
others know how you found it, and maybe other people can check too.
Please let us know if you have any doubts :)

Regards,
Helen

> 
> ---
> 
> Changes since v2:
>    - Implement feedback from Vaishali to simply the patch log message.
> 
> Changes since v1:
>    - None.
> 
>  drivers/staging/media/imx/imx-media-csi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 9320e3974d86..db77fef07654 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1123,7 +1123,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>  	priv->upstream_ep = upstream_ep;
>  	is_csi2 = !is_parallel_bus(&upstream_ep);
>  	if (is_csi2) {
> -		int vc_num = 0;
>  		/*
>  		 * NOTE! It seems the virtual channels from the mipi csi-2
>  		 * receiver are used only for routing by the video mux's,
> @@ -1131,7 +1130,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>  		 * enters the CSI's however, they are treated internally
>  		 * in the IPU as virtual channel 0.
>  		 */
> -		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
> +		ipu_csi_set_mipi_datatype(priv->csi, 0,
>  					  &priv->format_mbus[CSI_SINK_PAD]);
>  	}
>  
> 

