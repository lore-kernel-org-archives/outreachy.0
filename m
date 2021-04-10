X-GM-THRID: 6949336667395194880
X-Received: by 2002:a17:90a:5889:: with SMTP id j9mr17488983pji.69.1618020434326;
        Fri, 09 Apr 2021 19:07:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b50f:: with SMTP id y15ls4465005pge.2.gmail; Fri, 09 Apr
 2021 19:07:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5b6u8KYxj/5/eqMMQm3r0R0XanWli2BORLwG7SmTR1ZAzJSZ9anQvfejk4fbOspHQ0n3s
X-Received: by 2002:aa7:824e:0:b029:20a:3a1:eeda with SMTP id e14-20020aa7824e0000b029020a03a1eedamr14573099pfn.71.1618020433032;
        Fri, 09 Apr 2021 19:07:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618020433; cv=none;
        d=google.com; s=arc-20160816;
        b=T+It3NoVcI6E51mh1AX/5xEUq0Omgtde1daDK/aNvNDAnG2HCl1Z0WJXscJMmwzTcX
         A8TYpvXjIaZfwofrxqIWFSPkWbaZFKuQc0eaBbpLDAzKYb733FWIea4BRFOtxcMimNEe
         WS76qgxqeaoRtRPAVTZ2a0z465/SoVAIcSR1qmh48KJqNaee2/pSHIEDEgnxAXRK5nLf
         nEQyPlzuqZGQ6UFNjsXMT7JxtJl1d8fpdCViK59DYTt7TpygJlSI8MztvovZSyvVQ2rK
         sDT7irt/nLEISgJ6B4LBCECuEonsHdAzatoz4NItsvbdsJVlrqoYz1nNfW+eZ9W7Fn+9
         eZdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=sow5NH5CJA23HdXoG51FJwB684z/50WhiaMEl4BW4U0=;
        b=e6zwWmvu7e9Dl+4Qt6aIzOpG9pMrwvP64MXX2upqmqJZboRL2vyr+Vw5mDzL800dGU
         CQZrYBxeSwpuSRZhm4ug/UYinsDck7Q+4haP8HvhbY+En8H0YWoLGAknONmYeGfJTCYT
         72FvMDKJXEP9CcKffzZRXiW3AobAqkBiJHA1/5wCMB14XkDDLIz7pUgRv8iCFpO/tTum
         v/Jp4udbLseAQcvO1svPkXC/wyVZ2c+DR/gMWhZGJhxMGWwV+u8ntW5CmiCjFrBZGsl2
         M/upTOh6W+pe1odtm567ZMLVsuIiy79nrF8HYI0WQbf9/0kwBMVqUYfr352JaLCbz5K6
         rrdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0185.hostedemail.com. [216.40.44.185])
        by gmr-mx.google.com with ESMTPS id j184si392483pfb.1.2021.04.09.19.07.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:07:12 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.185;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf17.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id A36711812FAA6;
	Sat, 10 Apr 2021 02:07:11 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf17.hostedemail.com (Postfix) with ESMTPA id 91FCC27DD18;
	Sat, 10 Apr 2021 02:07:10 +0000 (UTC)
Message-ID: <f5fe04d62b22eb5e09c299e769d9b9d8917f119c.camel@perches.com>
Subject: Re: [PATCH 4/6] staging: rtl8192e: matched alignment with open
 parenthesis
From: Joe Perches <joe@perches.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Date: Fri, 09 Apr 2021 19:07:09 -0700
In-Reply-To: <YHEA2Te3Hik5J39t@kali>
References: <YHEA2Te3Hik5J39t@kali>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 91FCC27DD18
X-Spam-Status: No, score=0.10
X-Stat-Signature: mkpzxbsbmfazgbhd1k69skk37sdefyeh
X-Rspamd-Server: rspamout04
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX187jCxClcn3J4yFzx2u4t0xldxYR15e8j0=
X-HE-Tag: 1618020430-317341

On Sat, 2021-04-10 at 07:05 +0530, Mitali Borkar wrote:
> Matched the alignment with open parenthesis to meet linux kernel coding
> style.
> Reported by checkpatch.
[]
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
[]
> @@ -154,7 +154,7 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
> �	    (net->ralink_cap_exist))
> �		retValue = true;
> �	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
> -		!memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> +		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> �		!memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
> �		(net->broadcom_cap_exist))

checkpatch is a stupid script.
Look further at the code not just at what checkpatch reports.
Align all the contination lines, not just the first one.

It might be sensible to add a generic function like

static inline bool ether_oui_equal(const u8 *addr, const u8 *oui)
{
	return addr[0] == oui[0] && addr[1] == oui[1] && addr[2] == oui[2];
}	

to include/linux/etherdevice.h

(Maybe use & instead of && if it's speed sensitive)

so this would read

	else if (ether_oui_equal(net->bssid, UNKNOWN_BORADCOM) ||
		 ether_oui_equal(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM) ||
		 ether_oui_equal(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM) ||
		 net->broacom_cap_exist)

and it'd also be good to correct the typo of UNKNOWN_BORADCOM globally.

> @@ -654,13 +654,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
> �	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
> �
> 
> �	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
> -		sizeof(pHTInfo->SelfHTCap));
> +	       sizeof(pHTInfo->SelfHTCap));

Doesn't need casts or parentheses.

	memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHCap));

> �	memset((void *)(&(pHTInfo->SelfHTInfo)), 0,
> -		sizeof(pHTInfo->SelfHTInfo));
> +	       sizeof(pHTInfo->SelfHTInfo));

etc...

> @@ -815,7 +815,7 @@ void HTUseDefaultSetting(struct rtllib_device *ieee)
> �		HTFilterMCSRate(ieee, ieee->Regdot11TxHTOperationalRateSet,
> �				ieee->dot11HTOperationalRateSet);
> �		ieee->HTHighestOperaRate = HTGetHighestMCSRate(ieee,
> -					   ieee->dot11HTOperationalRateSet,
> +							       ieee->dot11HTOperationalRateSet,
> �					   MCS_FILTER_ALL);

multi line statement alignment etc...



