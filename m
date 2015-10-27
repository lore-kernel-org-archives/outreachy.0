X-GM-THRID: 6210349176655446016
X-Received: by 10.112.173.170 with SMTP id bl10mr9802555lbc.7.1445962333472;
        Tue, 27 Oct 2015 09:12:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.198 with SMTP id p189ls812173lfd.79.gmail; Tue, 27 Oct
 2015 09:12:12 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr9650836lbb.10.1445962332743;
        Tue, 27 Oct 2015 09:12:12 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id c7si625600wiy.3.2015.10.27.09.12.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 09:12:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x241.google.com with SMTP id vt6so28565847wib.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 09:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=w/YyVK3DEf6PeUt4gM3JqoryE2YekDAEL/DpoWThDQ4=;
        b=0X7hKITfl2/8o8v+HczRpkBcHe/fsBmdyOGwkNLQ65A8U7egfP0p+UCxkHvmiohx/V
         /RN0atWJSZo+XKjcIjKTvQQAlEDKIgfbQjXrYnhZDiIA1rGF53gwEnNB5wdITOboccJx
         cjp0AKwdDBvlYT3uKzVzOfjjDAm9Or2tlB5uDruPVOQOEdloQQtTnJWI1Z0as/21mAX3
         K5GrZXhB04vmbzffsNJf4vSt44KV4+fTliKWnz5cxTIaU3ylsxswgkL5PLemVf8V3KkE
         pcvAWt5K25B6MXhFTXdjrLtfj0uOIEY4tF5+8lEUXoEOLpdVauhKmsSyvmTzwgq/m+KM
         kj/g==
MIME-Version: 1.0
X-Received: by 10.180.73.146 with SMTP id l18mr26950838wiv.87.1445962332594;
 Tue, 27 Oct 2015 09:12:12 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Tue, 27 Oct 2015 09:12:12 -0700 (PDT)
In-Reply-To: <1445959587-25953-1-git-send-email-ciorneiioana@gmail.com>
References: <1445959587-25953-1-git-send-email-ciorneiioana@gmail.com>
Date: Tue, 27 Oct 2015 18:12:12 +0200
Message-ID: <CAEnQRZCEaZ=AW7ka6BWZ5MjBGvMcZuqr=rAcVk3Ga7fKVw_kZQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: change IRQ_HANDLED to IRQ_WAKE_THREAD
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 27, 2015 at 5:26 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> This patch changes the return value of the primary interrupt handler to
> IRQ_WAKE_THREAD in order to wake the kernel thread represented by the
> iio_simple_dummy_event_handler function and continue handling the event.
>

This is a very good catch! We need to have a better commit message. You
need to describe why the commit is needed.

==
iio: dummy: Complete IIO events delivery to userspace

Since commit fd2bb310ca ("Staging: iio: Move evgen interrupt
generation to irq_work")
event processing is split in two parts using threaded interrupts:

* part 1, IRQ handler - runs in IRQ context and only saves event timestamp.
* part 2, threaded handler, runs in process context, get events and
pushes them to userspace.

When IRQ handler returns IRQ_HANDLED code the interrupt is considered
to be processed
and the threaded handler will not be called. We don't want this for
IIO dummy events driver, since
the events processing takes places in the threaded handler.

Thus, IRQ handler needs to wake up threaded handler by returning IRQ_WAKE_THREAD

Fixes: fd2bb310ca ("Staging: iio: Move evgen interrupt generation to irq_work")
==

Also, because IIO driver was moved out of staging please rebase your
patch on Jonathan's tree:

https://git.kernel.org/cgit/linux/kernel/git/jic23/iio.git/log/?h=testing

use testing branch for this.


> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/iio/iio_simple_dummy_events.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/iio_simple_dummy_events.c b/drivers/staging/iio/iio_simple_dummy_events.c
> index bfbf1c5..6eb600f 100644
> --- a/drivers/staging/iio/iio_simple_dummy_events.c
> +++ b/drivers/staging/iio/iio_simple_dummy_events.c
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445959587-25953-1-git-send-email-ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

