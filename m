X-GM-THRID: 6212138738119606272
X-Received: by 10.194.82.193 with SMTP id k1mr3398552wjy.2.1446377129980;
        Sun, 01 Nov 2015 03:25:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.18.71 with SMTP id 68ls421615wms.1.canary; Sun, 01 Nov 2015
 03:25:29 -0800 (PST)
X-Received: by 10.194.189.81 with SMTP id gg17mr3395703wjc.5.1446377129520;
        Sun, 01 Nov 2015 03:25:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si355372wmb.3.2015.11.01.03.25.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:25:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,229,1444687200"; 
   d="scan'208";a="185436660"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 12:25:29 +0100
Date: Sun, 1 Nov 2015 12:25:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: lustre: libcfs: Remove
 unused structures
In-Reply-To: <1446376246-6959-2-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.02.1511011224560.2070@localhost6.localdomain6>
References: <1446376246-6959-1-git-send-email-shraddha.6596@gmail.com> <1446376246-6959-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Shraddha Barke wrote:

> The structures cfs_hash_bd_findadd_locked and -cfs_hash_bd_finddel_locked
> are not used anywhere. Thus remove these structures.

These look like functions, not structures.  Also there is a strange - in 
front of cfs_hash_bd_finddel_locked in the commit message.

julia

> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  .../lustre/include/linux/libcfs/libcfs_hash.h       |  7 -------
>  drivers/staging/lustre/lustre/libcfs/hash.c         | 21 ---------------------
>  2 files changed, 28 deletions(-)
> 
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> index 70b8b29..d29e359 100644
> --- a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> +++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> @@ -641,13 +641,6 @@ cfs_hash_bd_lookup_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
>  struct hlist_node *
>  cfs_hash_bd_peek_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
>  			const void *key);
> -struct hlist_node *
> -cfs_hash_bd_findadd_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
> -			   const void *key, struct hlist_node *hnode,
> -			   int insist_add);
> -struct hlist_node *
> -cfs_hash_bd_finddel_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
> -			   const void *key, struct hlist_node *hnode);
>  
>  /**
>   * operations on cfs_hash bucket (bd: bucket descriptor),
> diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
> index 0308744..ae6c646 100644
> --- a/drivers/staging/lustre/lustre/libcfs/hash.c
> +++ b/drivers/staging/lustre/lustre/libcfs/hash.c
> @@ -680,27 +680,6 @@ cfs_hash_bd_peek_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd, const void
>  }
>  EXPORT_SYMBOL(cfs_hash_bd_peek_locked);
>  
> -struct hlist_node *
> -cfs_hash_bd_findadd_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
> -			   const void *key, struct hlist_node *hnode,
> -			   int noref)
> -{
> -	return cfs_hash_bd_lookup_intent(hs, bd, key, hnode,
> -					 (!noref * CFS_HS_LOOKUP_MASK_REF) |
> -					 CFS_HS_LOOKUP_IT_ADD);
> -}
> -EXPORT_SYMBOL(cfs_hash_bd_findadd_locked);
> -
> -struct hlist_node *
> -cfs_hash_bd_finddel_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
> -			   const void *key, struct hlist_node *hnode)
> -{
> -	/* hnode can be NULL, we find the first item with @key */
> -	return cfs_hash_bd_lookup_intent(hs, bd, key, hnode,
> -					 CFS_HS_LOOKUP_IT_FINDDEL);
> -}
> -EXPORT_SYMBOL(cfs_hash_bd_finddel_locked);
> -
>  static void
>  cfs_hash_multi_bd_lock(struct cfs_hash *hs, struct cfs_hash_bd *bds,
>  		       unsigned n, int excl)
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1446376246-6959-2-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

