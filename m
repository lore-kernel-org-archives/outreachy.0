X-GM-THRID: 6201691543779147776
X-Received: by 10.180.35.132 with SMTP id h4mr1642851wij.5.1443980494527;
        Sun, 04 Oct 2015 10:41:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.103 with SMTP id q7ls700773wia.30.canary; Sun, 04 Oct
 2015 10:41:34 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr1382062wic.4.1443980494156;
        Sun, 04 Oct 2015 10:41:34 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si216262wiz.0.2015.10.04.10.41.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 10:41:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,634,1437429600"; 
   d="scan'208";a="180999239"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 19:41:33 +0200
Date: Sun, 4 Oct 2015 18:41:32 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: lustre: ptlrpc:
 pack_generic: Declare as static
In-Reply-To: <1443974958-5994-4-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510041840150.2672@hadrien>
References: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com> <1443974958-5994-4-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

The subject is a bit confusing, because it is not clear what is being
declared as static.  Actually, it looks like the whole file is being
declared as static.  Maybe "declare local functions as static", to give a
clearer idea of what is being done.

julia

On Sun, 4 Oct 2015, Shraddha Barke wrote:

> Declare lustre_swab_ldlm_lock_desc and dump_obdo as static since
> they are used only in this particular file. Also remove them from
> corresponding header files.
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lustre/lustre_idl.h | 2 --
>  drivers/staging/lustre/lustre/ptlrpc/pack_generic.c       | 5 ++---
>  2 files changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
> index 94d4028..87e85c1 100644
> --- a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
> +++ b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
> @@ -2785,7 +2785,6 @@ struct ldlm_lock_desc {
>  	ldlm_wire_policy_data_t l_policy_data;
>  };
>
> -void lustre_swab_ldlm_lock_desc(struct ldlm_lock_desc *l);
>
>  #define LDLM_LOCKREQ_HANDLES 2
>  #define LDLM_ENQUEUE_CANCEL_OFF 1
> @@ -3355,7 +3354,6 @@ void lustre_swab_lustre_cfg(struct lustre_cfg *lcfg);
>  /* Functions for dumping PTLRPC fields */
>  void dump_rniobuf(struct niobuf_remote *rnb);
>  void dump_ioo(struct obd_ioobj *nb);
> -void dump_obdo(struct obdo *oa);
>  void dump_ost_body(struct ost_body *ob);
>  void dump_rcs(__u32 *rc);
>
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
> index 3241b1f..23cf1b0 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
> @@ -1977,14 +1977,13 @@ void lustre_swab_ldlm_resource_desc(struct ldlm_resource_desc *r)
>  }
>  EXPORT_SYMBOL(lustre_swab_ldlm_resource_desc);
>
> -void lustre_swab_ldlm_lock_desc(struct ldlm_lock_desc *l)
> +static void lustre_swab_ldlm_lock_desc(struct ldlm_lock_desc *l)
>  {
>  	lustre_swab_ldlm_resource_desc(&l->l_resource);
>  	__swab32s(&l->l_req_mode);
>  	__swab32s(&l->l_granted_mode);
>  	lustre_swab_ldlm_policy_data(&l->l_policy_data);
>  }
> -EXPORT_SYMBOL(lustre_swab_ldlm_lock_desc);
>
>  void lustre_swab_ldlm_request(struct ldlm_request *rq)
>  {
> @@ -2033,7 +2032,7 @@ void dump_rniobuf(struct niobuf_remote *nb)
>  }
>  EXPORT_SYMBOL(dump_rniobuf);
>
> -void dump_obdo(struct obdo *oa)
> +static void dump_obdo(struct obdo *oa)
>  {
>  	__u32 valid = oa->o_valid;
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443974958-5994-4-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

