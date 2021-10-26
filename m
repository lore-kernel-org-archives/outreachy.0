X-GM-THRID: 7022901752311578624
X-Received: by 2002:a5d:68cf:: with SMTP id p15mr16718051wrw.345.1635257980790;
        Tue, 26 Oct 2021 07:19:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4e85:: with SMTP id e5ls2730867wru.1.gmail; Tue, 26 Oct
 2021 07:19:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzt+bY7rs4xE6rqUyV+4OwKjATxi7a7/+C6Zbyyk5/e7akvdKo2u4mGX73hx7tRGG3VmlVl
X-Received: by 2002:adf:c00d:: with SMTP id z13mr31465746wre.299.1635257979219;
        Tue, 26 Oct 2021 07:19:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635257979; cv=none;
        d=google.com; s=arc-20160816;
        b=aGzw5Wu3mWSL2mgfBAIxyoV9zI9kTuxogVzp4Q+cOQuwA8OaxxdmuJu5ftPqUipIdK
         UTXjjCqEvmdRwHByeNqpJvl43PClNlhZJd+aDaHxXLs7a1oFP7qoCCVQb6U80hUWrsxy
         3VC/G3/Qkat/codX9CTEwM6th2kX7tGPV+5PAB3epWZX7+FaJ2sxYypmtl4FbOVBLZB0
         gF6aMa4hTLqOjmI0ZWMiOhty2mLYOI6UxTJUklH0Riz0AL6Nz+rVqpo3ElbkHa/VX59w
         RbVteeptnbpvQOyH21e6TYDsGHIlC735Z6A1kP6b4OnzLNfC4KWSDt0e7rh5kgyOrdEq
         wCOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ymxJaa2BlrWL2+RXM0aWcrPrkleRVCX/6OMjVLXnHtc=;
        b=CJipUC6Vmpvn33ooIErScOolZ9Wb3um+nV2pa4Yy8WoJ6zEBXgR0R/ahAKogfBLdC4
         Aehe9pgC0YgQ7QRNrditr5vo5AuOD/M9L4vkfF1a9DkVWN6dvEvcePGWnw5PydUcloro
         CkkQ6P99/SrRfrqO1TaQy4koNhYQxIY2tc9k2irMYsxYqaCxna6MkytfPOp9/wnr7kYQ
         KY6WNotygbPPRmOvKfks0iY0+YK29hYtue3q/ze2GcNPlZXf2Pm9avE0z8aU+hciiagF
         w+9UM5dTW6cxNrfpwSUViVzjnC20jX+4Z+D0T1eMd4uw/UQTU2KDrjGhWEk8j2P+4Yqz
         SrmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XWAqQZZN;
       spf=pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=mike.rapoport@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mike.rapoport@gmail.com>
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id m8si121378wmg.0.2021.10.26.07.19.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 07:19:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XWAqQZZN;
       spf=pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=mike.rapoport@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x334.google.com with SMTP id v127so14259099wme.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Oct 2021 07:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ymxJaa2BlrWL2+RXM0aWcrPrkleRVCX/6OMjVLXnHtc=;
        b=XWAqQZZNvVVVwLs4pdIGM8QinWryHGx3OAOqEn2Ss7dz0S3K7xo+eslGhwWJBalIFM
         60OLe9buohW0yo0naWMeahIfop42HbrEE4AhZDeecb+nFxs+yVAckLTCRGqF98J2BUKs
         Tnsf6dOqRJSy7XVkC8u8uhdhsZWd3R2Bhab6PIiISlBUXNSo1llmLUzIFf69/h3Vv5Af
         wjDBOeqht4Zmfm6hqUEtdD4/HJvIMNOlSwe9jL2hLXHEsj7+meFYFsaGUT16GJQggAH4
         RpluBK7h3/aCGc0Ls3UWwih7ZeyukAe04lEsr1nYIQH64HT8enl6TRRII8uvOYmdN/1j
         iYWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ymxJaa2BlrWL2+RXM0aWcrPrkleRVCX/6OMjVLXnHtc=;
        b=u2HXrsXkjxm4+o5Pe8i22jhn8LoRVSmRJ0s1pSTNvxDrpEYh1UD4YSzzM8KF/4YLSk
         Hu5Mo9/QKlnLvJWY37+EMuZeUTJULYv2a3lFnTf7gCBgIQfu79GbzCM2v2NOv8lY8yhn
         KESJnteo1iKlTtKX2aByVCNSB9V7o54fWI17yYnXA/Fw00g25aip4sW2rD1spLh1y9B2
         AxFVPXln0lDkTEgVqFXJ5wyjMQlMs2aoRAg2RBBM5DmF1x1VR4UmGEh56cpzddcJP+SK
         ZKRsvqvLkGlil24/VPRFb/RSq4/Aht8YJCm8u0aOGkKzwMDD7Ns56txG+BxON9C2+zDf
         S/Rw==
X-Gm-Message-State: AOAM531gcev4ybdXp1FWsxsHnlj8613IxP4D7Dwe25VO3hMpso6MirBH
	1gtYSAritDZH9+KW747ZyY8=
