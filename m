X-GM-THRID: 6395260481558282240
X-Received: by 10.99.60.90 with SMTP id i26mr4354511pgn.81.1489021096990;
        Wed, 08 Mar 2017 16:58:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.28 with SMTP id a28ls1475947ioj.21.gmail; Wed, 08 Mar
 2017 16:58:16 -0800 (PST)
X-Received: by 10.99.42.20 with SMTP id q20mr384520pgq.90.1489021095961;
        Wed, 08 Mar 2017 16:58:15 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si917728pfb.7.2017.03.08.16.58.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 16:58:15 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so5408938pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 16:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TNkEWAZeIGlFWcssI6hdZ9WdQ7MdG/N2nRBzYQFUiSI=;
        b=gfjkqJnEZaNh1kVtDp1Mse6ekT411vQy3OK1kL/gipL8VH7Pkqq4gRGYDCEoPozklM
         osAKM3/vUzF7vIfgOsET+JcKWGSdoOewwVINH+eCl/CiF509sKh6YGsbT5b0pPy9iJC6
         z13lf6Ae966m+zFdliC2VlgGxWHcyKjQq6iD06qEJVue4pAaX4eZHnXx88SX81H/I5BZ
         A+eYzs2izSpclboySdV8Pc/IdL+4fiDhVGXCGeBM4Ve1Nnp+WYcZC4spaDt+yJVKluwF
         Lk4PR2CqskPkYAiGboOrDFUk3XUCpwOzrnHbg8LPDdfDSP9ODiICacMVGbXG+Q2HRo5D
         fZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TNkEWAZeIGlFWcssI6hdZ9WdQ7MdG/N2nRBzYQFUiSI=;
        b=bVtvP2a3flFmspg4hSsl1BAtWH794ZyxHMTXzUFgBN/08Ctz7m3VazknUnpmZD4zJl
         UUxB5kvy7hfTdr7DyjHkLH1RZR0FVS0VOu8Q8ARBmwX1ONWHPXpR7lVrxSYhSPS8taEU
         xzzY5sWA3mEQZJz3Yu2OSFVc6RNpiA23fl5Tjv+WHnJrNyz9lel+pNlbFNFtkSwq91PW
         E5Ensh940t9YDF6al7Q8kXmJAF3gq2xLEUI5nD6bmmLazf2T+9mPb0fm5QcjOsFFWWJQ
         j5KKfdWwVfK3rMW++jN3cnvD1LerS5gRPffhdINDj2vVG7r53MSs0AVBJPKqzoQ9raUG
         o+fw==
X-Gm-Message-State: AMke39nvpH2UabdlnUcDcBZJMvvxOQemptF+DnLqjjg/hk0sqceyWq4nZInIikeSOWleVA==
X-Received: by 10.84.217.199 with SMTP id d7mr12893801plj.80.1489021095754;
        Wed, 08 Mar 2017 16:58:15 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 75sm8309524pfp.80.2017.03.08.16.58.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 16:58:15 -0800 (PST)
Date: Wed, 8 Mar 2017 16:58:10 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: eap_packet: Format
 comments to fit in line
Message-ID: <20170309005809.GA21318@d830.WORKGROUP>
References: <20170308223650.3791-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170308223650.3791-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 09, 2017 at 12:36:50AM +0200, Tamara Diaconita wrote:
> Split lines to have less than 80 characters.
> 
> Fix the checkpatch.pl warning:
> WARNING: line over 80 characters.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Hi Tamara, 
This one will need to be labelled as [PATCH v2].
So - send it again and label it as such. Remember to include what
changed in v2 below the --- line.
Thanks,
alisons






> ---
>  drivers/staging/ks7010/eap_packet.h | 9 ++++++---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308223650.3791-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

