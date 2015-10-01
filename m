X-GM-THRID: 6200582337123581952
X-Received: by 10.112.158.202 with SMTP id ww10mr1193734lbb.13.1443686381770;
        Thu, 01 Oct 2015 00:59:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.225 with SMTP id u1ls115997laa.83.gmail; Thu, 01 Oct
 2015 00:59:41 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr108287lbc.3.1443686381161;
        Thu, 01 Oct 2015 00:59:41 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id ch7si50533wib.2.2015.10.01.00.59.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 00:59:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ge5so16269242wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 00:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=B2D3CVLCBdByjNJfxfSrSdwqg6tmSa9cBAn9CgONer8=;
        b=xLBBm/pVVl26UlTMzjUI0YPv430WIBbpQqNN3mBuZ9AoafvMcDgyu4YNEl4JHfsmLo
         RSNhUqjTANuLhvEjw7Sa8pyylpLXejTlPROVMyNmLc+xmu4O8vBf0y34JEvI/3XNLpH2
         zkfRXCDqFISL7xdiktaQ6HxtPEa0c7vG0kwNzHtXNknoLqWScttxg60/vBs/cq9+i0ny
         pxHRYilOkQXaVGiYiXcRm5/2m6whl+dW8DnIdtEpB76k1Vav3042kigF0DcUF2iD8I+U
         F0wvN4GQf2Tgb4Rzy7O9LU+42TPW5Y9TAgzRxdDQF9QgkY752/uBXdctQRHVwMkIkOD2
         TKXg==
MIME-Version: 1.0
X-Received: by 10.180.10.197 with SMTP id k5mr1646560wib.22.1443686380988;
 Thu, 01 Oct 2015 00:59:40 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Thu, 1 Oct 2015 00:59:40 -0700 (PDT)
In-Reply-To: <20151001074538.GA39335@ubuntu>
References: <20151001074538.GA39335@ubuntu>
Date: Thu, 1 Oct 2015 13:29:40 +0530
Message-ID: <CAK-LDbLr5+j1aVDZt4s=WdeOP_a7oA5rXEmPW33auXKV8SXVJg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: ptlrpc: nrs_fifo:
 Removed an unused structure
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 1, 2015 at 1:15 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Removed a structure "nrs_conf_fifo" because it was not called/referenced
> in the entire code.

It is called in the file drivers/staging/lustre/lustre/ptlrpc/nrs.c.

Here: http://lxr.free-electrons.com/source/drivers/staging/lustre/lustre/ptlrpc/nrs.c#L1719

Please check with 'git grep' when you are doing such changes. I think
compiler should have warned you about the same.

> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c b/drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c
> index 8e21f0c..6be1adb 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c
> @@ -259,13 +259,6 @@ static const struct ptlrpc_nrs_pol_ops nrs_fifo_ops = {
>  /**
>   * FIFO policy configuration
>   */
> -struct ptlrpc_nrs_pol_conf nrs_conf_fifo = {
> -       .nc_name                = NRS_POL_NAME_FIFO,
> -       .nc_ops                 = &nrs_fifo_ops,
> -       .nc_compat              = nrs_policy_compat_all,
> -       .nc_flags               = PTLRPC_NRS_FL_FALLBACK |
> -                                 PTLRPC_NRS_FL_REG_START
> -};
>
>  /** @} fifo */
>
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151001074538.GA39335%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

