X-GM-THRID: 6529221119652659200
X-Received: by 10.31.168.8 with SMTP id r8mr7078392vke.51.1520245139887;
        Mon, 05 Mar 2018 02:18:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.54.77 with SMTP id s13ls21944uad.2.gmail; Mon, 05 Mar 2018
 02:18:59 -0800 (PST)
X-Google-Smtp-Source: AG47ELtp8Xr5mJgHjsykexcEcjrnh9toouWFddsVrmUctzGx47QXGZuDWCG9/h84cL3WPQU4jLeq
X-Received: by 10.176.78.219 with SMTP id x27mr7178043uah.103.1520245139000;
        Mon, 05 Mar 2018 02:18:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520245138; cv=none;
        d=google.com; s=arc-20160816;
        b=Fc0xCctbYf3oamAYFZTzzlTWHxjMVSSu5T0RTJg+se4M9Jnx0oyxnEd12EL+O6/+aN
         NIRXkjD9ObDQpkp1IWjF7GP3H1DorNERIjVbaVof8sp9IExy4Wyg8JekegXo4X4KzX/M
         cBbjD3eX8TKTa67BuBtdpxzK9CedenfF1y1CH3Ptn+R0OFzAibRc5nD2G2dCux0+TcvD
         3Yv5G10ct5ul9vxK43ToHtVzGo7h6hT2Hkwp22rQOF1EanwBSkKWid6qqB+hUJZ+BR3q
         xnB9QfDXXNtwAYyNaUbe+rP+LWzNBbFFGFJpDYiCCpdpkrYtuWaWrnffE7skvrAJr7LE
         ajQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=m73J9yPxfO3fegP5HJW6o8P9/baUNkkE+wrIq0I3it4=;
        b=d1DyK+ZDG3fPOKmbfgmI6yQWL7VaOE6BoK40YB1lVixLOr0s/Iq6sl3I8x9ATHMZOe
         ibhQPg2Qs2XWf+MtgfD6A0zXXPBTdPFJnLlKYdNFl1gZLemLxbjQNLLJQwVW/gOBDCQY
         AfAo6RmZSsbkzWeL7jHXftNmU8yeY5HMiol1vW9ZyLNSOLk2V+OznmQvPDlqhVAXMFla
         5GGaljh0C1tTODMQK55HoVxafvCDZOG0RUpUnur5DHBANHQl6XMGrL2fFV8tmP+7UEky
         G0+FZ0KGH7gdU5hTaKgDU5XF+uyKWCEdAzHLcEPthxPqjgn/q6iml5uqrnujlP5O/bkl
         G7Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2017-10-26 header.b=MitF9QM2;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id c184si888193vkf.5.2018.03.05.02.18.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 02:18:58 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2017-10-26 header.b=MitF9QM2;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.22/8.16.0.22) with SMTP id w25AGvrq182984;
	Mon, 5 Mar 2018 10:18:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2017-10-26;
 bh=m73J9yPxfO3fegP5HJW6o8P9/baUNkkE+wrIq0I3it4=;
 b=MitF9QM2ohfPZ5umK2MTH2QhwVDBSPLm9I8u4N8mQGm5sIYiL0PnTN+MZrTle8kAyi2g
 EPb8aDziHFAreWgelwIPQptZ6RcU5xdYWNe31DYRaAT8Y/2W0RzEkUk0eAUjoCfl8I74
 KzlH1Laf2hLCnM+/6QC6TSla4uc3HRoX6pyu3taCVvYSoHTBfoMGcerj/inv764jMr1H
 Pqpn8yBxuC5Nd6t2OGU23bVEpJHcLwXX5R6AVu89SXTqEarpVaaOGaJlsD/9wE7MEnAh
 YGzjLnp3rvcqbjnyhIF/FXc4YS7hcLeZAkdkuwGArUHGpOF9skLAB6RIXA8AV0UqOz/r sg== 
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by aserp2120.oracle.com with ESMTP id 2gh3w58258-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 05 Mar 2018 10:18:55 +0000
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserv0021.oracle.com (8.14.4/8.14.4) with ESMTP id w25A3sTs000942
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Mar 2018 10:03:54 GMT
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id w25A3rB6003356;
	Mon, 5 Mar 2018 10:03:53 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 05 Mar 2018 02:03:53 -0800
Date: Mon, 5 Mar 2018 13:03:45 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: irda: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180305100345.v6ajs7vdgzmwu5x4@mwanda>
References: <20180304223205.GA31416@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180304223205.GA31416@seema-Inspiron-15-3567>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8822 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1711220000 definitions=main-1803050123

On Mon, Mar 05, 2018 at 04:02:06AM +0530, Arushi Singhal wrote:
> Replace printk having a log level with the appropriate
> net_*macro_ratelimited.
> It's better to use actual device name as a prefix in error messages.
> Indentation is also changed, to fix the  checkpatch issue if line is not
> exceding 80 characters.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> index e6648f7..200fe5f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
>  
>  	priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate crypto API aes\n");
> +		net_dbg_ratelimited("ieee80211_crypt_ccmp: could not allocate crypto API aes\n");


This should probably just be deleted.

>  		priv->tfm = NULL;
>  		goto fail;
>  	}
> @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  	keyidx = pos[3];
>  	if (!(keyidx & (1 << 5))) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
> -				hdr->addr2);
> +			net_dbg_ratelimited("CCMP: received packet without ExtIV flag from %pM\n",
> +					    hdr->addr2);
>  		}

The "if (net_ratelimit()) " already means the message is ratelimited so
it's net_dbg() ok?  I think so, but I've never looked at this before.

regards,
dan carpenter


