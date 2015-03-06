X-GM-THRID: 6845034921984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7ccdbf4db8509987
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.222.131 with SMTP id qm3mr2076566lbc.1.1425632335338;
        Fri, 06 Mar 2015 00:58:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.172 with SMTP id dd12ls51735lad.20.gmail; Fri, 06 Mar
 2015 00:58:54 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr2080903lbb.17.1425632334849;
        Fri, 06 Mar 2015 00:58:54 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id gj20si71678wic.1.2015.03.06.00.58.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 00:58:54 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id r20so1895775wiv.3
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 00:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dMhTp8x5PlyiaQMW7GlpY/A2xTMSeQG2vXWNa5Jd140=;
        b=kL1Xp1F3azzbg9GFwvxj1d9WYgVpK+qKnqL1fWwurqEYNmI/Ga9CsYygfU4ko5Yj05
         f8pSbNkRCYzXh2W81lGa16RxPmi7xTrCKh8nuwfzV+hHsr6PTYoiSilvqBldxqgDsk0H
         bOMg9rbC3Y+7RYsHOtJwNNx8x44sfr3Nd7UMX4RhQxhiQUX7bICYkeN2EWr0SU6Fjyq1
         UdUIMmwAlroQmbfoB3MB1d6hb6A4Lc/HRCn26xuG6ou4J/J675hTW5S5jTPzs4atEBPB
         ykWhRaq2Zv7GW1c9aBwi07PyV64xN8uD+9L0B0LbmS7FFGFMGte7vwTX+MSesvXlVjNe
         S6dg==
MIME-Version: 1.0
X-Received: by 10.180.80.34 with SMTP id o2mr73687620wix.75.1425632334727;
 Fri, 06 Mar 2015 00:58:54 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Fri, 6 Mar 2015 00:58:54 -0800 (PST)
In-Reply-To: <1425630960-7142-1-git-send-email-somyaanand214@gmail.com>
References: <1425630960-7142-1-git-send-email-somyaanand214@gmail.com>
Date: Fri, 6 Mar 2015 10:58:54 +0200
Message-ID: <CAEnQRZB9hGx1jR9YVJgQUPRzewNrj4TQ=_SnPLSK4rHvUtcU=w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: Change data type in
 adis16220_read_16bit to u16
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

Hi Somya,

On Fri, Mar 6, 2015 at 10:36 AM, Somya Anand <somyaanand214@gmail.com> wrote:
> In the adis16220_read16bit() function we earlier used a s16 value 'val'
> which is used by the adis_read_reg_16 function to read data and takes a
> u16 value as a parameter.
>
> So, this patch changes the data type of 'val' from s16 to u16 for further
> simplification of code and thereby avoiding unnecessary typecast.
>
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>

Ideally, subject should tell us "Why?" the patch is needed,
instead of "What?" the patch does.

The latter should be easy to understand reading the code.

e.g:

staging: iio: adis16220: Avoid unnecessary typecast

> ---
>  drivers/staging/iio/accel/adis16220_core.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/accel/adis16220_core.c b/drivers/staging/iio/accel/adis16220_core.c
> index d478f51..7a4a0fd 100644
> --- a/drivers/staging/iio/accel/adis16220_core.c
> +++ b/drivers/staging/iio/accel/adis16220_core.c
> @@ -28,16 +28,15 @@ static ssize_t adis16220_read_16bit(struct device *dev,
>         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>         struct adis16220_state *st = iio_priv(indio_dev);
>         ssize_t ret;
> -       s16 val = 0;
> +       u16 val = 0;
>
>         /* Take the iio_dev status lock */
>         mutex_lock(&indio_dev->mlock);
> -       ret = adis_read_reg_16(&st->adis, this_attr->address,
> -                                       (u16 *)&val);
> +       ret = adis_read_reg_16(&st->adis, this_attr->address, &val);
>         mutex_unlock(&indio_dev->mlock);
>         if (ret)
>                 return ret;
> -       return sprintf(buf, "%d\n", val);
> +       return sprintf(buf, "%u\n", val);
>  }
>
>  static ssize_t adis16220_write_16bit(struct device *dev,


Other than that it looks good to me. We will need an ACK from Jonathan
/ Lars on this.

thanks,
Daniel.

