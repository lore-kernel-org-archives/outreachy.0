X-GM-THRID: 6615772490286235648
X-Received: by 2002:ac8:7555:: with SMTP id b21-v6mr9898088qtr.16.1540755322013;
        Sun, 28 Oct 2018 12:35:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:226f:: with SMTP id p44-v6ls2950668qtp.3.gmail; Sun, 28
 Oct 2018 12:35:21 -0700 (PDT)
X-Received: by 2002:ac8:6a13:: with SMTP id t19-v6mr10062883qtr.12.1540755321574;
        Sun, 28 Oct 2018 12:35:21 -0700 (PDT)
Received: by 2002:a37:ae04:0:0:0:0:0 with SMTP id x4-v6msqke;
        Sun, 28 Oct 2018 12:32:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eD9gkRL4LX4wUMDaEzjnbo9fjp9FkUdJUV64mHwAkgOGOUgj4+hkEmKE0CaeV13F6yuX/s
X-Received: by 2002:a1c:d8:: with SMTP id 207-v6mr1798803wma.12.1540755175928;
        Sun, 28 Oct 2018 12:32:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540755175; cv=none;
        d=google.com; s=arc-20160816;
        b=cdstJfH7j/EmeSuMwsfeUhDyoDZrfaTaS38fpo6sFcGE1okP0byu8os6jmtq44rj5b
         5v1KvMRzM4ULrGy1Iuhitk77NokDfuEtglejLdT0p2ss0oV/nCGlGV971ED35GDqCiUD
         OZOvZ8ZFM7pdV1IM1R5zDvd4yP3Ta9kk7UdmKftOQTZLLxKvoi7Fp+JZVOJfGAqZxeEr
         F/bnfbHVNVOs80ilBnjC6B/+a0nGpNsMhRcK3rY8ed+Q7GVMyz5zcqNAW6MqYB+bQfLj
         cwgL2qrOdJbt1816vd0yjl8fYbJDyZHDBEHclLP9x4qtqBYhT7KF3f0WGM+jKuyLqQ6u
         yYbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nRxU+H2vc2SQQYktNZvbUzS50CpU6C2iCP9RYiwNAWI=;
        b=IFjKXz8Kelysef695cZVRVYLbeRKcOksW53McCc4OnVE4q9ncmVKYJzflrkPrVU9rS
         CgHpYUVjH9YhCG3gKaD+baIblP1EOPj2GWsu+ye94ITuON4ISsqj5QU9eOC3/HBobpcd
         hKVCJ9QbBR8BPKfHAJX5s49bcVPEiV294qzRUFBWsdTLlIN6gLWbH2QO9a5gHrskfPJK
         Vas+MN+qmtFM8wG9gQ7rsy2bN9u/HQOCOxM+rHHBknFYowwT4bB1wTMPb1sIpADbQP6X
         xtzwOJBLdSmS/kXXMXIdK6Q4TekDFvr2kwg3tvcn6c93CefvVwL+7zw4d7diS1LKLsU0
         Q6hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KrNGqxhu;
       spf=pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=toddpoynor@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Return-Path: <toddpoynor@google.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id s5-v6si48559wri.4.2018.10.28.12.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 12:32:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KrNGqxhu;
       spf=pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=toddpoynor@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: by mail-wm1-x341.google.com with SMTP id y144-v6so5937472wmd.4
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Oct 2018 12:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nRxU+H2vc2SQQYktNZvbUzS50CpU6C2iCP9RYiwNAWI=;
        b=KrNGqxhuZSXNJBz2FktTp1hz3yu72CTKjktqFavshFutwwMTLDu2Ntx1/hi85MJFNU
         v6se4RfQopAVaaAh11BDmWypeaIFIqHclaNvb2v4Vg5UuuwMzu8TN3KaBeCvkE7TZx5d
         zzO4JSgZrTUrLYn9czMU/JyeIeRwABqe9/0bRz5QzcbzluAuwqjX8+BTipt6n+irS5PN
         KMNkquXYeDb5jYV6IY8vIlD96IM+9eRYYfbTGdvgIJRNFDGE6f+XI4QRbXyizdRbNPXS
         uyQfVz5gCaxwGHZXDXxeJDfx1GCljaFdK6WWo6y+GHtxv9CCZqQ561+zeScVTfpBvvch
         Ptvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nRxU+H2vc2SQQYktNZvbUzS50CpU6C2iCP9RYiwNAWI=;
        b=mOrGBeWOIHvJ2eTxVDt5iRtBg+F+k1JBTH+9f1NAGiFgFuE4Gwt7L9cH4EBybLtwhH
         3O2QZQYgYDrkp/yn++a9SDAoGEuBQDqvYWMmGINYExi09B01D3ZPym4L4eyR3DMh2zpC
         x3TUuBvHW/bG5h2znXEi8cCIyD8NpEDU/h3ZUJbvqL84pv3aBkBQWRIbBgPEPRkgtuHn
         Nw/VNs7Rr9Sz/LR02ELp6cdye9QMe5kTF3R07RHdUESgrJvvLwjjYiTmPI75DFuRTgqa
         Nu226Tc3HcXrJIVs2JrWfne7cNOis5mVtxIMEnT7Cf9B75strhxS9LeClA7qjckgvIba
         gvjg==
