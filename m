X-GM-THRID: 2590517493760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,93e7be34ae9f918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.96.131 with SMTP id ds3mr12666107obb.35.1424721458633;
        Mon, 23 Feb 2015 11:57:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.83.38 with SMTP id n6ls956136igy.20.gmail; Mon, 23 Feb 2015
 11:57:37 -0800 (PST)
X-Received: by 10.42.43.199 with SMTP id y7mr14346497ice.9.1424721457175;
        Mon, 23 Feb 2015 11:57:37 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id q2si6444011qcn.2.2015.02.23.11.57.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:57:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id q107so26421250qgd.6
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=NKdEEdAXFMDFgU2NgpP0DBGMqx75hm/F77vSb+lCuuM=;
        b=De63FgyC1Ajnfm86gSh2ZB7qpoDS5dWgiGHE+QJU04zIaiv1lQ9JB+YejM6IzvHoQ7
         ihfdJKFL2FmygdNHlfmdaoJutSpLjtJUqj6bt7PpNlrYHL2hWwz7cl1Kh5eQWkqfcfy0
         /AsuTh826hpvwMkDVjz3d/W1cFJkxO8/IYKsOS/WihJ+1E+ED5v77D9WGBtlZ+X72L0z
         lGD5kzng/76mwLLR1UI2xK9jMWw9EV1LuK6Yq6rOVv0v/JiSY95HxZvxpd9cg1l8r24j
         LW1SD6/TN/8iu9GvSYSh2/tW79eOqxkpi/kwnwe3hciWXhp8yfs33zJu0tMq3jwSH5fa
         LVzg==
X-Received: by 10.140.145.3 with SMTP id 3mr28420574qhr.43.1424721457067;
        Mon, 23 Feb 2015 11:57:37 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id m5sm23936294qay.2.2015.02.23.11.57.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:57:36 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB862F.90103@gmail.com>
Date: Mon, 23 Feb 2015 14:57:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Replace printk()
 with pr_debug()
References: <1424721379-8173-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424721379-8173-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 14:56, Ksenija Stanojevic wrote:
> For dynamic debugging pr_debug() macro is preferred over printk(), which
> is the raw way to print something. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v2: include only changes made to this file.
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Looks good!

Jes


> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> index 8c1bf1f..7fab680 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> @@ -49,14 +49,14 @@ static void *prism2_wep_init(int keyidx)
>  
>  	priv->tx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tx_tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
> +		pr_debug("ieee80211_crypt_wep: could not allocate "
>  		       "crypto API arc4\n");
>  		priv->tx_tfm = NULL;
>  		goto fail;
>  	}
>  	priv->rx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->rx_tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
> +		pr_debug("ieee80211_crypt_wep: could not allocate "
>  		       "crypto API arc4\n");
>  		priv->rx_tfm = NULL;
>  		goto fail;
> 


