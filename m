X-GM-THRID: 6200774307110453248
X-Received: by 10.180.210.212 with SMTP id mw20mr278334wic.3.1443741814570;
        Thu, 01 Oct 2015 16:23:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.65 with SMTP id ha1ls254123wib.18.canary; Thu, 01 Oct
 2015 16:23:34 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr289790wib.0.1443741814177;
        Thu, 01 Oct 2015 16:23:34 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id c1si152621wiv.3.2015.10.01.16.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 16:23:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id fx3so9670502wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 16:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=hgbrJO3bhgY2eGwBIds7EJnOh4CoIJrJtzP1Zt0H0AE=;
        b=WMzn0Or1Qh3s369Y4aKRtUI6XJLX5IkP3kQ/myisdoxB02wQEJtWwdRDHUO+zu6/tO
         onC+Q+MSJMpVxkudp3n5vFFvkXBZVjwX08+odKxoJTLotZ9GCx/RA/QNS2FKnyT4G78W
         BjD357kmoFZe6vEhQFSqf0xlxLL2rBnALcNdAsZnGZmnGOtammE8d7MTzbV+FUV4PpKT
         j3kp4R+3SsOgO8a3KfKqCZhmiDfHlqLFeVbfK+VUfwPQbf8e7Gz9LvD01UlAzwRbIqB9
         Yo7mh9r5z/G2ltGTWnEgeLfbfZEixT4WXUVAmgLs31SYUhhcajXuygX4XD3a3BMub0Ye
         mXsg==
MIME-Version: 1.0
X-Received: by 10.194.110.37 with SMTP id hx5mr12967819wjb.149.1443741814038;
 Thu, 01 Oct 2015 16:23:34 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Thu, 1 Oct 2015 16:23:33 -0700 (PDT)
In-Reply-To: <cover.1443729484.git.ciorneiioana@gmail.com>
References: <cover.1443729484.git.ciorneiioana@gmail.com>
Date: Fri, 2 Oct 2015 04:53:33 +0530
Message-ID: <CAK-LDbLUyPE0Fj8sFGdchjCGSd-pvVSR_O_TbHHsmrx52X96Bw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] use resource managed devm_iio_device_register
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 1:40 AM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> This patchset replaces the use of iio_device_register with
> the resource managed function devm_iio_device_register when the remove function
> only unregisters the device. Since an iio_dev registered with this function is
> automatically unregistered on driver detach there is no need for the remove
> function and therefore it is removed.
>
>
> Ioana Ciornei (3):
>   staging: iio: cdc: use devm_iio_device_register instead
>     iio_device_register
>   staging: iio: light: use devm_iio_device_register instead
>     iio_device_register
>   staging: iio: resolver: replace iio_device_register by
>     devm_iio_device_register
>
>  drivers/staging/iio/cdc/ad7150.c      | 12 +-----------
>  drivers/staging/iio/cdc/ad7152.c      | 12 +-----------
>  drivers/staging/iio/cdc/ad7746.c      | 12 +-----------
>  drivers/staging/iio/light/isl29028.c  | 11 +----------
>  drivers/staging/iio/light/tsl2583.c   | 12 ++----------
>  drivers/staging/iio/resolver/ad2s90.c | 10 +---------
>  6 files changed, 7 insertions(+), 62 deletions(-)

Hi,

Other than the changes I suggested, technically whole series looks good to me.

Reviewed-by: Vaishali Thakkar <vthakkar1994@gmail.com>

Thanks

> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1443729484.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

