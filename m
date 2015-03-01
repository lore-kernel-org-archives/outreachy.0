X-GM-THRID: 5597962436608
X-Received: by 10.194.239.41 with SMTP id vp9mr3332267wjc.5.1425247924170;
        Sun, 01 Mar 2015 14:12:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.100 with SMTP id fn4ls400038wib.24.canary; Sun, 01 Mar
 2015 14:12:03 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr1742891wic.4.1425247923910;
        Sun, 01 Mar 2015 14:12:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si555911wid.1.2015.03.01.14.12.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 14:12:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,672,1418079600"; 
   d="scan'208";a="101718167"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 23:12:02 +0100
Date: Sun, 1 Mar 2015 16:11:59 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Fix
 printk debug style warning
In-Reply-To: <1425245283-10867-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1503011611271.2545@hadrien>
References: <1425245283-10867-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-754175761-1425247922=:2545"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-754175761-1425247922=:2545
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 1 Mar 2015, Hatice ERTÜRK wrote:

> This fixes the following checkpatch.pl warnings:
> WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then
> dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> index f470cb6..99c5d89 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
>
>         priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate "
> +		pr_debug("ieee80211_crypt_ccmp: could not allocate "
>  		       "crypto API aes\n");

In each case, the second line of arguments could be aligned with the left
side of the first argument, as was done before.

julia

>  		priv->tfm = NULL;
>  		goto fail;
> @@ -284,7 +284,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  	keyidx = pos[3];
>  	if (!(keyidx & (1 << 5))) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "CCMP: received packet without ExtIV"
> +			pr_debug("CCMP: received packet without ExtIV"
>  			       " flag from %pM\n", hdr->addr2);
>  		}
>  		key->dot11RSNAStatsCCMPFormatErrors++;
> @@ -292,13 +292,13 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  	}
>  	keyidx >>= 6;
>  	if (key->key_idx != keyidx) {
> -		printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d frame "
> +		pr_debug("CCMP: RX tkey->key_idx=%d frame "
>  		       "keyidx=%d priv=%p\n", key->key_idx, keyidx, priv);
>  		return -6;
>  	}
>  	if (!key->key_set) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "CCMP: received packet from %pM"
> +			pr_debug("CCMP: received packet from %pM"
>  			       " with keyid=%d that does not have a configured"
>  			       " key\n", hdr->addr2, keyidx);
>  		}
> @@ -315,7 +315,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>
>  	if (memcmp(pn, key->rx_pn, CCMP_PN_LEN) <= 0) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "CCMP: replay detected: STA=%pM"
> +			pr_debug("CCMP: replay detected: STA=%pM"
>  			       " previous PN %pm received PN %pm\n",
>  			       hdr->addr2, key->rx_pn, pn);
>  		}
> @@ -353,7 +353,7 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>
>  		if (memcmp(mic, a, CCMP_MIC_LEN) != 0) {
>  			if (net_ratelimit()) {
> -				printk(KERN_DEBUG "CCMP: decrypt failed: STA="
> +				pr_debug("CCMP: decrypt failed: STA="
>  				"%pM\n", hdr->addr2);
>  			}
>  			key->dot11RSNAStatsCCMPDecryptErrors++;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425245283-10867-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-754175761-1425247922=:2545--

