X-GM-THRID: 6950903323792769024
X-Received: by 2002:a9d:6e11:: with SMTP id e17mr2754982otr.222.1618494180038;
        Thu, 15 Apr 2021 06:43:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:71cf:: with SMTP id z15ls1397487otj.2.gmail; Thu, 15 Apr
 2021 06:42:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxh2CiQPeCXg75phHu/EFEW22koD2A0Upi+ZANCjwX96Z1zh3P3IWn54gIjkneB8Wx5Nzn
X-Received: by 2002:a9d:316:: with SMTP id 22mr2751437otv.210.1618494179244;
        Thu, 15 Apr 2021 06:42:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618494179; cv=none;
        d=google.com; s=arc-20160816;
        b=wJrzXQWu8KX/U1rqa5pnEUvz4zUIBnyIgfZV3fzNjoXDxo1mVsu4jvfdovOPqd8lW7
         ZDg5Ht65X+L8QZESZFfRgYn/lnw7Hbqa+blQpcDwh8ELsjztcVw8tx4b5yzKVSDN5M4k
         sKM9MzOLalXRwHUZOtmp45Z9/59bXwS2pwNUMqF//VLXDJf/I0DNYWyL5ttoEfj0M/nu
         7yTvO1cANmH54cL5jTIHcPdbVVZmsEyNhqXKe7xraTGLsTSZ6XKP/9/NzV1U09LNGFq3
         z5NPg1hBRzQXAvUaAeMEEazKoN13ZO5wjO8mhT0CQY6GqDAfuHb2VmtATZv6jBsHU74H
         Jxag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V2FeJYZDww2DdD1lDXHuBLfVqGEAO/xiKgUfUUlkplc=;
        b=ZczxloeQcGZRW7oCeJhDZnu4yZHidBRCPYEqlWzgprdFXXg+BH6d41xagzDQ5u6q1D
         2eRI7VvMtvlDakd5qaAQwXQDOMdVL6DHKAEjbeswA2iyT2Nri+VjSeB8mX9mj+e085V/
         nKqvP//1Y1u7mRF7MOtWPCkAgz1rXvel+lAqXh02eOW79fnMnYeehcFeuHi2P2Zc0bBZ
         5to5X6lS4cO6pkTG+Ud80wlf2y5T2BUtqCd8yft3AViWJQ/XcLDatmgSW/W0n4YyJt/N
         b+JcTcCDx7Ngi+dbn9+WtY4PmPPJ9uqBF7bxMgYBXBDL5Nac+QCsjsbIM+C4d2gf4r+4
         BVlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xcz1bPAX;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id b11si243260ots.2.2021.04.15.06.42.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 06:42:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xcz1bPAX;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x636.google.com with SMTP id p16so8119392plf.12
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 06:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=V2FeJYZDww2DdD1lDXHuBLfVqGEAO/xiKgUfUUlkplc=;
        b=Xcz1bPAXSS1KyUCTgQ0sBGmoucVOtgXkHI9HYiqDMycby0xFc+NYG3kuaLxm7alIhg
         0pyfawO0M8+Q0thPzNkp/n0fExZ23ce4pdUdBfycvIUozGKR+HxkcGVNHiStaxRopMMa
         c9vbYZSFJafxvvH0mW+prBPM2hE76tljvwoiF5gLU/L/KJdkCKxHYGkMNmLdM3EnYvr9
         p+N+7DiP9Oy3RSwLkGsl29FEl4BeQhE+rkzwf3OXGa/CRcainKJHq77YRZ3wpThA4BYQ
         NRyo8gZqXiY7Wwy2WGsL/DO4HiRYxhm/ifYDq7o/8/jnKOWSXAL59zwzpjnTDzQl0Mz+
         0KcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=V2FeJYZDww2DdD1lDXHuBLfVqGEAO/xiKgUfUUlkplc=;
        b=NdYWtYBOac3r48tyAyQPkz/j5OVezMbAk7vaYOAB01WGrrHRmOEMujEWswVqNAC7YX
         koaXs1b3qprxfumGKN3kTP55tXZ6vCvffJb9J414JHSwjm5SjsAECyV4R9ExvlJ9r69G
         j3RUNI4TzLx+fuGP06C4fmRiuXEHIFUNc6g+AzslswRSFq+AqFqtJrthCRpO4kuiC7bt
         SAlMCUKM9/nrz51eRU7EFCcOdQGNIB4hiXpraCumNEyPuiXwqyf3+YfyYeApcb2Of3GA
         foE2uc9fEHCyWAI1bL0DLjUL1OoaSZFBwiapBQl9lKV26AoyATO0R52O6uU5Mt0tK7EV
         C+rw==
