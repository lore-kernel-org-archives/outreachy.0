X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr8993961lah.8.1426497277820;
        Mon, 16 Mar 2015 02:14:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.228.136 with SMTP id si8ls666433lac.11.gmail; Mon, 16 Mar
 2015 02:14:37 -0700 (PDT)
X-Received: by 10.112.130.70 with SMTP id oc6mr9241177lbb.13.1426497277219;
        Mon, 16 Mar 2015 02:14:37 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id gj20si640757wic.1.2015.03.16.02.14.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 02:14:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id p1so33122546weg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 02:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=XAP9eXMzaLXOs0WXpbPgGlTBHL45QFW/0GA04jW6zeA=;
        b=NkEZE2n67Hk/Wp/1xi11WE8EnJoMOeRDxh7qipCzxOICXkPjuiiTD1RDz2C9y4jers
         P5YgBbrgwHWl34bypQx1LR1rvI9Fjuh2nhowjPOsITFbtvTvs1oFo3VjxuXmiV2IxJ4s
         OXEqgfiEBg3GfkLgtdrM/SoVDPjCGi2ppjEMuoni6mviYKn/6n900g+qkeYQiRCbxxTl
         e6nFpeaYfxq1desih1GRw8TwGAdAxxPFZ+IlJlbwkQG5zxWYGZDsq3Vo5hgWrLc7F2lJ
         iwfJYA9CiHwRupVvIcYF7WWR9WXmHfOouDMeLtAOEIIokgzO9+ne/SU+yDIJotjdv4xG
         rQmA==
MIME-Version: 1.0
X-Received: by 10.180.96.197 with SMTP id du5mr94558939wib.68.1426497277088;
 Mon, 16 Mar 2015 02:14:37 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Mon, 16 Mar 2015 02:14:37 -0700 (PDT)
In-Reply-To: <53f8f070c1f2a23bd5acfa61ef6153f99b10d0f6.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
	<53f8f070c1f2a23bd5acfa61ef6153f99b10d0f6.1426353884.git.cristina.opriceana@gmail.com>
Date: Mon, 16 Mar 2015 11:14:37 +0200
Message-ID: <CAEnQRZDATeRLee7Mesn-NZ2uZ1knweY6uJ+Hju9MN2_e+Mw0gw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/6] Staging: iio: Remove space
 after type cast
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 8:50 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patch removes unnecessary space after type casts.
> Warning found by checkpatch.pl.
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/frequency/ad9832.c | 6 +++---
>  drivers/staging/iio/frequency/ad9834.c | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
> index cf68159..9a16699 100644
> --- a/drivers/staging/iio/frequency/ad9832.c
> +++ b/drivers/staging/iio/frequency/ad9832.c
> @@ -24,8 +24,8 @@
>
>  static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
>  {
> -       unsigned long long freqreg = (u64) fout *
> -                                    (u64) ((u64) 1L << AD9832_FREQ_BITS);
> +       unsigned long long freqreg = (u64)fout *
> +                                    (u64)((u64)1L << AD9832_FREQ_BITS);
>         do_div(freqreg, mclk);
>         return freqreg;
>  }
> @@ -86,7 +86,7 @@ static ssize_t ad9832_write(struct device *dev, struct device_attribute *attr,
>                 goto error_ret;
>
>         mutex_lock(&indio_dev->mlock);
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case AD9832_FREQ0HM:
>         case AD9832_FREQ1HM:
>                 ret = ad9832_write_frequency(st, this_attr->address, val);
> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> index 5c80319..a346673 100644
> --- a/drivers/staging/iio/frequency/ad9834.c
> +++ b/drivers/staging/iio/frequency/ad9834.c
> @@ -27,7 +27,7 @@
>
>  static unsigned int ad9834_calc_freqreg(unsigned long mclk, unsigned long fout)
>  {
> -       unsigned long long freqreg = (u64) fout * (u64) (1 << AD9834_FREQ_BITS);
> +       unsigned long long freqreg = (u64)fout * (u64)(1 << AD9834_FREQ_BITS);
>
>         do_div(freqreg, mclk);
>         return freqreg;
> @@ -78,7 +78,7 @@ static ssize_t ad9834_write(struct device *dev,
>                 goto error_ret;
>
>         mutex_lock(&indio_dev->mlock);
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case AD9834_REG_FREQ0:
>         case AD9834_REG_FREQ1:
>                 ret = ad9834_write_frequency(st, this_attr->address, val);
> @@ -154,7 +154,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>
>         mutex_lock(&indio_dev->mlock);
>
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case 0:
>                 if (sysfs_streq(buf, "sine")) {
>                         st->control &= ~AD9834_MODE;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/53f8f070c1f2a23bd5acfa61ef6153f99b10d0f6.1426353884.git.cristina.opriceana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

