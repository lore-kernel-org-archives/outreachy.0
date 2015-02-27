X-GM-THRID: 4475579269120
X-Received: by 10.112.147.35 with SMTP id th3mr1939160lbb.15.1425052853830;
        Fri, 27 Feb 2015 08:00:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.72 with SMTP id w8ls151860wiy.4.canary; Fri, 27 Feb
 2015 08:00:53 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr588243wib.4.1425052853538;
        Fri, 27 Feb 2015 08:00:53 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id cl5si137832wib.3.2015.02.27.08.00.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 08:00:53 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id bs8so1221272wib.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 08:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=c0WDYnfzvLLocVa2HWjDYLT9RqxCsh2fgBkSwhq2sfA=;
        b=phge3HgBVeLpuIjWIEaO4kSQYuIvncKcYH9HOz2s+McRUqhy2juh2UddG6TPS1jRPj
         HkF22RFPttprYsLCIxWEQqVUOupBmBO4I0a7gXAB98x4xHEmBEljpzGCpS10hZgI8dEF
         IeQGWTFxB5Vwx4O7cjnqxaqRq+Zmk+F5P8pW2wpzbMsQQNfd8RbUn+AuZmb22IHNcSQJ
         dh77bnFRnH/YVCEL6YhbA+hB0vWscfHuQplKNb202A+GjU/Zx7wNq3VuQvkJFafNrEsa
         LIIUR/9IUudod6POEsXOtnYrzFsjjRhjMYWWrZ6Gpg+TaSZ4vbKM5Mk4Rlja1Ae+FMlf
         VsnA==
MIME-Version: 1.0
X-Received: by 10.194.94.1 with SMTP id cy1mr28336887wjb.127.1425052853434;
 Fri, 27 Feb 2015 08:00:53 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Fri, 27 Feb 2015 08:00:53 -0800 (PST)
In-Reply-To: <a3c512e1b92259c27416e0d8d0fd4a4db59fc0a9.1425035012.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
	<a3c512e1b92259c27416e0d8d0fd4a4db59fc0a9.1425035012.git.mahfouz.saif.elyazal@gmail.com>
Date: Fri, 27 Feb 2015 18:00:53 +0200
Message-ID: <CAEnQRZBuVvmt5-B6tVxAwL--xHnG7P91WohdByz4=Yx9KiZPJw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 21/24] staging: iio: meter: remove
 unused variables
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 27, 2015 at 3:09 PM, Aya Mahfouz
<mahfouz.saif.elyazal@gmail.com> wrote:
> This patch removes variables that were simply used to store the
> return value of a function call before returning it.
>
> The issue was detected and resolved using the following
> coccinelle script:
>
> @@
> identifier len,f;
> @@
>
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_core.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> index 70e96b2..3d2fae4 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -300,18 +300,15 @@ error_ret:
>
>  static int ade7758_reset(struct device *dev)
>  {
> -       int ret;
>         u8 val;
>
>         ade7758_spi_read_reg_8(dev,
>                         ADE7758_OPMODE,
>                         &val);
>         val |= 1 << 6; /* Software Chip Reset */
> -       ret = ade7758_spi_write_reg_8(dev,
> +       return ade7758_spi_write_reg_8(dev,
>                         ADE7758_OPMODE,
>                         val);
> -
> -       return ret;
>  }
>
>  static IIO_DEV_ATTR_VPEAK(S_IWUSR | S_IRUGO,
> @@ -441,18 +438,15 @@ error_ret:
>  /* Power down the device */
>  static int ade7758_stop_device(struct device *dev)
>  {
> -       int ret;
>         u8 val;
>
>         ade7758_spi_read_reg_8(dev,
>                         ADE7758_OPMODE,
>                         &val);
>         val |= 7 << 3;  /* ADE7758 powered down */
> -       ret = ade7758_spi_write_reg_8(dev,
> +       return ade7758_spi_write_reg_8(dev,
>                         ADE7758_OPMODE,
>                         val);
> -
> -       return ret;
>  }
>

I would advise against this change. It would be better to check
for ret value and add an error message.

Daniel.

