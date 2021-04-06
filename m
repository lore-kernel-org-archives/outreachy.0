X-GM-THRID: 6947727064751407104
X-Received: by 2002:adf:ea8b:: with SMTP id s11mr36046252wrm.413.1617714866988;
        Tue, 06 Apr 2021 06:14:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls12038205wrd.3.gmail; Tue, 06 Apr
 2021 06:14:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz9p0sjMtWgc247Ry4ROFMjQGtJlzicbRop+ZBdhO37rEjjp5Ksv2lTy+11GBt7dRMvH0p4
X-Received: by 2002:a05:6000:190:: with SMTP id p16mr24083470wrx.70.1617714865283;
        Tue, 06 Apr 2021 06:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617714865; cv=none;
        d=google.com; s=arc-20160816;
        b=ChjZhBCrWz82fouRPtXNHhvXOoy/11PTjoe3JnIM7gKP3J1eE0m4SMyf5KlD6Ap1BE
         kMJLOwzpFMfC0ec8KchzaV/s6tvhYWq1biZ0p7Ilg+z0F6VpT7FuZxa15SM69zEgaZoO
         b0C75B/kehp6Odl1LuvcCHojhDyJhzD2beN5qOtLqvkoJToxc+dh7rDEonmCVl2JHPbN
         fNY5Zhcauv+JejVvqBKC0s3fdKrr5pdvFPxAt9LpY9x0CF2enPTS02gfaFVpQp4pCMKs
         4qkKoaMmF/fFtvE73P981rUWNpMYB+cKnooeiWAAtuzKXZHburqxjAl3uwPwC6k//ne4
         9ZbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Jyc4XzYiplxZKJWr8stiFiY4OI9641o8fprPOPnJi5M=;
        b=zqQr+GuQrbLJvYlzY+x7+MHlTxZP7FBuPm2xbWTAinLkxLAOrxqXzKzkC1Y6Bwriu5
         837FBINNKqxur1gLR1p0nMB+5iXOZoH81Xk9YT/4wmnVMvEKGsyXW8KBILIZHY4DdxBx
         /88kNdfGJlcJyyfBYDUpIuEO+zGVoEjAJtZhmHUUH5OpIOHo+ZRBp+66nVp3KGd3oPJJ
         54ug+Sivrm8KnXzHWQOSiWceoqxqY8M7GDjcJROmF6Xkl+JiRHWAiDaa4MMhpp7ZtPej
         FTuGip5zWIy9MBW29b2x2AC13kucfdGMurQ2VAIfD1AMcmU+gk6vUx7EuYNOXdWbqn2k
         APMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LCfQYoii;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id f8si205605wmj.1.2021.04.06.06.14.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 06:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LCfQYoii;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x329.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so9290542wml.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 06:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Jyc4XzYiplxZKJWr8stiFiY4OI9641o8fprPOPnJi5M=;
        b=LCfQYoiia24DPIO9J78E90nCCMkNt6x11pCJsnL0tapjZR070TKPSOmVtOednCoRGC
         Ox279dPM63l8hpj+b2p38FmvWvw2J78yc0557EgNIbUA2eVg55NVAZASkJSfuoH72VTn
         7urg2n+aFT/TbDhiFtCqOROyRC15XTEssCCQqMvk3UmCcwgvWEBWdot6MSm7bgwCb+ed
         inCO6A6sC/sBejU4DunzSLTtNDvw3fUfVRqAMuzL5chafhoYuGaXtHhdEqBrwJA1DVmI
         9vwJBTx12ydslUiQBhyQ2CVbmvcsHYTJPKfeGvBC+18OG+M3pJmuR6zlI0mRnGwYLfhH
         Ei8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Jyc4XzYiplxZKJWr8stiFiY4OI9641o8fprPOPnJi5M=;
        b=nMLmfUQK4hQT7XNvW8V7HElqjVG5AWHm1yJnnINoYfAyJCFMOYmRCM1ISmzV3aZOks
         oGCW8Rgs4BFsHVzGdhtYq10JUY+YlKDCU+0YuOoVma/cWn5uKDaTY11A8OwWtjH0EyXg
         moQjMEFd3b+ZzW10Uhy5W+CfbXQiCK1FHA2wqFEbBNho4GxUM6KZL65hdhFHXv2pz2kT
         gnfZBekJ6kIJ273Bcp4fOUx7QmnDS8yHLr9/dECWpK2XOsyr1jphODWd3V9INd+vmIzF
         Y5Dp8HGgONOWeAEulHYgHp6opvRuLSS5+qIS4C3P+cBD0AVL4r2kQN+U425bZQHY0axG
         lHpA==
X-Gm-Message-State: AOAM530BoDG+vPg/txdUWegC+SuaPMV0Gh9ypz4gujK9A9UCTXwxaMM5
	CIwQw90dYyEBtqVFF5jNhUgKm+Bnr+WnRw==
