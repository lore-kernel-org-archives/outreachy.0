X-GM-THRID: 6205025075895205888
X-Received: by 10.112.169.34 with SMTP id ab2mr6555202lbc.23.1444722324468;
        Tue, 13 Oct 2015 00:45:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.70 with SMTP id f67ls564013lfg.78.gmail; Tue, 13 Oct
 2015 00:45:23 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr6674009lbb.16.1444722323549;
        Tue, 13 Oct 2015 00:45:23 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id q6si670377wif.2.2015.10.13.00.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 00:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id q12so17986319wie.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 00:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=51KLIEcJ2q8es0Vn+7YjvNCxcG2qDc26OQ18phj+7cQ=;
        b=KvNt+gJ2b5vDkGkmrEMj4TFJtuR7A/0YC5zm2w4Ny8LoLtV4IK9ovUOBfDA1Fp5puP
         l7Fsi3NDU2LZac/nwq+oe4NA/xwnluCf3FHUt74w+Tb91HFhkPsUeSTQztRfT8qlfQfE
         h6Lx7xMpBxwsA1XlCH0VCdB66ZwOhOI1wzHLWIpu3YdXRsNnTy3iLBuSoBnW+aR/rI79
         dRCvm3225Hk5wOJLP9m6ubhfsHB/F6ElJQ+asF0u5cYmKzkeq4g7cx7LRkc3RjyK7LtY
         v7sF1XFcJg3ogxpX8cVQVIMmHDZYdLgo9N1I4Y9IhNHeITeQ51G0dBaPdWKsYbsOWesp
         CQCw==
MIME-Version: 1.0
X-Received: by 10.180.81.199 with SMTP id c7mr18359286wiy.87.1444722323375;
 Tue, 13 Oct 2015 00:45:23 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Tue, 13 Oct 2015 00:45:23 -0700 (PDT)
In-Reply-To: <a9433e724043b5e3a1da566a95a13e94e7205851.1444719312.git.shivanib134@gmail.com>
References: <cover.1444719312.git.shivanib134@gmail.com>
	<a9433e724043b5e3a1da566a95a13e94e7205851.1444719312.git.shivanib134@gmail.com>
Date: Tue, 13 Oct 2015 10:45:23 +0300
Message-ID: <CAEnQRZCtT4SU5cR8DF25V0m0bA3LAmZ2=4muxPtVNHxinxqeGg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] Staging: wilc1000:
 host_interface: Remove extra NULL test
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 10:06 AM, Shivani Bhardwaj
<shivanib134@gmail.com> wrote:
> Remove NULL test on a variable as it is preceded by another NULL
> test on the same variable in the code. Also, it is unnecessary to
> NULL test before kfree().
> Semantic patch used:
>
> @@ expression E; @@
> - if(E!=NULL){
> -       kfree(E);
> - }
> + kfree(E);
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v3:
>         -Fix errors in v2 and improve commit message by adding
>         semantic patches used by coccinelle.
>
>  drivers/staging/wilc1000/host_interface.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index bb833d3..cc969e4 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -6044,11 +6044,7 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
>         if (ret)
>                 s32Error = -ENOENT;
>
> -       if (pstrWFIDrv != NULL) {
> -               kfree(pstrWFIDrv);
> -               /* pstrWFIDrv=NULL; */
> -
> -       }
> +       kfree(pstrWFIDrv);
>
>         clients_count--; /* Decrease number of created entities */
>         terminated_handle = NULL;
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a9433e724043b5e3a1da566a95a13e94e7205851.1444719312.git.shivanib134%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

