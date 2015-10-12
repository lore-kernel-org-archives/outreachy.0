X-GM-THRID: 6204754090721804288
X-Received: by 10.112.16.229 with SMTP id j5mr1196203lbd.6.1444672851574;
        Mon, 12 Oct 2015 11:00:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.70 with SMTP id k67ls588321lfb.43.gmail; Mon, 12 Oct
 2015 11:00:49 -0700 (PDT)
X-Received: by 10.112.190.74 with SMTP id go10mr2738854lbc.9.1444672849891;
        Mon, 12 Oct 2015 11:00:49 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id h2si557800wiy.0.2015.10.12.11.00.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 11:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id gb1so158682642wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 11:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=r/LtkfEZ1OPkrVwqNFYcXyuGyEvqJ4kCmuzdYkX5uqU=;
        b=XOKs6rjrQ7Z6HnaLF1K/L5x9aiyk3zRgRj6wzVNkNszY6yvXok+ZcL3dXCyz1R6N+/
         ZNsjoiR9b/yhWXyyRZUCYtGxAm1Ya43X6771zjKUvmqMBpTxtrcK0potxHVg9eImpCMK
         fXwrdwTycHXVgCi43XBmiAXEvrfdaPpeQ8eeB76Xy07v29Z6srz+IikB4NnBVAE4JdkW
         AGVCOfVVEK+NG4BRMZGpphor0kw4Ft/3XlEemGmjY3BVeysThOO2dvT/YRHPBDXZXkar
         MHMIpAO/GUWVEBbx+KScPLPKUcovUama270mdZW2zpwnqe2DMaQ4kvxFTdXzKTGRv4oh
         yp8w==
MIME-Version: 1.0
X-Received: by 10.180.221.193 with SMTP id qg1mr15288948wic.87.1444672849752;
 Mon, 12 Oct 2015 11:00:49 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 11:00:49 -0700 (PDT)
In-Reply-To: <3f3303356a62e08e17ffde7cdc8531d5b1fd34bc.1444670615.git.shivanib134@gmail.com>
References: <cover.1444670615.git.shivanib134@gmail.com>
	<3f3303356a62e08e17ffde7cdc8531d5b1fd34bc.1444670615.git.shivanib134@gmail.com>
Date: Mon, 12 Oct 2015 21:00:49 +0300
Message-ID: <CAEnQRZAgUvALZmdv9OfwAeVkDUTvXyQ3GG_xE4s=bvC__rAqzA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] Staging: wilc1000:
 host_interface: Remove extra NULL test
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 8:54 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Remove NULL test statement as it is preceded by another NULL test on the
> same variable in the code.
> Issue found using coccinelle.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v2:
>         Deleted one patch and added another. Improved the other ones.
>  drivers/staging/wilc1000/host_interface.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index bb833d3..5e4d620 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -6044,12 +6044,9 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
>         if (ret)
>                 s32Error = -ENOENT;
>
> -       if (pstrWFIDrv != NULL) {
>                 kfree(pstrWFIDrv);
>                 /* pstrWFIDrv=NULL; */

You should also remove this comment.

>
> -       }
> -
>         clients_count--; /* Decrease number of created entities */
>         terminated_handle = NULL;
>         up(&hSemHostIntDeinit);
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3f3303356a62e08e17ffde7cdc8531d5b1fd34bc.1444670615.git.shivanib134%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

