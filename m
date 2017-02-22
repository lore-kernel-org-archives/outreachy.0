X-GM-THRID: 6389791832562204672
X-Received: by 10.157.26.118 with SMTP id u51mr11125735otu.139.1487794834386;
        Wed, 22 Feb 2017 12:20:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls591468itb.21.gmail; Wed, 22 Feb
 2017 12:20:33 -0800 (PST)
X-Received: by 10.99.185.77 with SMTP id v13mr10916885pgo.160.1487794833505;
        Wed, 22 Feb 2017 12:20:33 -0800 (PST)
Received: by 10.55.163.149 with SMTP id m143msqke;
        Wed, 22 Feb 2017 11:50:35 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr3440210ljd.23.1487793034523;
        Wed, 22 Feb 2017 11:50:34 -0800 (PST)
Return-Path: <arend.vanspriel@broadcom.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id 14si209434wmn.2.2017.02.22.11.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 11:50:34 -0800 (PST)
Received-SPF: pass (google.com: domain of arend.vanspriel@broadcom.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com;
       spf=pass (google.com: domain of arend.vanspriel@broadcom.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=arend.vanspriel@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: by mail-wm0-x22d.google.com with SMTP id v77so8354056wmv.1
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 11:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=vWIVM91qZW5O17v4h7TiFQUV+YV1j1b+3ap41wodLp8=;
        b=bxJMFmohbF12i7tI4rC0rCb4KnEAoznQ2rzUju8RYiySkHWw1OAiIUlBavt4XqUWGP
         EzfiEggxawd0VCdUCgB9N4JbgbsifwmIcQJIzBdI91fMOfXQ/MztZbrlBinQdiOZ0AQ6
         JYVgawME2XuvZXvCM8p76QSh/L3nfLqrLPwaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=vWIVM91qZW5O17v4h7TiFQUV+YV1j1b+3ap41wodLp8=;
        b=ECMN/2H9qGpoxora+8qA2tQdQeyOQ9Aof2KuicMpdpu1ta6gKKEIhL6/Dn5U9OFO1G
         PKPiBT9lMct2uaSpcmzXR84SWzNwqjsvthXnuHgbGzK8Ub6du6Q1KZ/2u7QZlLkiZEox
         JZWeq6oWJcCl49aTa2ELUrCBXrKWEe8eYQjE4zw6Z75uJA2cmf+7EiKdM0Jj7cHfSWNi
         SY9ug67Aoqe3PFxL1zdiGA0whUqzIqKao5twZ05SfsUnYp2CEXtuw7ecQ+mLqKl8X1A2
         E0Z/2CIerZDTslJUaKCszNZ0OKJR8LSzoD83DyQXDGEhfnxOyyKcJbb1uoWMj/EzfBC+
         9O+g==
X-Gm-Message-State: AMke39mYO8yOwMXjC/Ou7Mv9FHqg7zlw8DQZwe2SIndLuhbrl5PvDaDqtaUDU2bTlzb0wuMf
X-Received: by 10.28.10.68 with SMTP id 65mr2534wmk.63.1487793034167;
        Wed, 22 Feb 2017 11:50:34 -0800 (PST)
Return-Path: <arend.vanspriel@broadcom.com>
Received: from [10.177.251.140] ([192.19.248.250])
        by smtp.gmail.com with ESMTPSA id j39sm2940878wrj.45.2017.02.22.11.50.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 11:50:33 -0800 (PST)
Subject: Re: [PATCH v2] staging: wilc1000: renames struct tstrRSSI and its
 members u8Index, u8Full
To: Tahia Khan <tahia.khan@gmail.com>, outreachy-kernel@googlegroups.com,
 aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20170222171403.GA20626@coolbox>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <838d3e67-646d-b2d3-ef7d-5812675db6db@broadcom.com>
Date: Wed, 22 Feb 2017 20:50:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170222171403.GA20626@coolbox>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 22-2-2017 18:14, Tahia Khan wrote:
> Fixes multiple camel case checks on struct tstrRSSI from checkpatch.pl:
> 
> Avoid CamelCase: <tstrRSSI>
> Avoid CamelCase: <u8Full>
> Avoid CamelCase: <u8Index>

Just a generic remark that may help you with other changes you will be
making in the linux kernel. Warnings from checkpatch.pl and other tools
are useful, but try to look further than just fixing a warning.
Understand what the code is doing is just as important.

> Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h       |  8 ++++----
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 10 +++++-----
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index cff1698..5b65c4f 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -70,9 +70,9 @@ enum connect_status {
>  	CONNECT_STS_FORCE_16_BIT = 0xFFFF
>  };
>  
> -struct tstrRSSI {
> -	u8 u8Full;
> -	u8 u8Index;
> +struct tstr_RSSI {
> +	u8 full;
> +	u8 index;
>  	s8 as8RSSI[NUM_RSSI];

So you have a struct here with three members and you choose to only
change the first two. What do you think about the third one just by
looking at it. And what about the name of the struct. What does 'tstr' mean?

>  };
>  
> @@ -93,7 +93,7 @@ struct network_info {
>  	u8 *ies;
>  	u16 ies_len;
>  	void *join_params;
> -	struct tstrRSSI str_rssi;
> +	struct tstr_RSSI str_rssi;
>  	u64 tsf_hi;
>  };
>  
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index f7ce47c..56f133e 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -205,8 +205,8 @@ static u32 get_rssi_avg(struct network_info *network_info)
>  {
>  	u8 i;
>  	int rssi_v = 0;
> -	u8 num_rssi = (network_info->str_rssi.u8Full) ?
> -		       NUM_RSSI : (network_info->str_rssi.u8Index);
> +	u8 num_rssi = (network_info->str_rssi.full) ?
> +		       NUM_RSSI : (network_info->str_rssi.index);

so struct tstr_RSSI is really a rssi history buffer so maybe naming it
as such makes it clearer, ie. struct rssi_history_buffer.

>  	for (i = 0; i < num_rssi; i++)
>  		rssi_v += network_info->str_rssi.as8RSSI[i];
> @@ -346,13 +346,13 @@ static void add_network_to_shadow(struct network_info *pstrNetworkInfo,
>  	} else {
>  		ap_index = ap_found;
>  	}
> -	rssi_index = last_scanned_shadow[ap_index].str_rssi.u8Index;
> +	rssi_index = last_scanned_shadow[ap_index].str_rssi.index;
>  	last_scanned_shadow[ap_index].str_rssi.as8RSSI[rssi_index++] = pstrNetworkInfo->rssi;
>  	if (rssi_index == NUM_RSSI) {
>  		rssi_index = 0;
> -		last_scanned_shadow[ap_index].str_rssi.u8Full = 1;
> +		last_scanned_shadow[ap_index].str_rssi.full = 1;

So the 'full' member is actually a bool and you might type it as such.

Hope this helps.

Regards,
Arend

>  	}
> -	last_scanned_shadow[ap_index].str_rssi.u8Index = rssi_index;
> +	last_scanned_shadow[ap_index].str_rssi.index = rssi_index;
>  	last_scanned_shadow[ap_index].rssi = pstrNetworkInfo->rssi;
>  	last_scanned_shadow[ap_index].cap_info = pstrNetworkInfo->cap_info;
>  	last_scanned_shadow[ap_index].ssid_len = pstrNetworkInfo->ssid_len;
> 

