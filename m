X-GM-THRID: 6474240568402640896
X-Received: by 10.223.133.244 with SMTP id 49mr436210wru.22.1507403978111;
        Sat, 07 Oct 2017 12:19:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.143 with SMTP id 137ls382079wml.0.canary-gmail; Sat, 07
 Oct 2017 12:19:37 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBhWDH+lx0lzmRRcbTgl30+jmFkkEsodwWpi1wzdza3TRTJg4ve4WjequwMZRkjSvMU04rd
X-Received: by 10.28.8.12 with SMTP id 12mr254369wmi.31.1507403977065;
        Sat, 07 Oct 2017 12:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507403977; cv=none;
        d=google.com; s=arc-20160816;
        b=fm3OTFJ4pjIDRaE9z5jgRvdaP2VbH/IOOA79N0up2uQr59fPuQMDhR5L8B8l3IOX0H
         XqW7YO23QU8+aGyEpgmXpXvy2oFLTZ5+jayzG7Od87KFcUUBq5gllGkjWd3qEPgCwO6U
         Q2dRDwCj7sAWA6ntA14FkDeUWt72IzS38qJEPWKo7sXi+Ht1Hp9K+jh1GekKjQkrH6Ys
         4kprv6evaI1yykcxGBJDuy7TFIoEMfBNmyCavSeHUPl9srLMVzmL3BpQONWXddS8EtY/
         w4YfmIagVhSSIsDOZlsAoPOshC5foydOdKishnR/HtfA6IsUitmEjSqpbTQMAKoYQ0IW
         lhVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=E22YZv6zo5recPQANS5yp8ghN48ccmkRkhS/tYOmePM=;
        b=qCqs2I2hpsx9BwEI1yp4RV3+t58T5zckF5g+mVZDVKgyHMuvUrBbOl1+8hC3wqdXRX
         EDmeUu7pKjSGyyj6KMQQ1VSUf3PeWxB831TiEOFDxDsuFoOLUlLN3cCsMBtyMIOTsQtG
         kM8eimmnvptPdkaSTRsnzpXA/M7VgbNfx7G99GYIcmLs5+kg/sC2jiUlQE23hOZXbbPn
         c/fpkX07bsAQpaRhz+CGH4PIirSj6uwwUqXrToRUrARDDmH7PLLBeBiSqBsti61PHrFq
         k94GPYky0WTIVspvAcEs9wJcxcElnbkyxg7n3m4as5uaf2d6VjyU+QnxHKxq1gzuEFEG
         kiFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si563365wma.1.2017.10.07.12.19.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 12:19:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="294919664"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 21:19:36 +0200
Date: Sat, 7 Oct 2017 21:19:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replace
 list_for_each with list_for_each_entry
In-Reply-To: <1507401578-26613-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1710072119220.2071@hadrien>
References: <1507401578-26613-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Oct 2017, Aastha Gupta wrote:

> list_for_each is a macro that iterates over the elements of a list.
> list_entry is a function that takes as argument a list pointer and
> returns the structure that is pointed to.
> list_for_each_entry is a macro that iterates over the structures in the
> list, rather than exposing the list spine.
>
> Here the  list is only used for its entries,
> and thus list_for_each_entry can be used instead of the
> composition of list_for_each and list_entry.
>
> This patch is with the help of following Coccinelle script:
>
> @@
> expression l, list;
> type t1, t2;
> identifier p, v;
> iterator name list_for_each_entry, list_for_each;
> @@
>
> - t1 *p;
> ...
> - list_for_each(p, l)
> + list_for_each_entry(v, l, list)
> {
> ... when != p
> - v = list_entry(p, t2, list);
> ... when != p
> }
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index cbf8eb4..b8461f4 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -447,13 +447,11 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>  	switch (ieee->iw_mode) {
>  	case IW_MODE_ADHOC:
>  	{
> -		struct list_head *p;
>  		struct ieee_ibss_seq *entry = NULL;
>  		u8 *mac = header->addr2;
>  		int index = mac[5] % IEEE_IBSS_MAC_HASH_SIZE;
>
> -		list_for_each(p, &ieee->ibss_mac_hash[index]) {
> -			entry = list_entry(p, struct ieee_ibss_seq, list);
> +		list_for_each_entry(entry, &ieee->ibss_mac_hash[index], list) {
>  			if (!memcmp(entry->mac, mac, ETH_ALEN))
>  				break;
>  		}

You can also drop the braces.

julia

> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507401578-26613-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

