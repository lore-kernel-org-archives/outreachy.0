X-GM-THRID: 6296089657344
X-Received: by 10.70.96.237 with SMTP id dv13mr8255205pdb.2.1425725812578;
        Sat, 07 Mar 2015 02:56:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.164.137 with SMTP id yq9ls402165igb.32.canary; Sat, 07 Mar
 2015 02:56:52 -0800 (PST)
X-Received: by 10.42.206.193 with SMTP id fv1mr11085543icb.29.1425725812315;
        Sat, 07 Mar 2015 02:56:52 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si1703788pbc.1.2015.03.07.02.56.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:56:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2F101990;
	Sat,  7 Mar 2015 10:56:50 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:51:50 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Change
 from // to /* */
Message-ID: <20150306235150.GA26994@kroah.com>
References: <1425652249-15016-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425652249-15016-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 06, 2015 at 04:30:49PM +0200, Hatice ERT�RK wrote:
> Remove the all '//' and instead of '/* */' put.
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 104 +++++++++++-----------
>  1 file changed, 52 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 8d4ade4..c0d1468 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -207,8 +207,8 @@ int ieee80211_encrypt_fragment(
>  	/* To encrypt, frame format is:
>  	 * IV (4 bytes), clear payload (including SNAP), ICV (4 bytes) */
>  
> -	// PR: FIXME: Copied from hostap. Check fragmentation/MSDU/MPDU encryption.
> -	/* Host-based IEEE 802.11 fragmentation for TX is not yet supported, so
> +	/* PR: FIXME: Copied from hostap. Check fragmentation/MSDU/MPDU encryption.
> +	 * Host-based IEEE 802.11 fragmentation for TX is not yet supported, so
>  	 * call both MSDU and MPDU encryption functions from here. */
>  	atomic_inc(&crypt->refcnt);
>  	res = 0;
> @@ -230,7 +230,7 @@ int ieee80211_encrypt_fragment(
>  
>  
>  void ieee80211_txb_free(struct ieee80211_txb *txb) {
> -	//int i;
> +	/* int i; */

Just remove lines that are not needed anymore.

>  	if (unlikely(!txb))
>  		return;
>  	kfree(txb);
> @@ -269,8 +269,8 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
>  	return txb;
>  }
>  
> -// Classify the to-be send data packet
> -// Need to acquire the sent queue index.
> +/* Classify the to-be send data packet
> + Need to acquire the sent queue index. */

This is not the correct way to do multi-line comment blocks :(