X-Gm-Message-State: AOAM533dKOhJhT9g5KeZ0xpDtQAdCQotBzQP2wnHA49xnOAiBz79glUh
	inixRNyXdDdaBB7v7sozwsc=
X-Received: by 2002:a17:90a:d184:: with SMTP id fu4mr3902551pjb.79.1618494178670;
        Thu, 15 Apr 2021 06:42:58 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id g24sm2715066pgn.18.2021.04.15.06.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 06:42:58 -0700 (PDT)
Date: Thu, 15 Apr 2021 19:12:47 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: davem@davemloft.net, kuba@kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 4/5] staging: rtl8192e: rectified spelling mistake and
 replace memcmp with ether_oui_equal
Message-ID: <YHhC1/R6lrWN57JC@kali>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
 <eda8d3401f2f7ff7a61137b4935c6ccb09112e52.1618380932.git.mitaliborkar810@gmail.com>
 <YHak+7LA6LdrUyzU@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHak+7LA6LdrUyzU@kroah.com>

On Wed, Apr 14, 2021 at 10:16:59AM +0200, Greg KH wrote:
> On Wed, Apr 14, 2021 at 12:26:01PM +0530, Mitali Borkar wrote:
> > Added a generic function of static inline bool in
> > include/linux/etherdevice.h to replace memcmp with
> > ether_oui_equal throughout the execution.
> > Corrected the misspelled words in this file.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  
> > Changes from v1:- Rectified spelling mistake and replaced memcmp with
> > ether_oui_equal.
> > 
> >  drivers/staging/rtl8192e/rtl819x_HTProc.c | 48 +++++++++++------------
> >  include/linux/etherdevice.h               |  5 +++
> >  2 files changed, 29 insertions(+), 24 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > index ec6b46166e84..ce58feb2af9a 100644
> > --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > @@ -43,7 +43,7 @@ u16 MCS_DATA_RATE[2][2][77] = {
> >  	 810, 720, 810, 900, 900, 990} }
> >  };
> >  
> > -static u8 UNKNOWN_BORADCOM[3] = {0x00, 0x14, 0xbf};
> > +static u8 UNKNOWN_BROADCOM[3] = {0x00, 0x14, 0xbf};
> >  
> >  static u8 LINKSYSWRT330_LINKSYSWRT300_BROADCOM[3] = {0x00, 0x1a, 0x70};
> >  
> > @@ -146,16 +146,16 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
> >  	bool			retValue = false;
> >  	struct rtllib_network *net = &ieee->current_network;
> >  
> > -	if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
> > -	    (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3) == 0) ||
> > -	    (memcmp(net->bssid, PCI_RALINK, 3) == 0) ||
> > -	    (memcmp(net->bssid, EDIMAX_RALINK, 3) == 0) ||
> > -	    (memcmp(net->bssid, AIRLINK_RALINK, 3) == 0) ||
> > +	if ((ether_oui_equal(net->bssid, BELKINF5D8233V1_RALINK) == 0) ||
> > +	    (ether_oui_equal(net->bssid, BELKINF5D82334V3_RALINK) == 0) ||
> > +	    (ether_oui_equal(net->bssid, PCI_RALINK) == 0) ||
> > +	    (ether_oui_equal(net->bssid, EDIMAX_RALINK) == 0) ||
> > +	    (ether_oui_equal(net->bssid, AIRLINK_RALINK) == 0) ||
> >  	    (net->ralink_cap_exist))
> >  		retValue = true;
> > -	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
> > -		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> > -		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
> > +	else if (ether_oui_equal(net->bssid, UNKNOWN_BROADCOM) ||
> > +		 ether_oui_equal(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM) ||
> > +		 ether_oui_equal(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM) ||
> >  		 (net->broadcom_cap_exist))
> >  		retValue = true;
> >  	else if (net->bssht.bd_rt2rt_aggregation)
> > @@ -179,26 +179,26 @@ static void HTIOTPeerDetermine(struct rtllib_device *ieee)
> >  			pHTInfo->IOTPeer = HT_IOT_PEER_92U_SOFTAP;
> >  	} else if (net->broadcom_cap_exist) {
> >  		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
> > -	} else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
> > -		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> > -		 !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3)) {
> > +	} else if (ether_oui_equal(net->bssid, UNKNOWN_BROADCOM) ||
> > +		   ether_oui_equal(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM) ||
> > +		   ether_oui_equal(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM)) {
> >  		pHTInfo->IOTPeer = HT_IOT_PEER_BROADCOM;
> > -	} else if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
> > -		 (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3) == 0) ||
> > -		 (memcmp(net->bssid, PCI_RALINK, 3) == 0) ||
> > -		 (memcmp(net->bssid, EDIMAX_RALINK, 3) == 0) ||
> > -		 (memcmp(net->bssid, AIRLINK_RALINK, 3) == 0) ||
> > -		  net->ralink_cap_exist) {
> > +	} else if ((ether_oui_equal(net->bssid, BELKINF5D8233V1_RALINK) == 0) ||
> > +		   (ether_oui_equal(net->bssid, BELKINF5D82334V3_RALINK) == 0) ||
> > +		   (ether_oui_equal(net->bssid, PCI_RALINK) == 0) ||
> > +		   (ether_oui_equal(net->bssid, EDIMAX_RALINK) == 0) ||
> > +		   (ether_oui_equal(net->bssid, AIRLINK_RALINK) == 0) ||
> > +		   net->ralink_cap_exist) {
> >  		pHTInfo->IOTPeer = HT_IOT_PEER_RALINK;
> >  	} else if ((net->atheros_cap_exist) ||
> > -		(memcmp(net->bssid, DLINK_ATHEROS_1, 3) == 0) ||
> > -		(memcmp(net->bssid, DLINK_ATHEROS_2, 3) == 0)) {
> > +		   (ether_oui_equal(net->bssid, DLINK_ATHEROS_1) == 0) ||
> > +		   (ether_oui_equal(net->bssid, DLINK_ATHEROS_2) == 0)) {
> >  		pHTInfo->IOTPeer = HT_IOT_PEER_ATHEROS;
> > -	} else if ((memcmp(net->bssid, CISCO_BROADCOM, 3) == 0) ||
> > -		  net->cisco_cap_exist) {
> > +	} else if ((ether_oui_equal(net->bssid, CISCO_BROADCOM) == 0) ||
> > +		   net->cisco_cap_exist) {
> >  		pHTInfo->IOTPeer = HT_IOT_PEER_CISCO;
> > -	} else if ((memcmp(net->bssid, LINKSYS_MARVELL_4400N, 3) == 0) ||
> > -		  net->marvell_cap_exist) {
> > +	} else if ((ether_oui_equal(net->bssid, LINKSYS_MARVELL_4400N) == 0) ||
> > +		   net->marvell_cap_exist) {
> >  		pHTInfo->IOTPeer = HT_IOT_PEER_MARVELL;
> >  	} else if (net->airgo_cap_exist) {
> >  		pHTInfo->IOTPeer = HT_IOT_PEER_AIRGO;
> > diff --git a/include/linux/etherdevice.h b/include/linux/etherdevice.h
> > index 2e5debc0373c..6a1a63168319 100644
> > --- a/include/linux/etherdevice.h
> > +++ b/include/linux/etherdevice.h
> > @@ -87,6 +87,11 @@ static inline bool is_link_local_ether_addr(const u8 *addr)
> >  #endif
> >  }
> >  
> > +static inline bool ether_oui_equal(const u8 *addr, const u8 *oui)
> > +{
> > +return addr[0] == oui[0] && addr[1] == oui[1] && addr[2] == oui[2];
> > +}
> 
> Staging drivers are stand-alone, we can not add code outside of the
> driver directory in these patches, sorry.
> 
Okay Sir. When I tried to add static inline bool line in current file, it
showed errors which I was not able to rectify, but when I added that
line to include/linux/etherdevice.h file, and replaced memcmp with
ether_oui_equal, it worked fine.
I may be wrong in application. May I know how to resolve this?

> And as Dan said, this is wrong formatting, did you run checkpatch.pl on
> your changes?
>
Yes Sir, I ran checkpatch.pl, on both files, it showed no errors
against the changes I made.

> thanks,
> 
> greg k-h

