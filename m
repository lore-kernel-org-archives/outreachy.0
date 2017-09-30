X-GM-THRID: 6471369058680832000
X-Received: by 10.28.92.18 with SMTP id q18mr885372wmb.15.1506747903537;
        Fri, 29 Sep 2017 22:05:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.228.212 with SMTP id b203ls1062072wmh.5.gmail; Fri, 29 Sep
 2017 22:05:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDcxmlbHuVEYP8Hl4sg7iMiYbslWGd54GumRO2CkBKKljX1r9tVnv3Im/jFvwwzb9EdEOUD
X-Received: by 10.28.138.130 with SMTP id m124mr879546wmd.27.1506747902754;
        Fri, 29 Sep 2017 22:05:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506747902; cv=none;
        d=google.com; s=arc-20160816;
        b=u6guxnj+LIoAMwLzHKHbbD3ewlANfjW1T6vBf/DQQSuQvCa8t3NQAvdZxMsEJMQMA7
         K4GnCwgu/vD392omrxCSFuDz6bMPxPU/ZyVmkjTDNUfun7Cqfk8JqyC6F5Vn74gHm18+
         xoTIZLEolrd3SHlDuzuFO+2YM3/RMrff7tBtll0kipyB+jnrlwdEzWLzZC7OEV4fwp4M
         xc6W8k/VSYgvgl+3fAqp+UgImtiklDjXCd6gkBsckh+5d0+Pu2XzAed7tYAA0uja/y/y
         Fk2XvbsY957Hqco01/ne106dJaq+D0/Sk+IU2rsmYtpj1zkvTmrHfvv9/lRFbHJ4Y3Sv
         tOJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=BRbotCUPUepCXfdSrIkLio2Nh/SOxISFaHQqsb8a5Ac=;
        b=hX4bAYU1IKVdRMG5YJQkgYBVHjy0SoATg4XGM7R20tya0bDFkQuVLrBMjkEWfG3OB0
         OOaMw31JxOjJ8hTudI5Jw8GOfWOtwyHDMDu6BUTgBK/0qiFbY7e9J5wjivJkGTOMvmhq
         olUqfhRCGwSrDCjsTou3wJrFnKoushUNRYFTyBenAfpOO5IqTYwbP1gvkxTOkS4WRkVq
         JKh3Y0EZX9dDIfpMQNyP0/0wqKNHHXWxMQcvYgk3NBFich8e7v64nCknavifmNpqqr9Y
         QMEE82aahaawX4mmHosA6E3whXzkA8SjytVB9I/GlEkRQ236PNxFur85fugTIxL/gAeX
         0Qrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d82si645972wmd.1.2017.09.29.22.05.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 22:05:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,456,1500933600"; 
   d="scan'208";a="239209711"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2017 07:05:01 +0200
Date: Sat, 30 Sep 2017 07:05:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use list_entry
 instead of container_of
In-Reply-To: <1506734581-10932-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709300702330.2511@hadrien>
References: <1506734581-10932-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Sep 2017, Srishti Sharma wrote:

> For variables of the type struct list_head* use list_entry to access
> the current list element instead of using container_of.
> Done using the following semantic patch by coccinelle.
>
> @r@
> identifier e;
> struct list_head* l;
> @@
>
> <... when != l == NULL
> l;
> ...>

I don't see what is the goal of the above code.  The list_head variable is
not going to be in a statement by itself.  There is also no need to check
for l being NULL.  If it is NULL, the original code is incorrect too.

> (
> e =
> -container_of
> +list_entry
>      (
>       ...)
> )

Here you don't need the outer ( ).  This makes a disjunction with only
one choice.  Since there is only one choice, you don't need the
disjunction.

julia

> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> index 22cf362..f9df4ac 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> @@ -152,8 +152,8 @@ u32	_rtw_free_sta_priv(struct	sta_priv *pstapriv)
>  			while (phead != plist) {
>  				int i;
>
> -				psta = container_of(plist, struct sta_info,
> -						    hash_list);
> +				psta = list_entry(plist, struct sta_info,
> +						  hash_list);
>  				plist = plist->next;
>
>  				for (i = 0; i < 16; i++) {
> @@ -323,7 +323,7 @@ u32	rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
>  		plist = phead->next;
>
>  		while (!list_empty(phead)) {
> -			prframe = container_of(plist, struct recv_frame, list);
> +			prframe = list_entry(plist, struct recv_frame, list);
>
>  			plist = plist->next;
>
> @@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
>  		plist = phead->next;
>
>  		while (phead != plist) {
> -			psta = container_of(plist, struct sta_info, hash_list);
> +			psta = list_entry(plist, struct sta_info, hash_list);
>
>  			plist = plist->next;
>
> @@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
>  	plist = phead->next;
>
>  	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, hash_list);
> +		psta = list_entry(plist, struct sta_info, hash_list);
>
>  		if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
>  			/*  if found the matched address */
> @@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
>  	phead = get_list_head(pacl_node_q);
>  	plist = phead->next;
>  	while (phead != plist) {
> -		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> +		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>  		plist = plist->next;
>
>  		if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506734581-10932-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

