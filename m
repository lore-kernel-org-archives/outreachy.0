X-GM-THRID: 6255258611058999296
X-Received: by 10.28.63.19 with SMTP id m19mr500456wma.0.1456416109396;
        Thu, 25 Feb 2016 08:01:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.72 with SMTP id f69ls121894lff.31.gmail; Thu, 25 Feb
 2016 08:01:46 -0800 (PST)
X-Received: by 10.25.29.211 with SMTP id d202mr5656384lfd.7.1456416106595;
        Thu, 25 Feb 2016 08:01:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si194286wmd.1.2016.02.25.08.01.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 08:01:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="204643951"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 17:01:46 +0100
Date: Thu, 25 Feb 2016 17:01:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lov: Use
 list_for_each_entry instead of list_for_each
In-Reply-To: <1456415872-7808-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602251701180.2708@hadrien>
References: <1456415872-7808-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 25 Feb 2016, Bhumika Goyal wrote:

> Use list_for_each_entry instead of list_for_each and list_entry as it
> simplifies the code. Done using coccinelle:

Did you check in each case that req is not used after the loop?

julia

>
> @@
> type T,T2;
> identifier I1,I2;
> expression e1,e2;
> iterator name list_for_each_entry;
> iterator name list_for_each;
> @@
>
> - T *I1;
> ...
> - list_for_each(I1,e1)
> + list_for_each_entry(I2,e1,e2)
> {
> ...when!=T *I1;
> - I2=list_entry(I1,T2,e2);
> ...
> }
>
> @@
> type T,T2,T3;
> identifier I1,I2,I3;
> expression e1,e2;
> @@
>
> - T *I1;
> + T3 *I3;
> ...
> - list_for_each(I1,e1)
> + list_for_each_entry(I3,e1,e2)
> {
> ...when!=T *I1;
> - T3 *I3=list_entry(I1,T2,e2);
> ...
> }
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_obd.c     | 19 ++++---------------
>  drivers/staging/lustre/lustre/lov/lov_request.c |  5 +----
>  2 files changed, 5 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
> index dcaa5a1..1ce7341 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_obd.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
> @@ -1064,7 +1064,6 @@ static int lov_destroy(const struct lu_env *env, struct obd_export *exp,
>  	struct lov_request_set *set;
>  	struct obd_info oinfo;
>  	struct lov_request *req;
> -	struct list_head *pos;
>  	struct lov_obd *lov;
>  	int rc = 0, err = 0;
>
> @@ -1084,9 +1083,7 @@ static int lov_destroy(const struct lu_env *env, struct obd_export *exp,
>  	if (rc)
>  		goto out;
>
> -	list_for_each(pos, &set->set_list) {
> -		req = list_entry(pos, struct lov_request, rq_link);
> -
> +	list_for_each_entry(req, &set->set_list, rq_link) {
>  		if (oa->o_valid & OBD_MD_FLCOOKIE)
>  			oti->oti_logcookies = set->set_cookies + req->rq_stripe;
>
> @@ -1131,7 +1128,6 @@ static int lov_getattr_async(struct obd_export *exp, struct obd_info *oinfo,
>  {
>  	struct lov_request_set *lovset;
>  	struct lov_obd *lov;
> -	struct list_head *pos;
>  	struct lov_request *req;
>  	int rc = 0, err;
>
> @@ -1151,9 +1147,7 @@ static int lov_getattr_async(struct obd_export *exp, struct obd_info *oinfo,
>  	       POSTID(&oinfo->oi_md->lsm_oi), oinfo->oi_md->lsm_stripe_count,
>  	       oinfo->oi_md->lsm_stripe_size);
>
> -	list_for_each(pos, &lovset->set_list) {
> -		req = list_entry(pos, struct lov_request, rq_link);
> -
> +	list_for_each_entry(req, &lovset->set_list, rq_link) {
>  		CDEBUG(D_INFO, "objid " DOSTID "[%d] has subobj " DOSTID " at idx%u\n",
>  		       POSTID(&oinfo->oi_oa->o_oi), req->rq_stripe,
>  		       POSTID(&req->rq_oi.oi_oa->o_oi), req->rq_idx);
> @@ -1204,7 +1198,6 @@ static int lov_setattr_async(struct obd_export *exp, struct obd_info *oinfo,
>  {
>  	struct lov_request_set *set;
>  	struct lov_request *req;
> -	struct list_head *pos;
>  	struct lov_obd *lov;
>  	int rc = 0;
>
> @@ -1228,9 +1221,7 @@ static int lov_setattr_async(struct obd_export *exp, struct obd_info *oinfo,
>  	       oinfo->oi_md->lsm_stripe_count,
>  	       oinfo->oi_md->lsm_stripe_size);
>
> -	list_for_each(pos, &set->set_list) {
> -		req = list_entry(pos, struct lov_request, rq_link);
> -
> +	list_for_each_entry(req, &set->set_list, rq_link) {
>  		if (oinfo->oi_oa->o_valid & OBD_MD_FLCOOKIE)
>  			oti->oti_logcookies = set->set_cookies + req->rq_stripe;
>
> @@ -1324,7 +1315,6 @@ static int lov_statfs_async(struct obd_export *exp, struct obd_info *oinfo,
>  	struct obd_device      *obd = class_exp2obd(exp);
>  	struct lov_request_set *set;
>  	struct lov_request *req;
> -	struct list_head *pos;
>  	struct lov_obd *lov;
>  	int rc = 0;
>
> @@ -1335,8 +1325,7 @@ static int lov_statfs_async(struct obd_export *exp, struct obd_info *oinfo,
>  	if (rc)
>  		return rc;
>
> -	list_for_each(pos, &set->set_list) {
> -		req = list_entry(pos, struct lov_request, rq_link);
> +	list_for_each_entry(req, &set->set_list, rq_link) {
>  		rc = obd_statfs_async(lov->lov_tgts[req->rq_idx]->ltd_exp,
>  				      &req->rq_oi, max_age, rqset);
>  		if (rc)
> diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers/staging/lustre/lustre/lov/lov_request.c
> index 6c5ae05..34c26ec 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_request.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_request.c
> @@ -190,7 +190,6 @@ out:
>
>  static int common_attr_done(struct lov_request_set *set)
>  {
> -	struct list_head *pos;
>  	struct lov_request *req;
>  	struct obdo *tmp_oa;
>  	int rc = 0, attrset = 0;
> @@ -207,9 +206,7 @@ static int common_attr_done(struct lov_request_set *set)
>  		goto out;
>  	}
>
> -	list_for_each(pos, &set->set_list) {
> -		req = list_entry(pos, struct lov_request, rq_link);
> -
> +	list_for_each_entry(req, &set->set_list, rq_link) {
>  		if (!req->rq_complete || req->rq_rc)
>  			continue;
>  		if (req->rq_oi.oi_oa->o_valid == 0)   /* inactive stripe */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456415872-7808-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

