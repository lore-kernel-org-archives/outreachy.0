X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.147.35 with SMTP id th3mr4108879lbb.15.1425373810339;
        Tue, 03 Mar 2015 01:10:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.98 with SMTP id l2ls11643lam.28.gmail; Tue, 03 Mar 2015
 01:10:09 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr4320024lbb.17.1425373809816;
        Tue, 03 Mar 2015 01:10:09 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id i8si60099wif.1.2015.03.03.01.10.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 01:10:09 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id l15so20972951wiw.3
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 01:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=T84x8sQZFQA+ydu4+Px0CgUDlQIgw+J0WIuS86o46W4=;
        b=Uks+2/SKaYaRXH8d0wJ/ysFMtBC+bpy3GK7qr6OQUqCwdQwh5fZbX863BRq30F3qdf
         WrKp2u1CcjS602WpDLq+ZrYKFr+/9GU7WHY/cX2EM25khDbEtfSP0XNNsEwG4PwFRqE3
         vVrB4YnScVLTPEiFM3eLlSy3/cmLHKgml3RfzEeT45bEidNy4CyxjKSqtmjG5FHJPWyK
         DpmrTWJlh3mqRcdZ10nZGZ2IAU9abZpEpN3DD/gJSh1StkXiEAak0e0ZpoGZMNqgIHAh
         a6qVJRNFGnEf2rmke/Rmpd3syDuxRFWDHxcxeW+txy3aO2EqEr9/wEInfQdL5qhP6Is7
         ohKA==
MIME-Version: 1.0
X-Received: by 10.180.87.106 with SMTP id w10mr43408940wiz.62.1425373809698;
 Tue, 03 Mar 2015 01:10:09 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Tue, 3 Mar 2015 01:10:09 -0800 (PST)
In-Reply-To: <1c668dc263a5d3390ae8d53e10493c40c79a314e.1425356586.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425356586.git.mahfouz.saif.elyazal@gmail.com>
	<1c668dc263a5d3390ae8d53e10493c40c79a314e.1425356586.git.mahfouz.saif.elyazal@gmail.com>
Date: Tue, 3 Mar 2015 11:10:09 +0200
Message-ID: <CAEnQRZAHhM+MT2pOeS_4KTFRN3NtNvrmn_enPU4QQaZ4+BtBUQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: iio: meter: add check on
 return variables
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 3, 2015 at 6:47 AM, Aya Mahfouz
<mahfouz.saif.elyazal@gmail.com> wrote:
> Adds checks on variables that are used to return values. If
> the value is less than zero, this indicates that an error
> occured and hence a message is printed through dev_err.
>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_core.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> index 70e96b2..029d223 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -307,10 +307,9 @@ static int ade7758_reset(struct device *dev)
>                         ADE7758_OPMODE,
>                         &val);
>         val |= 1 << 6; /* Software Chip Reset */
> -       ret = ade7758_spi_write_reg_8(dev,
> -                       ADE7758_OPMODE,
> -                       val);
> -
> +       ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
> +       if (ret < 0)
> +               dev_err(dev, "failed to reset the device");
>         return ret;
>  }

While at it, you could also check the return value for ade7758_spi_read_reg_8
call early in this function.

>
> @@ -451,7 +450,8 @@ static int ade7758_stop_device(struct device *dev)
>         ret = ade7758_spi_write_reg_8(dev,
>                         ADE7758_OPMODE,
>                         val);
> -
> +       if (ret < 0)
> +               dev_err(dev, "failed to stop device");
>         return ret;
>  }

Ditto.

thanks,
Daniel.

