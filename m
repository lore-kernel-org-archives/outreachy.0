X-GM-THRID: 6802944332146933760
X-Received: by 2002:a92:af53:: with SMTP id n80mr4273957ili.42.1583947696885;
        Wed, 11 Mar 2020 10:28:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:770b:: with SMTP id g11ls336501jac.5.gmail; Wed, 11 Mar
 2020 10:28:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs0R1QNKlElJGQs5EaJjG1Pl6pU8ueijLZLNyf8EoI6c8rPXPPupRIwnwv4HHZIKMqaJdrr
X-Received: by 2002:a02:8801:: with SMTP id r1mr3963326jai.50.1583947695083;
        Wed, 11 Mar 2020 10:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583947695; cv=none;
        d=google.com; s=arc-20160816;
        b=EOvSrrUrbZvZt0xJ72GcR8sx20S+AzqjlGn1ltevPdMr94D2azFDdaSI9BYUmC3/nz
         m4I0PIGnQVkY0xclKYPUZTqYJGAEh501rnVqeCHkXN81wTV87bqTM5O6p00lENgFi85p
         LxFMEpYPegvzQVLjc1w+g811BbvU1Z455zM7kX5l6HzGTpjsuMLjb1mLV9ldpZnXNmu+
         sJWl0v8WbhryX6jd5yBB9feL9NfqSDVff41iLoDJVEuX19OeVT35TqikjIpZxXRN7OEW
         4X213GtMVvYYHYYh60n086JxLZvICseIwscV+RZajjDF6xt7s8ZfWHe2jwg6qxNWnGta
         Uigw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id;
        bh=Pfd0Pr80B+86E/FvfeslKbt/J9U185IrLlfCXJ5A7XQ=;
        b=VAcQUxKdztQXk81YUcOmI+bmXcFEaTT38YgAlXi7lw1q1qQQWODpTusDBkn/DIjk7y
         3PHQD0SsaqevorYuL7pr36OnumiLqbyWMdcoVwx//FmzHkFfZqh5FcdxRySjv9rJF/1I
         aDRcwDOvc0MF+maNze2ub6I6CYoRX9lAmZ3Bgv30UXFDuPBDHEgpZj3saoPtzMlJBhls
         TcgUC7yDQYC8foJDp0dCufgAe+em2IqQ5UVU0YDbKmZFRwOivoW56xfYkxsZQ5EFcWQf
         ztM8eYRx6Ld237WkgH/USdI9bkzch2QX9MPNT32Fyk+7l3uQjUGVp2CCOtrRIQ+KBe5X
         8ZOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.70 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0070.hostedemail.com. [216.40.44.70])
        by gmr-mx.google.com with ESMTPS id q6si98403ild.2.2020.03.11.10.28.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 10:28:15 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.70 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.70;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.70 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 447CF182CED2A;
	Wed, 11 Mar 2020 17:28:14 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:3873:4225:4321:5007:7903:7904:8957:10004:10400:11232:11473:11657:11658:11914:12043:12048:12297:12555:12740:12760:12895:12986:13069:13255:13311:13357:13439:13972:14093:14096:14097:14659:14721:21080:21627:21990:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: bird04_64cb9a8d21023
X-Filterd-Recvd-Size: 2329
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Wed, 11 Mar 2020 17:28:12 +0000 (UTC)
Message-ID: <0fed25f914c6f39b024dd3bbc4f11892c40f4a60.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
From: Joe Perches <joe@perches.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>,
 gregkh@linuxfoundation.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com,  nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Wed, 11 Mar 2020 10:26:29 -0700
In-Reply-To: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-11 at 19:08 +0530, Shreeya Patel wrote:
> Remove if and else conditions since both are leading to the
> initialization of "valueDMATimeout" and "valueDMAPageCount" with
> the same value.

You might consider removing the
	/* Timeout value is calculated by 34 / (2^n) */
comment entirely as it doesn't make much sense.

For what N is "(34 / (2 ^ N))" = 6 ?

> diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
[]
> @@ -551,18 +551,11 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
>  
>  	pregistrypriv = &padapter->registrypriv;
>  
> -	if (pregistrypriv->wifi_spec) {
> -		/*  2010.04.27 hpfan */
> -		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
> -		/*  Timeout value is calculated by 34 / (2^n) */
> -		valueDMATimeout = 0x06;
> -		valueDMAPageCount = 0x06;
> -	} else {
> -		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
> -		/*  TX/RX Balance */
> -		valueDMATimeout = 0x06;
> -		valueDMAPageCount = 0x06;
> -	}
> +	/*  2010.04.27 hpfan */
> +	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
> +	/*  Timeout value is calculated by 34 / (2^n) */
> +	valueDMATimeout = 0x06;
> +	valueDMAPageCount = 0x06;



