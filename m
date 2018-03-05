X-GM-THRID: 6529360493201588224
X-Received: by 10.46.88.88 with SMTP id x24mr874325ljd.31.1520235476603;
        Sun, 04 Mar 2018 23:37:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.85 with SMTP id x21ls1542519ljd.2.gmail; Sun, 04 Mar
 2018 23:37:55 -0800 (PST)
X-Google-Smtp-Source: AG47ELs0tK3st1icaemdRxMIstz/e91HO7SvhzqKWXgjnj400/1zdKqkpYOA0KiC2NgajquSjt81
X-Received: by 10.46.65.29 with SMTP id o29mr873808lja.3.1520235475765;
        Sun, 04 Mar 2018 23:37:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520235475; cv=none;
        d=google.com; s=arc-20160816;
        b=Ft3AZaWDAL5OIPYzxxbDXSD8SGHZEBr2gQJc9kTZIrAK6qEYkumDjKix1bWGFU4Zcx
         Q0LKDrb1TATqlT8u4JfW5OqpzliEy192DnJO2QflXalyF4PtGA4Fgcm/196idHW5u+SQ
         h3ocXlsYGSmF+yFdxY6sv/wfmHPGRbPu6gnth5EZkITHEOwVbTCN716L7owsJ5F2QHcB
         0iwxw133h6WHUx3jooR1vqBSkbEdHatwBDKQ9LC2zIZaaRph9X+TCeNyLVHaIajM1jU1
         t7S+qSn6f7vhPVZZA4DBgjndvQiQQVSooUsJHfZyAVX8xwiMs+B+uSMnAmT/9CZurY6q
         k40Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=1u7duWMyJKA21pTv1UpfGwAEq+w8RKwlJD2mOnl6NZs=;
        b=HKxuvUgL47p9uH7Ytn+PR37bYk0TKHkj3Ac9epPk1vRWTDsSukmnyT5wDMjj4vJASl
         pnt/Le5BypD8ZKSkmTgCwV5dhJvmDBfJ+8/gwsbJpj0s4UWkRs5/qlQ+k5PNO4COUQea
         3Ww6FpqvXkgJ2B+Ijn7mgUJyIqUex0qxYNUcbqyWB6jSdB8bVODwgwd1pouq+5cm1KlM
         NshLZTYJdAkwaCHV8YTL6eq5/LHsrjUI2Yd+pLB9+1pt9ThwpOhfd74ZqmIt3YTX+0w2
         EZw7ql1Kw4/ZL3Nm9sZseModb/HNAxVhYryRdlt7/jjhp4BJyimy4zB1avrnHfRxYAam
         tXJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v6si529771ljc.0.2018.03.04.23.37.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 23:37:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,426,1515452400"; 
   d="scan'208";a="256960044"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2018 08:37:54 +0100
Date: Mon, 5 Mar 2018 08:37:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Replace printk()
 with appropriate net_*macro_ratelimited()
In-Reply-To: <20180305073256.GA4347@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803050835230.2306@hadrien>
References: <20180305073256.GA4347@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Mar 2018, Arushi Singhal wrote:

> Replace printk having a log level with the appropriate
> net_*macro_ratelimited.
> It's better to use actual device name as a prefix in error messages.

I asked several questions about the above two lines, which as far as I can
see haven't been answered. Please excuse me if I missed the answers, but I
would still like to know what they are.

Namely, why did you choose to change to rate limited output, and what does
the "device name as a prefix" comment mean?

julia

> Indentation is also changed, to fix the  checkpatch issue if line is not
> exceding 80 characters.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v2
> *change the subject line, in v1 driver name was wrong.
>
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
>  		key->dot11RSNAStatsCCMPFormatErrors++;
>  		return -2;
>  	}
>  	keyidx >>= 6;
>  	if (key->key_idx != keyidx) {
> -		printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
> -			key->key_idx, keyidx, priv);
> +		net_dbg_ratelimited("CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\n",
> +				    key->key_idx, keyidx, priv);
>  		return -6;
>  	}
>  	if (!key->key_set) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "CCMP: received packet from %pM with keyid=%d that does not have a configured key\n",
> -				hdr->addr2, keyidx);
> +			net_dbg_ratelimited("CCMP: received packet from %pM with keyid=%d that does not have a configured key\n",
> +					    hdr->addr2, keyidx);
>  		}
>  		return -3;
>  	}
> @@ -306,8 +306,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>
>  	if (memcmp(pn, key->rx_pn, CCMP_PN_LEN) <= 0) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "CCMP: replay detected: STA=%pM previous PN %pm received PN %pm\n",
> -			       hdr->addr2, key->rx_pn, pn);
> +			net_dbg_ratelimited("CCMP: replay detected: STA=%pM previous PN %pm received PN %pm\n",
> +					    hdr->addr2, key->rx_pn, pn);
>  		}
>  		key->dot11RSNAStatsCCMPReplays++;
>  		return -4;
> @@ -341,8 +341,8 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>
>  		if (memcmp(mic, a, CCMP_MIC_LEN) != 0) {
>  			if (net_ratelimit()) {
> -				printk(KERN_DEBUG "CCMP: decrypt failed: STA=%pM\n",
> -					hdr->addr2);
> +				net_dbg_ratelimited("CCMP: decrypt failed: STA=%pM\n",
> +						    hdr->addr2);
>  			}
>  			key->dot11RSNAStatsCCMPDecryptErrors++;
>  			return -5;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180305073256.GA4347%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

