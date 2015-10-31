X-GM-THRID: 6211892414504763392
X-Received: by 10.112.166.40 with SMTP id zd8mr2240559lbb.21.1446319094657;
        Sat, 31 Oct 2015 12:18:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.7.203 with SMTP id 194ls355332wmh.6.gmail; Sat, 31 Oct 2015
 12:18:14 -0700 (PDT)
X-Received: by 10.28.11.65 with SMTP id 62mr839998wml.6.1446319094353;
        Sat, 31 Oct 2015 12:18:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t18si260626wme.0.2015.10.31.12.18.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:18:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,225,1444687200"; 
   d="scan'208";a="185378410"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Oct 2015 20:18:13 +0100
Date: Sat, 31 Oct 2015 20:18:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: lnet: Remove
 typedef cfs_workitem_t
In-Reply-To: <1446318898-27986-3-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.02.1510312016590.2194@localhost6.localdomain6>
References: <1446318898-27986-1-git-send-email-shraddha.6596@gmail.com> <1446318898-27986-3-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Shraddha Barke wrote:

> The Linux kernel coding style guidelines suggest not using typedefs
> for structure types. This patch gets rid of the typedef for
> cfs_workitem_t.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h    |  4 ++--
>  .../staging/lustre/include/linux/libcfs/libcfs_workitem.h    | 12 ++++++------
>  drivers/staging/lustre/lnet/selftest/selftest.h              |  6 +++---
>  drivers/staging/lustre/lustre/libcfs/hash.c                  |  6 +++---
>  drivers/staging/lustre/lustre/libcfs/workitem.c              | 10 +++++-----
>  5 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> index 70b8b29..ca1c1eb 100644
> --- a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> +++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
> @@ -249,7 +249,7 @@ struct cfs_hash {
>  	/** # of iterators (caller of cfs_hash_for_each_*) */
>  	__u32		       hs_iterators;
>  	/** rehash workitem */
> -	cfs_workitem_t	      hs_rehash_wi;
> +	struct cfs_workitem	      hs_rehash_wi;

You should clean up the code by hand to preserve the "alignment" (I put 
"alignment" in quotes because it looks like this code was not very well 
aligned in the first place...  But in some of the other cases it was 
better).

julia

>  	/** refcount on this hash table */
>  	atomic_t		hs_refcount;
>  	/** rehash buckets-table */
> @@ -266,7 +266,7 @@ struct cfs_hash {
>  	/** bits when we found the max depth */
>  	unsigned int		hs_dep_bits;
>  	/** workitem to output max depth */
> -	cfs_workitem_t	      hs_dep_wi;
> +	struct cfs_workitem	      hs_dep_wi;
>  #endif
>  	/** name of htable */
>  	char			hs_name[0];
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_workitem.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_workitem.h
> index 5cc64f3..f9b20c5 100644
> --- a/drivers/staging/lustre/include/linux/libcfs/libcfs_workitem.h
> +++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_workitem.h
> @@ -73,7 +73,7 @@ int cfs_wi_sched_create(char *name, struct cfs_cpt_table *cptab, int cpt,
>  struct cfs_workitem;
>  
>  typedef int (*cfs_wi_action_t) (struct cfs_workitem *);
> -typedef struct cfs_workitem {
> +struct cfs_workitem {
>  	/** chain on runq or rerunq */
>  	struct list_head       wi_list;
>  	/** working function */
> @@ -84,10 +84,10 @@ typedef struct cfs_workitem {
>  	unsigned short   wi_running:1;
>  	/** scheduled */
>  	unsigned short   wi_scheduled:1;
> -} cfs_workitem_t;
> +};
>  
>  static inline void
> -cfs_wi_init(cfs_workitem_t *wi, void *data, cfs_wi_action_t action)
> +cfs_wi_init(struct cfs_workitem *wi, void *data, cfs_wi_action_t action)
>  {
>  	INIT_LIST_HEAD(&wi->wi_list);
>  
> @@ -97,9 +97,9 @@ cfs_wi_init(cfs_workitem_t *wi, void *data, cfs_wi_action_t action)
>  	wi->wi_action    = action;
>  }
>  
> -void cfs_wi_schedule(struct cfs_wi_sched *sched, cfs_workitem_t *wi);
> -int  cfs_wi_deschedule(struct cfs_wi_sched *sched, cfs_workitem_t *wi);
> -void cfs_wi_exit(struct cfs_wi_sched *sched, cfs_workitem_t *wi);
> +void cfs_wi_schedule(struct cfs_wi_sched *sched, struct cfs_workitem *wi);
> +int  cfs_wi_deschedule(struct cfs_wi_sched *sched, struct cfs_workitem *wi);
> +void cfs_wi_exit(struct cfs_wi_sched *sched, struct cfs_workitem *wi);
>  
>  int  cfs_wi_startup(void);
>  void cfs_wi_shutdown(void);
> diff --git a/drivers/staging/lustre/lnet/selftest/selftest.h b/drivers/staging/lustre/lnet/selftest/selftest.h
> index cbc8699..354fe20 100644
> --- a/drivers/staging/lustre/lnet/selftest/selftest.h
> +++ b/drivers/staging/lustre/lnet/selftest/selftest.h
> @@ -176,13 +176,13 @@ typedef int (*swi_action_t) (struct swi_workitem *);
>  
>  typedef struct swi_workitem {
>  	struct cfs_wi_sched *swi_sched;
> -	cfs_workitem_t      swi_workitem;
> +	struct cfs_workitem      swi_workitem;
>  	swi_action_t        swi_action;
>  	int                 swi_state;
>  } swi_workitem_t;
>  
>  /* server-side state of a RPC */
> -typedef struct srpc_server_rpc {
> +struct srpc_server_rpc {
>  	/* chain on srpc_service::*_rpcq */
>  	struct list_head       srpc_list;
>  	struct srpc_service_cd *srpc_scd;
> @@ -462,7 +462,7 @@ srpc_serv_is_framework(struct srpc_service *svc)
>  }
>  
>  static inline int
> -swi_wi_action(cfs_workitem_t *wi)
> +swi_wi_action(struct cfs_workitem *wi)
>  {
>  	swi_workitem_t *swi = container_of(wi, swi_workitem_t, swi_workitem);
>  
> diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
> index 0308744..47ccd87 100644
> --- a/drivers/staging/lustre/lustre/libcfs/hash.c
> +++ b/drivers/staging/lustre/lustre/libcfs/hash.c
> @@ -971,10 +971,10 @@ cfs_hash_buckets_realloc(struct cfs_hash *hs, struct cfs_hash_bucket **old_bkts,
>   * @flags    - CFS_HASH_REHASH enable synamic hash resizing
>   *	   - CFS_HASH_SORT enable chained hash sort
>   */
> -static int cfs_hash_rehash_worker(cfs_workitem_t *wi);
> +static int cfs_hash_rehash_worker(struct cfs_workitem *wi);
>  
>  #if CFS_HASH_DEBUG_LEVEL >= CFS_HASH_DEBUG_1
> -static int cfs_hash_dep_print(cfs_workitem_t *wi)
> +static int cfs_hash_dep_print(struct cfs_workitem *wi)
>  {
>  	struct cfs_hash *hs = container_of(wi, struct cfs_hash, hs_dep_wi);
>  	int	 dep;
> @@ -1874,7 +1874,7 @@ cfs_hash_rehash_bd(struct cfs_hash *hs, struct cfs_hash_bd *old)
>  }
>  
>  static int
> -cfs_hash_rehash_worker(cfs_workitem_t *wi)
> +cfs_hash_rehash_worker(struct cfs_workitem *wi)
>  {
>  	struct cfs_hash	 *hs = container_of(wi, struct cfs_hash, hs_rehash_wi);
>  	struct cfs_hash_bucket **bkts;
> diff --git a/drivers/staging/lustre/lustre/libcfs/workitem.c b/drivers/staging/lustre/lustre/libcfs/workitem.c
> index e1143a5..2dd0a0c 100644
> --- a/drivers/staging/lustre/lustre/libcfs/workitem.c
> +++ b/drivers/staging/lustre/lustre/libcfs/workitem.c
> @@ -120,7 +120,7 @@ cfs_wi_sched_cansleep(struct cfs_wi_sched *sched)
>   * 1. when it returns no one shall try to schedule the workitem.
>   */
>  void
> -cfs_wi_exit(struct cfs_wi_sched *sched, cfs_workitem_t *wi)
> +cfs_wi_exit(struct cfs_wi_sched *sched, struct cfs_workitem *wi)
>  {
>  	LASSERT(!in_interrupt()); /* because we use plain spinlock */
>  	LASSERT(!sched->ws_stopping);
> @@ -149,7 +149,7 @@ EXPORT_SYMBOL(cfs_wi_exit);
>   * cancel schedule request of workitem \a wi
>   */
>  int
> -cfs_wi_deschedule(struct cfs_wi_sched *sched, cfs_workitem_t *wi)
> +cfs_wi_deschedule(struct cfs_wi_sched *sched, struct cfs_workitem *wi)
>  {
>  	int	rc;
>  
> @@ -190,7 +190,7 @@ EXPORT_SYMBOL(cfs_wi_deschedule);
>   * be added, and even dynamic creation of serialised queues might be supported.
>   */
>  void
> -cfs_wi_schedule(struct cfs_wi_sched *sched, cfs_workitem_t *wi)
> +cfs_wi_schedule(struct cfs_wi_sched *sched, struct cfs_workitem *wi)
>  {
>  	LASSERT(!in_interrupt()); /* because we use plain spinlock */
>  	LASSERT(!sched->ws_stopping);
> @@ -240,12 +240,12 @@ cfs_wi_scheduler (void *arg)
>  	while (!sched->ws_stopping) {
>  		int	     nloops = 0;
>  		int	     rc;
> -		cfs_workitem_t *wi;
> +		struct cfs_workitem *wi;
>  
>  		while (!list_empty(&sched->ws_runq) &&
>  		       nloops < CFS_WI_RESCHED) {
>  			wi = list_entry(sched->ws_runq.next,
> -					    cfs_workitem_t, wi_list);
> +					    struct cfs_workitem, wi_list);
>  			LASSERT(wi->wi_scheduled && !wi->wi_running);
>  
>  			list_del_init(&wi->wi_list);
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1446318898-27986-3-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

