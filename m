X-GM-THRID: 6466344790011150336
X-Received: by 10.28.136.143 with SMTP id k137mr574284wmd.3.1505564023038;
        Sat, 16 Sep 2017 05:13:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.83 with SMTP id i80ls746568wmf.5.canary-gmail; Sat, 16
 Sep 2017 05:13:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBbfZpcrIoC1VpTSOJRa/xj4KOsuwb3y8/AIlUGvKgUzgm+68M4nxHXWi64vMkl4A8qePec
X-Received: by 10.28.138.195 with SMTP id m186mr567600wmd.9.1505564021921;
        Sat, 16 Sep 2017 05:13:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505564021; cv=none;
        d=google.com; s=arc-20160816;
        b=0IMrDPXbWVAmC572q8T6dkd/ftX20DKw6xAdsSKmHp9oVAm7t27xW+CbsICQqXz61c
         wkppuNsjDNWte8l2hR9Iwz6bFu5nyhZKxdD3Wa8p6un/qNaAF8Cjtt97sEbmmGX1STYo
         qQhwIByHeAEgRmgoQJQZ5S+3ii9mZzDtMGOdWOxtECl9p6hbxQOlV572S8lDcT8eeeos
         fjAVTMcf19bjC+bYoPytqDZysJvMr0Wod9WA2FugSQkE8GpQGcawcPrAOIohY62UvMeR
         RUBBwiPFZORQ5vsi7FcOqPKeHoqITR5xoHjSbJxp+OU4xiP+JI5a+iqfumvtHwSnAgsw
         lpDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/5sdYKtf/sHKsVT19DABxWIbaSg0dA3zvLKTmrNyBzg=;
        b=QU36GzcCwZsYYOfU8D72NVmZ45o1Vmq0dK7AosYUjEkMtoEP3pzrX0SKLAYFYC78uQ
         8iHC3lZC2dyX13zzKdZjOcGeEwq+yvy/IlN3k5LSj0RmzbOIS0tCLRCgsocbwuwrSwCu
         enrgbdHpyRlGFyqtF/Jwdt7rUzoKEsO2A2JZpdmAXH+CCmYvsGrx9n2u2wN5BmX2hUxu
         9U4NniRww2A5tRiKMJDHhpcFlF8Cdgpm27fSRaCRaSTYw2rI3WSu8Hnb5HdftC68srQL
         yMvhUqXKBjVRkraCdRpalsAN5Lb+yq3rncD813r/e63vNwGTaSDgmd1ZtbV7iNOM9n8A
         YzGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si168348wmi.2.2017.09.16.05.13.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:13:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="291378622"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 14:13:41 +0200
Date: Sat, 16 Sep 2017 14:13:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8191u: ieee80211: prefer
 pr_debug() to printk(KERN_DEBUG, ...)
In-Reply-To: <1505563212-2690-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709161411150.2943@hadrien>
References: <1505563212-2690-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Aastha Gupta wrote:

