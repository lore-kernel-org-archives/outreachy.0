X-GM-THRID: 1441778368512
X-Received: by 10.112.171.37 with SMTP id ar5mr1524574lbc.16.1424461482648;
        Fri, 20 Feb 2015 11:44:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.39 with SMTP id cz7ls164879wib.36.gmail; Fri, 20 Feb
 2015 11:44:42 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr1508277wjb.1.1424461482344;
        Fri, 20 Feb 2015 11:44:42 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si377465wia.0.2015.02.20.11.44.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 11:44:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,616,1418079600"; 
   d="scan'208";a="100796867"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 20:44:41 +0100
Date: Fri, 20 Feb 2015 20:44:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: Remove typedefs
In-Reply-To: <1424458160-22284-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502202043470.2054@localhost6.localdomain6>
References: <1424458160-22284-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Melike Yurtoglu wrote:

> WARNING:do not add new typedefs.Remove typedefs,the names of the renamed
> types changed.
> That was found by running checkpatch.
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
> 
> v2:the names of the renamed types changed and changed the subject line and description
> 
>  drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> index 4dcae61..485d84a 100644
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
>  
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
> @@ -671,7 +671,7 @@ struct hlist_node *cfs_hash_dual_bd_finddel_locked(struct cfs_hash *hs,
>  struct cfs_hash *cfs_hash_create(char *name, unsigned cur_bits, unsigned max_bits,
>  				 unsigned bkt_bits, unsigned extra_bytes,
>  			    unsigned min_theta, unsigned max_theta,
> -			    cfs_hash_ops_t *ops, unsigned flags);
> +			    cfs_hash_ops *ops, unsigned flags);

This looks incorrect.  The type is now struct cfs_hash_ops.

Are these types used in no other files?  The compiler should tell you but 
it could be good to check with grep as well.

julia

