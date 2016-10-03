X-GM-THRID: 6336586801480728576
X-Received: by 10.36.115.194 with SMTP id y185mr2305491itb.24.1475514907379;
        Mon, 03 Oct 2016 10:15:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.23 with SMTP id j23ls2813588ioo.15.gmail; Mon, 03 Oct
 2016 10:15:03 -0700 (PDT)
X-Received: by 10.107.145.134 with SMTP id t128mr6682636iod.14.1475514903500;
        Mon, 03 Oct 2016 10:15:03 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x244.google.com (mail-yb0-x244.google.com. [2607:f8b0:4002:c09::244])
        by gmr-mx.google.com with ESMTPS id u139si2339241ywe.5.2016.10.03.10.15.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 10:15:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::244 as permitted sender) client-ip=2607:f8b0:4002:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x244.google.com with SMTP id 191so843081ybv.1
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 10:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=VtWdh0PGZdcWdPVrsTQxnwv+b0H0sVZpNtWFKORAbVQ=;
        b=aI5IH7PrcHMK1k8EIoZ1tIaAKpkzQUkLac4mSkwgkCUdpqUOHUcKBN32zo2fTNwt2z
         970n5l0uVlPG2Ku07nMWIPFyVD0b3gqD6VJZgBkjJLAYpqFgy6alZALZw8/11p5f54fD
         +IusJjf1ntXVFEpHwrbx9hq4Txi6331w9CS3UEcgiuxLUM8rI+gmoeUI4ZRZhtDi4De/
         WyAMkkk6mJ29r+7lKjv3FHAbbojvVf9P9aYxzr4zR+lVly3xV1uzHsKqoP9rHJx4ucUn
         LiNbvzyUOcLMr/m1KD4EpSX1hGlm1qwOc21MCA8CE7Fr8zH79mVDDyWyxehNthnUv4Q7
         trXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=VtWdh0PGZdcWdPVrsTQxnwv+b0H0sVZpNtWFKORAbVQ=;
        b=NdaZJOp9EaRmmC0rgKjZazsDWfXxULcGwwiKobykIdA+J79Wy7RwlyahgU+0XZtaKg
         OyCLRJl/awmKdz8BMdYHgQdebBLGsDXJpPGikP7uCouk6siQaAnOvkmp2LNPQkQtyDi/
         r2kX+ItLDNPtbGY3yz7aj/FjaFm3841iPQXvtRoK+WFkbeAXikQa2rHWl5pUqD3uD+Rp
         7rwPdBtBza4Zjjr4E9Jk5/Vdqf4tJhZsOE6bHXCeuFwlL1xEMIWrtZS2222/chWI1K9m
         ISCaFHX5govp38S2gVTEFnwHPUUjUNvkZjvrnXKNPU7k6RZB8f9T5Djo4uJEi3BnaOyh
         7xLA==
X-Gm-Message-State: AA6/9RlI3InaxYIUBhK71GoVC7T9bq3xHVpsMlXr0ANGBtt2i9YuZYU6SgTZH+VQs5t2jRQm5q9xzAOIfpt4sA==
X-Received: by 10.37.170.20 with SMTP id s20mr6560465ybi.126.1475514903238;
 Mon, 03 Oct 2016 10:15:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Mon, 3 Oct 2016 10:14:22 -0700 (PDT)
In-Reply-To: <20161001195259.GB12284@d830.WORKGROUP>
References: <20161001195259.GB12284@d830.WORKGROUP>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 3 Oct 2016 22:44:22 +0530
Message-ID: <CAKG5xWhDNtKrZuAKFjBPdj+VV=bPSZmCNM2_ySM0Nr_YHiiDbA@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hello,
I encountered 'Invalid format error' while inserting the iio_dummy_evgen module.

On Sun, Oct 2, 2016 at 1:22 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> If you have questions about building the modules in IIO Experimenting
> Task #1, please post here.
>

I ran:
sudo insmod drivers/iio/dummy/iio_dummy_evgen.ko
I got:
insmod: ERROR: could not insert module
drivers/iio/dummy/iio_dummy_evgen.ko: Invalid module format

dmesg output after insmod:
[36856.453312] iio_dummy_evgen: no symbol version for module_layout

What I learned so far:
The error arises because the kernel booted in and the one the driver
belongs to are different.
A post on Google says this is because the vermagic strings don't match.
( 'modinfo' gives different vermagic strings for drivers in different kernels)
So I tried copying my running kernel's Makefile into the driver's
Makefile. But the error persists.

I also tried:
export KBUILD_SRC=<location of the running kernel's source>
But that didn't help either.

Any ideas?

thanks,
sayli

> If you can help those who are having troubles, please post that here
> also.
>
> Thanks!
> alisons
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161001195259.GB12284%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

