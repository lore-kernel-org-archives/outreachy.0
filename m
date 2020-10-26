X-GM-THRID: 6886889197397868544
X-Received: by 2002:a67:dd16:: with SMTP id y22mr10172243vsj.40.1603703340796;
        Mon, 26 Oct 2020 02:09:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:3113:: with SMTP id e19ls506084ual.6.gmail; Mon, 26 Oct
 2020 02:08:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzOB2PUeUiwAHOADz0wkKpDJ571cZoTurXyqsPxbIeWLzu5gC8ATHzqK+QOa1J1FM/djksb
X-Received: by 2002:ab0:55:: with SMTP id 79mr18648588uai.59.1603703339421;
        Mon, 26 Oct 2020 02:08:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603703339; cv=none;
        d=google.com; s=arc-20160816;
        b=iBj30dNx5qrt07WTKCJ0XWKkmWQ4SCo9wbllK/rfuMEClJgsaAsW01IKsb9eSbrc2z
         bpP1b4hjh+KpJ++D2sBOh8N2tPYxfRSRfDX9xIGOEa4TuteQy3q/tSY82eo7NYVjoeCB
         w846z+WLwNZ3ImpPmzmD4T5ttYS4d5PMng88Z1DDpiSb4d5UAJmJkIFAVODD3L3DnaOg
         ozHrdAwBPQBQzoRK/JaUsoWMTLNU33Nvf272WExUTu2fn2Syy6dX9ymborjkH9TO3qKa
         XlHq7JR5OEfieEwnP6/girn/cJLMBS+mM5WyyHBsZ39E8kv+wg/e7/TEOgprfXNikfne
         s8+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=V0XBhr62d3yB2ow/8epJVq6sJrShVQFJ62CzoC49SpE=;
        b=v39P/zt62nsqbr8PlDOUFKNvlypF1zeV0lP00+q40P0VM9UfV7+C4MEY6lL5gABKQW
         25p2QdZ+dBjPQalT4uz7KliL17rOFzxnGtOs7mSuigV9SZBSS4l65fr5h/tT9dEWi1uQ
         wQEJa9XQQ0abTIGN0xBL2pl07P7x46ceudOn39vbRTxO2seYhkEJ17P1zXAHGiTtGVOq
         hT8DOtMDjMJFDdcpINEkaU4Gvn7QUAeprjgh2c+hUwXXfj0uTNPkImCFnYYc45BRIb72
         e2dKB1n/gsP9HUMPDiRGX29s1oDWkyRPy/cJ9mdVFwoAnwvWLXe6gz4V/kEnos7+9Nrx
         nMUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="F7k9I/ke";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id v3si462350vkb.2.2020.10.26.02.08.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 02:08:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="F7k9I/ke";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09Q957fx128948;
	Mon, 26 Oct 2020 09:08:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=V0XBhr62d3yB2ow/8epJVq6sJrShVQFJ62CzoC49SpE=;
 b=F7k9I/keCOQ8zHB1oCV2Ao2nvmx5s97QwfpdSfeUzWpPwP84OmS528yTCHc5OwCjcdD+
 osl1mr+RA88MacFbX6uAIp0Ue9um6tqwqjl+zp0ApGrgudauF3+R43oBugIuC2Cai8vP
 q5J8nfH/6OFCta0zIntMyVc/+hueCdlvYTVUtBblKY7+Uou5RUINlDQj5b3dfwQdboow
 ZRkZheu14MBbQF35ndo7UgUqOBoOvXN9/p6+O2YP3TzP4zE743SeOz0aubvwYpuxG4vu
 E8zcVPt2e4Ea+zIECB4BymKnba+YDfqnYEe9D8oyJnufRZSsrwO2n0wtoWcdmujP1ftZ lg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2130.oracle.com with ESMTP id 34c9sakt8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 26 Oct 2020 09:08:54 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09Q95t9x069871;
	Mon, 26 Oct 2020 09:08:54 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 34cx5vspsm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 26 Oct 2020 09:08:54 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09Q98rWR009374;
	Mon, 26 Oct 2020 09:08:53 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 26 Oct 2020 02:08:52 -0700
Date: Mon, 26 Oct 2020 12:08:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Elena Afanasova <eafanasova@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8192u: ieee80211: replace kmalloc/memset
 with kzalloc
Message-ID: <20201026090846.GE1042@kadam>
References: <b0d792de290fd492ac77cfa574150d67d3b6276c.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0d792de290fd492ac77cfa574150d67d3b6276c.camel@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9785 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxscore=0 mlxlogscore=999
 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010260066
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9785 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1011 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010260066

On Fri, Oct 23, 2020 at 11:47:05AM -0700, Elena Afanasova wrote:
> Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
> Found with Coccinelle.
> 
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v2:
> 	- correct the subject line
> 	- correct the commit message
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 63a561ab4a76..fb8483c499b3 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
>  {
>  	struct ieee80211_txb *txb;
>  	int i;
> -	txb = kmalloc(
> -		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
> -		gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);

Add a blank line.  It's tough know where the line is between where is
between the "one thing per patch" but this is probably within the scope.
Generally if there is a white space cleanup on the same line you are
modifying then you should clean it up.  Use the struct_size() macro.

This patch means that we now memset() more memory than before.  It's
probably a small slow down.  I guess I can't be too happy about a slow
down...  Let's just leave it as-is.

regards,
dan carpenter



