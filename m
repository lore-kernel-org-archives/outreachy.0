X-GM-THRID: 6387840311027040256
X-Received: by 10.46.71.15 with SMTP id u15mr645660lja.9.1487310623592;
        Thu, 16 Feb 2017 21:50:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.28 with SMTP id s28ls135257ljd.52.gmail; Thu, 16 Feb
 2017 21:50:22 -0800 (PST)
X-Received: by 10.46.33.82 with SMTP id h79mr649011ljh.7.1487310622692;
        Thu, 16 Feb 2017 21:50:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h62si13752wme.2.2017.02.16.21.50.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 21:50:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,171,1484002800"; 
   d="scan'208";a="260868934"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 06:50:22 +0100
Date: Fri, 17 Feb 2017 06:50:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Larry Finger <Larry.Finger@lwfinger.net>, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Moved logical
 OR operator to previous line.
In-Reply-To: <20170217051238.GA3213@euri>
Message-ID: <alpine.DEB.2.20.1702170649570.2062@hadrien>
References: <20170217051238.GA3213@euri>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, Varsha Rao wrote:

> Moved logical OR operator to previous line to fix the following
> checkpatch issue:
>
> CHECK: Logical continuations should be on the previous line.

Acked-by: drivers/staging/rtl8712/ieee80211.c

> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  v2:
>
>  -Edited commit message.
>  -Fixed the warning of line over 80 characters.
>
>  drivers/staging/rtl8712/ieee80211.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
> index d84da2b..f35121e 100644
> --- a/drivers/staging/rtl8712/ieee80211.c
> +++ b/drivers/staging/rtl8712/ieee80211.c
> @@ -288,8 +288,9 @@ int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
>  		/* No WPA IE - fail silently */
>  		return _FAIL;
>  	}
> -	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2))
> -	     || (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
> +	if ((*wpa_ie != _WPA_IE_ID_) ||
> +	    (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2)) ||
> +	    (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
>  		return _FAIL;
>  	pos = wpa_ie;
>  	pos += 8;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170217051238.GA3213%40euri.
> For more options, visit https://groups.google.com/d/optout.
>

