X-GM-THRID: 4775794966528
X-Received: by 10.112.161.9 with SMTP id xo9mr2422508lbb.7.1425076947769;
        Fri, 27 Feb 2015 14:42:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.2 with SMTP id iq2ls225203lac.100.gmail; Fri, 27 Feb
 2015 14:42:27 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr2365233lbf.21.1425076947305;
        Fri, 27 Feb 2015 14:42:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si207550wib.2.2015.02.27.14.42.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 14:42:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,663,1418079600"; 
   d="scan'208";a="101594899"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 23:42:26 +0100
Date: Fri, 27 Feb 2015 23:42:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Stagin: lustre: lustre: obdecho:
 Remove space after the name of that function
In-Reply-To: <1425064120-14808-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502272342030.2764@hadrien>
References: <1425064120-14808-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-9188610-1425076946=:2764"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-9188610-1425076946=:2764
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 27 Feb 2015, Hatice ERTÜRK wrote:

> Fix checkpatch.pl issues with "space prohibited between function name
> and open parenthesis" in echo_client.c

Try torewrite the commit message without using fix, to say what you
actually did.

julia

>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  .../staging/lustre/lustre/obdecho/echo_client.c    | 46 +++++++++++-----------
>  1 file changed, 23 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
> index 5f6d944..5441de9 100644
> --- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
> +++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
> @@ -195,22 +195,22 @@ static struct lu_kmem_descr echo_caches[] = {
>  	{
>  		.ckd_cache = &echo_lock_kmem,
>  		.ckd_name  = "echo_lock_kmem",
> -		.ckd_size  = sizeof (struct echo_lock)
> +		.ckd_size  = sizeof(struct echo_lock)
>  	},
>  	{
>  		.ckd_cache = &echo_object_kmem,
>  		.ckd_name  = "echo_object_kmem",
> -		.ckd_size  = sizeof (struct echo_object)
> +		.ckd_size  = sizeof(struct echo_object)
>  	},
>  	{
>  		.ckd_cache = &echo_thread_kmem,
>  		.ckd_name  = "echo_thread_kmem",
> -		.ckd_size  = sizeof (struct echo_thread_info)
> +		.ckd_size  = sizeof(struct echo_thread_info)
>  	},
>  	{
>  		.ckd_cache = &echo_session_kmem,
>  		.ckd_name  = "echo_session_kmem",
> -		.ckd_size  = sizeof (struct echo_session_info)
> +		.ckd_size  = sizeof(struct echo_session_info)
>  	},
>  	{
>  		.ckd_cache = NULL
> @@ -1106,8 +1106,8 @@ static int cl_echo_cancel0(struct lu_env *env, struct echo_device *ed,
>
>  	LASSERT(ec != NULL);
>  	spin_lock(&ec->ec_lock);
> -	list_for_each (el, &ec->ec_locks) {
> -		ecl = list_entry (el, struct echo_lock, el_chain);
> +	list_for_each(el, &ec->ec_locks) {
> +		ecl = list_entry(el, struct echo_lock, el_chain);
>  		CDEBUG(D_INFO, "ecl: %p, cookie: %#llx\n", ecl, ecl->el_cookie);
>  		found = (ecl->el_cookie == cookie);
>  		if (found) {
> @@ -1257,20 +1257,20 @@ out:
>  static u64 last_object_id;
>
>  static int
> -echo_copyout_lsm (struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
> +echo_copyout_lsm(struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
>  {
>  	struct lov_stripe_md *ulsm = _ulsm;
>  	int nob, i;
>
> -	nob = offsetof (struct lov_stripe_md, lsm_oinfo[lsm->lsm_stripe_count]);
> +	nob = offsetof(struct lov_stripe_md, lsm_oinfo[lsm->lsm_stripe_count]);
>  	if (nob > ulsm_nob)
>  		return -EINVAL;
>
> -	if (copy_to_user (ulsm, lsm, sizeof(*ulsm)))
> +	if (copy_to_user(ulsm, lsm, sizeof(*ulsm)))
>  		return -EFAULT;
>
>  	for (i = 0; i < lsm->lsm_stripe_count; i++) {
> -		if (copy_to_user (ulsm->lsm_oinfo[i], lsm->lsm_oinfo[i],
> +		if (copy_to_user(ulsm->lsm_oinfo[i], lsm->lsm_oinfo[i],
>  				      sizeof(lsm->lsm_oinfo[0])))
>  			return -EFAULT;
>  	}
> @@ -1278,16 +1278,16 @@ echo_copyout_lsm (struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
>  }
>
>  static int
> -echo_copyin_lsm (struct echo_device *ed, struct lov_stripe_md *lsm,
> +echo_copyin_lsm(struct echo_device *ed, struct lov_stripe_md *lsm,
>  		 void *ulsm, int ulsm_nob)
>  {
>  	struct echo_client_obd *ec = ed->ed_ec;
>  	int		     i;
>
> -	if (ulsm_nob < sizeof (*lsm))
> +	if (ulsm_nob < sizeof(*lsm))
>  		return -EINVAL;
>
> -	if (copy_from_user (lsm, ulsm, sizeof (*lsm)))
> +	if (copy_from_user(lsm, ulsm, sizeof(*lsm)))
>  		return -EFAULT;
>
>  	if (lsm->lsm_stripe_count > ec->ec_nstripes ||
> @@ -1320,7 +1320,7 @@ static int echo_create_object(const struct lu_env *env, struct echo_device *ed,
>  	if ((oa->o_valid & OBD_MD_FLID) == 0 && /* no obj id */
>  	    (on_target ||		       /* set_stripe */
>  	     ec->ec_nstripes != 0)) {	   /* LOV */
> -		CERROR ("No valid oid\n");
> +		CERROR("No valid oid\n");
>  		return -EINVAL;
>  	}
>
> @@ -1333,7 +1333,7 @@ static int echo_create_object(const struct lu_env *env, struct echo_device *ed,
>  	if (ulsm != NULL) {
>  		int i, idx;
>
> -		rc = echo_copyin_lsm (ed, lsm, ulsm, ulsm_nob);
> +		rc = echo_copyin_lsm(ed, lsm, ulsm, ulsm_nob);
>  		if (rc != 0)
>  			goto failed;
>
> @@ -1409,7 +1409,7 @@ static int echo_get_object(struct echo_object **ecop, struct echo_device *ed,
>
>  	if ((oa->o_valid & OBD_MD_FLID) == 0 || ostid_id(&oa->o_oi) == 0) {
>  		/* disallow use of object id 0 */
> -		CERROR ("No valid oid\n");
> +		CERROR("No valid oid\n");
>  		return -EINVAL;
>  	}
>
> @@ -1459,7 +1459,7 @@ echo_get_stripe_off_id(struct lov_stripe_md *lsm, u64 *offp, u64 *idp)
>  	width = stripe_size * stripe_count;
>
>  	/* woffset = offset within a width; offset = whole number of widths */
> -	woffset = do_div (offset, width);
> +	woffset = do_div(offset, width);
>
>  	stripe_index = woffset / stripe_size;
>
> @@ -1517,13 +1517,13 @@ static int echo_client_page_debug_check(struct lov_stripe_md *lsm,
>  	for (rc = delta = 0; delta < PAGE_CACHE_SIZE; delta += OBD_ECHO_BLOCK_SIZE) {
>  		stripe_off = offset + delta;
>  		stripe_id = id;
> -		echo_get_stripe_off_id (lsm, &stripe_off, &stripe_id);
> +		echo_get_stripe_off_id(lsm, &stripe_off, &stripe_id);
>
>  		rc2 = block_debug_check("test_brw",
>  					addr + delta, OBD_ECHO_BLOCK_SIZE,
>  					stripe_off, stripe_id);
>  		if (rc2 != 0) {
> -			CERROR ("Error in echo object %#llx\n", id);
> +			CERROR("Error in echo object %#llx\n", id);
>  			rc = rc2;
>  		}
>  	}
> @@ -1583,7 +1583,7 @@ static int echo_client_kbrw(struct echo_device *ed, int rw, struct obdo *oa,
>  	     i < npages;
>  	     i++, pgp++, off += PAGE_CACHE_SIZE) {
>
> -		LASSERT (pgp->pg == NULL);      /* for cleanup */
> +		LASSERT(pgp->pg == NULL);      /* for cleanup */
>
>  		rc = -ENOMEM;
>  		OBD_PAGE_ALLOC(pgp->pg, gfp_mask);
> @@ -1992,7 +1992,7 @@ echo_client_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
>  		goto out;
>
>  	default:
> -		CERROR ("echo_ioctl(): unrecognised ioctl %#x\n", cmd);
> +		CERROR("echo_ioctl(): unrecognised ioctl %#x\n", cmd);
>  		rc = -ENOTTY;
>  		goto out;
>  	}
> @@ -2034,8 +2034,8 @@ static int echo_client_setup(const struct lu_env *env,
>  	}
>
>  	spin_lock_init(&ec->ec_lock);
> -	INIT_LIST_HEAD (&ec->ec_objects);
> -	INIT_LIST_HEAD (&ec->ec_locks);
> +	INIT_LIST_HEAD(&ec->ec_objects);
> +	INIT_LIST_HEAD(&ec->ec_locks);
>  	ec->ec_unique = 0;
>  	ec->ec_nstripes = 0;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425064120-14808-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-9188610-1425076946=:2764--

