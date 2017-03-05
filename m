X-GM-THRID: 6394061646033059840
X-Received: by 10.46.33.163 with SMTP id h35mr2009785lji.17.1488734251794;
        Sun, 05 Mar 2017 09:17:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls1268398ljd.8.gmail; Sun, 05 Mar 2017
 09:17:31 -0800 (PST)
X-Received: by 10.46.81.66 with SMTP id b2mr1750048lje.3.1488734251353;
        Sun, 05 Mar 2017 09:17:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si1091896wmd.0.2017.03.05.09.17.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:17:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,249,1484002800"; 
   d="scan'208";a="263195260"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 18:17:30 +0100
Date: Sun, 5 Mar 2017 18:17:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: lustre: osc_page.c: Use
 list_for_each_entry_safe
In-Reply-To: <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703051816120.3052@hadrien>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com> <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

By the way, the above subject line is not correct.  Normally one does not
put .c/.h in the subject line.  Indeed, there is not really any
deterministic algorithm for choosing the subject line.  You need to run
git log --oneline filename to see what others have done.

julia

On Sun, 5 Mar 2017, simran singhal wrote:

> Doubly linked lists which are  iterated  using list_empty
> and list_entry macros have been replaced with list_for_each_entry_safe
> macro.
> This makes the iteration simpler and more readable.
>
> This patch replaces the while loop containing list_empty and list_entry
> with list_for_each_entry_safe.
>
> This was done with Coccinelle.
>
> @@
> expression E1;
> identifier I1, I2;
> type T;
> iterator name list_for_each_entry_safe;
> @@
>
> T *I1;
> + T *tmp;
> ...
> - while (list_empty(&E1) == 0)
> + list_for_each_entry_safe (I1, tmp, &E1, I2)
> {
> ...when != T *I1;
> - I1 = list_entry(E1.next, T, I2);
> ...
> }
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/lustre/lustre/osc/osc_page.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
> index ed8a0dc..e8b974f 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_page.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_page.c
> @@ -542,6 +542,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>  	struct cl_object *clobj = NULL;
>  	struct cl_page **pvec;
>  	struct osc_page *opg;
> +	struct osc_page *tmp;
>  	int maxscan = 0;
>  	long count = 0;
>  	int index = 0;
> @@ -572,7 +573,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>  	if (force)
>  		cli->cl_lru_reclaim++;
>  	maxscan = min(target << 1, atomic_long_read(&cli->cl_lru_in_list));
> -	while (!list_empty(&cli->cl_lru_list)) {
> +	list_for_each_entry_safe(opg, tmp, &cli->cl_lru_list, ops_lru) {
>  		struct cl_page *page;
>  		bool will_free = false;
>
> @@ -582,8 +583,6 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>  		if (--maxscan < 0)
>  			break;
>
> -		opg = list_entry(cli->cl_lru_list.next, struct osc_page,
> -				 ops_lru);
>  		page = opg->ops_cl.cpl_page;
>  		if (lru_page_busy(cli, page)) {
>  			list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
> @@ -1043,6 +1042,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
>  {
>  	struct client_obd *stop_anchor = NULL;
>  	struct client_obd *cli;
> +	struct client_obd *tmp;
>  	struct lu_env *env;
>  	long shrank = 0;
>  	u16 refcheck;
> @@ -1059,10 +1059,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
>  		return SHRINK_STOP;
>
>  	spin_lock(&osc_shrink_lock);
> -	while (!list_empty(&osc_shrink_list)) {
> -		cli = list_entry(osc_shrink_list.next, struct client_obd,
> -				 cl_shrink_list);
> -
> +	list_for_each_entry_safe(cli, tmp, &osc_shrink_list, cl_shrink_list) {
>  		if (!stop_anchor)
>  			stop_anchor = cli;
>  		else if (cli == stop_anchor)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488733610-22289-6-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

