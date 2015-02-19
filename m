X-GM-THRID: 975091793920
X-Received: by 10.112.64.171 with SMTP id p11mr852329lbs.12.1424380337885;
        Thu, 19 Feb 2015 13:12:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.200 with SMTP id la8ls205316lac.90.gmail; Thu, 19 Feb
 2015 13:12:17 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr849398lam.9.1424380337440;
        Thu, 19 Feb 2015 13:12:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si4244221wib.2.2015.02.19.13.12.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 13:12:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="122578790"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 22:12:16 +0100
Date: Thu, 19 Feb 2015 22:12:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: include: lustre:
 include: linux: libcfs: Remove typedefs
In-Reply-To: <1424379801-24942-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192211000.2192@localhost6.localdomain6>
References: <1424379801-24942-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Melike Yurtoglu wrote:

> This patch fixes "do not add new typedefs" checkpatch.pl warning in
> libcfs_hash.h
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> index 4dcae61..ee3116e 100644
> --- a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> +++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> @@ -272,7 +272,7 @@ struct cfs_hash {
>  	char			hs_name[0];
>  };
>  
> -typedef struct cfs_hash_lock_ops {
> +struct cfs_hash_lock_ops {
>  	/** lock the hash table */
>  	void    (*hs_lock)(union cfs_hash_lock *lock, int exclusive);
>  	/** unlock the hash table */
> @@ -281,9 +281,9 @@ typedef struct cfs_hash_lock_ops {
>  	void    (*hs_bkt_lock)(union cfs_hash_lock *lock, int exclusive);
>  	/** unlock the hash bucket */
>  	void    (*hs_bkt_unlock)(union cfs_hash_lock *lock, int exclusive);
> -} cfs_hash_lock_ops_t;
> +};

This looks like the right strategy for getting rid of a typedef.  However, 
if the _t types were used at all, you have to update the uses as well.  If 
by chance neither the _t version nor the struct version was used before, 
then you can just get rid of the whole thing.

julia

> -typedef struct cfs_hash_hlist_ops {
> +struct cfs_hash_hlist_ops {
>  	/** return hlist_head of hash-head of @bd */
>  	struct hlist_head *(*hop_hhead)(struct cfs_hash *hs, struct cfs_hash_bd *bd);
>  	/** return hash-head size */
> @@ -294,9 +294,9 @@ typedef struct cfs_hash_hlist_ops {
>  	/** remove @hnode from hash-head of @bd */
>  	int (*hop_hnode_del)(struct cfs_hash *hs,
>  			     struct cfs_hash_bd *bd, struct hlist_node *hnode);
> -} cfs_hash_hlist_ops_t;
> +};
>  
> -typedef struct cfs_hash_ops {
> +struct cfs_hash_ops {
>  	/** return hashed value from @key */
>  	unsigned (*hs_hash)(struct cfs_hash *hs, const void *key, unsigned mask);
>  	/** return key address of @hnode */
> @@ -318,7 +318,7 @@ typedef struct cfs_hash_ops {
>  	void     (*hs_put_locked)(struct cfs_hash *hs, struct hlist_node *hnode);
>  	/** it's called before removing of @hnode */
>  	void     (*hs_exit)(struct cfs_hash *hs, struct hlist_node *hnode);
> -} cfs_hash_ops_t;
> +};
>  
>  /** total number of buckets in @hs */
>  #define CFS_HASH_NBKT(hs)       \
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424379801-24942-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

