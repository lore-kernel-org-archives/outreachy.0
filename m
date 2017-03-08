X-GM-THRID: 6395186049294794752
X-Received: by 10.107.131.169 with SMTP id n41mr2814991ioi.47.1489005595828;
        Wed, 08 Mar 2017 12:39:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls1290865itc.10.gmail; Wed, 08 Mar
 2017 12:39:55 -0800 (PST)
X-Received: by 10.107.165.193 with SMTP id o184mr2583327ioe.99.1489005595114;
        Wed, 08 Mar 2017 12:39:55 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c123si823198pfa.4.2017.03.08.12.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 12:39:55 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so4889763pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 12:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eZ7PoKlzoNdO0Q4IlQka3SjEjqPKg5cFuqy12Z5WhEE=;
        b=T6WKP6fMKlIzaExOGCGwDkZ7jEwlMrmPvXpYSLYytrmbotJH0NJJpuzaECyjomAffZ
         Zc7+n/jPnHfgME0OGfinra8XEY2jwdWKrTxf1woAhjhKaJy9V7kJeBRSRxQWM220tOzj
         fv9NpUzzP+QKiJ44Ut52wjbwKtuspmvzK3L9AU1F3Xh2RnttzS01BWWvIXZE3QCrrU3n
         u79G9pntf+CdATojF81FgrWeCsrwzeRctMPl2OmerP6p4tBwvfC9g9I3dIsMKDYBWn5E
         ieCL7iQ4ic0glmXYTITUSP3kimiDESwZd+LeS5/FFeb22TZ4QTXNOQnOfo6hLX36oWch
         C4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eZ7PoKlzoNdO0Q4IlQka3SjEjqPKg5cFuqy12Z5WhEE=;
        b=U2DtzaKHAo4M9T/5XFaNv8u9OZpbXn9i4de+vRMe614y6wPSmh1EHXAwPT7OwLMYLd
         FPhQhVELnPgjru0qNTBwycX3tWXLIbSLBCMhewfeTnqDVNYck1AVVc4mRYo35BEPAj2Z
         Ls/LfuQdUvTRaniVqgIpGGiGmhXk8K9nysbV0fxSKP7P/fdAHYgt13n58K71SFLyu9+p
         O7IG+uZk5Yh1fms6FvWB6jzbgMtv3KLqtZV18ibDf7ghl8JjTZFy+gCd1mVK5g3eQzkb
         InkDDj8D8VhmWYTHj7zjBIIAD4a4rWsIF30/k07SO8NBZeHpN88mUMMS9dkPn3UyCcqB
         NapA==
X-Gm-Message-State: AMke39l5MyMY8nG+974G+bFvtronK6Dmo/xxn2oUnUm7m+o68asGCyPzT04ARxCDEfszAQ==
X-Received: by 10.99.55.85 with SMTP id g21mr9538818pgn.65.1489005594853;
        Wed, 08 Mar 2017 12:39:54 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id e129sm7896039pfe.8.2017.03.08.12.39.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 12:39:54 -0800 (PST)
Date: Wed, 8 Mar 2017 12:39:53 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: eap_packet:
 Rearrange the code
Message-ID: <20170308203952.GB3284@d830.WORKGROUP>
References: <20170308174753.5540-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170308174753.5540-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 08, 2017 at 07:47:53PM +0200, Tamara Diaconita wrote:
> Split lines to have less than 80 characters.
> 
> Fix the checkpath.pl warning:
> WARNING: line over 80 characters.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/ks7010/eap_packet.h | 9 ++++++---

Tamara, This driver is no longer in staging.  I don't see it upstream
either.  I guess there's another path out of staging, other than
graduation upstream ;)
alisons





>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
> index df7f760..7a3decf 100644
> --- a/drivers/staging/ks7010/eap_packet.h
> +++ b/drivers/staging/ks7010/eap_packet.h
> @@ -58,12 +58,15 @@ struct ieee802_1x_eapol_key {
>  	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
>  	 */
>  	unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
> -	unsigned char key_iv[IEEE8021X_KEY_IV_LEN];	/* cryptographically random number */
> +	unsigned char key_iv[IEEE8021X_KEY_IV_LEN]; /* cryptographically random
> +						     * number
> +						     */
>  	unsigned char key_index;	/*
>  					 * key flag in the most significant bit:
>  					 * 0 = broadcast (default key),
> -					 * 1 = unicast (key mapping key); key index is in the
> -					 * 7 least significant bits
> +					 * 1 = unicast (key mapping key);
> +					 * key index is in the 7 least
> +					 * significant bits
>  					 */
>  	/*
>  	 * HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308174753.5540-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

