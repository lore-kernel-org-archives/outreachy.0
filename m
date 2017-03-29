X-GM-THRID: 6402897717905850368
X-Received: by 10.36.11.69 with SMTP id 66mr431026itd.2.1490804172596;
        Wed, 29 Mar 2017 09:16:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls15833579otb.2.gmail; Wed, 29 Mar
 2017 09:16:12 -0700 (PDT)
X-Received: by 10.13.234.5 with SMTP id t5mr438264ywe.166.1490804172206;
        Wed, 29 Mar 2017 09:16:12 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id p186si926469itc.2.2017.03.29.09.16.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 09:16:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id f103so285393ioi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 09:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=wLRqvkC7PHE+ougj3D6qLOCn84DnJFGeTs6xCFhOv24=;
        b=fUnyCfvs4biZtwz5Q9SX4JBm/3eH3dkC/xz+J3mtJgddG1IYNLW6UisIlZfgtuHiMN
         oiOHsVLWqN1V/1cDzn1GAPl/KZYr8xA1hyk1ZvJil1WCFoNaH7/BAWlCUCiv2pHcUc7m
         oD2fUwfsL8i2ZB6jD/6kUKs7Q+3ypM8KLFUgNeKlOhMlKeUxeopbgarDfbNUWlGYdcA4
         StE+0SZPKeY6lAyWScsvlk6YxIfwwOxbwEzIDhmBVA72CR19jp8z3gbwrLpbNr8FQKSa
         hBMfXgGKh6UsxIX5TV1H4BBxivk4pkbHqHkX8CkAG88vzslUS/vYRDK55DBRw96JICKs
         GKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=wLRqvkC7PHE+ougj3D6qLOCn84DnJFGeTs6xCFhOv24=;
        b=qqHBw06oaKCAxj7UlzE70IRrQOvolZYeaE0EIPywBLoH9Q6oxxqB0kqrc4BqR8C7WV
         Vq6szGhV28Rjbmtu8BhLUi0/n7qZyAvKxlesgSUT78zuGDgQQKRMEI7QSI3CcuhfZMxm
         9xcLugZBdHz7f99vMEN4zm6omz5ef7tcu1fbzrI6JCoedcWFhTq9YTZjACwX6/PFtr5Q
         PUYVtW4LRGE1tA05JyhYU4gRULgMTZ4VbYG1cy81w+nN8Ag1kLn5UxHUyCgcNn9nkzVo
         LDOHYtpIijiHaVqKQUjY39Z+TozEq7d8vZuTkznNrkmtL2hrQuUkYX/euZEqIUMaCBVo
         /48g==
X-Gm-Message-State: AFeK/H0C5J+O3aMQJ2LsXMBVGZK5YzQo2KTdq2oMiJ4sm4D7dxsWLyLnBvr8ME4p1PSmVSKVgxSMYzpk3+uOLg==
X-Received: by 10.107.149.7 with SMTP id x7mr1586212iod.167.1490804171952;
 Wed, 29 Mar 2017 09:16:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Wed, 29 Mar 2017 09:16:11 -0700 (PDT)
In-Reply-To: <1490790791-5694-2-git-send-email-singhalsimran0@gmail.com>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com> <1490790791-5694-2-git-send-email-singhalsimran0@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 29 Mar 2017 19:16:11 +0300
Message-ID: <CAEnQRZCDO=qHY0c4-aXV12SiUTT3Jzndu=pY6qjx_=ATxrQBKg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] iio: common: st_sensors: Replace
 ternary operator with min macro
To: simran singhal <singhalsimran0@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald <pmeerw@pmeerw.net>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 29, 2017 at 3:33 PM, simran singhal
<singhalsimran0@gmail.com> wrote:
> Use macro min() to get the minimum of two values for brevity and
> readability.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/iio/common/st_sensors/st_sensors_i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/iio/common/st_sensors/st_sensors_i2c.c b/drivers/iio/common/st_sensors/st_sensors_i2c.c
> index c83df4d..7a68fdd 100644
> --- a/drivers/iio/common/st_sensors/st_sensors_i2c.c
> +++ b/drivers/iio/common/st_sensors/st_sensors_i2c.c
> @@ -39,7 +39,7 @@ static int st_sensors_i2c_read_byte(struct st_sensor_transfer_buffer *tb,
>         *res_byte = err & 0xff;
>
>  st_accel_i2c_read_byte_error:
> -       return err < 0 ? err : 0;
> +       return min(err, 0);
>  }

Appreciate the brevity but this certainly doesn't make code
easier to read.

In linux kernel err < 0 signifies an error and be replacing
comparison < 0 with min() we some hide the meaning of this.

thanks,
Daniel.

