X-GM-THRID: 10181885820928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9b48fb57ed55724c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.198.34 with SMTP id iz2mr6167049lbc.22.1427566324933;
        Sat, 28 Mar 2015 11:12:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.18.225 with SMTP id z1ls495167lad.109.gmail; Sat, 28 Mar
 2015 11:12:04 -0700 (PDT)
X-Received: by 10.112.162.135 with SMTP id ya7mr5963425lbb.14.1427566324298;
        Sat, 28 Mar 2015 11:12:04 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si343741wib.0.2015.03.28.11.12.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 11:12:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,485,1422918000"; 
   d="scan'208";a="107490931"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Mar 2015 19:12:03 +0100
Date: Sat, 28 Mar 2015 19:11:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Darshana Padmadas <darshanapadmadas@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] Staging: lustre: Mark internal
 functions static in llog_cat.c
In-Reply-To: <1427564637-10305-7-git-send-email-darshanapadmadas@gmail.com>
Message-ID: <alpine.DEB.2.10.1503281911060.2730@hadrien>
References: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com> <1427564637-10305-7-git-send-email-darshanapadmadas@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 28 Mar 2015, Darshana Padmadas wrote:

> This patch marks functions llog_cat_set_first_idx and cat_cancel_cb
> static as these are used only within this file.
>
> This eliminates the following sparse warning:
> warning: symbol * was not declared. Should it be static?
>
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/llog_cat.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/llog_cat.c b/drivers/staging/lustre/lustre/obdclass/llog_cat.c
> index 08afdf3..aae660d 100644
> --- a/drivers/staging/lustre/lustre/obdclass/llog_cat.c
> +++ b/drivers/staging/lustre/lustre/obdclass/llog_cat.c
> @@ -692,7 +692,7 @@ int llog_cat_reverse_process(const struct lu_env *env,
>  }
>  EXPORT_SYMBOL(llog_cat_reverse_process);
>
> -int llog_cat_set_first_idx(struct llog_handle *cathandle, int index)
> +static int llog_cat_set_first_idx(struct llog_handle *cathandle, int index)
>  {
>  	struct llog_log_hdr *llh = cathandle->lgh_hdr;
>  	int i, bitmap_size, idx;
> @@ -751,7 +751,7 @@ int llog_cat_cleanup(const struct lu_env *env, struct llog_handle *cathandle,
>  	return rc;
>  }
>
> -int cat_cancel_cb(const struct lu_env *env, struct llog_handle *cathandle,
> +static int cat_cancel_cb(const struct lu_env *env, struct llog_handle *cathandle,

If this is going to be static, it should not be exported, so you can get
rid of the EXPORT_SYMBOL for this function as well.

julia

>  		  struct llog_rec_hdr *rec, void *data)
>  {
>  	struct llog_logid_rec	*lir = (struct llog_logid_rec *)rec;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1427564637-10305-7-git-send-email-darshanapadmadas%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

