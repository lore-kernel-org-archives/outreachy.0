X-GM-THRID: 6211892414504763392
X-Received: by 10.112.144.105 with SMTP id sl9mr2910195lbb.3.1446319196455;
        Sat, 31 Oct 2015 12:19:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.196 with SMTP id x187ls344431wme.3.gmail; Sat, 31 Oct
 2015 12:19:56 -0700 (PDT)
X-Received: by 10.28.138.83 with SMTP id m80mr832301wmd.7.1446319196052;
        Sat, 31 Oct 2015 12:19:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t18si260773wme.0.2015.10.31.12.19.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:19:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,225,1444687200"; 
   d="scan'208";a="185378501"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Oct 2015 20:19:55 +0100
Date: Sat, 31 Oct 2015 20:19:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: lnet: Remove
 typedef srpc_server_rpc_t
In-Reply-To: <1446318898-27986-2-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.02.1510312018530.2194@localhost6.localdomain6>
References: <1446318898-27986-1-git-send-email-shraddha.6596@gmail.com> <1446318898-27986-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 1 Nov 2015, Shraddha Barke wrote:

> The Linux kernel coding style guidelines suggest not using typedefs
> for structure types. This patch gets rid of the typedef for
> srpc_server_rpc_t.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lnet/selftest/brw_test.c  |  4 ++--
>  drivers/staging/lustre/lnet/selftest/console.c   |  2 +-
>  drivers/staging/lustre/lnet/selftest/framework.c |  8 ++++----
>  drivers/staging/lustre/lnet/selftest/rpc.c       |  6 +++---
>  drivers/staging/lustre/lnet/selftest/selftest.h  | 13 +++++++------
>  5 files changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/selftest/brw_test.c b/drivers/staging/lustre/lnet/selftest/brw_test.c
> index 0605c65..0f26226 100644
> --- a/drivers/staging/lustre/lnet/selftest/brw_test.c
> +++ b/drivers/staging/lustre/lnet/selftest/brw_test.c
> @@ -358,7 +358,7 @@ out:
>  }
>  
>  static void
> -brw_server_rpc_done(srpc_server_rpc_t *rpc)
> +brw_server_rpc_done(struct srpc_server_rpc *rpc)
>  {
>  	srpc_bulk_t *blk = rpc->srpc_bulk;
>  
> @@ -378,7 +378,7 @@ brw_server_rpc_done(srpc_server_rpc_t *rpc)
>  }
>  
>  static int
> -brw_bulk_ready(srpc_server_rpc_t *rpc, int status)
> +brw_bulk_ready(struct srpc_server_rpc *rpc, int status)
>  {
>  	__u64 magic = BRW_MAGIC;
>  	srpc_brw_reply_t *reply = &rpc->srpc_replymsg.msg_body.brw_reply;
> diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
> index d315dd4..043bf42 100644
> --- a/drivers/staging/lustre/lnet/selftest/console.c
> +++ b/drivers/staging/lustre/lnet/selftest/console.c
> @@ -1891,7 +1891,7 @@ lstcon_session_feats_check(unsigned feats)
>  }
>  
>  static int
> -lstcon_acceptor_handle(srpc_server_rpc_t *rpc)
> +lstcon_acceptor_handle(struct srpc_server_rpc *rpc)
>  {
>  	srpc_msg_t *rep  = &rpc->srpc_replymsg;
>  	srpc_msg_t *req  = &rpc->srpc_reqstbuf->buf_msg;
> diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
> index f18e500..5d68d4a 100644
> --- a/drivers/staging/lustre/lnet/selftest/framework.c
> +++ b/drivers/staging/lustre/lnet/selftest/framework.c
> @@ -111,7 +111,7 @@ static struct smoketest_framework {
>  	spinlock_t        fw_lock;            /* serialise */
>  	sfw_session_t     *fw_session;        /* _the_ session */
>  	int               fw_shuttingdown;    /* shutdown in progress */
> -	srpc_server_rpc_t *fw_active_srpc;    /* running RPC */
> +	struct srpc_server_rpc *fw_active_srpc;    /* running RPC */

Same problem here.  I don't know if you want to move all of the comments 
to the right, but at least put the modified one closer to the others.

julia

>  } sfw_data;
>  
>  /* forward ref's */
> @@ -722,7 +722,7 @@ sfw_unpack_addtest_req(srpc_msg_t *msg)
>  }
>  
>  static int
> -sfw_add_test_instance(sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
> +sfw_add_test_instance(sfw_batch_t *tsb, struct srpc_server_rpc *rpc)
>  {
>  	srpc_msg_t *msg = &rpc->srpc_reqstbuf->buf_msg;
>  	srpc_test_reqst_t *req = &msg->msg_body.tes_reqst;
> @@ -1091,7 +1091,7 @@ sfw_query_batch(sfw_batch_t *tsb, int testidx, srpc_batch_reply_t *reply)
>  }
>  
>  void
> -sfw_free_pages(srpc_server_rpc_t *rpc)
> +sfw_free_pages(struct srpc_server_rpc *rpc)
>  {
>  	srpc_free_bulk(rpc->srpc_bulk);
>  	rpc->srpc_bulk = NULL;
> @@ -1112,7 +1112,7 @@ sfw_alloc_pages(struct srpc_server_rpc *rpc, int cpt, int npages, int len,
>  }
>  
>  static int
> -sfw_add_test(srpc_server_rpc_t *rpc)
> +sfw_add_test(struct srpc_server_rpc *rpc)
>  {
>  	sfw_session_t *sn = sfw_data.fw_session;
>  	srpc_test_reply_t *reply = &rpc->srpc_replymsg.msg_body.tes_reply;
> diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
> index 162f9d3..cfd95d1 100644
> --- a/drivers/staging/lustre/lnet/selftest/rpc.c
> +++ b/drivers/staging/lustre/lnet/selftest/rpc.c
> @@ -866,7 +866,7 @@ srpc_prepare_bulk(srpc_client_rpc_t *rpc)
>  }
>  
>  static int
> -srpc_do_bulk(srpc_server_rpc_t *rpc)
> +srpc_do_bulk(struct srpc_server_rpc *rpc)
>  {
>  	srpc_event_t *ev = &rpc->srpc_ev;
>  	srpc_bulk_t *bk = rpc->srpc_bulk;
> @@ -894,7 +894,7 @@ srpc_do_bulk(srpc_server_rpc_t *rpc)
>  
>  /* only called from srpc_handle_rpc */
>  static void
> -srpc_server_rpc_done(srpc_server_rpc_t *rpc, int status)
> +srpc_server_rpc_done(struct srpc_server_rpc *rpc, int status)
>  {
>  	struct srpc_service_cd *scd = rpc->srpc_scd;
>  	struct srpc_service *sv  = scd->scd_svc;
> @@ -1404,7 +1404,7 @@ srpc_lnet_ev_handler(lnet_event_t *ev)
>  	struct srpc_service_cd *scd;
>  	srpc_event_t *rpcev = ev->md.user_ptr;
>  	srpc_client_rpc_t *crpc;
> -	srpc_server_rpc_t *srpc;
> +	struct srpc_server_rpc *srpc;
>  	srpc_buffer_t *buffer;
>  	srpc_service_t *sv;
>  	srpc_msg_t *msg;
> diff --git a/drivers/staging/lustre/lnet/selftest/selftest.h b/drivers/staging/lustre/lnet/selftest/selftest.h
> index 8a77d3f..cbc8699 100644
> --- a/drivers/staging/lustre/lnet/selftest/selftest.h
> +++ b/drivers/staging/lustre/lnet/selftest/selftest.h
> @@ -198,7 +198,7 @@ typedef struct srpc_server_rpc {
>  	unsigned int           srpc_aborted; /* being given up */
>  	int                    srpc_status;
>  	void                   (*srpc_done)(struct srpc_server_rpc *);
> -} srpc_server_rpc_t;
> +};
>  
>  /* client-side state of a RPC */
>  typedef struct srpc_client_rpc {
> @@ -318,8 +318,9 @@ typedef struct srpc_service {
>  	 * - sv_handler: process incoming RPC request
>  	 * - sv_bulk_ready: notify bulk data
>  	 */
> -	int                     (*sv_handler) (srpc_server_rpc_t *);
> -	int                     (*sv_bulk_ready) (srpc_server_rpc_t *, int);
> +	int                     (*sv_handler) (struct srpc_server_rpc *);
> +	int                     (*sv_bulk_ready) (struct srpc_server_rpc *,
> +						  int);
>  } srpc_service_t;
>  
>  typedef struct {
> @@ -423,9 +424,9 @@ void sfw_abort_rpc(srpc_client_rpc_t *rpc);
>  void sfw_post_rpc(srpc_client_rpc_t *rpc);
>  void sfw_client_rpc_done(srpc_client_rpc_t *rpc);
>  void sfw_unpack_message(srpc_msg_t *msg);
> -void sfw_free_pages(srpc_server_rpc_t *rpc);
> +void sfw_free_pages(struct srpc_server_rpc *rpc);
>  void sfw_add_bulk_page(srpc_bulk_t *bk, struct page *pg, int i);
> -int sfw_alloc_pages(srpc_server_rpc_t *rpc, int cpt, int npages, int len,
> +int sfw_alloc_pages(struct srpc_server_rpc *rpc, int cpt, int npages, int len,
>  		    int sink);
>  int sfw_make_session (srpc_mksn_reqst_t *request, srpc_mksn_reply_t *reply);
>  
> @@ -440,7 +441,7 @@ void srpc_free_bulk(srpc_bulk_t *bk);
>  srpc_bulk_t *srpc_alloc_bulk(int cpt, unsigned bulk_npg, unsigned bulk_len,
>  			     int sink);
>  int srpc_send_rpc(swi_workitem_t *wi);
> -int srpc_send_reply(srpc_server_rpc_t *rpc);
> +int srpc_send_reply(struct srpc_server_rpc *rpc);
>  int srpc_add_service(srpc_service_t *sv);
>  int srpc_remove_service(srpc_service_t *sv);
>  void srpc_shutdown_service(srpc_service_t *sv);
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1446318898-27986-2-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

