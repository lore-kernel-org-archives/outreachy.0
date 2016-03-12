X-GM-THRID: 6260795307538251776
X-Received: by 10.28.24.14 with SMTP id 14mr991444wmy.1.1457787312802;
        Sat, 12 Mar 2016 04:55:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.1 with SMTP id l1ls581350lfe.107.gmail; Sat, 12 Mar
 2016 04:55:12 -0800 (PST)
X-Received: by 10.112.170.42 with SMTP id aj10mr1871619lbc.1.1457787312133;
        Sat, 12 Mar 2016 04:55:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c140si305335wmh.1.2016.03.12.04.55.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 04:55:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,324,1454972400"; 
   d="scan'208";a="207388350"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2016 13:55:11 +0100
Date: Sat, 12 Mar 2016 13:55:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: android: ashmem.c:
 Convert macros page_range_{subsumes/subsumed_by/in}_range to static inline
 function
In-Reply-To: <8743d5b317759576c30c8ea05a04c537aec7234b.1457703530.git.bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1603121353390.2055@localhost6.localdomain6>
References: <cover.1457703530.git.bhumirks@gmail.com> <8743d5b317759576c30c8ea05a04c537aec7234b.1457703530.git.bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 11 Mar 2016, Bhumika Goyal wrote:

> Convert macros page_range_{subsumes/subsumed_by/in}_range to static
> inline function as static inline functions are preferred over macros.
> The change can be done as the arguments at all call sites have the same
> type. Also, all three macro have same type of arguments and return
> values so they can converted using a common semantic patch.
> 
> @r@
> identifier f;
> expression e;
> @@
> #define f(...) e

I don't see the point of this rule.  The described strategy in the 
challenge problem was to have Coccinelle check the type properties of the 
actual arguments to the macro, but you have done that part by hand.

julia

> 
> @r2@
> identifier r.f;
> identifier range,start,end;
> expression r.e;
> @@
> - #define f(range,start,end) e
> + static inline int f(struct ashmem_range *range, size_t start, size_t end)
> +{
> +	return e;
> +}
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index d3e884e..0a592d0 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -106,20 +106,29 @@ static struct kmem_cache *ashmem_range_cachep __read_mostly;
>  #define range_on_lru(range) \
>  	((range)->purged == ASHMEM_NOT_PURGED)
>  
> -#define page_range_subsumes_range(range, start, end) \
> -	(((range)->pgstart >= (start)) && ((range)->pgend <= (end)))
> +static inline int page_range_subsumes_range(struct ashmem_range *range,
> +					    size_t start, size_t end)
> +{
> +	return (((range)->pgstart >= (start)) && ((range)->pgend <= (end)));
> +}
>  
> -#define page_range_subsumed_by_range(range, start, end) \
> -	(((range)->pgstart <= (start)) && ((range)->pgend >= (end)))
> +static inline int page_range_subsumed_by_range(struct ashmem_range *range,
> +					       size_t start, size_t end)
> +{
> +	return (((range)->pgstart <= (start)) && ((range)->pgend >= (end)));
> +}
>  
>  static inline int page_in_range(struct ashmem_range *range, size_t page)
>  {
>  	return (((range)->pgstart <= (page)) && ((range)->pgend >= (page)));
>  }
>  
> -#define page_range_in_range(range, start, end) \
> -	(page_in_range(range, start) || page_in_range(range, end) || \
> -		page_range_subsumes_range(range, start, end))
> +static inline int page_range_in_range(struct ashmem_range *range,
> +				      size_t start, size_t end)
> +{
> +	return (page_in_range(range, start) || page_in_range(range, end) ||
> +		page_range_subsumes_range(range, start, end));
> +}
>  
>  static inline int range_before_page(struct ashmem_range *range, size_t page)
>  {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8743d5b317759576c30c8ea05a04c537aec7234b.1457703530.git.bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

