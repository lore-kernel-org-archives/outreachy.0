X-GM-THRID: 6394061646033059840
X-Received: by 10.28.148.83 with SMTP id w80mr205069wmd.1.1488813658728;
        Mon, 06 Mar 2017 07:20:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.204 with SMTP id m195ls1172498wmg.23.gmail; Mon, 06 Mar
 2017 07:20:57 -0800 (PST)
X-Received: by 10.223.154.118 with SMTP id z109mr530407wrb.16.1488813657657;
        Mon, 06 Mar 2017 07:20:57 -0800 (PST)
Return-Path: <jsimmons@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:770:15f::2])
        by gmr-mx.google.com with ESMTPS id i76si37044wmh.1.2017.03.06.07.20.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:20:57 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) client-ip=2001:770:15f::2;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org;
       spf=pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) smtp.mailfrom=jsimmons@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=tRWDSZWfLc7NPjmrRnsdfa6UplMdrryQs/uoxlH2iiQ=; b=Hy7Rbcsc8ULaayjcNiWOzQDmG
	JkR+NM6nCilGJM+/OG3IQVFfCqETZyy0VUk7ap52tWQAYnWt8cwqhI69bK1WiTpN5lyP7VFFYSNG/
	CasnsHwki+lddmko0uhyddaqP6P/Iqp2hkI/ufltMTtbUZyWzIs9RifcFnnuLDLEqVvrvHAHDVrzL
	xswPi9IPjW7Sl5z+jTRhCIIqfhk9hhBOu9Ye5j3IWIzYmej2BetogNalJVtJqO9HtElZwmld0x39j
	8hORH61m/zMCDYnq2bjJ1eBNAqg1yncrVUgbZ4i8XW6m54VGKl/nZRLqn3GdJePbdIupXUJWWZaDG
	jIVpFXWnA==;
Received: from jsimmons (helo=localhost)
	by casper.infradead.org with local-esmtp (Exim 4.87 #1 (Red Hat Linux))
	id 1ckuRN-0008LI-Cc; Mon, 06 Mar 2017 15:20:50 +0000
Date: Mon, 6 Mar 2017 15:20:49 +0000 (GMT)
From: James Simmons <jsimmons@infradead.org>
To: simran singhal <singhalsimran0@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, 
    gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 5/5] staging: lustre: osc_page.c:  Use
 list_for_each_entry_safe
In-Reply-To: <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.LFD.2.20.1703061512070.30144@casper.infradead.org>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com> <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20170306_152049_429723_B17CCE3D 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.1 on casper.infradead.org summary:
 Content analysis details:   (-0.6 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 NO_RELAYS              Informational: message was not relayed via SMTP
  1.3 TRACKER_ID             BODY: Incorporates a tracking ID number
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]


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

NAK!!!!!!

This change was reverted in commit 

cd15dd6ef4ea11df87f717b8b1b83aaa738ec8af

Doing these while (list_empty(..)) to list_for_entry...
are not simple changes and have broken things in lustre
before. Unless you really understand the state machine of
the lustre code I don't recommend these kinds of change
for lustre.

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
> 

