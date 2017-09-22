X-GM-THRID: 6468535394097954816
X-Received: by 10.129.77.85 with SMTP id a82mr4562856ywb.219.1506075727638;
        Fri, 22 Sep 2017 03:22:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.80.6 with SMTP id f6ls1420977pgo.19.gmail; Fri, 22 Sep
 2017 03:22:06 -0700 (PDT)
X-Received: by 10.84.229.144 with SMTP id c16mr4891741plk.37.1506075726646;
        Fri, 22 Sep 2017 03:22:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506075726; cv=none;
        d=google.com; s=arc-20160816;
        b=ja5YEawvVH3dCglzHsMDWceuPfJTJm4bZ+aMLRFji9XZ6j8bnHSDc5/nulESN62gPn
         9rTI61PMKB9cnUxjrfsV8LMxQaxn91qkAETNyUGU5WGI65iVORj1aMpPm4i++dJNwNNu
         ELhfMEcfmzcEJitX6fj00sRdOJaXcO729MnrNJwwcsAbNWQIsQQ2Tx7X4tsN480U/Vn7
         3wIypKcHlPt6igKcRrTxINZVZ0FRAst8kkfGiBTJzoDYx3pcJqKzvp03tbhZF7lih41A
         MefnHKDtjzMu4SJG8LE22lKjQUUXtMTcUYaJA5FXJ7gjRwBJGyEZrI6s18t2ROJMeBfX
         2Vug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=EIvbKFs/oFUTn0B1vhxcIkPkVFpfJJCi8T++HanPGQo=;
        b=VaX57BFi3kDXk1KKi1l70vl8qs2V1aJ7GoMPTfxg/xCUURWN6zwPRVZo/7PjLSI73V
         FG/GPfbwPCnSZBSGlJOZiZd94Uk0aiSxGVShZPVwUPGkbkkbzRYhmSIhBrioTyyT3wNq
         yyU/yEIJDrDbA1XiInBTd+eYW0mVHIR6JiHxHDDSkdP9UkbU0HTDJQ8PA+2Nrg7vBsAY
         dF0lelyW2RIf5m2ZBF8NDL79c8ovEErP4KSLVNuLWqZXgSjeu/rzKiXCQZbKtCqpdAiL
         izDCcjTTee3gujlzZsGLD18Jgye38Vu6Mnb/4Pl7JfGpB5HrLCA2xmLxMm58YiBtdxpP
         TJAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Op0LV7C5;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id o190si170455ywo.11.2017.09.22.03.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 03:22:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Op0LV7C5;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id 93so1065290iol.4
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 03:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EIvbKFs/oFUTn0B1vhxcIkPkVFpfJJCi8T++HanPGQo=;
        b=Op0LV7C53ir89qM3f3G/OMlgYtvqcBGXjeDhyVHpTQn1VTgoKY3xuogpTBHAdbpSV0
         Ewmkba7KWVO2kLaL2br+nmHZzeHLknRMOAcRxcV09JzMmAIhxaoNU/LI4uw2HmNBpOl4
         5K52CZCTHCekCjFYY2TFwNf4/YKtAf6E3JSVXCSOXJ3iQX9qnPuIl89ZIfxpEhLqVjVP
         c1LJ8fAep4/Nho/tPFBGwQC/Lxqi1qsOG3to5WQ1+UrszQKUld7dbRh0zD1MgXZ4J7/y
         vH9Wy/vhoI02TD59HIM4MEnHSOVmhRP0+TgYRToS5x/t7YVjovNMNX0FySWQOlZ9bIrc
         kV7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EIvbKFs/oFUTn0B1vhxcIkPkVFpfJJCi8T++HanPGQo=;
        b=Iaty/htRssmyly8QCsirjMB84PSjgBKZdahbGkfhVSI39bBBUJcHrXlsno5LGD7Dk+
         T82kYROYPrfSU2p8LKTqvIZC6csf0H1O9qUtPqCYTwVf4uOu31wMsYmNqm84DeHvkIZi
         pB1Y8Wub9vrN8xsrWOdcspqUW52xf0u9F/uhNlHj2Wq9YEHzG8Z6jbHrHBDJ0qPmOid2
         zq1+EzK9tR98VsN2TqAXmhouw2eBArP9dgSp4rYGtUtTlUkYeImfUvtJCf7xchBDB60W
         GIvxnCpXESvCydNfXONPSw+sQRaByGi5sHwhpkbwMR11buu54eNy2ovvmbmyBlpBCEup
         ro0w==
X-Gm-Message-State: AHPjjUg1w42RTH/xDUPp50OZno2ZRMcU7BuKZmY9xYoq4b0aPw5WL7jk
	FxoER3Ivii+mnoTq64Pxi9ahFQ==
X-Google-Smtp-Source: AOwi7QAioNl/Xtt1aegvHXx3AEpcA7ggUhIwZR46x5dMdtB6l8/SzWDYsFrvllzcXSfr9JWUsYXrIw==
X-Received: by 10.107.47.11 with SMTP id j11mr3306590ioo.217.1506075726250;
        Fri, 22 Sep 2017 03:22:06 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id k189sm2211263itb.41.2017.09.22.03.22.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 03:22:05 -0700 (PDT)
Date: Fri, 22 Sep 2017 15:52:01 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: remove unneeded
 conversions to bool
Message-ID: <20170922102201.GB724@aishwarya>
References: <20170922094052.GA29313@aishwarya>
 <alpine.DEB.2.20.1709221147330.3170@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709221147330.3170@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 22, 2017 at 11:47:44AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 22 Sep 2017, Aishwarya Pant wrote:
> 
> > Patch suppresses the following warning issued by coccicheck:
> > WARNING: conversion to bool not needed here
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Dropping this patch to include it in a clean up patch set.

Julia, I can include this ack when I add it to the patch set?

> 
> 
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > index 52f31c7..2db2ca6 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > @@ -707,7 +707,7 @@ static int issue_probereq_ex(struct adapter *padapter,
> >  	unsigned long start = jiffies;
> >
> >  	do {
> > -		ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
> > +		ret = issue_probereq(padapter, pssid, da, wait_ms > 0);
> >
> >  		i++;
> >
> > @@ -1283,7 +1283,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
> >  		da = pnetwork->MacAddress;
> >
> >  	do {
> > -		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0 ? true : false);
> > +		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
> >
> >  		i++;
> >
> > @@ -1410,7 +1410,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
> >  		da = pnetwork->MacAddress;
> >
> >  	do {
> > -		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0 ? true : false);
> > +		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
> >
> >  		i++;
> >
> > @@ -1517,7 +1517,7 @@ static int issue_deauth_ex(struct adapter *padapter, u8 *da,
> >  	unsigned long start = jiffies;
> >
> >  	do {
> > -		ret = _issue_deauth(padapter, da, reason, wait_ms > 0 ? true : false);
> > +		ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
> >
> >  		i++;
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170922094052.GA29313%40aishwarya.
> > For more options, visit https://groups.google.com/d/optout.
> >

