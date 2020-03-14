X-GM-THRID: 6803689046764683264
X-Received: by 2002:a67:2701:: with SMTP id n1mr10832749vsn.103.1584147251182;
        Fri, 13 Mar 2020 17:54:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls1487856vsf.1.gmail; Fri, 13 Mar
 2020 17:54:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt9pCKn9aldryPA6JgGpJvrE/u6DNyN4wCXAOjNl9e+PyZ/I/SKD3nF0szWugI0SXdz44J7
X-Received: by 2002:a67:5ec6:: with SMTP id s189mr4266906vsb.56.1584147249379;
        Fri, 13 Mar 2020 17:54:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584147249; cv=none;
        d=google.com; s=arc-20160816;
        b=KZqM6iJH7k3makZn1J0qwwTpzcL5OivLjmgdPh5CW3CJwJjgyKTFMjvfYWOHdnSJ/t
         K0AH01bqr7H3vk4EzdVqm0wl3ar3wxW+9fs1dzcWuomAkboGrEQeGyMUrewIMagg1oT1
         iSoEl0MpBMnI84KBz8rDWYbVkQQi2CRi3KO5zaVQPwGJhXsCVnsKsRwFd9mLRqzQwBiy
         kBMmUeAdWdX0v8ys98zZylRrYUYhVmcfXp9cvQxRyF2DZKt26r7Ad7vg+LxBFtLIylcJ
         iL1au7LuQYXElJOIBQf/Aw+ETLRYEcfJLG4XPpamHCFbnFKMhhe09Bd8qs/ARkdD4GhW
         +RrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=BxEs3b0sn7GB/g1imOxKxYJVftQK6AX69UvvFxipLzg=;
        b=RM3Kzb6SRfOcB4hLfUitEgaXSaP6uXqsFjKI1liAjJZ8PMDpqn+xDoO1MZ1tCaEirb
         YFfAEohWV+FNpOjcoUNCNm7zsOF56G/XR/pu5WzZaZi1hp8jTRgR7UvAEFue5WAFocK/
         Fg4tyAkAPeAL9/3wiguPp9fFNP0sTGpGEwENU8AO0fNKPARdoKcRfx4dFJ+giUTozIja
         7PaBKW+HckrpcWuETwhqs4v2jN94stowzqSspicXiGEXzMm8adjoap6w86A5KTQRr2lP
         EYq7PgQiPxw2HYBsyk3VTfue1LWgC90P/hjzdNAP/irqJsk/UJhXrl9O8fN1EoplE+GY
         9GlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OCTnpCHs;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <slongerbeam@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g4si517524vke.3.2020.03.13.17.54.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 17:54:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of slongerbeam@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OCTnpCHs;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c19so6296721pfo.13
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 17:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=BxEs3b0sn7GB/g1imOxKxYJVftQK6AX69UvvFxipLzg=;
        b=OCTnpCHsbX4AdiBu+K8EanMvEi9NmvqzTfcGlEPs75ud7TJ5gM1YoswW+fLIqiUe0U
         oqQF4lglhIP4Uw6toAjPF9HbtpZ5uzVyyPnGdRVHVZwcV7sxcvyqyglyw2Yd4dGUrUAY
         5DETfGUVtjKQ9G41Hw2aDvKRTDlECpEZ3Y5Vcwe4K65u3znpG5Fnn0fZzYt4X9mtVXXz
         LNaDLnABajW/1ZmWsiusuj9g8EOiUY0+VBiVJtrwBv4wlreced9VB9ko6vZNV3eSmSy0
         RkA8mlNqcr4S/OmDDwGQZZWY+ER5/x8Bs+CK59hPMbxFGwKlkqZ1Qkkz0rxXuRyePL28
         PYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=BxEs3b0sn7GB/g1imOxKxYJVftQK6AX69UvvFxipLzg=;
        b=mYMqV0R4dzIrLvUCfP4d0/DSBeSRziIKP16/L5q/P5Ed351mo8MlMIcgNYXhws2x9+
         48fJlUosKRBI4z/3JYcaUkhnyN9qCbhDGd2tJAvTA819beLrCQFQ5MRrNYTA64fBI5U2
         u6DyVcUq7HbjkVJFgQMsgB7W3HnnQY5usTkEOmSvMVn7nQIhZNj9fBSPjHg5ug3xDRDw
         T2MGzQzhmcZYzv6np/xeS7FJcNPEv49Jt4EJANm4nVL88FZkgnuexChkvG1FZdS8IRLJ
         epo3JlPSk+dtfCgt3tjRz2LcuIu/7Bqw2KY33hs3APPssnYbc/6wzaq3Fem4cVB8Rf2S
         xB5w==
X-Gm-Message-State: ANhLgQ0YrBQtfd2RtsRgZiY/xKDRauXbaGWaVuu2p4mXkWzhc+x8gl2w
	vpjI7337ErYFWq1iWnnJMq8gwUx5IFM=
X-Received: by 2002:a63:a35c:: with SMTP id v28mr16197380pgn.251.1584147248003;
        Fri, 13 Mar 2020 17:54:08 -0700 (PDT)
Return-Path: <slongerbeam@gmail.com>
Received: from ?IPv6:2605:e000:d445:6a00:bd03:a881:a59:15cb? ([2605:e000:d445:6a00:bd03:a881:a59:15cb])
        by smtp.gmail.com with ESMTPSA id i4sm1531716pfq.82.2020.03.13.17.54.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 17:54:07 -0700 (PDT)
Subject: Re: [PATCH v3] Staging: media: imx: eliminate unused code
To: Enrique Vargas <jevargas@seas.upenn.edu>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 outreachy-kernel@googlegroups.com
References: <20200313172019.GA22581@evX1>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <5e63bd2c-f5a4-8375-4cbc-c9b4ccac9cd0@gmail.com>
Date: Fri, 13 Mar 2020 17:54:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200313172019.GA22581@evX1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 3/13/20 10:21 AM, Enrique Vargas wrote:
> Eliminate code that is never used inside #ifdef 0 / #endif.  This eliminates WARNING found using checkpatch.
>
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>

Acked-by: Steve Longerbeam <slongerbeam@gmail.com>

> ---
> v2 Fix description typo with broken line
> v3 Include change control, as suggested by Greg.
>
>   drivers/staging/media/imx/imx-media-csi.c | 8 +-------
>   1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index b60ed4f22f6d..2001f7851e90 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1131,13 +1131,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
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
> +
>   		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
>   					  &priv->format_mbus[CSI_SINK_PAD]);
>   	}


