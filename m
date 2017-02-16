X-GM-THRID: 6387840311027040256
X-Received: by 10.46.88.70 with SMTP id x6mr450126ljd.22.1487285385451;
        Thu, 16 Feb 2017 14:49:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.204 with SMTP id p195ls174208lfd.31.gmail; Thu, 16 Feb
 2017 14:49:44 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr531448lfb.27.1487285384593;
        Thu, 16 Feb 2017 14:49:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q4si135810wma.3.2017.02.16.14.49.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 14:49:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,169,1484002800"; 
   d="scan'208";a="213507466"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 23:49:43 +0100
Date: Thu, 16 Feb 2017 23:49:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Larry Finger <Larry.Finger@lwfinger.net>, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Moved logical OR
 operator to previous line.
In-Reply-To: <20170216224234.GA25084@euri>
Message-ID: <alpine.DEB.2.20.1702162347080.2121@hadrien>
References: <20170216224234.GA25084@euri>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, Varsha Rao wrote:

> Logical OR operator is moved to previous line to fix the following checkpatch issue:

Commit messages should respect the 80 character limit.  Actually they
should be smaller, because they willbe a bit indented in the git log.

Use the imperative: Move the logical OR operator...

>
> CHECK: Logical continuations should be on the previous line.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/rtl8712/ieee80211.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
> index d84da2b..bce78b6 100644
> --- a/drivers/staging/rtl8712/ieee80211.c
> +++ b/drivers/staging/rtl8712/ieee80211.c
> @@ -288,8 +288,8 @@ int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
>  		/* No WPA IE - fail silently */
>  		return _FAIL;
>  	}
> -	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2))
> -	     || (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
> +	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2)) ||
> +	    (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))

The first added line appears to be now over 80 characters.  One fix should
not add new warnings.  You can put a newline after each || in this case
for better readability.  Another possible solution could be to drop the
unneeded parentheses.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170216224234.GA25084%40euri.
> For more options, visit https://groups.google.com/d/optout.
>