X-Received: by 2002:a05:600c:4d13:: with SMTP id u19mr4062099wmp.16.1617714864689;
        Tue, 06 Apr 2021 06:14:24 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ad13:af9b:f63b:bc4b? ([2001:818:de85:7e00:ad13:af9b:f63b:bc4b])
        by smtp.gmail.com with ESMTPSA id s83sm2909188wms.16.2021.04.06.06.14.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 06:14:24 -0700 (PDT)
Subject: Re: [PATCH 3/4] staging: rtl8723bs: core: reorganize characters so
 the lines are under 100 ch
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
 <6ce5f20399f2bea9f08bb37150fc67fe3c2b2a55.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
 <YGxQcEvmxHrNz2US@kroah.com>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <2103809f-fc6d-be31-a57a-6d65914d8cf3@gmail.com>
Date: Tue, 6 Apr 2021 14:14:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YGxQcEvmxHrNz2US@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


Em 06/04/21 13:13, Greg KH escreveu:
> On Mon, Apr 05, 2021 at 06:29:19PM +0100, Beatriz Martins de Carvalho wrote:
>> Cleans up warnings of "line over 100 characters" but avoinding
>> more than 90 characters in file rtw_ap.c
>>
>> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
>> ---
>>   drivers/staging/rtl8723bs/core/rtw_ap.c | 22 ++++++++++++++--------
>>   1 file changed, 14 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
>> index 4dab4d741675..ca6fec52d213 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
>> @@ -278,11 +278,13 @@ void expire_timeout_chk(struct adapter *padapter)
>>   
>>   			if (psta->state & WIFI_SLEEP_STATE) {
>>   				if (!(psta->state & WIFI_STA_ALIVE_CHK_STATE)) {
>> -					/* to check if alive by another methods if station is at ps mode. */
>> +					/* to check if alive by another methods */
>> +					/* if station is at ps mode. */
>>   					psta->expire_to = pstapriv->expire_to;
>>   					psta->state |= WIFI_STA_ALIVE_CHK_STATE;
>>   
>> -					/* DBG_871X("alive chk, sta:%pM is at ps mode!\n", MAC_ARG(psta->hwaddr)); */
>> +					/* DBG_871X("alive chk, sta:%pM is at ps */
>> +					/* mode!\n", MAC_ARG(psta->hwaddr)); */
> You just wrapped a code line :(
>
> Just remove it, it's not needed.
Sorry! Yesterday I didn't realize that it was a code line. I will remove it.
>
>
>>   
>>   					/* to update bcn with tim_bitmap for this station */
>>   					pstapriv->tim_bitmap |= BIT(psta->aid);
>> @@ -309,7 +311,8 @@ void expire_timeout_chk(struct adapter *padapter)
>>   			);
>>   			updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
>>   		} else {
>> -			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
>> +			/* TODO: Aging mechanism to digest frames in sleep_q to */
>> +			/* avoid running out of xmitframe */
>>   			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt)
>>   				&& padapter->xmitpriv.free_xmitframe_cnt < ((
>>   					NR_XMITFRAME / pstapriv->asoc_list_cnt
>> @@ -375,7 +378,8 @@ void expire_timeout_chk(struct adapter *padapter)
>>   			if (list_empty(&psta->asoc_list) == false) {
>>   				list_del_init(&psta->asoc_list);
>>   				pstapriv->asoc_list_cnt--;
>> -				updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
>> +				updated = ap_free_sta(padapter, psta, false,
>> +						      WLAN_REASON_DEAUTH_LEAVING);
>>   			}
>>   			spin_unlock_bh(&pstapriv->asoc_list_lock);
>>   		}
>> @@ -469,7 +473,8 @@ void update_bmc_sta(struct adapter *padapter)
>>   
>>   		memset((void *)&psta->sta_stats, 0, sizeof(struct stainfo_stats));
>>   
>> -		/* psta->dot118021XPrivacy = _NO_PRIVACY_;//!!! remove it, because it has been set before this. */
>> +		/* psta->dot118021XPrivacy = _NO_PRIVACY_;//!!! remove it, */
>> +		/* because it has been set before this. */
> Again, look at what you are changing to see if it makes sense.
Yesterday had to make sense, but now I saw that was wrong. I will remove it.
>>   
>>   		/* prepare for add_RATid */
>>   		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
>> @@ -748,8 +753,8 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
>>   	cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
>>   
>>   	/* check if there is wps ie, */
>> -	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating hostapd, */
>> -	/* and at first time the security ie (RSN/WPA IE) will not include in beacon. */
>> +	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating */
>> +	/* hostapd, and at first time the security ie (RSN/WPA IE) will not include in beacon. */
> These changes do not look correct, you made them longer?

No, I only rearranged the block comment, where I sent the last word in 
the sentence to the next line,

and with that, each sentence stays with less than 100 characters. But I 
will remove it.

>
> thanks,
Thank you for to review, once more I will have more attention to my changes.
> greg k-h
Beatriz Martins de Carvalho