X-Gm-Message-State: AGRZ1gKlKEdaDeAber5G8nlcNW2Tl4SM4Z6q6z6V8UrUMWFqRYwDRrqd
	6R+auIequDalHJt4xFG5FCrfjH0b/KRakvqALDG15/eR
X-Received: by 2002:a1c:5d01:: with SMTP id r1-v6mr7216786wmb.25.1540755174997;
 Sun, 28 Oct 2018 12:32:54 -0700 (PDT)
MIME-Version: 1.0
References: <20181024041602.GA2385@v> <20181026000455.GA26042@v>
In-Reply-To: <20181026000455.GA26042@v>
From: Todd Poynor <toddpoynor@google.com>
Date: Sun, 28 Oct 2018 12:32:42 -0700
Message-ID: <CAAW3Ypba8Pkpa27-P6XdRmc0vddo15v5jGCgYdG39ehEpyT6mw@mail.gmail.com>
Subject: Re: [PATCH v2] staging: gasket: use sizeof(*p) for memory allocation
To: kimbrownkd@gmail.com
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>, 
	benchan@chromium.org, Greg KH <gregkh@linuxfoundation.org>, sashal@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 25, 2018 at 5:04 PM Kimberly Brown <kimbrownkd@gmail.com> wrote:
>
> Use sizeof(*p) instead of sizeof(struct P) for memory allocation. This
> change complies with the Linux kernel coding style. It improves
> readability and decreases the opportunity for bugs if the pointer
> variable type is changed. Issue found by checkpatch.
>
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> ---
> Changes in v2:
> - Changed 4 additional memory allocations to use sizeof(*p).
> - Removed 'interrupt:' from the subject line because the
>   gasket_page_table.c file is now included in this patch.
>
>  drivers/staging/gasket/gasket_interrupt.c  | 17 ++++++++---------
>  drivers/staging/gasket/gasket_page_table.c |  3 ++-
>  2 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index 49d47afad64f..ad5657d213f0 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -184,7 +184,7 @@ gasket_interrupt_msix_init(struct gasket_interrupt_data *interrupt_data)
>
>         interrupt_data->msix_entries =
>                 kcalloc(interrupt_data->num_interrupts,
> -                       sizeof(struct msix_entry), GFP_KERNEL);
> +                       sizeof(*interrupt_data->msix_entries), GFP_KERNEL);
>         if (!interrupt_data->msix_entries)
>                 return -ENOMEM;
>
> @@ -322,8 +322,7 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
>         const struct gasket_driver_desc *driver_desc =
>                 gasket_get_driver_desc(gasket_dev);
>
> -       interrupt_data = kzalloc(sizeof(struct gasket_interrupt_data),
> -                                GFP_KERNEL);
> +       interrupt_data = kzalloc(sizeof(*interrupt_data), GFP_KERNEL);
>         if (!interrupt_data)
>                 return -ENOMEM;
>         gasket_dev->interrupt_data = interrupt_data;
> @@ -336,17 +335,17 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
>         interrupt_data->pack_width = driver_desc->interrupt_pack_width;
>         interrupt_data->num_configured = 0;
>
> -       interrupt_data->eventfd_ctxs = kcalloc(driver_desc->num_interrupts,
> -                                              sizeof(struct eventfd_ctx *),
> -                                              GFP_KERNEL);
> +       interrupt_data->eventfd_ctxs =
> +               kcalloc(driver_desc->num_interrupts,
> +                       sizeof(*interrupt_data->eventfd_ctxs), GFP_KERNEL);
>         if (!interrupt_data->eventfd_ctxs) {
>                 kfree(interrupt_data);
>                 return -ENOMEM;
>         }
>
> -       interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
> -                                                  sizeof(ulong),
> -                                                  GFP_KERNEL);
> +       interrupt_data->interrupt_counts =
> +               kcalloc(driver_desc->num_interrupts,
> +                       sizeof(*interrupt_data->interrupt_counts), GFP_KERNEL);
>         if (!interrupt_data->interrupt_counts) {
>                 kfree(interrupt_data->eventfd_ctxs);
>                 kfree(interrupt_data);
> diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
> index 5b398b7ba81d..5f4c9b49cb5a 100644
> --- a/drivers/staging/gasket/gasket_page_table.c
> +++ b/drivers/staging/gasket/gasket_page_table.c
> @@ -1302,7 +1302,8 @@ int gasket_alloc_coherent_memory(struct gasket_dev *gasket_dev, u64 size,
>
>         /* allocate the physical memory block */
>         gasket_dev->page_table[index]->coherent_pages =
> -               kcalloc(num_pages, sizeof(struct gasket_coherent_page_entry),
> +               kcalloc(num_pages,
> +                       sizeof(*gasket_dev->page_table[index]->coherent_pages),
>                         GFP_KERNEL);
>         if (!gasket_dev->page_table[index]->coherent_pages)
>                 goto nomem;
> --
> 2.17.1

Acked-by: Todd Poynor <toddpoynor@google.com>

Thanks!

