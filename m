X-GM-THRID: 6256340857508593664
X-Received: by 10.194.84.40 with SMTP id v8mr1089593wjy.2.1456668054372;
        Sun, 28 Feb 2016 06:00:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.1 with SMTP id o1ls191319wmg.20.gmail; Sun, 28 Feb 2016
 06:00:53 -0800 (PST)
X-Received: by 10.194.216.3 with SMTP id om3mr1078609wjc.7.1456668053722;
        Sun, 28 Feb 2016 06:00:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si448504wmw.3.2016.02.28.06.00.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:00:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,515,1449529200"; 
   d="scan'208";a="166234505"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 15:00:53 +0100
Date: Sun, 28 Feb 2016 15:00:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: os_dep: Use
 list_entry() rather than container_of()
In-Reply-To: <20160228185658.GA5218@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602281500160.2147@localhost6.localdomain6>
References: <20160228185658.GA5218@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 28 Feb 2016, Janani Ravichandran wrote:

> Use list_entry() rather than container_of() with linked list nodes.
> Semantic patch used:
> 
> @a exists@
> identifier var;
> struct list_head *ptr;
> @@
> 
>   var =
> - container_of
> + list_entry
>   (ptr, ...);
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rtl8188eu/os_dep/xmit_linux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> index 1593e28..d950c4f 100644
> --- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> +++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> @@ -178,7 +178,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
>  
>  	/* free sta asoc_queue */
>  	while (phead != plist) {

This may be another hidden list_for_each.  This time the list doesn't 
become empty.

julia

> -		psta = container_of(plist, struct sta_info, asoc_list);
> +		psta = list_entry(plist, struct sta_info, asoc_list);
>  
>  		plist = plist->next;
>  
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228185658.GA5218%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

