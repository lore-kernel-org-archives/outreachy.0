X-GM-THRID: 8139195809792
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d4b0a28c5d83ecbb
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.221.65 with SMTP id qc1mr7547109wjc.7.1426276043259;
        Fri, 13 Mar 2015 12:47:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.105 with SMTP id db9ls386272lad.87.gmail; Fri, 13 Mar
 2015 12:47:22 -0700 (PDT)
X-Received: by 10.112.35.135 with SMTP id h7mr7434019lbj.23.1426276042732;
        Fri, 13 Mar 2015 12:47:22 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id sf8si193044wic.2.2015.03.13.12.47.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:47:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id k14so25424382wgh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=EMqakkSuz8m8oVGu+0qHtKrGcQNW3daxMTsCyF9CebQ=;
        b=nnGf7SZEswgkFkkXVtghuV9kBgh2HZ58UP2m9BHm9yxRS7e8Bzxbfi+ac1C7eXBNCz
         fLs5Y+tWGVdxgOJolGz2+2ZdZDUObA3mjKpfQ+02hwtmMNdDmgKd3CdQ0BqdE7js4GpZ
         b3UE1dfarBng/4SaFuucUUxi3Ba1OtKAnjQWK8b1SDHtwG5XeDkY5M+YhSuEPJqdJPW/
         AtVlbHP40PaRFrCohSBIZQ2O2CDtN4yoGRCC1cVTvejTUEq7HCt4u88dWfMjzpqUuGXN
         3Yd6RwguqBBbMV/khcEesUoVXwqrVLdsP6wcIk/dxdXt2VQV2YOiXbgV1yAMU9PFrF4t
         876g==
MIME-Version: 1.0
X-Received: by 10.180.82.129 with SMTP id i1mr140781013wiy.1.1426276042636;
 Fri, 13 Mar 2015 12:47:22 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Fri, 13 Mar 2015 12:47:22 -0700 (PDT)
In-Reply-To: <1426274564-4074-1-git-send-email-exhora.tat@gmail.com>
References: <1426274564-4074-1-git-send-email-exhora.tat@gmail.com>
Date: Fri, 13 Mar 2015 21:47:22 +0200
X-Google-Sender-Auth: hu1XeTtBnb-qfhVp0MUfv6S5FlE
Message-ID: <CAEnQRZBtZDJtxDnL_HBiD6CVVPbb4s7uXPcskLMd1v9SCwtXrA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: ade7758: Remove
 braces on a single statement if
From: Daniel Baluta <daniel.baluta@intel.com>
To: Taiane Coelho Ramos <exhora.tat@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 13, 2015 at 9:22 PM, Taiane Coelho Ramos
<exhora.tat@gmail.com> wrote:
> This patch fixes the checkpatch.pl warning:
>
> WARNING: braces {} are not necessary for single
> statement blocks
>
> Signed-off-by: Taiane Coelho Ramos <exhora.tat@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v2:
>   - Make the commit message more clear.
>
>  drivers/staging/iio/meter/ade7758_ring.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_ring.c b/drivers/staging/iio/meter/ade7758_ring.c
> index 9725a04..ead38a5 100644
> --- a/drivers/staging/iio/meter/ade7758_ring.c
> +++ b/drivers/staging/iio/meter/ade7758_ring.c
> @@ -119,9 +119,8 @@ int ade7758_configure_ring(struct iio_dev *indio_dev)
>         int ret = 0;
>
>         buffer = iio_kfifo_allocate();
> -       if (!buffer) {
> +       if (!buffer)
>                 return -ENOMEM;
> -       }
>
>         iio_device_attach_buffer(indio_dev, buffer);
>
> --
> 1.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426274564-4074-1-git-send-email-exhora.tat%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

