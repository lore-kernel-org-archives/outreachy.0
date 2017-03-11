X-GM-THRID: 6396247239473233920
X-Received: by 10.129.62.40 with SMTP id l40mr10419383ywa.67.1489254784581;
        Sat, 11 Mar 2017 09:53:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.197 with SMTP id t66ls3422518ioi.25.gmail; Sat, 11 Mar
 2017 09:53:03 -0800 (PST)
X-Received: by 10.99.105.5 with SMTP id e5mr11790706pgc.0.1489254783796;
        Sat, 11 Mar 2017 09:53:03 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id d20si461313itc.1.2017.03.11.09.53.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 09:53:03 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id 68so9804618ioh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 09:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=pIkCY6owGr3uViBQE9xz/tY5tkvc+M6wCP4h6ruTUu4=;
        b=hZ62VW+NFQB4BGpjRk3V09Koy5Z9uyVgkvIEx3kgeqiGQUMA9x9gLpBXSXHK+Y8B5q
         CcRtdmP75q7PizshqZJgXNUI/mUcanuYlssx1lldtYe+1xxFHhgIvrRcpC2fZWO6S1TR
         NNmAOAFV5TG5fpFYFa3TYw6BNkg2skIWIIYOKiS+u+YA6kzfLGkSRpoyNfKG79ehkLsF
         Yzf8GvUCV82bIgFbjjhnYRWzFRp4egy4DcC0xRsQNrObCaWsIJErdbf491WKgn7iUv8N
         aN9sfqHTPVYjxWzWPmNP2Vss/1QVHzL4O9FMr+9SkRoskwjnGR0Z6V9TSZ1dG/XGvFKi
         vh9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=pIkCY6owGr3uViBQE9xz/tY5tkvc+M6wCP4h6ruTUu4=;
        b=XIiK5UA3WtAQlGFOULLZTk418gVq/hHt/HTqlfDNXqyZjAuMm/MhbH8+k0/m0ZWGnN
         P00cgmZoNgNEBQTl8wUusnM7vEdzgY3WjSI9iJxwXXvTtmgA5Ih9EmV+u/hdAY4M1gYW
         zEa2fhqykCETTmHzsTzVOf2OizhcY1zu/VSDza0tSYQAk636EFcIRNVtqkbr9FRLDAYU
         LA3LzrpP+Ml1DNOr/NlSc4XAwIVjCpag7F54KQiiRCKnPuBKNPzHNQGrxU1/f/IXXQFs
         y+TGTzjforWBQuxlQy7mKOrgg5t6IFY+u9e6EPCMp5AAiTx/2zZA7CFQp6eoUmsub7TE
         Yrhw==
X-Gm-Message-State: AMke39mPQ/gsFev4kX5dh8VjYc6NBHInfDZVNXiCnevDodlzVnA6XwABe/FEgZ/+Mti0VlfNcEtQ047zoJp/5w==
X-Received: by 10.107.19.222 with SMTP id 91mr15856695iot.211.1489254783584;
 Sat, 11 Mar 2017 09:53:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Sat, 11 Mar 2017 09:53:03 -0800 (PST)
In-Reply-To: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sat, 11 Mar 2017 19:53:03 +0200
Message-ID: <CAEnQRZBJDh4eQRX9OjpVSJkoj3Wm3qwizfqqAP20ZVMvWL1StA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Trouble with IIO dummy build.
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 11, 2017 at 4:26 PM, Varsha Rao <rvarsha016@gmail.com> wrote:
>
>  Hello,
>
>  I am having issues with dummy modules compilation. I have selected the
> required config options.
>  $ cat .config | grep IIO
>  And output of it is as listed below.
>
> # CONFIG_SENSORS_IIO_HWMON is not set
> CONFIG_DVB_USB_FRIIO=m
> # IIO staging drivers
> CONFIG_IIO=y
> CONFIG_IIO_BUFFER=y
> CONFIG_IIO_BUFFER_CB=m
> CONFIG_IIO_KFIFO_BUF=y
> CONFIG_IIO_TRIGGERED_BUFFER=y
> CONFIG_IIO_CONFIGFS=y

Having this should create /config/iio dir after
mounting configfs.

Can you please add a printk in iio_configfs_init function:

http://lxr.linux.no/#linux+v4.10.1/drivers/iio/industrialio-configfs.c#L37

Then use dmesg to check for the message.

Also, please apply this patch:

http://marc.info/?l=linux-iio&m=148907643001389&w=2

if you use CONFIG_IIO_SW_DEVICE=m

You can workaround the patch above if you select CONFIG_IIO_SW_DEVICE=y


Hope this helps,

Daniel.

