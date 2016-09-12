X-GM-THRID: 6329500500280475648
X-Received: by 10.28.150.135 with SMTP id y129mr1193557wmd.1.1473702155480;
        Mon, 12 Sep 2016 10:42:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.146 with SMTP id f18ls487363lji.28.gmail; Mon, 12 Sep
 2016 10:42:34 -0700 (PDT)
X-Received: by 10.46.32.154 with SMTP id g26mr1902689lji.3.1473702154951;
        Mon, 12 Sep 2016 10:42:34 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y7si1275609wmd.0.2016.09.12.10.42.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:42:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="236168510"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 19:42:34 +0200
Date: Mon, 12 Sep 2016 19:42:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    wsa+renesas@sang-engineering.com
Subject: Re: [Outreachy kernel] [PATCH] Moving begin & end comment quotes to
 separate line
In-Reply-To: <20160912173343.11114-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609121938240.29099@hadrien>
References: <20160912173343.11114-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 12 Sep 2016, Gargi Sharma wrote:

> Changes made to ks7010/eap_packet.h lines 54,63,65,67,71,77 where the end quotes and
> begin quotes for the multi line comment were not in a separate line.

The commit message exceeds 80 characters per line.

Actually, it's not necessary to put the line numbers that are modified.
That can be seen from the patch itself.  The idea instead is to put some
information in the subject line about what files the patch affects.  Then
the maintainer can orient himself before looking at the actual change.

You can find what should be done using git long --oneline file
For example, for your file:

git log --oneline drivers/staging/ks7010/eap_packet.h

gives:

c5d9a03 staging: ks7010: cleanup file headers
5d7696b staging: ks7010: indent eap_packet.h
13a9930 staging: ks7010: add driver from Nanonote extra-repository

So your subject line could be:

[PATCH] staging: ks7010: adjust comment begin and end markers

Your subject text is also OK, but it is a bit more verbose.  It is better
to put the smallest number of words that will convey the idea, and put the
full details in the main log message.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912173343.11114-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