> This patch replaces call to  printk with pr_debug function
> thus addressing the following checkpatch script warning:
>
> WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(... to printk(KERN_DEBUG ...
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c      | 24 +++++++++++-----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
> index 60ecfec..9d92864 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
> @@ -74,7 +74,7 @@ static void *ieee80211_tkip_init(int key_idx)
>  	priv->tx_tfm_arc4 = crypto_alloc_skcipher("ecb(arc4)", 0,
>  			CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tx_tfm_arc4)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
> +		pr_debug("ieee80211_crypt_tkip: could not allocate "
>  				"crypto API arc4\n");

If you just focus on the first four, you could save some space and better
respect the kernel coding style by replacing the name of the driver, ie
ieee80211_crypt_tkip by %s and the function name, obtained via __func__
(not the same string, but the amount of information seems to be the same).
And then put the string all on one line rather than using string
concatenation, which will make things easier if someone needs to grep for
the message.

julia

>  		priv->tx_tfm_arc4 = NULL;
>  		goto fail;
> @@ -83,7 +83,7 @@ static void *ieee80211_tkip_init(int key_idx)
>  	priv->tx_tfm_michael = crypto_alloc_ahash("michael_mic", 0,
>  			CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tx_tfm_michael)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
> +		pr_debug("ieee80211_crypt_tkip: could not allocate "
>  				"crypto API michael_mic\n");
>  		priv->tx_tfm_michael = NULL;
>  		goto fail;
> @@ -92,7 +92,7 @@ static void *ieee80211_tkip_init(int key_idx)
>  	priv->rx_tfm_arc4 = crypto_alloc_skcipher("ecb(arc4)", 0,
>  			CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->rx_tfm_arc4)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
> +		pr_debug("ieee80211_crypt_tkip: could not allocate "
>  				"crypto API arc4\n");
>  		priv->rx_tfm_arc4 = NULL;
>  		goto fail;
> @@ -101,7 +101,7 @@ static void *ieee80211_tkip_init(int key_idx)
>  	priv->rx_tfm_michael = crypto_alloc_ahash("michael_mic", 0,
>  			CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->rx_tfm_michael)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_tkip: could not allocate "
> +		pr_debug("ieee80211_crypt_tkip: could not allocate "
>  				"crypto API michael_mic\n");
>  		priv->rx_tfm_michael = NULL;
>  		goto fail;
> @@ -396,20 +396,20 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  	keyidx = pos[3];
>  	if (!(keyidx & (1 << 5))) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "TKIP: received packet without ExtIV"
> +			pr_debug("TKIP: received packet without ExtIV"
>  			       " flag from %pM\n", hdr->addr2);
>  		}
>  		return -2;
>  	}
>  	keyidx >>= 6;
>  	if (tkey->key_idx != keyidx) {
> -		printk(KERN_DEBUG "TKIP: RX tkey->key_idx=%d frame "
> +		pr_debug("TKIP: RX tkey->key_idx=%d frame "
>  		       "keyidx=%d priv=%p\n", tkey->key_idx, keyidx, priv);
>  		return -6;
>  	}
>  	if (!tkey->key_set) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "TKIP: received packet from %pM"
> +			pr_debug("TKIP: received packet from %pM"
>  			       " with keyid=%d that does not have a configured"
>  			       " key\n", hdr->addr2, keyidx);
>  		}
> @@ -425,7 +425,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  		if (iv32 < tkey->rx_iv32 ||
>  		(iv32 == tkey->rx_iv32 && iv16 <= tkey->rx_iv16)) {
>  			if (net_ratelimit()) {
> -				printk(KERN_DEBUG "TKIP: replay detected: STA=%pM"
> +				pr_debug("TKIP: replay detected: STA=%pM"
>  				" previous TSC %08x%04x received TSC "
>  				"%08x%04x\n", hdr->addr2,
>  				tkey->rx_iv32, tkey->rx_iv16, iv32, iv16);
> @@ -453,7 +453,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  		skcipher_request_zero(req);
>  		if (err) {
>  			if (net_ratelimit()) {
> -				printk(KERN_DEBUG ": TKIP: failed to decrypt "
> +				pr_debug(": TKIP: failed to decrypt "
>  						"received packet from %pM\n",
>  						hdr->addr2);
>  			}
> @@ -476,7 +476,7 @@ static int ieee80211_tkip_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  				tkey->rx_phase1_done = 0;
>  			}
>  			if (net_ratelimit()) {
> -				printk(KERN_DEBUG "TKIP: ICV error detected: STA="
> +				pr_debug("TKIP: ICV error detected: STA="
>  				"%pM\n", hdr->addr2);
>  			}
>  			tkey->dot11RSNAStatsTKIPICVErrors++;
> @@ -567,7 +567,7 @@ static int ieee80211_michael_mic_add(struct sk_buff *skb, int hdr_len, void *pri
>  	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
>
>  	if (skb_tailroom(skb) < 8 || skb->len < hdr_len) {
> -		printk(KERN_DEBUG "Invalid packet for Michael MIC add "
> +		pr_debug("Invalid packet for Michael MIC add "
>  		       "(tailroom=%d hdr_len=%d skb->len=%d)\n",
>  		       skb_tailroom(skb), hdr_len, skb->len);
>  		return -1;
> @@ -636,7 +636,7 @@ static int ieee80211_michael_mic_verify(struct sk_buff *skb, int keyidx,
>  		struct rtl_80211_hdr_4addr *hdr;
>  		hdr = (struct rtl_80211_hdr_4addr *) skb->data;
>
> -		printk(KERN_DEBUG "%s: Michael MIC verification failed for "
> +		pr_debug("%s: Michael MIC verification failed for "
>  		       "MSDU from %pM keyidx=%d\n",
>  		       skb->dev ? skb->dev->name : "N/A", hdr->addr2,
>  		       keyidx);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505563212-2690-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

