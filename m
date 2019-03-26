X-GM-THRID: 6672800566949707776
X-Received: by 2002:a17:906:b288:: with SMTP id q8mr663450ejz.10.1553632837767;
        Tue, 26 Mar 2019 13:40:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6015:: with SMTP id o21ls3935803ejj.3.gmail; Tue, 26
 Mar 2019 13:40:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzRi8S/CWFnmFdtAoiahqg1uraGreYks4URT21JtI+HUqxWr3WuPjQKjgFe/QQWHSS/BMwN
X-Received: by 2002:a17:906:7c41:: with SMTP id g1mr663138ejp.6.1553632836945;
        Tue, 26 Mar 2019 13:40:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553632836; cv=none;
        d=google.com; s=arc-20160816;
        b=Ravmz4aOK/bZ6JDSXYOMIsLDKMb2lSmfmNU3PopYFR4J2XEdR2SxLOAtAAMLk+DAKE
         FA6V+Wn2bCse5hDeRVHZXK7VRezzgrk+DGujaNB9LZ/Lli67FoW1PAkokK994CXyiFjb
         dAGl8NIMGOJNAbJE51e7iSlzZPnTXn9IZC4DmqUl513Gn40sBcB7xiQ7ebam04bn1hjT
         q8bRJpshUe7OyG9ylJb8Nk45ItLOK4JhkT7Oh6uSlC+PN7lkIGTh6n/A7zZgVeJBKN6R
         k7tyQlgM79SUwJzZ+m7pXhf4umRec6dEs+HmMJteTVtwEr+/MQhj2oHKZi1BBepvdyEh
         yibA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1VRAMNU7PNOkwRm9HHcn1633qlMkhw8J2tkEQTeBm3g=;
        b=C6HJJJvbmnhg/cw0IqJApEDC17nD/6z9xYTvqSRINFB/HngN8LASN4wg4ozxGSYdfm
         wj9Xx8Bpjq4VJ93uZyIxkaJsMLLm/gmnKFDb2QnvHkPxp0ZmtrCh1bJuveTFnj/qqQ4R
         a0gYW8CIzTWbTCacKSOTGIrO5ApxTnrlXKdCSH6e/GpP0dgG4vwY7OgPKCN02OlwsMka
         EcNK/+mKJgi0t5Jog1qJrxNFe/GosAiHAQJkeAbBFqRWhD+Ar/guiJfkUDUQLN4QXazA
         J+rCNzWMfKbki45UEm2A++gLvuqYrVsP8MhJXVxqIGxdSawIalPN9kAEk7+ut3cFobP3
         XDyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r37si799292edd.2.2019.03.26.13.40.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 13:40:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,274,1549926000"; 
   d="scan'208";a="375888254"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2019 21:40:36 +0100
Date: Tue, 26 Mar 2019 21:40:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Use list_entry
 instead of container_of
In-Reply-To: <20190326203349.9048-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903262138130.3044@hadrien>
References: <20190326203349.9048-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Mar 2019, Himadri Pandya wrote:

> Use list_entry() instead of container_of() for conversion to
> wlan_network.

Some issues:

Can list_for_each or list_for_each_entry be used for any of this code?

In the last hunk, can the call to container_of/list_entry ever actually
return NULL?

With respect to the first, it may be helpful to look at the result of make
drivers/staging/rtl8712/rtl871x_mlme.i before and after the change to see
if the code looks the same in each case after macro expansion.

julia

>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index c666e038f43e..5b1fc327fbd2 100644
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
> @@ -163,7 +163,7 @@ static void _free_network_queue(struct _adapter *padapter)
>  	phead = &scanned_queue->queue;
>  	plist = phead->next;
>  	while (!end_of_queue_search(phead, plist)) {
> -		pnetwork = container_of(plist, struct wlan_network, list);
> +		pnetwork = list_entry(plist, struct wlan_network, list);
>  		plist = plist->next;
>  		_free_network(pmlmepriv, pnetwork);
>  	}
> @@ -290,7 +290,7 @@ struct	wlan_network *r8712_get_oldest_wlan_network(
>  	while (1) {
>  		if (end_of_queue_search(phead, plist) ==  true)
>  			break;
> -		pwlan = container_of(plist, struct wlan_network, list);
> +		pwlan = list_entry(plist, struct wlan_network, list);
>  		if (pwlan->fixed != true) {
>  			if (oldest == NULL ||
>  			    time_after((unsigned long)oldest->last_scanned,
> @@ -371,7 +371,7 @@ static void update_scanned_network(struct _adapter *adapter,
>  		if (end_of_queue_search(phead, plist))
>  			break;
>
> -		pnetwork = container_of(plist, struct wlan_network, list);
> +		pnetwork = list_entry(plist, struct wlan_network, list);
>  		if (is_same_network(&pnetwork->network, target))
>  			break;
>  		if ((oldest == ((struct wlan_network *)0)) ||
> @@ -1118,8 +1118,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
>  			}
>  			return _FAIL;
>  		}
> -		pnetwork = container_of(pmlmepriv->pscanned,
> -					struct wlan_network, list);
> +		pnetwork = list_entry(pmlmepriv->pscanned,
> +				      struct wlan_network, list);
>  		if (pnetwork == NULL)
>  			return _FAIL;
>  		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190326203349.9048-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

