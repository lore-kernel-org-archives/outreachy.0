X-GM-THRID: 6617780359505379328
X-Received: by 2002:a25:4088:: with SMTP id n130-v6mr8476606yba.6.1540822176574;
        Mon, 29 Oct 2018 07:09:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:780e:: with SMTP id t14-v6ls3720040ybc.16.gmail; Mon, 29
 Oct 2018 07:09:35 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eog38kb+QCa7KtffDpUpM7kkxsfK884SJa27f1BBwfaaR9xWCpwVr/TnkgiseVJV05YBN8
X-Received: by 2002:a25:cc03:: with SMTP id l3-v6mr8579854ybf.35.1540822175876;
        Mon, 29 Oct 2018 07:09:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540822175; cv=none;
        d=google.com; s=arc-20160816;
        b=y7TlMN6HW1RZpy1b+7YoN11fFC9ExTMLbuxAu67RgZmXQwdEEEH4oMd0yKng8ZGlUB
         DM6rR419g5tvPfy/GAj5QXcqzlXT8OivWrcl7hx3GTqbbTwM5HCvbB0ZLPW3DlZNC0Nh
         +m/EvsXgVGR2VoQax3irKqawEiGIvIYBndiRldh4vu3dGTHmCYVRuR20mBjK8CmZGkLs
         3d0NVvScIb1OAVm52AjXEWVM9YYuMSFZNHiZuC4jNA/Y9I3U38GQDviOsoIpGv6XufoJ
         5qOovlVZJujrkLJVkqH8EcNlLJLHf1dTs1+a6O3Uwm4/gIjU20cQdf/HqU6dzxsZyQt6
         +HOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=efoXAtocOq8r564FtNC7W7MV8S5YzeMKfeMFve5rYsU=;
        b=kFgN9i23BRCFHwzYZzv5y3gdmCJHH4DFsgReyTDEc2Y5ya1J6/znw2fqLzDxwuiPGU
         F4pgb9cNUgh5hMJ23Np51E9T7EaCgqIuwhlJ3587xOcVJEv5kXzdtC6mWYeFZ6GiqqsS
         ZiACMEeUEtxJ+lp9XsOSO7Nz9HKcg6W5LbCLTh+tsd3fVYNPxSMOJru1/KmpT5kwWMTO
         1x96CWwn5QDKj5K2WV6T9fFdM2WmJ2xKolUxcgV+in+yPrw+dkHQtLMInhYVLQvP/M9Y
         wK9cPumsoqVn/cT/OUX42qT2EFnbOPMGadptZa2v4iNbNxoo0XFAoKqyZPNp+GAZfB1v
         VCaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-02.prod.phx3.secureserver.net (p3plsmtpa06-02.prod.phx3.secureserver.net. [173.201.192.103])
        by gmr-mx.google.com with ESMTPS id b71-v6si973613ywb.3.2018.10.29.07.09.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 07:09:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.103 as permitted sender) client-ip=173.201.192.103;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wm1-f45.google.com ([209.85.128.45])
	by :SMTPAUTH: with ESMTPSA
	id H8EYgZJuLOvBPH8EYgZmcK; Mon, 29 Oct 2018 07:09:35 -0700
Received: by mail-wm1-f45.google.com with SMTP id h2-v6so4585643wmb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Oct 2018 07:09:34 -0700 (PDT)
X-Gm-Message-State: AGRZ1gLXaAK7eSjDd/n372nS/ImuMXQAEn+6Q9cCf7ZDqZbnXK2NA0Y4
	CG8AK22qOeAwIvdWuOipaT/MVUujMlJ2eHRIbeA=
X-Received: by 2002:a1c:88cc:: with SMTP id k195-v6mr2119589wmd.84.1540822173908;
 Mon, 29 Oct 2018 07:09:33 -0700 (PDT)
MIME-Version: 1.0
References: <20181029140731.GA18826@kvasir.local>
In-Reply-To: <20181029140731.GA18826@kvasir.local>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 29 Oct 2018 19:39:22 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKH0Z=te4vhAp49TcnUib=sHFq5vs7-OWa11fy4ygGx4A@mail.gmail.com>
Message-ID: <CAK-LDbKH0Z=te4vhAp49TcnUib=sHFq5vs7-OWa11fy4ygGx4A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket Create a memory
 allocation path
To: code@wizofe.uk
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
	Rob Springer <rspringer@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfJKCMI9P/5+4SCjYkzsr8OPzYLne+j8Ugk2R8sRXzUH6s+oxn+tro34NStjNCDkjPhi88EKTvVfz1hCu4GDBW6vO+f+QvXF9Q3e8FfxbKDihoEl+2oDv
 NOcWhuX62ka/iv0vLxW7PEAllWht8F4goGkg6w2uf2ReJZCEyLvTOyUIKWFvzeXi5tRJv2+B58Z6UzgerLN3XTZoGGLQisn5iuk=

On Mon, Oct 29, 2018 at 7:37 PM Ioannis Valasakis <code@wizofe.uk> wrote:
>
> toddpoynor@google.com, benchan@chromium.org
> Bcc:
> Subject: [PATCH] staging: gasket: Create a memory allocation  error handling
>  path
> Reply-To:

Hi Ioannis,

This didn't work properly. Please send again and always check by sending
it to yourself first. :)

> Create an error handling path for memory allocation. It avoid repeating
> the same assignments and returns the respective ENOMEM.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/gasket/gasket_interrupt.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index 1cfbc120f228..cdfb72af1c52 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -348,27 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
>                                                sizeof(struct msix_entry),
>                                                GFP_KERNEL);
>         if (!interrupt_data->msix_entries) {
> -               kfree(interrupt_data);
> -               return -ENOMEM;
> +               goto err_alloc;
>         }
>
>         interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
>                                                sizeof(struct eventfd_ctx *),
>                                                GFP_KERNEL);
>         if (!interrupt_data->eventfd_ctxs) {
> -               kfree(interrupt_data->msix_entries);
> -               kfree(interrupt_data);
> -               return -ENOMEM;
> +               goto err_alloc;
>         }
>
>         interrupt_data->interrupt_counts = kcalloc(num_interrupts,
>                                                    sizeof(ulong),
>                                                    GFP_KERNEL);
>         if (!interrupt_data->interrupt_counts) {
> -               kfree(interrupt_data->eventfd_ctxs);
> -               kfree(interrupt_data->msix_entries);
> -               kfree(interrupt_data);
> -               return -ENOMEM;
> +               goto err_alloc;
>         }
>
>         switch (interrupt_data->type) {
> @@ -402,6 +396,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
>                                     interrupt_sysfs_attrs);
>
>         return 0;
> +
> +err_alloc:
> +       kfree(interrupt_data);
> +       kfree(interrupt_data->msix_entries);
> +       kfree(interrupt_data->eventfd_ctxs);
> +       return -ENOMEM;
>  }
>
>  static void
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181029140731.GA18826%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.

