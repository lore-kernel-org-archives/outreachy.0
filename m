X-GM-THRID: 6883028084998537216
X-Received: by 2002:a05:6402:1d13:: with SMTP id dg19mr5425393edb.217.1602870240657;
        Fri, 16 Oct 2020 10:44:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1b11:: with SMTP id o17ls1646049ejg.0.gmail; Fri, 16
 Oct 2020 10:43:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxgSX1Y6/2f4YBYAEnH+TKzrkA+dcB+1/u0expZ4+WnYmIs+Pco/hfisXxcOLrh15rBAOUm
X-Received: by 2002:a17:907:ab9:: with SMTP id bz25mr5151210ejc.90.1602870238706;
        Fri, 16 Oct 2020 10:43:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602870238; cv=none;
        d=google.com; s=arc-20160816;
        b=jD/xbdQxM114xsMJt2Qk0Omc7HzxGTUNHASfg64P90N6cjzISuDjN2MWRcat5G7PVt
         U/u83iGf3ooIELdehyQXzA+hUbhEYH2z8hmDs/jv1SMiRyLYBX8kHeItWkLToMo1Plaj
         5B23akERCgX3vvMtjcy9m2GmKhnzHnjF0j9vryaCybPmDH6T0MvpucCLUw2wP/vtzwi+
         wucxFmAh+tPyfNd94vApxeZoikn8ykZ4ir8vEksIDavkxahCwF6pxyY5NqgB5yygOlV/
         waxEl7vs/8zsCheys1TWQXZa78MFNlk/u9kWzlby1ZZZjB4OeeCYYGNekI+UE3QM4wpI
         WSYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=fMaMy1uPHLKjGhN5Agb66Drgg1Zh2Wqsybt39l2ZOLQ=;
        b=JNCLfLm7uTZw8CD+XyUvp+IcPJIwWYi4NNCdsxzu1Nt//+cijaRanseRQHCrA4rr64
         3x7k3Uv643RRnx/CHtLHdvgmdTGISVo7OubfrE9q2NrVXNYtMVP3mOHrv9D+XnwG4Sam
         rMs1AUiGTt/DoG0Lk/2W8PCS8JYuq1pa212pgAjAO3ZXkPGblbrBgbky4VtKwydI/6IG
         LlCWUFAfqLZ0adyXDIh1JNp/vDV/OasaYIykqPGAEfOW+FCnPzubObuE+YuXXb33QclP
         tcQdUH47X1nm5HMSztCPiJUzT3SUmaZgnlcGjlCPHlPbm/UdEqkGAJpczVIyfA2IYYJ8
         h16A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kbP4VIl0;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <slongerbeam@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id dp11si38878ejc.1.2020.10.16.10.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 10:43:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kbP4VIl0;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id s9so3850749wro.8
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 10:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=fMaMy1uPHLKjGhN5Agb66Drgg1Zh2Wqsybt39l2ZOLQ=;
        b=kbP4VIl0OPRsKF4tU8d7qrjV+B6l8lBTh26zTBKidk8SR60MT7GwE3HoBnFOwJ+8+e
         28ct4TK6NQ1vFAwCKSDCKG1vQi5juixRdjxCq9V37hZfJbsKSlCrFq7bJ2N7t9YraejX
         2CiYgO6sa3hHm3RXhYg2muc3YL7hwPU2nEzXbPvpxi7B+Cm44e6Dq6Gs6fzV1S31+u5J
         gBS3JqjPvVG9Z5aaXhLzwo+V02DiAgPCqh1y/zLIQPnXV6qhZiN3KiHMlq6PqR3eQ92y
         DdW7LvfpYqEKXAo2ArZJ3UticWc44yNcJ+P6mAprg5+TZ9XvU6wnvdWaa7528IqS6Q6j
         tH+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=fMaMy1uPHLKjGhN5Agb66Drgg1Zh2Wqsybt39l2ZOLQ=;
        b=SmLFbh1SX/+lKDXokYdZONCHPlG3wLvPGEsn+rCi9uBtUkoSwvKgig6fgMpMj2yqRr
         SPL11P6teXHXCQ9k0fOthHNadQhd18h0whkyIXUIYtTZNP56dbQoQm2YGTjiOo7ufpS2
         4L6amVsFYFbwcJtG1T/tOYMAOgB9oEOy14iaj/UPmxlIm/8U1wxAWQbGhuSaZoSBGYHD
         9gQ4kwMNjSPl2bPwdMGQeKQCU0uL+H/w84m2gIHzmLcgQV4adoOm+41By1Ug2NX4yLBR
         NfR5j5RWGasnlng/WYORMlRi5xcMHAWygFmLnrfG9ePkwiv+D0JaTBRFUtjak+unGyBi
         dZqQ==
X-Gm-Message-State: AOAM532rc2TL7l1W8ULIu3b6DS7cHDIxAeVTGFEl/QQylOLQP02f9s6y
	lQNaGmpkoVhEhQtM+uJuqvM=
X-Received: by 2002:adf:a306:: with SMTP id c6mr5129535wrb.160.1602870238361;
        Fri, 16 Oct 2020 10:43:58 -0700 (PDT)
Return-Path: <slongerbeam@gmail.com>
Received: from [172.30.90.199] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
        by smtp.gmail.com with ESMTPSA id h4sm4669761wrv.11.2020.10.16.10.43.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 10:43:57 -0700 (PDT)
Subject: Re: [PATCH v5 1/2] staging: media: imx: remove commented code
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-media@vger.kernel.org
References: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <0af98d3a-cbaf-4036-a75c-24f63eb28647@gmail.com>
Date: Fri, 16 Oct 2020 10:43:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Deepak,

This is fine with me as long as the comment block just above the #if 0 
code is left intact, which it is.

Acked-by: Steve Longerbeam <slongerbeam@gmail.com>


On 10/16/20 10:40 AM, Deepak R Varma wrote:
> The virtual channel is always treated as 0 once the stream enters
> CSI's. Commented code in the "#if 0" can be safely removed as it will
> not serve any purpose in future.  Issue reported by checkpatch script.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v4:
>     - Rephrase patch description to make it exact and accurate as
>       suggested by Julia.
>     - Add linux-media to the recipient list. Suggested by Hans.
> Changes since v3:
>     - Rephrase Patch description
>     - Implement feedback from Vaishali & Helen to mention checkpatch in
>       the patch description.
> Changes since v2:
>     - None
> Changes since v1:
>     - Implement feedback from Julia to be exact with the patch description
>
>   drivers/staging/media/imx/imx-media-csi.c | 7 -------
>   1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 21ebf7769696..9320e3974d86 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1131,13 +1131,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>   		 * enters the CSI's however, they are treated internally
>   		 * in the IPU as virtual channel 0.
>   		 */
> -#if 0
> -		mutex_unlock(&priv->lock);
> -		vc_num = imx_media_find_mipi_csi2_channel(&priv->sd.entity);
> -		if (vc_num < 0)
> -			return vc_num;
> -		mutex_lock(&priv->lock);
> -#endif
>   		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
>   					  &priv->format_mbus[CSI_SINK_PAD]);
>   	}


