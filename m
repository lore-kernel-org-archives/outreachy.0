X-GM-THRID: 6208975538800820224
X-Received: by 10.180.86.227 with SMTP id s3mr1959040wiz.0.1445679727138;
        Sat, 24 Oct 2015 02:42:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.73 with SMTP id g9ls253635wiy.30.gmail; Sat, 24 Oct
 2015 02:42:06 -0700 (PDT)
X-Received: by 10.180.149.135 with SMTP id ua7mr1935896wib.7.1445679726698;
        Sat, 24 Oct 2015 02:42:06 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id en3si148939wib.3.2015.10.24.02.42.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 02:42:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id ll6so58557700wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 02:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=7MZung25Vavy3SSy/P65ERTBHVjeEfmfferUk2cwIR8=;
        b=IdGDo8gUO92BsB4Sl8/aQjUGydc4sTGjJtneGrZtzS/Lf/RDL/Db/AHHVcrK7/hNsF
         REk4e6BJa1UicVtRJZbOPMfMmwhMtgLYHjKzDOUUsOjg9mKdvhB9UduVQ0vpW/4Zb2LD
         rbFQrb7YfViELCTBG9LK+keI20nMj0n2CiA8qflC9aVs5SMWjHXCoSIspQodxA55djpF
         L6gsepQRgrhAmrtYiUq/RM5ZNPS3cjgSHb3uU1bcjYqhBHv4wfdSzstow+hkNgvsUmj6
         DxITedWldNVHuorMfgYOt0H5TdJgLjS7Jay/AfqLymCYmohz6WBvlyTv0TU/bk35D4do
         9OtA==
MIME-Version: 1.0
X-Received: by 10.194.122.164 with SMTP id lt4mr9081306wjb.16.1445679726506;
 Sat, 24 Oct 2015 02:42:06 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Sat, 24 Oct 2015 02:42:06 -0700 (PDT)
In-Reply-To: <1445679369-3902-1-git-send-email-brcnakalin@gmail.com>
References: <1445679369-3902-1-git-send-email-brcnakalin@gmail.com>
Date: Sat, 24 Oct 2015 12:42:06 +0300
Message-ID: <CAEnQRZDkE7XXmaTzpyrsd8fnEwGfjvWpLKhE7ASFwpXgjMKy-g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: Removed parentheses.
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 24, 2015 at 12:36 PM, Burcin Akalin <brcnakalin@gmail.com> wrote:
> Remove a blank space.Problem found using checkpatch.pl
> "CHECK: Unnecessary parentheses around brd->vpd[i + 3]"
>
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>

Please base your patch on the original tree, not on previous patch.

Most likely now, you have two patches for this change. You can squash them:

git rebase -i HEAD~3

Instead of:

* pick THIS_HASH_COMMIT

use

* fixup THIS_HASH_COMMIT


> ---
> Changes since v1:
> * & after not need space.
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index 42005cb..c3beff6 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -1841,6 +1841,6 @@ static void neo_vpd(struct dgnc_board *brd)
>                 /* Search for the serial number */
>                 for (i = 0; i < NEO_VPD_IMAGEBYTES - 3; i++)
>                         if (brd->vpd[i] == 'S' && brd->vpd[i + 1] == 'N')
> -                               strncpy(brd->serial_num, & brd->vpd[i + 3], 9);
> +                               strncpy(brd->serial_num, &brd->vpd[i + 3], 9);
>         }
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445679369-3902-1-git-send-email-brcnakalin%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

