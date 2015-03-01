X-GM-THRID: 5486072037376
X-Received: by 10.180.39.164 with SMTP id q4mr1732965wik.5.1425247844361;
        Sun, 01 Mar 2015 14:10:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.38 with SMTP id x6ls376975lax.63.gmail; Sun, 01 Mar 2015
 14:10:42 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr3405027lbb.18.1425247842830;
        Sun, 01 Mar 2015 14:10:42 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v5si57652wif.3.2015.03.01.14.10.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 14:10:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,672,1418079600"; 
   d="scan'208";a="123880811"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 23:10:41 +0100
Date: Sun, 1 Mar 2015 16:10:39 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Convert
 comment from C99 style to C89 style
In-Reply-To: <1425246411-12077-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1503011610270.2545@hadrien>
References: <1425246411-12077-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1865954274-1425247841=:2545"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1865954274-1425247841=:2545
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 1 Mar 2015, Hatice ERTÜRK wrote:

> This patch fixes the checkpatch.pl error:
> ERROR: "Do not use C99 // comments"
>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> index 4cf566f..ea6efd2 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> @@ -287,6 +287,6 @@ void __exit ieee80211_crypto_wep_exit(void)
>
>  void ieee80211_wep_null(void)
>  {
> -//	printk("============>%s()\n", __func__);
> +	/* printk("============>%s()\n", __func__); */

The comemnt could just be removed.

julia

>  	return;
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425246411-12077-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1865954274-1425247841=:2545--

