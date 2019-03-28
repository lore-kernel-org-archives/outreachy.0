X-GM-THRID: 6673407094899605504
X-Received: by 2002:a1c:f214:: with SMTP id s20mr19834wmc.20.1553782852259;
        Thu, 28 Mar 2019 07:20:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:540a:: with SMTP id g10ls63515wrv.14.gmail; Thu, 28 Mar
 2019 07:20:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSjnj8vnZOaSWR0o5UBEcvVPNHs/75r91BHX8Ee9AejUIdDGFz/fN1ESrS8e7cfPkNnt2S
X-Received: by 2002:a5d:444e:: with SMTP id x14mr790073wrr.32.1553782851567;
        Thu, 28 Mar 2019 07:20:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553782851; cv=none;
        d=google.com; s=arc-20160816;
        b=Y46lO8krb5HumkHHcCBWUnjpONoxTo9IdQSA22p5efur7Xce0IpGhZ46tx/BR/SsZC
         2xTK0HjkPplmNieDdTic858pfy8kNjVZpaso/2pXgy76sgasJhWNL2SoR1ul1g89XeqT
         knqaQQ8fW2r6EoUo4rZEk1oX7isgeIoS97qJ7/+SOdx/q/rpA48xOQAAiaIytM55UwKD
         34ofyP2ulZAaOU4t4Y0NjigwPG2lMvaPZsl3WH6+JfwVl5+S5FDYAe6oEf0VgF+sPKfW
         wyXsyxxMsfQb8cDRlNiO/kFC1JgPl1Tk/vPJytGiCCOq15GlB8w3hu0VKuV3pjG96lbj
         6xIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jMhotLB6kllzKm1Siaxx/mKokiCIM2v8BjjQ0cQgwvs=;
        b=mqHxu+XP+/AsWhRsZ5gcw4fctuBixO0xE1qLObo+xd8AV1qE7W43kSgkhNf6ZQXS9D
         /Byxz7Cl3FGuDQigE1lC83156UtMvX0QG1YthG1RYfd5AgLCZKfoZutwnZ7dVxKo4jEi
         GMkBPUQoRAAeH1ZtxR8kdjhW/N/7seLq00lX4jozpuTeHdVxMwdxABalvrIF52CCyIHg
         zb855xDWwQ/WjzeQqNYQ/grEe8Op4TAdQeDldnwmwXRYDwb9juSvtqMUAXuMZPkxBZqI
         TSTWxZ8Jq7fKuINZqZxR8zDQ/mQAFOvGGzpXvcRFAtvmQX3sWbMyYyGStsIWaR7nmXR6
         PIZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a9si1267234wrp.5.2019.03.28.07.20.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 07:20:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,280,1549926000"; 
   d="scan'208";a="376181551"
Received: from unknown (HELO hadrien) ([195.167.213.123])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2019 15:20:51 +0100
Date: Thu, 28 Mar 2019 15:20:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: use list_entry
 to access current list element instead of container_of
In-Reply-To: <20190328114741.4367-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903281520360.2438@hadrien>
References: <20190328114741.4367-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Mar 2019, Bhanusree Pola wrote:

> For struct list_head* type variables use list_entry to access the current list
> elements rather than using container_of.
> Issue found using coccinelle.
>
> The following semantic patch is used to implement this:
>
> <smpl>
> @rule_list@
> struct list_head* l;
> @@
>
> -container_of
> +list_entry
>   (l,...)
> </smpl>


Can these be implemented with list_for_each?

julia

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index c360856a86ec..0554792e191f 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -179,7 +179,7 @@ void expire_timeout_chk(struct adapter *padapter)
>
>  	/* check auth_queue */
>  	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, auth_list);
> +		psta = list_entry(plist, struct sta_info, auth_list);
>  		plist = plist->next;
>
>  		if (psta->expire_to > 0) {
> @@ -212,7 +212,7 @@ void expire_timeout_chk(struct adapter *padapter)
>
>  	/* check asoc_queue */
>  	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, asoc_list);
> +		psta = list_entry(plist, struct sta_info, asoc_list);
>  		plist = plist->next;
>
>  		if (chk_sta_is_alive(psta) || !psta->expire_to) {
> @@ -1021,7 +1021,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
>  	plist = phead->next;
>
>  	while (phead != plist) {
> -		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> +		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>  		plist = plist->next;
>
>  		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
> @@ -1081,7 +1081,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
>  	plist = phead->next;
>
>  	while (phead != plist) {
> -		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> +		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>  		plist = plist->next;
>
>  		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
> @@ -1328,7 +1328,7 @@ void associated_clients_update(struct adapter *padapter, u8 updated)
>
>  		/* check asoc_queue */
>  		while (phead != plist) {
> -			psta = container_of(plist, struct sta_info, asoc_list);
> +			psta = list_entry(plist, struct sta_info, asoc_list);
>
>  			plist = plist->next;
>
> @@ -1599,7 +1599,7 @@ int rtw_sta_flush(struct adapter *padapter)
>
>  	/* free sta asoc_queue */
>  	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, asoc_list);
> +		psta = list_entry(plist, struct sta_info, asoc_list);
>
>  		plist = plist->next;
>
> @@ -1726,7 +1726,7 @@ void stop_ap_mode(struct adapter *padapter)
>  	phead = get_list_head(pacl_node_q);
>  	plist = phead->next;
>  	while (phead != plist) {
> -		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> +		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>  		plist = plist->next;
>
>  		if (paclnode->valid) {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190328114741.4367-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

