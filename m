X-GM-THRID: 7022901752311578624
X-Received: by 2002:a17:90b:4a4d:: with SMTP id lb13mr33812195pjb.122.1635153191207;
        Mon, 25 Oct 2021 02:13:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1521:: with SMTP id v33ls1477740pgl.0.gmail; Mon, 25 Oct
 2021 02:13:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwOvHJ1tvrPZd3C5pnjk37NjAVz+POxLir7K7Dz+/ClLiKSZmiFWsgaro2Iww4rKs1q3jen
X-Received: by 2002:a05:6a00:2410:b0:40e:7d8:ad7f with SMTP id z16-20020a056a00241000b0040e07d8ad7fmr17060766pfh.25.1635153189833;
        Mon, 25 Oct 2021 02:13:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635153189; cv=none;
        d=google.com; s=arc-20160816;
        b=W+a/SJVW2+mc+VBU+phIGvgPQzSVxpgW5wZawr330E4xkypWoqyeRSgQ6xGILgOTN8
         3qRKSY+FJ46WXWjFMUHmw2ZDeuFhqUhhRnekgjKGYDKKafy2mkJe6Lu9YSJWDKlatBFd
         kLDm6+cD/tB9M4aEYXKblanhlPzcDBPCHApmxmHiwaC4h27svKATRhs1rr9D6w4sRhmM
         CN0PunRwBncPwpcyX30X+zaLEIsXXcTYTH/SAYQZLBl/2xmXh4ALkGT/jejvf9pBeG7d
         xvOYGIG5mUA64pIgvwzPsNdwqY7tslj1bK34aLrXjIDoUiA8xrLCnbQVHNe/V4vAP40s
         eKRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=ATtusDzZDIylNdGI8yivyPmdhTP5mkz+4pQcoTIn5lo=;
        b=j4IPAv12N7pp+DUUCg0lVoZiruN20EU+vDoimdzTXG8ZsJ2AEvOg8A8T92tLJxXEHF
         bl9SckiqNIBgT38xBuAZo9vKKL097JlFGMZC2pKWwT5sa1oD748eBMuX1BymBmGKV3xN
         ycxzgI3302hTYV9IZYgZI+8vl7LaeU3gs0D0EqFEAgOQ6uCy++HxcELJcvHLMv/k5BMW
         CXdnQnGEmqaxKLrtNLc+V5ISSyIQ2u8FcNvlEt4R4uv2cL2xlr8u3LPPHkX4lED6PJcW
         lyOsaJZaL+C0aZCrXlTjKU8zKBMC84R/HyTR8VLn2KU23VmUfjy4fFyc95V5hL4Ni85A
         lqdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=jGEUbIXR;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id m1si82955pjv.1.2021.10.25.02.13.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 02:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=jGEUbIXR;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62b.google.com with SMTP id t11so7459823plq.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 02:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=ATtusDzZDIylNdGI8yivyPmdhTP5mkz+4pQcoTIn5lo=;
        b=jGEUbIXRYvuB0DrV+TSzKVqHPQhjz4+WwI9i9s8d5F3r3jIyl7jzHRW6VzhP1pw5Ku
         mLaGVq6dBPHN7MmQDZGADNH11wTKfciU0kZto8qjs6gZ+fFtMNZ3FG3BIu20G3E/WUyV
         Lf7t8U1VfDgh/VkY401jniye7a9E7jbSaTmicUmcWwt8EM5vcp7zm4QYFx0Ag6qRTWLf
         Tk+aChdCxmBZeZ1EmVffeuTOZrxgVG9mwtOfzW1mPDKnOyRBaMgGRVLpTL/ZdDtxfMz5
         dlpVr++Angmfl8OZOpqWWkxf8f8/2O5j74/tzeZhj2CByW4M7qCHVr1REnTujeNzANGd
         bqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ATtusDzZDIylNdGI8yivyPmdhTP5mkz+4pQcoTIn5lo=;
        b=6mUwvckCrwwIJdtuQk8uvAzs6hE1r+2S81gUZj0R/usxVsGWZxf6g42PPkdS6O74fs
         IR1cKLx7n1XzX97Hg+gIRivpbnTBFw2IKTO7kihuJpIYD6D8y7RMilAJh8Pyw3ykMj5m
         OsmwRuEoyWN3fPDpzWeGZAK4WYX209RisTT9MC8PtfLiwYba1QvaqrZJlNmDybq6d1Uq
         cQhpDXkfDDEAErd4HzPhJry6LW7hmbMCOhc2V/RGY5q8TOflxv6WtTyBzAh3hIgnA7Du
         K9ZboonxuUhuB9nXTR5PU6HSl0ZruOcAp6jI3OUDUr2KI9fdmMZr8Vg7AHi2DfYd9OYF
         jTwQ==
X-Gm-Message-State: AOAM533G1zVC5flSjmXoC+vffdZo7UUGdOpySEhefoWsALemGORspjdV
	F337Doqb0YfEl5JsSoiihk4raJ738/o=
X-Received: by 2002:a17:90b:3e85:: with SMTP id rj5mr34001833pjb.104.1635153189553;
        Mon, 25 Oct 2021 02:13:09 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from [192.168.1.122] ([122.181.48.19])
        by smtp.gmail.com with ESMTPSA id y6sm14772373pfi.154.2021.10.25.02.13.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 02:13:09 -0700 (PDT)
Message-ID: <4715e602-bdc0-e0d9-ff99-8eb08c8c5063@gmail.com>
Date: Mon, 25 Oct 2021 14:43:03 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Refactor
 nested if-else
Content-Language: en-US
To: Kushal Kothari <kushalkothari285@gmail.com>, gregkh@linuxfoundation.org,
 fabioaiuto83@gmail.com, ross.schm.dev@gmail.com, hdegoede@redhat.com,
 marcocesati@gmail.com, fmdefrancesco@gmail.com,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com,
 kushalkothari2850@gmail.com
References: <20211025072528.152028-1-kushalkothari285@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <20211025072528.152028-1-kushalkothari285@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25-10-2021 12:55, Kushal Kothari wrote:
> Refactor nested if else by combining nested if into a single if condition and removing unnecessary else conditionals which leads to removing unnecessary tabs .There is no change in logic of new code.
> checkpatch warning : Too many leading tabs - consider code refactoring
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65 ++++++++-----------
>  1 file changed, 26 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index 0f82f5031c43..eb10b6f85426 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -1192,46 +1192,33 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
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
> +			if (p && !memcmp(p+2, WMM_IE, 6)) {
> +				pstat->flags |= WLAN_STA_WME;
> +				pstat->qos_option = 1;
> +				pstat->qos_info = *(p+8);
> +				pstat->max_sp_len = (pstat->qos_info>>5)&0x3;
> +				pstat->has_legacy_ac = false;
> +				if ((pstat->qos_info&0xf) != 0xf)
> +					pstat->has_legacy_ac = true;
> +
> +				pstat->uapsd_vo = 0;
> +				if (pstat->qos_info&0xf) {
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

there is a bug here, if *p* is not null, and *memcmp* failed; then we fall in else part and break, and will miss the next entry in *p* using below statement

p = p + ie_len + 2;


> 

Regards,

~Praveen.


