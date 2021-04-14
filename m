X-GM-THRID: 6950903323792769024
X-Received: by 2002:a65:43c9:: with SMTP id n9mr6277121pgp.19.1618388223283;
        Wed, 14 Apr 2021 01:17:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls832300plb.11.gmail; Wed, 14
 Apr 2021 01:17:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyYmBrLWZCxShKrL5iTlewR+8+QDBIVO22VZ4iZqw/CrDYahhO3cgvJpA70YIcTht2etVhO
X-Received: by 2002:a17:903:30c3:b029:ea:afe2:56f5 with SMTP id s3-20020a17090330c3b02900eaafe256f5mr25022692plc.64.1618388222209;
        Wed, 14 Apr 2021 01:17:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618388222; cv=none;
        d=google.com; s=arc-20160816;
        b=mG4WARcIuac//YqEMF0IEp7AaeLi3pTLHpNsX8R4HZjbsgGDNLJET0uXTWiRMGsCqF
         ugAArs/FDp6GhP9dGgGoBpPREhlVYc5+eLgarnrmEdjZfYKpIE7zw9TroRoMIWXuqIur
         FJchc6txQ4pTuYWcCzOIDyU22s5h77Kp08QdGPSAQGbwKqa9Y9zlzr9+PbAIXAHqku4i
         ByVE8DSRSb9xGJz/BuMl/WW9sYBFvzH1+5tk/6387MhQ5ESk4b/G7CctDxhla75ZXzkL
         69/i5cMAefRwj7/4sdTRxcf/ga/78Swz7KF1U6ZNhD3nvFevs3+T62TN4NMDE2dDDrrZ
         RIPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NDEySKjuAf2lDacIjlpyCnVTfhIF9XZ+NpDZx0RPLsQ=;
        b=c+0Yj29C7/P1W6EFx1JGff91uPUbguoH4VyXqIiZdPWIjgwfyOoHa9iX2wkpA6YFXM
         OcTYEWnfk0kv613igPSSBv5a8gflQW7PNkJ6Q7yRdKtWPIqxj9mGCtT1IXiEscZe5+uK
         wUbusT6N5XoxH1sK8uQMsTDJfHgP4E+Ygdo3dQLK6kPWlw1BAMbrAfxUQmitZbIctHVc
         wdJri83/Zom8MSA7vGwQem0yXu+yNB1MCHy6prxDzGEEdKdj6MMMcvgTeL5/jdOGrE/h
         TfC2Ul0lhJ3ZAHdnUSHgYtlkbVQCJNnEXTxU6NAa2A/H49FPCsMDallH+poXCSX8ngH+
         025Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=bYVRMQAR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v22si329996pjn.0.2021.04.14.01.17.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 01:17:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=bYVRMQAR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4145B613C8;
	Wed, 14 Apr 2021 08:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618388221;
	bh=2sBobhzXZWWEU6C0CG7AExuaaOjf7RUA48J1N+S4LCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bYVRMQAR9i3xsNtKcnUJ5CAq80yJkbJsstjiow4R4m6xBfUxSPtcpGIkWx82YDZ2n
	 odMt4u5gRef5Yrf85OLB3RFMho5PEalI/3VggT4xnjfLTGWX/f728gwAZVpT1HXDaI
	 ifpiaYGGMgihyKr+tEIR45bX2RCtKCTBMgAjnw2s=
Date: Wed, 14 Apr 2021 10:16:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: davem@davemloft.net, kuba@kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 4/5] staging: rtl8192e: rectified spelling mistake and
 replace memcmp with ether_oui_equal
Message-ID: <YHak+7LA6LdrUyzU@kroah.com>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
 <eda8d3401f2f7ff7a61137b4935c6ccb09112e52.1618380932.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eda8d3401f2f7ff7a61137b4935c6ccb09112e52.1618380932.git.mitaliborkar810@gmail.com>