X-Received: by 2002:a05:600c:4ba1:: with SMTP id e33mr4147069wmp.9.1635257978977;
        Tue, 26 Oct 2021 07:19:38 -0700 (PDT)
Return-Path: <mike.rapoport@gmail.com>
Received: from kernel.org ([2a0d:6fc0:68c:c000:a2b6:e878:f1bf:3444])
        by smtp.gmail.com with ESMTPSA id q18sm764216wmc.7.2021.10.26.07.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 07:19:38 -0700 (PDT)
Date: Tue, 26 Oct 2021 17:19:34 +0300
From: Mike Rapoport <mike.rapoport@gmail.com>
To: Kushal Kothari <kushalkothari285@gmail.com>
Cc: gregkh@linuxfoundation.org, fabioaiuto83@gmail.com,
	ross.schm.dev@gmail.com, hdegoede@redhat.com, marcocesati@gmail.com,
	fmdefrancesco@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	kushalkothari2850@gmail.com
Subject: Re: [PATCH v2] staging: rtl8723bs: core: Refactor nested if-else
Message-ID: <YXgOdpebeA/dFWIz@kernel.org>
References: <20211026134253.7868-1-kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211026134253.7868-1-kushalkothari285@gmail.com>

On Tue, Oct 26, 2021 at 07:12:53PM +0530, Kushal Kothari wrote:
> Refactor nested if-else to avoid deep indentations. There is no change
> in the logic of the new code, however, now it is simple because it gets
> rid of five unnecessary else conditionals and it combines nested if into
> single if-else-if. This refactor also leads to fix warning detected by
> checkpatch.pl:
> WARNING: Too many leading tabs - consider code refactoring
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
> 
> Changes in v2: Fix the bug of not handling properly the else logic
> when p is not null in else-if. Also, reword the subject line and break 
> it up at 72 columns.
> 
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 69 ++++++++-----------
>  1 file changed, 29 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index 0f82f5031c43..267d853b1514 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -1192,50 +1192,39 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
>  		p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
>  		for (;;) {
>  			p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
> -			if (p) {
> -				if (!memcmp(p+2, WMM_IE, 6)) {
> -
> -					pstat->flags |= WLAN_STA_WME;
> -
> -					pstat->qos_option = 1;
> -					pstat->qos_info = *(p+8);
> -
> -					pstat->max_sp_len = (pstat->qos_info>>5)&0x3;
> -
> -					if ((pstat->qos_info&0xf) != 0xf)
> -						pstat->has_legacy_ac = true;
> -					else
> -						pstat->has_legacy_ac = false;
> -
> -					if (pstat->qos_info&0xf) {
> -						if (pstat->qos_info&BIT(0))
> -							pstat->uapsd_vo = BIT(0)|BIT(1);
> -						else
> -							pstat->uapsd_vo = 0;
> -
> -						if (pstat->qos_info&BIT(1))
> -							pstat->uapsd_vi = BIT(0)|BIT(1);
> -						else
> -							pstat->uapsd_vi = 0;
> -
> -						if (pstat->qos_info&BIT(2))
> -							pstat->uapsd_bk = BIT(0)|BIT(1);
> -						else
> -							pstat->uapsd_bk = 0;
> -
> -						if (pstat->qos_info&BIT(3))
> -							pstat->uapsd_be = BIT(0)|BIT(1);
> -						else
> -							pstat->uapsd_be = 0;
> -
> -					}
> -
> -					break;
> +			if (p && memcmp(p+2, WMM_IE, 6)) {
> +				p = p + ie_len + 2;
> +			} else if (p && !memcmp(p+2, WMM_IE, 6)) {
> +				pstat->flags |= WLAN_STA_WME;
> +				pstat->qos_option = 1;
> +				pstat->qos_info = *(p+8);
> +				pstat->max_sp_len = (pstat->qos_info>>5)&0x3;
> +
> +				pstat->has_legacy_ac = false;
> +				if ((pstat->qos_info&0xf) != 0xf)
> +					pstat->has_legacy_ac = true;
> +
> +				if (pstat->qos_info&0xf) {
> +					pstat->uapsd_vo = 0;

This variable and other variables below are set to 0 just before the loop,
so the initialization here can be removed.

> +					if (pstat->qos_info&BIT(0))
> +						pstat->uapsd_vo = BIT(0)|BIT(1);
> +
> +					pstat->uapsd_vi = 0;
> +					if (pstat->qos_info&BIT(1))
> +						pstat->uapsd_vi = BIT(0)|BIT(1);
> +
> +					pstat->uapsd_bk = 0;
> +					if (pstat->qos_info&BIT(2))
> +						pstat->uapsd_bk = BIT(0)|BIT(1);
> +
> +					pstat->uapsd_be = 0;
> +					if (pstat->qos_info&BIT(3))
> +						pstat->uapsd_be = BIT(0)|BIT(1);
>  				}
> +				break;
>  			} else {
>  				break;
>  			}
> -			p = p + ie_len + 2;
>  		}
>  	}
>  
> -- 
> 2.25.1
> 

-- 
Sincerely yours,
Mike.

