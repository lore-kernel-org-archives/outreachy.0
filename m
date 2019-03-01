X-GM-THRID: 6663287446197764096
X-Received: by 2002:ac8:2d8f:: with SMTP id p15mr3366898qta.28.1551459165553;
        Fri, 01 Mar 2019 08:52:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls3748178qvc.1.gmail; Fri, 01 Mar
 2019 08:52:45 -0800 (PST)
X-Received: by 2002:a0c:d238:: with SMTP id m53mr3277426qvh.30.1551459165088;
        Fri, 01 Mar 2019 08:52:45 -0800 (PST)
Received: by 2002:a05:620a:1454:0:0:0:0 with SMTP id i20msqkl;
        Fri, 1 Mar 2019 08:42:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqwZrpTSIB19OyCWGx9rpCBYTG+ncruyyrs8A9TDjoEmCvPnIZRTyp1eFPJMIpCPGWOZYslr
X-Received: by 2002:a17:906:e84:: with SMTP id p4mr675087ejf.12.1551458544744;
        Fri, 01 Mar 2019 08:42:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551458544; cv=none;
        d=google.com; s=arc-20160816;
        b=fHtMBnS/RnQk1PFyUkJQfRNZlLFIlR1WAo2/weOgGwn5Yn4WfmzqeSJ05t/9IsBElP
         pYOEH38Vp7A6lyBDxM6CneTnpH/c1F4WgtiJwUJvQ+ebMaDV/A58xwniwE/atzQuSbyL
         Gmm+66YmOJajrbYTUfk/jU3teUkL9+v6GfGm4zbUdRVqQ51xVefUtoAnQYx09xVaroN0
         F45YGlDRUOLOxB8tyG2LlzBnd+pU3Vt6L4UgoXV0fAmznV+oAnizBCEHnye2EvxSbF3H
         67u3lnFRBKPQRQ7LDV3+k2FsReo6bQpfe5iU1tLp1hJwtm4Osqp4m3an+4rqSDzmc3bM
         faOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=dmS3E3h4jMgpRSE2BMqTBz28WTQFziShZgRBICp88mQ=;
        b=f5yD5e2dGPHxPnHglLwoFLsCw9Cf+eFIbuj1kQCNK0cDP76QAJ31WID5FFsPLgGPKr
         jN01MvtARuM8a7DOoT5vVUUiJjBJLpvVY0TsXgzD+zXrZqKNwzCysR9u4UwjeOUSSi7y
         ZgZqNtZNsaXctmR6vO/mPX/Qn+aBwmFHJclRxb17+ZTH78gLhtIoSg2S3PcUFAShjydK
         5dgM17tBpmV25hYsF5L5ApcD8Gng24Q/JpSLijrkacpcOk9tuiLUQMuPMtxj+wbVGXLf
         qIFOAb+MR4Wl9alwKVniCGechnw8krCjlNviZnU12CPHuTkWPpFGnez5TPKpEuEaMrNy
         ZvmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s00Q66X0;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <slongerbeam@gmail.com>
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id a7si689255edb.1.2019.03.01.08.42.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 08:42:24 -0800 (PST)
Received-SPF: pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s00Q66X0;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x433.google.com with SMTP id l5so26578107wrw.6
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 08:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=dmS3E3h4jMgpRSE2BMqTBz28WTQFziShZgRBICp88mQ=;
        b=s00Q66X0MyZIDRLr88fxo1iiLqtCutP0VExc2dVeSyxk45dwlMht5HascG+n9MtTTK
         xHfHcSiH7+aY/E9L9aIDeq/auQ93SBPg7FnApiMeNS+fTSzUJv6qgAlp3HIg/r3GaAsC
         n0jy1X0+GGowE75WW/X1yIbHIGwgTYekJisn/Q27OpswZVcR1zLQ8AvggXPpZ02xPFmG
         X9l7300OdZlnCW4n9coTRh4Vzbj4emYWWR/tATvP5op3UWxrdMcp7LlP/ortRCc69UPt
         ZHv30tC768+M91uBBjevPdXVV0zEA7sJVIKHCU9Lssbax3pEOsat0s+kkIN3sODANUo5
         3tQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=dmS3E3h4jMgpRSE2BMqTBz28WTQFziShZgRBICp88mQ=;
        b=RxE87W/xLDChgsyA40KDgAi4iI9jcJmQ/wwfvrBmEaOrzlj/F+jlO63XdxoUdu7l2B
         tIbVEu081W1ypNnPSUvlqUPMsuDDWaj3IZXdgQEkT58pCYRVa96xbYaWl25gdzvShU4J
         CEaql2OQz5R36UaZ/xtslDBd1GnlRvleaHVeChGB2V6hlQybjJ91B44boYRooXagRiJI
         Qs8COKxBjyaMZAtxy/bSbHQ/jd0SxXKrW16aOboMQ358Xe3Vu6EkcmmGLUGINh5k1rN7
         opCTgo2854adMk/gc1bm6bY/YH+f7GN/DznAVV7r86sTU2VStUzJxgenqZN/meI1+Pz5
         V+gQ==
X-Gm-Message-State: APjAAAWjaV2UBsvJ6M1XXsnsIxOr/4s5mzM8XrSpnB4H/N6Lt+W+uEph
	gUjGRmsWMviD7AfygFrSCBcljCN9
X-Received: by 2002:adf:a10b:: with SMTP id o11mr3883560wro.91.1551458544122;
        Fri, 01 Mar 2019 08:42:24 -0800 (PST)
Return-Path: <slongerbeam@gmail.com>
Received: from [172.30.90.10] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
        by smtp.gmail.com with ESMTPSA id z198sm7991618wmc.10.2019.03.01.08.42.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 08:42:23 -0800 (PST)
Subject: Re: [PATCH] Media: imx: Cleanup constant zero preprocessor lines
To: Wentao Cai <etsai042@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
References: <20190301051807.14089-1-etsai042@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <a9dc2c4a-d514-e60a-e743-f06984ced8a4@gmail.com>
Date: Fri, 1 Mar 2019 08:42:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190301051807.14089-1-etsai042@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Acked-by: Steve Longerbeam <slongerbeam@gmail.com>

On 2/28/19 9:18 PM, Wentao Cai wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: Consider removing the code enclosed by this #if 0 and its #endif
>
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>   drivers/staging/media/imx/imx-media-csi.c | 8 --------
>   1 file changed, 8 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 4223f8d418ae..3f43ade226e9 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1081,14 +1081,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>   		 * enters the CSI's however, they are treated internally
>   		 * in the IPU as virtual channel 0.
>   		 */
> -#if 0
> -		mutex_unlock(&priv->lock);
> -		vc_num = imx_media_find_mipi_csi2_channel(priv->md,
> -							  &priv->sd.entity);
> -		if (vc_num < 0)
> -			return vc_num;
> -		mutex_lock(&priv->lock);
> -#endif
>   		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
>   					  &priv->format_mbus[CSI_SINK_PAD]);
>   	}


