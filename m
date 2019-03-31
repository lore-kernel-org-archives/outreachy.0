X-GM-THRID: 6674267883353145344
X-Received: by 2002:a2e:9002:: with SMTP id h2mr1699083ljg.14.1554020009962;
        Sun, 31 Mar 2019 01:13:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5637:: with SMTP id b23ls542956lff.6.gmail; Sun, 31 Mar
 2019 01:13:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwytbb+MqnL5/uxnsfHCGY0RvxR47K0Jw/hQKbt8RaWIlOI2Qf9til/wBXm1pBu0+o0W4fk
X-Received: by 2002:ac2:5632:: with SMTP id b18mr1506016lff.5.1554020009116;
        Sun, 31 Mar 2019 01:13:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554020009; cv=none;
        d=google.com; s=arc-20160816;
        b=arqrgWlNRbF8Ujpgxmj8t2g76DwWKKZ+OMBJNag8pjcuKq+2fZjrPWkvQpElPo7mn2
         iATsuIPMww87BBqywU18G/ymoa3uRpYQy9nEsq8USkacBTXUrw2nJjSg29df8q/SDBJJ
         9E9Z/nXaCtbPygzlL7fyEtqsINQksmfh0p0SZdm94oYOhyEhrtxBKQuAPL9Czbi9GxlB
         1MjGkvNWqFILqnsKlvUb4USyRG0eTN26De6eOocwtxYpluXMLUwZxerMQfdyGKNQp6XY
         OdUaHTlMjnr/jThwHpW2rfry3KwpX1LlmsjJX48cMdE7aDMk5G0UxOHNxz1CiZWlAsET
         +irA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7cSftGTXkJ1/hmpzS9I630toRIfOrOTFYwSXxaUNKtU=;
        b=yhGMeqIopjBJSB7Al4JbkU1zXvQJEMVJt+DKwdhZGSFh7fXdGQZM3mYTrXJiabUinr
         bmm7ZASVMuk750+Die0QLekDz2QazzbLp/wdyMNVG9Ebsb6erVLEnQMKLTsiJ0V5hQj0
         3OgOQpMfZJdx3heMGdjvN+q7L026IIqzVeWHcKmWFarqR0jLoXFPNR4u6MhyMJwQnAd7
         3HThCsLbsjPq0xnln4Le3ZlP2ji2DbyPdGpnArA51FGZailsciiXK5GVryDQyWwfngVP
         kV51ZUxFOMUBCip9rkkXpAp0efrAskJzxCCPk9RgexoFhumlbgvZD3hYHJn4LDlnVW6D
         +yAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f10si353921ljk.2.2019.03.31.01.13.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 01:13:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,291,1549926000"; 
   d="scan'208";a="376505090"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 10:13:28 +0200
Date: Sun, 31 Mar 2019 10:13:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/7] staging: rtl8712: use list_entry
 in function _r8712_find_network
In-Reply-To: <20190331022155.68569-2-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311010580.2578@hadrien>
References: <20190330192742.65250-1-himadri18.07@gmail.com> <20190331022155.68569-1-himadri18.07@gmail.com> <20190331022155.68569-2-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Himadri Pandya wrote:

> Use list_entry instead of container_of for conversion to
> wlan_network in function _r8712_find_network() because it is a better
> practice to use list_entry for list manipulations in kerel.

Better practice is random.

The point is that the field has type list_head and in that case list_entry
is equivalent to container_of:

#define list_entry(ptr, type, member) \
	container_of(ptr, type, member)

julia

>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V3:
> 	- Improve log message
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index c666e038f43e..9bfceaeaa05e 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -142,7 +142,7 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
>  	phead = &scanned_queue->queue;
>  	plist = phead->next;
>  	while (plist != phead) {
> -		pnetwork = container_of(plist, struct wlan_network, list);
> +		pnetwork = list_entry(plist, struct wlan_network, list);
>  		plist = plist->next;
>  		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
>  			break;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190331022155.68569-2-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

