X-GM-THRID: 6883028084998537216
X-Received: by 2002:a63:380d:: with SMTP id f13mr614345pga.105.1602612077445;
        Tue, 13 Oct 2020 11:01:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:483:: with SMTP id 125ls202323pfe.6.gmail; Tue, 13 Oct
 2020 11:01:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy7TKa/X8HbOwJ7sVwQZ2bRYWoC2qOcbAeE6korLEKID4Q83X5oqxDPRNIEIWzaJvbQBCEs
X-Received: by 2002:a62:2e47:0:b029:155:853a:80d5 with SMTP id u68-20020a622e470000b0290155853a80d5mr621753pfu.29.1602612075490;
        Tue, 13 Oct 2020 11:01:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602612075; cv=none;
        d=google.com; s=arc-20160816;
        b=Fj80sTTREFaNuSXz7pDwKOyW4yXh7M8idOof+DLhzHlYSEoBL0+cR4G4DRnU9ohFt8
         bxPxHjMzm8T6FO0isOpM7QZZSmkDTEJjbTfqbZbHcW+Rb+/5a+I17uv8sUqGw0ixKHwi
         aoOr1nOMV6pTa5ddc/ZMNal9lNVMOSGPE8hCIky/Zt2HRghvtyZOlVFZm+0O7ywhSAU/
         QQZBtm3gYNd2iq5VDameXOcNb4T9FuzCJTv3FdyWsC4W5ThYscCjbUakmBam+eDtmH4k
         e/p2/+VjcQ3Xbj5FhE+hpb37b7Ni2cVciMEy6zGsVDooMzQ2nOFKMsDVxdue49jhRwae
         41xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=W+rb5ahuC5cMZNxSBrSCRHIKS9+WM0Z0wsbXX/yNdiE=;
        b=dbq6hCIJDMtghinoky8jlbIeiYZHT+qh5yYbpItitoyCLoPY+Fpv18LCk9LHzp2vp/
         qU2vw95WMQRx0B3TWNpv/y/GbaZtTIglEsHvOpmRA5WSNKf4MlJ06HCyesT32hNz5ODy
         /ilpHtsLT0Yt1xc6LmoZNSk0irGTR/DRnw43AQTAx8A1M7otByhjMb2dy46emDo5jlzJ
         r4GPwsVd3hIVMVUrkzQ6Yb9/a0sIWzYCg6DwNElKJP3WDKyzVuNgjqjbKXc+iMCMoLwe
         pZpVt0dbz8sMIJZrmRqBAWSR7MCdn8VWoy0J3zK6yCK9lu9/Ks2i9dUfvxeVxuilaSH+
         zxtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id a5si34952pfd.5.2020.10.13.11.01.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 11:01:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Received: by mail-qk1-f194.google.com with SMTP id s7so544097qkh.11
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 11:01:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W+rb5ahuC5cMZNxSBrSCRHIKS9+WM0Z0wsbXX/yNdiE=;
        b=PlB+Ctw4gZ7YB7tGB+Ve/Rtnoo5QdpHv4Cs7qd4jF8zMSdUQOJOJYHLj54JNIuoiLV
         b/5k+g/JaZ8y8nNDwavAANxcBo/3ziWslgHziQBg3oSTIBDB29ZOIXrIueTtCYR0+XSO
         tRhzbDFiF3Shlb2W6AZAyPmIDQdEHGtBBsXTYD9mhmrmz+orBTT0bRjw0jPfHjmFR8dt
         IkFPqEblv2ebHR/lxAX1e2brOZmFGm+xVhaKm//edMw0HNZ6tYlUF19ZC1IWbODkTU/Q
         7Nza2s1STRuh52tvXHkA5gXWCHJOnjiAs/6iHo2arsUTWu+A3baigM7ohpEnf9rVYlog
         dRfQ==
X-Gm-Message-State: AOAM533wV7a7cge2bVzmDvyaDouINPleXPesw8bvAcfcVi/P7t5+eckL
	vKVuoL3iJkaIRxUXT6sVR9Y8vLOQLkv5ZCwAjIo=
X-Received: by 2002:a37:a751:: with SMTP id q78mr1147936qke.337.1602612074448;
        Tue, 13 Oct 2020 11:01:14 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from ?IPv6:2804:14c:483:7f66::1004? ([2804:14c:483:7f66::1004])
        by smtp.gmail.com with ESMTPSA id f64sm232545qkj.124.2020.10.13.11.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 11:01:13 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v4 1/2] staging: media: imx: remove
 commented code
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
References: <8dfbe49fbc7dbd9100f69b80b43f67504338ed73.1602606535.git.mh12gx2825@gmail.com>
From: Helen Koike <helen@koikeco.de>
Message-ID: <ad664fbb-1eac-b123-b1ce-07cb18d82911@koikeco.de>
Date: Tue, 13 Oct 2020 15:01:08 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <8dfbe49fbc7dbd9100f69b80b43f67504338ed73.1602606535.git.mh12gx2825@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello,

On 10/13/20 1:32 PM, Deepak R Varma wrote:
> Commented code in the "#if 0" block does not appear to be useful anymore.

As Julia mentioned, "appears to be" implies some doubt, I saw you updated patch 2/2,
but not this one.

Sorry for the nip picking, it happens xD
I advice that, instead of sending the next version as quick as possible, you slow down a bit,
proofread, make sure you took previous feedbacks into account :)

> The virtual channel is always treated as 0 once the stream enters CSI's.
> This issue is reported by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> ---
> Changes since v3:
>    - Rephrase Patch description
>    - Implement feedback from Vaishali & Helen to mention checkpatch in
>      the patch description.
> Changes since v2:
>    - None
> Changes since v1:
>    - Implement feedback from Julia to be exact with the patch description

Also, looking at your commit messages, when you sent v2 of patch 1/2, you mentioned
there was no changes.
Unless I saw it wrong, but it doesn't seem you changed the patch description
in this version.

Regards,
Helen

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
> 

