X-GM-THRID: 3783863042048
X-Received: by 10.112.145.133 with SMTP id su5mr1377495lbb.17.1424965447180;
        Thu, 26 Feb 2015 07:44:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.130 with SMTP id q2ls919990wiy.13.canary; Thu, 26 Feb
 2015 07:44:06 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr3803883wia.7.1424965446826;
        Thu, 26 Feb 2015 07:44:06 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id l8si1533784wia.0.2015.02.26.07.44.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 07:44:06 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id k14so12062833wgh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 07:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=9aX1p8aMogSY/LCU0MGsESnSKuwK2EMR4455x/3mvWw=;
        b=ui9ZSvEf7+dVxGyq+ehFs5W3TdViP/JNrGNmMmcLXo0LbNovF9jrP1iYs6gKGX4x/d
         VfMz7ecFqhtTu7L943F8tcorpGvax6EzyJK7yLkQ7u2113G9x3tIICOxjKshqhOEjow/
         1NRMuysWvY2ur4mAz/29rhwQ9MSjCUybFBzw39AokXcL+F1wurXaOnueSW7iWk9t/H8w
         k2I5HeVzIQ3fv5iNiyh8KP/11DEW9Ko2cXYVrulsVTIlhjXZnkSrKAnmPy1Sj5gtN/lS
         BUWUT/spzQtUqtgZWKXyFuL5bTRIJdqksEqtOs2Sx/HxiYL2QcFCzR8/IM/vf9YcLJ2N
         lCXA==
MIME-Version: 1.0
X-Received: by 10.181.8.103 with SMTP id dj7mr17451092wid.75.1424965446717;
 Thu, 26 Feb 2015 07:44:06 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.28.3.68 with HTTP; Thu, 26 Feb 2015 07:44:06 -0800 (PST)
In-Reply-To: <1424964994-8609-1-git-send-email-hamohammed.sa@gmail.com>
References: <1424964811-8548-1-git-send-email-hamohammed.sa@gmail.com>
	<1424964994-8609-1-git-send-email-hamohammed.sa@gmail.com>
Date: Thu, 26 Feb 2015 17:44:06 +0200
X-Google-Sender-Auth: YrgLeBa2mHyOzt3m4uvIwqYEfj4
Message-ID: <CAEnQRZDcO9Upqg2tN7=RYadnyPqUw+x2+mh_13xuXote4Db7uA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: iio: Add blank line after declaration
From: Daniel Baluta <daniel.baluta@intel.com>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 26, 2015 at 5:36 PM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> This patch fixes missing blank line after declaration issue addressed by
> checkpatch.pl.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/iio/accel/mma8452.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/iio/accel/mma8452.c b/drivers/iio/accel/mma8452.c
> index 5b80657..221c9d2 100644
> --- a/drivers/iio/accel/mma8452.c
> +++ b/drivers/iio/accel/mma8452.c
> @@ -75,6 +75,7 @@ static int mma8452_drdy(struct mma8452_data *data)
>  static int mma8452_read(struct mma8452_data *data, __be16 buf[3])
>  {
>         int ret = mma8452_drdy(data);
> +
>         if (ret < 0)
>                 return ret;
>         return i2c_smbus_read_i2c_block_data(data->client,

We received this kind of fixes in the past. But as you can see
this is more than a declaration there.

We prefer that function call and error checking should be not
separated by blank lines.

So, NACK for this patch. Thanks a lot for taking your time to
do this.

Daniel.

