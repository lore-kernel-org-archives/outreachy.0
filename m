X-GM-THRID: 8458850009088
X-Received: by 10.180.77.165 with SMTP id t5mr6064635wiw.0.1426497101366;
        Mon, 16 Mar 2015 02:11:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.172 with SMTP id dd12ls714524lad.20.gmail; Mon, 16 Mar
 2015 02:11:40 -0700 (PDT)
X-Received: by 10.112.181.166 with SMTP id dx6mr6604701lbc.17.1426497100684;
        Mon, 16 Mar 2015 02:11:40 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id gj20si640757wic.1.2015.03.16.02.11.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 02:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id p1so33122546weg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 02:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ZeFfSnZX/V5G4IiEIKACXc86ry4BIEj0DxkfyfPjR5s=;
        b=KlJioq1spzAhCknjRXuTLqRRVYTPspYBk2R5VkQWm4x7ZbqV7LhmVFBVajj+/sqDK9
         i5LAJCHmgDb1t//mOtbk3eq9QOKcOELfU7nQpi2Ji5o/VDvAfsNhwpnr65128aAZXenb
         bBDRjik7hBI/XfC0QEMQSNZ7+KEThiLhMU8dCvLkdQG7b1+wbFS7cHTsi9oudLYKIIUy
         i8aJ1w2/AufLl355rM2tyj+NCsdunvzbxenXQb/gMhoWhCtCN6bLHCLts25iX+cD/tXG
         SOyyeFxeZZHTppdThxPiZxOJu0MND2EINqoevNLILEf7XJ38G7QmD/J1oC8ETzb8PyvR
         qDgw==
MIME-Version: 1.0
X-Received: by 10.194.61.161 with SMTP id q1mr123341767wjr.132.1426497100471;
 Mon, 16 Mar 2015 02:11:40 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Mon, 16 Mar 2015 02:11:40 -0700 (PDT)
In-Reply-To: <20150316000736.GA30387@Inspiron>
References: <20150316000736.GA30387@Inspiron>
Date: Mon, 16 Mar 2015 11:11:40 +0200
Message-ID: <CAEnQRZCQ7eKcHDj5HMHcDnCit3WUDx=4DFkaQhu4D3VUuadmow@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: Replace const char *
 with const char []
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 16, 2015 at 2:07 AM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> Replace const char * with const char [] as the first one is represented
> in memory as a pointer which points to a string and the second one only
> as a single variable in which it copies the contents.
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
> This can be tested by generating assembly code for the two cases;
> This platform also offers a simple view: http://assembly.ynh.io/.
>
>  drivers/staging/iio/Documentation/iio_utils.h | 2 +-
>  drivers/staging/iio/Documentation/lsiio.c     | 4 ++--
>  drivers/staging/iio/iio_dummy_evgen.c         | 2 +-
>  drivers/staging/iio/iio_simple_dummy.c        | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/iio/Documentation/iio_utils.h b/drivers/staging/iio/Documentation/iio_utils.h
> index bd6982c..aa9570a 100644
> --- a/drivers/staging/iio/Documentation/iio_utils.h
> +++ b/drivers/staging/iio/Documentation/iio_utils.h
> @@ -23,7 +23,7 @@
>  #define FORMAT_SCAN_ELEMENTS_DIR "%s/scan_elements"
>  #define FORMAT_TYPE_FILE "%s_type"
>
> -const char *iio_dir = "/sys/bus/iio/devices/";
> +const char iio_dir[] = "/sys/bus/iio/devices/";
>
>  /**
>   * iioutils_break_up_name() - extract generic name from full channel name
> diff --git a/drivers/staging/iio/Documentation/lsiio.c b/drivers/staging/iio/Documentation/lsiio.c
> index 98a0de0..50b0c70 100644
> --- a/drivers/staging/iio/Documentation/lsiio.c
> +++ b/drivers/staging/iio/Documentation/lsiio.c
> @@ -26,8 +26,8 @@ static enum verbosity {
>         VERBLEVEL_SENSORS,      /* 1 lists sensors */
>  } verblevel = VERBLEVEL_DEFAULT;
>
> -const char *type_device = "iio:device";
> -const char *type_trigger = "trigger";
> +const char type_device[] = "iio:device";
> +const char type_trigger[] = "trigger";

This will generate a conflict when merged with IIO tree, since parts
of Documentation/
(e.g lsiio.c iio_utils.h) were moved out of stating.

https://git.kernel.org/cgit/linux/kernel/git/jic23/iio.git/commit/?h=testing&id=817020cfb3a2649064a1e14e083934234e2c208d


>
>
>  static inline int check_prefix(const char *str, const char *prefix)
> diff --git a/drivers/staging/iio/iio_dummy_evgen.c b/drivers/staging/iio/iio_dummy_evgen.c
> index 59ad5a3..866e366 100644
> --- a/drivers/staging/iio/iio_dummy_evgen.c
> +++ b/drivers/staging/iio/iio_dummy_evgen.c
> @@ -47,7 +47,7 @@ struct iio_dummy_eventgen {
>
>  /* We can only ever have one instance of this 'device' */
>  static struct iio_dummy_eventgen *iio_evgen;
> -static const char *iio_evgen_name = "iio_dummy_evgen";
> +static const char iio_evgen_name[] = "iio_dummy_evgen";
>
>  static void iio_dummy_event_irqmask(struct irq_data *d)
>  {
> diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
> index 8341dce..4fe1073 100644
> --- a/drivers/staging/iio/iio_simple_dummy.c
> +++ b/drivers/staging/iio/iio_simple_dummy.c
> @@ -36,7 +36,7 @@ module_param(instances, int, 0);
>  static struct iio_dev **iio_dummy_devs;
>
>  /* Fake a name for the part number, usually obtained from the id table */
> -static const char *iio_dummy_part_number = "iio_dummy_part_no";
> +static const char iio_dummy_part_number[] = "iio_dummy_part_no";
>
>  /**
>   * struct iio_dummy_accel_calibscale - realworld to register mapping

I'm not sure I see the benefit of this patch.

Any other opinions?

Daniel.

