X-GM-THRID: 6674450234072891392
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr1640827ljg.29.1554023155398;
        Sun, 31 Mar 2019 02:05:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4601:: with SMTP id t1ls785690lja.2.gmail; Sun, 31 Mar
 2019 02:05:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyhnywcyjXb6HjDq77eD3W5Zeb+CZBk1BCDtaTqTQJ+CsbHYCvwyw4BOAyWRSrNFYrc0cA3
X-Received: by 2002:a2e:910d:: with SMTP id m13mr1632901ljg.30.1554023154721;
        Sun, 31 Mar 2019 02:05:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554023154; cv=none;
        d=google.com; s=arc-20160816;
        b=GW2Ckqa38L++Lx1+BvR1cIXwLBZpCNBd2FAS3DDyIaP5JNmeE6YVI1oBwNBxICHmEe
         PVFGZwY5JNGPppaR8w4G/dv9v4ndK97JJWoOcshOt06ATn3twM9eXkEmwYvrOfwBP4AQ
         HDY4i82PsHguAeYAP5D9noQZy3DhPNwiIGkVhi8/uDRuQRWw/JZUTvJ//lSuXBXdeEFU
         onC6LzJxp6fljqFPNCPwz1WufCKuI2wxUCizZxV1oRiiMXcE+GcbnCf9sILooMxcXtEX
         Iw0yfvwyH1ffudagcg1V6dpaXv5OAs+m08AUSKdu314S2U19E2jvbSMvrKWeMJomHwXO
         Otcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=QWRHFDjZaIipXl5DsUEFUqv88BRzhbudujxhnN9kv2Y=;
        b=dJK509oW/DwoDwmk8YJ4Via+37xa4g9XzRtIw2/cJ4Yccij2yot7rTTY+8KWMJjMdG
         cZYkiEyAe7xO/vSS6pWZaFbIsh6zc2qCO9PfLgOYdIhKwN9UiHQx1bEfSEA5IGs7U8Ma
         nUu2yVFEWGWwj5oDCML0XjT8fVhrZjU5GkMS2GXYlYlfMbMQC6qxQ3So9/cq85XMhp2T
         OKCCPWTfKxUxTYSNJxb5cyF9UJ/xgGkDfVpgN7Lap5dXPsa5i+8DNbIsverYkN4jDtWM
         S09XZZZDPXQc1g7Sr5PRL942IIZ8lkozCm+4GxG3i3FlRWV9HM/SSn+p+y2bw587Cj8q
         /UOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a22si253854lfl.3.2019.03.31.02.05.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 02:05:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="376508013"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 11:05:33 +0200
Date: Sun, 31 Mar 2019 11:05:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/9] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Avoid CamelCase "blInserted"
In-Reply-To: <262f9fa05d845ba0b407eb2f887ffa62d546c54c.1554016131.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311104520.2578@hadrien>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com> <262f9fa05d845ba0b407eb2f887ffa62d546c54c.1554016131.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Payal Kshirsagar wrote:

> Change variable name "blInserted" to "bl_insetred"
> to avoid camelcase style issue.

No, the bl is hungarian notation (bool long?).  Just use inserted.  Also,
use the correct spelling of inserted in the log message.

julia

>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 86c7c9d..99e02c4 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -943,7 +943,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  			    union iwreq_data *wrqu, char *extra)
>  {
>  	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
> -	u8 j, blInserted = false;
> +	u8 j, bl_inserted = false;
>  	int intReturn = false;
>  	struct security_priv *psecuritypriv = &padapter->securitypriv;
>  	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
> @@ -965,7 +965,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  		else
>  			intReturn = true;
>
> -		blInserted = false;
> +		bl_inserted = false;
>
>  		/* overwrite PMKID */
>  		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
> @@ -975,12 +975,12 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
>  				psecuritypriv->PMKIDList[j].bUsed = true;
>  				psecuritypriv->PMKIDIndex = j+1;
> -				blInserted = true;
> +				bl_inserted = true;
>  				break;
>  			}
>  		}
>
> -		if (!blInserted) {
> +		if (!bl_inserted) {
>  			/*  Find a new entry */
>  			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
>  				  psecuritypriv->PMKIDIndex);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/262f9fa05d845ba0b407eb2f887ffa62d546c54c.1554016131.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

