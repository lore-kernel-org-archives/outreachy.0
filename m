X-GM-THRID: 6883028084998537216
X-Received: by 2002:adf:e4ca:: with SMTP id v10mr5561180wrm.53.1602870418898;
        Fri, 16 Oct 2020 10:46:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2506:: with SMTP id l6ls1523998wml.3.canary-gmail; Fri,
 16 Oct 2020 10:46:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz8v+5rOrxyWIPCP7vqGwVYths34iATbE1eigYaKsEqQ4tTylTHpWfGS8RTfM0ATHQyEJHg
X-Received: by 2002:a7b:c418:: with SMTP id k24mr5153088wmi.118.1602870417042;
        Fri, 16 Oct 2020 10:46:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602870417; cv=none;
        d=google.com; s=arc-20160816;
        b=jlgkkiq0mql8VoLUrkKRHbnYrVqqokQhR3bnLe41bBCIHMifm9Cp1SPOoX/w43oOgq
         nUDs5Xxofec9zRAyo+cF/8qXlWKTNnCQXBvBiowR4AXlAMCuX/npjhCyWKszRo1mSVmf
         wv6b9AHePHqfwYpJm/sHR7IypX5PmF63ofsWKE++ba81I4+1+TeIl23Ee3uPMHggXsPk
         bd/9019w93MHBQrSg8I4VFkBDxP1v5T1kxqLUGltTFI6jXmvu4VLrJCODJ+4YGoa/JC+
         Y0KZE+umpOYwqNAop3LPl53YrtOh9StUv70rh5MSPDZHn3l9fMzBVkoUl4GTQKbAQvPT
         MscA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=PYAkfMnZ2XypxrgV1TWzp44Ijnc2K2JevE/0G9W2WT4=;
        b=bZPZt3aB31Qdd0IfQ1a4Gt/UAaLuf/ZT/Uj4aO31+G2mqGkvpnq+7dUl1k2s0B4C0F
         WnzN9bQkat1kvbKrRjlNl8m9KEWVpSIMqoEo8nuRzSt31CY7BIhssko8IMCVxFn3AjmO
         QBAWRw+LTNDWXYgtIMh/Vkos+Fj6S11LUQFbf1Hxa1hs7dh7vXZ4H7f5tRagAwB4jWhV
         vcZBZegM9T5Yd+KlWlzYWYWmJs4bmaJGPV/SlM8sDenipiex84SdYvIbeenYsLfRPSyz
         z+uO14Xc6semBo/mwGnfHS0M9mHuatdF3UlEGlG6mZ4KNFHasiqyo0NSCINCfCKT39cR
         39WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iz0D7iYt;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <slongerbeam@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w6si119211wma.2.2020.10.16.10.46.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 10:46:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iz0D7iYt;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id g12so3854076wrp.10
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 10:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=PYAkfMnZ2XypxrgV1TWzp44Ijnc2K2JevE/0G9W2WT4=;
        b=Iz0D7iYtxq2InEU300Mld2j6tZnBHN4mYBpVDxOM1pSNXzKXZHOUO4KEGNHlKXMpSp
         56US2a4lbpJXdfPeueOdxxgjQGXCVRFNmwrpl8rF2cZTo9DpPqyc6R589OaYQCJ6RgBj
         C4IPC81kqOXH9mdL30UTaXnVNEPC+wS6LNiusPXTs3UNw+9skLJRvo/8sNTLXjAaoO0t
         sPATDPMNq3sSWHAzOlZEDeqnWPJWhd/W1R3BUfm/oFZHCNkbmeOFPfryKrWeuwF/GWA6
         ne9juyuEGA9bEG/wbTVWSoUa/ryMiT+gX3ps6y7Lyvg+Cjzs4hkMMUnzYCkjNS9h9P2x
         +ynQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=PYAkfMnZ2XypxrgV1TWzp44Ijnc2K2JevE/0G9W2WT4=;
        b=T5vNn+wNbtjuDvFkiSdJsj6Uc475RV4GkHgzmA6KHHJ6lFbAaTkKaHS43a1r1mufoM
         DMNvleYIHbvX4kl4eOaHI1gGJr1ZJzCqeX9bCwgPfLuQXGfC/jOr7zfAPK5mHF4KarZj
         /LOIaNTFa5PCHrxe3P9boKTCmimxdZIXL3kSm2bWVGImX78synlN2TwAcvzzQCzDWeU1
         VSgRZSbqAutP7LgmTJwevQpTGtJxWQxr+UFEfNQrQA4TbIzcKRjAUJ13S9PFKDJmt9hE
         YbtxNetWl9XKxj2I8f2qV9xNcxxr6vR6rRdc5QwgCcMT3ebU+OC6ixZl98SWzozEh3sZ
         Nk1A==
X-Gm-Message-State: AOAM530oDggNc9BkLkEVKZnBoUXBNPoIWAyUUjfWikZ7jDDsErQ8cbG+
	VjCKn9cimMlnRVttbLg2mEc=
X-Received: by 2002:a5d:5609:: with SMTP id l9mr5059492wrv.140.1602870416592;
        Fri, 16 Oct 2020 10:46:56 -0700 (PDT)
Return-Path: <slongerbeam@gmail.com>
Received: from [172.30.90.199] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
        by smtp.gmail.com with ESMTPSA id j7sm3503528wmc.7.2020.10.16.10.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 10:46:56 -0700 (PDT)
Subject: Re: [PATCH 2/2 v5] staging: media: imx: remove unnecessary variable
 use
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-media@vger.kernel.org
References: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
 <6a22de0a51e06b7cb43d4a55850f3a0213532e42.1602869338.git.mh12gx2825@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <9cd691f6-ed02-a002-00fd-35b8dea28680@gmail.com>
Date: Fri, 16 Oct 2020 10:46:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6a22de0a51e06b7cb43d4a55850f3a0213532e42.1602869338.git.mh12gx2825@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Acked-by: Steve Longerbeam <slongerbeam@gmail.com>

On 10/16/20 10:46 AM, Deepak R Varma wrote:
> Use of variable vc_num is unnecessary here as it is used only once.
> Instead, the value can directly be used in place of the variable.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v4:
>     - None.
> Changes since v3:
>     - None.
> Changes since v2:
>     - Implement feedback from Vaishali to simplify patch log message.
> Changes since v1:
>     - None.
>
>   drivers/staging/media/imx/imx-media-csi.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 9320e3974d86..db77fef07654 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1123,7 +1123,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>   	priv->upstream_ep = upstream_ep;
>   	is_csi2 = !is_parallel_bus(&upstream_ep);
>   	if (is_csi2) {
> -		int vc_num = 0;
>   		/*
>   		 * NOTE! It seems the virtual channels from the mipi csi-2
>   		 * receiver are used only for routing by the video mux's,
> @@ -1131,7 +1130,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>   		 * enters the CSI's however, they are treated internally
>   		 * in the IPU as virtual channel 0.
>   		 */
> -		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
> +		ipu_csi_set_mipi_datatype(priv->csi, 0,
>   					  &priv->format_mbus[CSI_SINK_PAD]);
>   	}
>   


