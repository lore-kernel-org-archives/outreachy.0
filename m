X-GM-THRID: 6671816179609239552
X-Received: by 2002:adf:ec87:: with SMTP id z7mr11599769wrn.44.1553409882114;
        Sat, 23 Mar 2019 23:44:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:dc43:: with SMTP id t64ls1652581wmg.5.gmail; Sat, 23 Mar
 2019 23:44:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzj/ZC8u5C9vv+acdl87pUoQvdmsUbRqEIowSrBet+w2+wHAvSWec1RcVOhYpaiTzyPwIue
X-Received: by 2002:a1c:2743:: with SMTP id n64mr1834692wmn.143.1553409881390;
        Sat, 23 Mar 2019 23:44:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553409881; cv=none;
        d=google.com; s=arc-20160816;
        b=e2VI3ZX8RJhxBxgqe0H3n193swXmqaB80vm38N8+xW5zg3oXsD3NBzR3BsKDKMnK0L
         W0OF+4Qp78WVuUcL2xb78C36hEM38WiUFPimiWIFmI0GhLBx4ukWz62H1Yb4LL0owy+o
         JFJygiwqoeriFxaG0HylK01q4Ze0aYRKfJ12S+k4rIB5w440Dg/VUDDB+crssM7K+NOm
         f/JBiT/KuUQNwRVSXvoWk+nHuF5BsJHnIoJ9hNzo1kNUcpSWqX3LY5x2avgIF9TJpQez
         1qjGTI1/nQBI9EwKUgJzUFM+KW2VTg6NixSnDDCEmOkjudbs/sZsSilMLixMLy9HqaKI
         M0cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=n/lcs7eF7pVm9HgxNsZlclsJ3G7z3z2guj4qT+K08No=;
        b=WtuDln9i6aUWUmm7jEQ0w6RSESr5VXLnFLb9VHRoBGRP4nS/kxFfT+usR2Co5l0DEF
         ZdOh7uD9uhwnDIfWC3KqiCU+43MRsQ2nL3jWS1JZlts0OLsNiPWWXHRYmNMatCxkrBTZ
         g+8/7G03HTkR4yfB9HME/jz25fuFwVuJeOPni27mXyqn6bor3AmEJjIrGkv3vXFx7Bf3
         l+ostGSjeujNKK0if+BUr/mNfN/mJH0638EB84OAg1h/Co39QIy8Ujo3/s6obRHDYwuP
         EcWKQZzxNqyBIP3o2be9u8pxrFT5fYFo9x/cr9IMaJ9xth5v0Ifd3YD+AjWuAzA2/Q4k
         2fWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s8si134094wme.0.2019.03.23.23.44.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 23:44:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300510414"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 07:44:40 +0100
Date: Sun, 24 Mar 2019 07:44:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: rtl8712: align to open
 parenthesis
In-Reply-To: <c84fe5150ec9d89d48131821c6087b7ec8576a21.1553403095.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903240743010.2526@hadrien>
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com> <c84fe5150ec9d89d48131821c6087b7ec8576a21.1553403095.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Mar 2019, Payal Kshirsagar wrote:

> Adjust code to fix the style issue of alignment.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8712/osdep_service.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
> index e939c4a..d33ddff 100644
> --- a/drivers/staging/rtl8712/osdep_service.h
> +++ b/drivers/staging/rtl8712/osdep_service.h
> @@ -46,7 +46,7 @@ struct	__queue	{
>  	} while (0)
>
>  static inline u32 end_of_queue_search(struct list_head *head,
> -		struct list_head *plist)
> +				      struct list_head *plist)

There is an existing kernel function for this called list_empty.  So this
function should be removed and its uses should be replaced with that one.

Some of its uses seem to be in the implementation of a loop over a list.
Those can be replaced by using list_for_each, or list_for_each_safe, if
the elements of the list are deleted along the way.

julia


>  {
>  	return (head == plist);
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c84fe5150ec9d89d48131821c6087b7ec8576a21.1553403095.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

