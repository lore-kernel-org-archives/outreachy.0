X-GM-THRID: 6334891749875384320
X-Received: by 10.46.0.83 with SMTP id 80mr1200983lja.4.1474957157644;
        Mon, 26 Sep 2016 23:19:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.196 with SMTP id u187ls2162079lja.30.gmail; Mon, 26 Sep
 2016 23:19:16 -0700 (PDT)
X-Received: by 10.46.1.75 with SMTP id 72mr1319522ljb.10.1474957156949;
        Mon, 26 Sep 2016 23:19:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si61126wmd.1.2016.09.26.23.19.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 23:19:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,403,1470693600"; 
   d="scan'208";a="194748594"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Sep 2016 08:19:16 +0200
Date: Tue, 27 Sep 2016 08:19:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010 : Fix block comments
 warning
In-Reply-To: <20160927061520.GA21545@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1609270817220.3413@hadrien>
References: <20160927061520.GA21545@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 27 Sep 2016, Muraru Mihaela wrote:

> This patch fixes the checkpatch.pl  warning:
>
> WARNING: Block comments use a trailing */ on a separate line

It is good to write your commit message in the imperative, and to say what
you actually did to perform the fix rather than just saying what you
fixed.

Here you could say: "Move final */ down to a separate line to conform to
the kernel coding style for block comments.  Issue found by checkpatch."

julia

>
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/ks7010/eap_packet.h | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
> index 16a392a..639a22a 100644
> --- a/drivers/staging/ks7010/eap_packet.h
> +++ b/drivers/staging/ks7010/eap_packet.h
> @@ -52,15 +52,18 @@ struct ieee802_1x_eapol_key {
>  	unsigned char type;
>  	unsigned short key_length;
>  	/* does not repeat within the life of the keying material used to
> -	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
> +	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
> +	 */
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
> +	 */
>  	unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
>
>  	/* followed by key: if packet body length = 44 + key length, then the
> @@ -68,7 +71,8 @@ struct ieee802_1x_eapol_key {
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
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160927061520.GA21545%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

