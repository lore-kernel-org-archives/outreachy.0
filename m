X-GM-THRID: 6329487812602101760
X-Received: by 10.46.69.10 with SMTP id s10mr2827277lja.1.1473699340656;
        Mon, 12 Sep 2016 09:55:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.17 with SMTP id d17ls655525wmd.14.gmail; Mon, 12 Sep
 2016 09:55:40 -0700 (PDT)
X-Received: by 10.28.198.133 with SMTP id w127mr1947066wmf.3.1473699339992;
        Mon, 12 Sep 2016 09:55:39 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y7si1260647wmd.0.2016.09.12.09.55.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 09:55:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="192887183"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 18:55:13 +0200
Date: Mon, 12 Sep 2016 18:55:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: gs0510 <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    wsa+renesas@sang-engineering.com
Subject: Re: [Outreachy kernel] [PATCH] Moved the trailing comment end quote
 to next line.
In-Reply-To: <20160912164440.9174-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609121851050.29099@hadrien>
References: <20160912164440.9174-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Actually, the From name in your message should be the same as in your
Signed off by line, which should be your real name.

On Mon, 12 Sep 2016, gs0510 wrote:

> Checkpatch displays error that the comment endings should be in separate
> line, should not end in the same line as the comment.
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/ks7010/eap_packet.h | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
> index 16a392a..0a9ab097 100644
> --- a/drivers/staging/ks7010/eap_packet.h
> +++ b/drivers/staging/ks7010/eap_packet.h
> @@ -52,15 +52,18 @@ struct ieee802_1x_eapol_key {
>  	unsigned char type;
>  	unsigned short key_length;
>  	/* does not repeat within the life of the keying material used to
> -	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
> +	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
> +	*/

It doesn't look like this line is lines up properly with the others.
Also, the first /* should be on a separate line too.

julia

>  	unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
>  	unsigned char key_iv[IEEE8021X_KEY_IV_LEN];	/* cryptographically random number */
>  	unsigned char key_index;	/* key flag in the most significant bit:
>  					 * 0 = broadcast (default key),
>  					 * 1 = unicast (key mapping key); key index is in the
> -					 * 7 least significant bits */
> +					 * 7 least significant bits
> +					 */
>  	/* HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
> -	 * the key */
> +	 * the key
> +	*/
>  	unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
>
>  	/* followed by key: if packet body length = 44 + key length, then the
> @@ -68,7 +71,8 @@ struct ieee802_1x_eapol_key {
>  	 * if packet body length = 44, key field is absent and key_length
>  	 * represents the number of least significant octets from
>  	 * MS-MPPE-Send-Key attribute to be used as the keying material;
> -	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key */
> +	 * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key
> +	*/
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912164440.9174-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

