X-GM-THRID: 6204781093577555968
X-Received: by 10.180.210.71 with SMTP id ms7mr3158386wic.4.1444670439963;
        Mon, 12 Oct 2015 10:20:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.133 with SMTP id eu5ls860978wic.53.gmail; Mon, 12 Oct
 2015 10:20:39 -0700 (PDT)
X-Received: by 10.180.81.165 with SMTP id b5mr3149914wiy.1.1444670439415;
        Mon, 12 Oct 2015 10:20:39 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id w4si604833wiz.0.2015.10.12.10.20.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:20:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id ge5so26127187wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lzxBFv7gEcD+u5hvr27tBcG01QP8Ez3Q8ftMoRS1TNg=;
        b=NxyM0EzwthRJAhE1f+klxsffHg+iquP+bTg2nIu5DUBqNjoM7Di7iqVrI2ZvJvpqDV
         2XWSVp1Pr5J8w8P2clp+vYHzN6ZpH05w8WETDnYjQvCW3tgA5cAqSqcrKrhuJ/o8HQ/9
         O6A98saILsvLG2OIu9cBRNgZ1jIg4q+H8lgJ0LmGTF8FnxtfE325lzzPD0zm9BXt0R4P
         a5bldgTIfAtfDRwU7ygiyXGLr6IIS4/WCOakpxL1UxWqouPcluCsGcEhIL42DPT5JpFP
         D60cfy4sqddMQeGN2NEls/zoiCQpVaeVNI665b3eTANdocb0jv0MKEeWVVGKI1AomFnO
         K8Bg==
MIME-Version: 1.0
X-Received: by 10.194.202.137 with SMTP id ki9mr30197699wjc.16.1444670439263;
 Mon, 12 Oct 2015 10:20:39 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 10:20:39 -0700 (PDT)
In-Reply-To: <1444663160-26795-2-git-send-email-shraddha.6596@gmail.com>
References: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com>
	<1444663160-26795-2-git-send-email-shraddha.6596@gmail.com>
Date: Mon, 12 Oct 2015 20:20:39 +0300
Message-ID: <CAEnQRZDOP28rr4jsSow2WdL8cMPpiTV2oeAvgyV+bEQVc1MtCw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: lustre: osc: Remove null
 check before kfree
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 6:19 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> kfree on NULL pointer is a no-op.
> The semantic patch used to find such an instance where NULL check is
> present before kfree-
>
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); }
> + kfree(E);
> @@ expression E; @@
> - if (E != NULL) { kfree(E); E = NULL; }
> + kfree(E);
> + E = NULL;
> // </smpl>smpl>
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/lustre/lustre/osc/osc_request.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
> index 225e5ed..86c0303e 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_request.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_request.c
> @@ -1998,9 +1998,7 @@ out:
>         if (mem_tight != 0)
>                 cfs_memory_pressure_restore(mpflag);
>
> -       if (crattr != NULL) {
> -               kfree(crattr);
> -       }
> +       kfree(crattr);
>
>         if (rc != 0) {
>                 LASSERT(req == NULL);
> --
> 2.1.4
>
> --

