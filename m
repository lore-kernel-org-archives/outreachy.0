X-GM-THRID: 6207450266150633472
X-Received: by 10.112.54.197 with SMTP id l5mr7027211lbp.21.1445285387757;
        Mon, 19 Oct 2015 13:09:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.68 with SMTP id gs4ls691889wib.20.gmail; Mon, 19 Oct
 2015 13:09:47 -0700 (PDT)
X-Received: by 10.180.221.227 with SMTP id qh3mr184299wic.2.1445285387317;
        Mon, 19 Oct 2015 13:09:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bn7si166066wib.0.2015.10.19.13.09.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 13:09:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,703,1437429600"; 
   d="scan'208";a="151073624"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Oct 2015 22:09:46 +0200
Date: Mon, 19 Oct 2015 22:09:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: r8723au: replace printk()
 with pr_err()
In-Reply-To: <beee0bc7850917329b2b0ad3d3e0584f5cbbcdba.1445282918.git.amsfield22@gmail.com>
Message-ID: <alpine.DEB.2.02.1510192209190.2034@localhost6.localdomain6>
References: <cover.1445282918.git.amsfield22@gmail.com> <beee0bc7850917329b2b0ad3d3e0584f5cbbcdba.1445282918.git.amsfield22@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Oct 2015, Alison Schofield wrote:

> Replace printk() with pr_err() for uniform error reporting.
> Issue found by checkpatch.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> index c3579ac..7bf0f30 100644
> --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> @@ -248,7 +248,7 @@ int rtw_enqueue_cmd23a(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
>  	res = queue_work(pcmdpriv->wq, &cmd_obj->work);
>  
>  	if (!res) {
> -		printk(KERN_ERR "%s: Call to queue_work() failed\n", __func__);
> +		pr_err("%s: Call to queue_work() failed\n", __func__);

There is no device tructure or network device structure available?

julia

>  		res = _FAIL;
>  	} else
>  		res = _SUCCESS;
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/beee0bc7850917329b2b0ad3d3e0584f5cbbcdba.1445282918.git.amsfield22%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

