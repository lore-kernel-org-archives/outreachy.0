X-GM-THRID: 6207450266150633472
X-Received: by 10.112.209.73 with SMTP id mk9mr6952732lbc.14.1445285183081;
        Mon, 19 Oct 2015 13:06:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.41.4 with SMTP id p4ls590926lfp.58.gmail; Mon, 19 Oct 2015
 13:06:22 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr6952724lbc.14.1445285182175;
        Mon, 19 Oct 2015 13:06:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id go9si468650wib.3.2015.10.19.13.06.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 13:06:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,703,1437429600"; 
   d="scan'208";a="183521414"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Oct 2015 22:06:21 +0200
Date: Mon, 19 Oct 2015 22:06:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: r8723au: move constant
 to right of comparison test
In-Reply-To: <65c30e146c9e0fe672a78d4cc51ba07dfd9f4f6d.1445282918.git.amsfield22@gmail.com>
Message-ID: <alpine.DEB.2.02.1510192206040.2034@localhost6.localdomain6>
References: <cover.1445282918.git.amsfield22@gmail.com> <65c30e146c9e0fe672a78d4cc51ba07dfd9f4f6d.1445282918.git.amsfield22@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Oct 2015, Alison Schofield wrote:

> Move constant to right of comparison test to improve readability.

Was it intentional to also move it below the comment?

julia

> 
> checkpatch.pl:
> 	WARNING: Comparisons should place the constant on the
> 	right side of the test
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> index 33164d3..6034428 100644
> --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> @@ -637,13 +637,13 @@ int rtw_disassoc_cmd23a(struct rtw_adapter *padapter, u32 deauth_timeout_ms,
>  		init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
>  		res = rtw_enqueue_cmd23a(cmdpriv, cmdobj);
>  	} else {
> -		if (H2C_SUCCESS != disconnect_hdl23a(padapter, (u8 *)param))
>  
>  		/*
>  		 * no need to enqueue, do the cmd hdl
>  		 * directly and free cmd parameter
>  		 */
>  
> +		if (disconnect_hdl23a(padapter, (u8 *)param) != H2C_SUCCESS)
>  			res = _FAIL;
>  		kfree(param);
>  	}
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/65c30e146c9e0fe672a78d4cc51ba07dfd9f4f6d.1445282918.git.amsfield22%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

