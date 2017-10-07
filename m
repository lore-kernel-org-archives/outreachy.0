X-GM-THRID: 6474240568402640896
X-Received: by 10.28.215.195 with SMTP id o186mr667271wmg.9.1507407904299;
        Sat, 07 Oct 2017 13:25:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.184.88 with SMTP id u24ls332187wrf.10.gmail; Sat, 07 Oct
 2017 13:25:03 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBpUcr7EJhKuZn1B4qv/wrROQa0if4ZYg0cH3pmOwkKDTIMATwwJKMdmus8Pwwus4sqDge4
X-Received: by 10.28.92.18 with SMTP id q18mr615833wmb.15.1507407903359;
        Sat, 07 Oct 2017 13:25:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507407903; cv=none;
        d=google.com; s=arc-20160816;
        b=MIVDQ//pf2qTVHoWC2YXU1Q+PwHsGho7tJ5jK/ezgYoQOa/pD4bsqNvv3nGQ9Q2qMP
         P2yxAPS432g5n9Qs2rYyPTq11Pm5hFRJqkRP3L5o2e1uIVPra6ql+etzEjnGeVNt8kvn
         MLCcD8GS3aHYfSg4xCc0G39oEiVYXdZvtRMV6kVE3vGbe8nZfKEoGcZOHVv8Kxh8xzxZ
         sTciwvu83GJRnaTL7yNigvLnDWSalS8wTCXyxTmMyE7ge0lcnpGYin4DtyTkjj7XB4Kj
         WW51j23/NMxmqMzFUGMRCE1IgnbMY5Hqm7OXMWg3HHts1kKz0xrI5E4j9RNovO50o0FR
         d3EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=s/FiJWLNpwx9rt/+7xOpyjWncrqJtBntulItL/7zQO8=;
        b=jxAks1MEf0KFObTyY6odNi/IPNMB6LGnKl9cIF0ON5KSVC22i0N1pr6Gu8UZY2AoKC
         6pZW9hV42IL8sN/vYMR/yxSeD5X58h1orF7Jlz6Py3RPaXhon2u8nxoJK4E4DFNEAz5P
         CwxnrgoEE5eRNKHAK3s/O3FV6q0dc/sMdArD2U2TApI1CbYXYzovPvJXIsuPdcw9+N8N
         4q0V8zWe76paq4hjKEEJsVPrk0mPVL/ppb0qxIipgHP1/3LxGkPrn5k3eMTN830RO5Bs
         EA+YNSVK+ubcJnURDBG+HY7rt14bBVU5bX9r3C9Sv2ObAgIn8HxCOIAK32NJ399o3cZK
         J9yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b123si517608wme.3.2017.10.07.13.25.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 13:25:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="240119359"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 22:25:02 +0200
Date: Sat, 7 Oct 2017 22:25:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: ieee80211:
 Replace list_for_each with list_for_each_entry
In-Reply-To: <1507406358-2502-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1710072223090.2071@hadrien>
References: <1507406358-2502-1-git-send-email-aastha.gupta4104@gmail.com>
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

Oops, the when != p's in this rule are not good enough.  p has to appear
nowhere in its scope, not just nowhere in the list_for_each_loop.  If you
look a few lines below your change you see that there is another use of p.

This suggests also that you didn't compile the code.

julia

>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> Changes in v2:
> 	- removed braces around list_for_each_entry
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index cbf8eb4..1781f11 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -447,16 +447,13 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
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
> +		list_for_each_entry(entry, &ieee->ibss_mac_hash[index], list)
>  			if (!memcmp(entry->mac, mac, ETH_ALEN))
>  				break;
> -		}
>  	//	if (memcmp(entry->mac, mac, ETH_ALEN)){
>  		if (p == &ieee->ibss_mac_hash[index]) {
>  			entry = kmalloc(sizeof(struct ieee_ibss_seq), GFP_ATOMIC);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507406358-2502-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

