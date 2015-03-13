X-GM-THRID: 8179991707648
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5417eb996bb2acbb
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.198.34 with SMTP id iz2mr7473105lbc.22.1426281490551;
        Fri, 13 Mar 2015 14:18:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.243.37 with SMTP id wv5ls466920lac.60.gmail; Fri, 13 Mar
 2015 14:18:10 -0700 (PDT)
X-Received: by 10.112.77.101 with SMTP id r5mr7812230lbw.4.1426281490125;
        Fri, 13 Mar 2015 14:18:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i8si213626wif.1.2015.03.13.14.18.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 14:18:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,397,1422918000"; 
   d="scan'208";a="125858694"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2015 22:18:09 +0100
Date: Fri, 13 Mar 2015 22:18:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 7/8] Staging: rtl8192u: Remove
 parentheses around right side an assignment
In-Reply-To: <1426269052-7995-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1503132217260.2065@localhost6.localdomain6>
References: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com> <1426269052-7995-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> index 32177c6..788704b 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> @@ -130,8 +130,8 @@ static void ccmp_init_blocks(struct crypto_tfm *tfm,
>  		       (WLAN_FC_GET_STYPE(fc) & 0x08));
>  	*/
>  	/* fixed by David :2006.9.6 */
> -	qc_included = ((WLAN_FC_GET_TYPE(fc) == IEEE80211_FTYPE_DATA) &&
> -		       (WLAN_FC_GET_STYPE(fc) & 0x80));
> +	qc_included = (WLAN_FC_GET_TYPE(fc) == IEEE80211_FTYPE_DATA) &&
> +		       (WLAN_FC_GET_STYPE(fc) & 0x80);

You could line up the expressions as was done before.  The same applies to 
some of the other changes.

julia

