X-GM-THRID: 6329516418404450304
X-Received: by 10.46.1.75 with SMTP id 72mr2070218ljb.10.1473714532346;
        Mon, 12 Sep 2016 14:08:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.134 with SMTP id m128ls8705lfg.35.gmail; Mon, 12 Sep
 2016 14:08:51 -0700 (PDT)
X-Received: by 10.25.78.12 with SMTP id c12mr2983384lfb.1.1473714531502;
        Mon, 12 Sep 2016 14:08:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b1si170136wmg.0.2016.09.12.14.08.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:08:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,324,1470693600"; 
   d="scan'208";a="236181448"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 23:08:50 +0200
Date: Mon, 12 Sep 2016 23:08:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    wsa+renesas@sang-engineering.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010:adjust comment begin
 & end markers
In-Reply-To: <20160912183540.12969-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609122307130.3549@hadrien>
References: <20160912183540.12969-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 13 Sep 2016, Gargi Sharma wrote:

> Fixing checkpatch warnings for trailing markers on the same line as the
> comment.

This is going in the right direction, but there are some more needed
improvements.  First, put a space after each : in the subject line.  One
is missing after ks7010:.  Second, since you have sent several of these
patches, there should be eg [PATCH v2] and then a description of what has
changed since the previous patch under the ---

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/ks7010/eap_packet.h | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
> index 16a392a..ad5dff8 100644
> --- a/drivers/staging/ks7010/eap_packet.h
> +++ b/drivers/staging/ks7010/eap_packet.h
> @@ -51,24 +51,31 @@ enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN = 2,
>  struct ieee802_1x_eapol_key {
>  	unsigned char type;
>  	unsigned short key_length;
> -	/* does not repeat within the life of the keying material used to
> -	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
> +	/*
> +	 * does not repeat within the life of the keying material used to
> +	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
> +	 */
>  	unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
>  	unsigned char key_iv[IEEE8021X_KEY_IV_LEN];	/* cryptographically random number */
>  	unsigned char key_index;	/* key flag in the most significant bit:
>  					 * 0 = broadcast (default key),
>  					 * 1 = unicast (key mapping key); key index is in the
> -					 * 7 least significant bits */
> -	/* HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
> -	 * the key */
> +					 * 7 least significant bits
> +					 */
> +	/*
> +	 * HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
> +	 * the key
> +	 */
>  	unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
>
> -	/* followed by key: if packet body length = 44 + key length, then the
> +	/*
> +	 * followed by key: if packet body length = 44 + key length, then the
>  	 * key field (of key_length bytes) contains the key in encrypted form;
>  	 * if packet body length = 44, key field is absent and key_length
>  	 * represents the number of least significant octets from
>  	 * MS-MPPE-Send-Key attribute to be used as the keying material;
> -	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key */
> +	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key
> +	 */
>  } __attribute__ ((packed));
>
>  #define WPA_NONCE_LEN 32
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912183540.12969-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