On Wed, Apr 14, 2021 at 12:26:01PM +0530, Mitali Borkar wrote:
> Added a generic function of static inline bool in
> include/linux/etherdevice.h to replace memcmp with
> ether_oui_equal throughout the execution.
> Corrected the misspelled words in this file.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  
> Changes from v1:- Rectified spelling mistake and replaced memcmp with
> ether_oui_equal.
> 
>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 48 +++++++++++------------
>  include/linux/etherdevice.h               |  5 +++
>  2 files changed, 29 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> index ec6b46166e84..ce58feb2af9a 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> @@ -43,7 +43,7 @@ u16 MCS_DATA_RATE[2][2][77] = {
>  	 810, 720, 810, 900, 900, 990} }
>  };
>  
> -static u8 UNKNOWN_BORADCOM[3] = {0x00, 0x14, 0xbf};
> +static u8 UNKNOWN_BROADCOM[3] = {0x00, 0x14, 0xbf};
>  
>  static u8 LINKSYSWRT330_LINKSYSWRT300_BROADCOM[3] = {0x00, 0x1a, 0x70};
>  
> @@ -146,16 +146,16 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
>  	bool			retValue = false;
>  	struct rtllib_network *net = &ieee->current_network;
>  
> -	if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
> -	    (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3) == 0) ||
> -	    (memcmp(net->bssid, PCI_RALINK, 3) == 0) ||
> -	    (memcmp(net->bssid, EDIMAX_RALINK, 3) == 0) ||
> -	    (memcmp(net->bssid, AIRLINK_RALINK, 3) == 0) ||
> +	if ((ether_oui_equal(net->bssid, BELKINF5D8233V1_RALINK) == 0) ||
> +	    (ether_oui_equal(net->bssid, BELKINF5D82334V3_RALINK) == 0) ||
> +	    (ether_oui_equal(net->bssid, PCI_RALINK) == 0) ||
> +	    (ether_oui_equal(net->bssid, EDIMAX_RALINK) == 0) ||
> +	    (ether_oui_equal(net->bssid, AIRLINK_RALINK) == 0) ||
>  	    (net->ralink_cap_exist))
>  		retValue = true;
> -	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
> -		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> -		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
> +	else if (ether_oui_equal(net->bssid, UNKNOWN_BROADCOM) ||
> +		 ether_oui_equal(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM) ||
> +		 ether_oui_equal(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM) ||
>  		 (net->broadcom_cap_exist))
>  		retValue = true;
>  	else if (net->bssht.bd_rt2rt_aggregation)
> @@ -179,26 +179,26 @@ static void HTIOTPeerDetermine(struct rtllib_device *ieee)
>  			pHTInfo->IOTPeer = HT_IOT_PEER_92U_SOFTAP;
>  	} else if (net->broadcom_cap_exist) {
>  		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
> -	} else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
> -		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> -		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3)) {
> +	} else if (ether_oui_equal(net->bssid, UNKNOWN_BROADCOM) ||
> +		   ether_oui_equal(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM) ||
> +		   ether_oui_equal(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM)) {
>  		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
> -	} else if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
> -		 (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3) == 0) ||
> -		 (memcmp(net->bssid, PCI_RALINK, 3) == 0) ||
> -		 (memcmp(net->bssid, EDIMAX_RALINK, 3) == 0) ||
> -		 (memcmp(net->bssid, AIRLINK_RALINK, 3) == 0) ||
> -		  net->ralink_cap_exist) {
> +	} else if ((ether_oui_equal(net->bssid, BELKINF5D8233V1_RALINK) == 0) ||
> +		   (ether_oui_equal(net->bssid, BELKINF5D82334V3_RALINK) == 0) ||
> +		   (ether_oui_equal(net->bssid, PCI_RALINK) == 0) ||
> +		   (ether_oui_equal(net->bssid, EDIMAX_RALINK) == 0) ||
> +		   (ether_oui_equal(net->bssid, AIRLINK_RALINK) == 0) ||
> +		   net->ralink_cap_exist) {
>  		pHTInfo->IOTPeer = HT_IOT_PEER_RALINK;
>  	} else if ((net->atheros_cap_exist) ||
> -		(memcmp(net->bssid, DLINK_ATHEROS_1, 3) == 0) ||
> -		(memcmp(net->bssid, DLINK_ATHEROS_2, 3) == 0)) {
> +		   (ether_oui_equal(net->bssid, DLINK_ATHEROS_1) == 0) ||
> +		   (ether_oui_equal(net->bssid, DLINK_ATHEROS_2) == 0)) {
>  		pHTInfo->IOTPeer = HT_IOT_PEER_ATHEROS;
> -	} else if ((memcmp(net->bssid, CISCO_BROADCOM, 3) == 0) ||
> -		  net->cisco_cap_exist) {
> +	} else if ((ether_oui_equal(net->bssid, CISCO_BROADCOM) == 0) ||
> +		   net->cisco_cap_exist) {
>  		pHTInfo->IOTPeer = HT_IOT_PEER_CISCO;
> -	} else if ((memcmp(net->bssid, LINKSYS_MARVELL_4400N, 3) == 0) ||
> -		  net->marvell_cap_exist) {
> +	} else if ((ether_oui_equal(net->bssid, LINKSYS_MARVELL_4400N) == 0) ||
> +		   net->marvell_cap_exist) {
>  		pHTInfo->IOTPeer = HT_IOT_PEER_MARVELL;
>  	} else if (net->airgo_cap_exist) {
>  		pHTInfo->IOTPeer = HT_IOT_PEER_AIRGO;
> diff --git a/include/linux/etherdevice.h b/include/linux/etherdevice.h
> index 2e5debc0373c..6a1a63168319 100644
> --- a/include/linux/etherdevice.h
> +++ b/include/linux/etherdevice.h
> @@ -87,6 +87,11 @@ static inline bool is_link_local_ether_addr(const u8 *addr)
>  #endif
>  }
>  
> +static inline bool ether_oui_equal(const u8 *addr, const u8 *oui)
> +{
> +return addr[0] == oui[0] && addr[1] == oui[1] && addr[2] == oui[2];
> +}

Staging drivers are stand-alone, we can not add code outside of the
driver directory in these patches, sorry.

And as Dan said, this is wrong formatting, did you run checkpatch.pl on
your changes?

thanks,

greg k-h

