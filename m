X-GM-THRID: 6210399306923376640
X-Received: by 10.180.198.139 with SMTP id jc11mr313974wic.4.1446020765659;
        Wed, 28 Oct 2015 01:26:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.4 with SMTP id n4ls904370wia.48.gmail; Wed, 28 Oct 2015
 01:26:05 -0700 (PDT)
X-Received: by 10.194.203.33 with SMTP id kn1mr6447584wjc.3.1446020765074;
        Wed, 28 Oct 2015 01:26:05 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id t2si98826wme.1.2015.10.28.01.26.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 01:26:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicuv6 with SMTP id uv6so580700wic.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 01:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dlLsW9Ke8MUTqy5EVs/nEhXdRCeK044oejNguvkX/VE=;
        b=BFqPSz8cbfYkxAZXdw3S+mPpJ4GsaQfu1MxpxdJ/mrJE/7W7SbM8D4LperhjDHPe6v
         o/yZNqR4/C2xHXnSkNl2iOAmrWejq5hCGdowQOWsLuGk48zl/fg/iIg0o/OmBM9/Nsk1
         tq97SLmz/VvexxEz+menwwNXBPC8+EpKfWzYnKzssxJLuohFh4kx/00FVX6NExpqSifh
         aaVUdh+9Gj2Zt5WKdV31K2TQ9WnbPHFyM+2ngEJDkto60V4YAmCVw5fMPGPfL8GAfzML
         qipoyV6Zk3eF4JIh9SAwtaPDVd3P421CGJvtUVkyywc6f3FfUT7DbpP38RQ2GhSNK4fL
         /gPg==
MIME-Version: 1.0
X-Received: by 10.194.122.164 with SMTP id lt4mr30658677wjb.16.1446020764870;
 Wed, 28 Oct 2015 01:26:04 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 28 Oct 2015 01:26:04 -0700 (PDT)
In-Reply-To: <1445971256-22474-1-git-send-email-ciorneiioana@gmail.com>
References: <1445971256-22474-1-git-send-email-ciorneiioana@gmail.com>
Date: Wed, 28 Oct 2015 10:26:04 +0200
Message-ID: <CAEnQRZBPcDapgGvjoZpHqCVstCch5b0aFoFi1stFKRomFM6u+A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: dummy: complete IIO
 events delivery to userspace
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Cristina Georgiana Opriceana <cristina.opriceana@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 27, 2015 at 8:40 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Starting with commit fd2bb310ca (Staging: iio: Move evgen interrupt
> generation to irq_work) event processing is handled by calling
> both the top half and the threaded part properly simulating real
> hardware interrupts making use of threaded interrupts.
> This way the processing is split in 2 parts:
>
> * the IRQ handler that runs in IRQ context and only saves the event
> timestamp
> * the threaded handler that runs in process context, reads the events
> and pushes the in the userspace.
>
> If the IRQ handler returns IRQ_HANDLED the threaded handler is not
> even being called since the interrupt is considered to be processed.
> Because the iio dummy driver processes the events in the threaded
> handler the IRQ handler must return IRQ_WAKE_THREAD so that the
> threaded part would be awakened and called.
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Fixes: fd2bb310ca ("Staging: iio: Move evgen interrupt generation to irq_work")
Acked-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> rebased on linux-iio tree
>
>  drivers/iio/dummy/iio_simple_dummy_events.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/iio/dummy/iio_simple_dummy_events.c b/drivers/iio/dummy/iio_simple_dummy_events.c
> index bfbf1c5..6eb600f 100644
> --- a/drivers/iio/dummy/iio_simple_dummy_events.c
> +++ b/drivers/iio/dummy/iio_simple_dummy_events.c
> @@ -159,7 +159,7 @@ static irqreturn_t iio_simple_dummy_get_timestamp(int irq, void *private)
>         struct iio_dummy_state *st = iio_priv(indio_dev);
>
>         st->event_timestamp = iio_get_time_ns();
> -       return IRQ_HANDLED;
> +       return IRQ_WAKE_THREAD;
>  }
>
>  /**
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445971256-22474-1-git-send-email-ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

