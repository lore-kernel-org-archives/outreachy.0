X-GM-THRID: 8004958158848
X-Received: by 10.112.25.7 with SMTP id y7mr9173315lbf.21.1426522583257;
        Mon, 16 Mar 2015 09:16:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.137 with SMTP id p9ls661159wic.42.gmail; Mon, 16 Mar
 2015 09:16:22 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr6568894wib.6.1426522582780;
        Mon, 16 Mar 2015 09:16:22 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x22c.google.com (mail-lb0-x22c.google.com. [2a00:1450:4010:c04::22c])
        by gmr-mx.google.com with ESMTPS id wz2si964778lbb.0.2015.03.16.09.16.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 09:16:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22c as permitted sender) client-ip=2a00:1450:4010:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22c as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x22c.google.com with SMTP id gn8so23610489lbc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 09:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=xwvwtCjw6KfBj0Wkw46Y+Tu3oACrymqpqXAFCHaeDbU=;
        b=JXPgSa/P8oXueTbNUIDpTdSFuLrSSW/ECQ8AyMGMNF3XNZ8WrLnJQSW9fiUnk12eE+
         yunAYpRphFXj5jN3qZx4G0GO1mpByG6V4/BL5AJEiwTqI1fIOc0NUeeOwI95VR+ZOvYm
         k6T4VwyaZty547yzsUtCerv5BRyIkptPNEIgAUw9RQQgg/vxlVJ/JX0UJzxHPSxkyZOI
         i5KH/6QXfZtlSqIWjUxQGcwK2SW5Jv+614ZjiGIxtVUsnfsrvOF2pwAk0w55Mg6s8EdH
         YgPn+FtwbEmElt9rSmUgb6/VTAVVfSJrpvrV/JTAUiffnlF7luzX58hCsB4E9UVTAGg1
         bEZQ==
MIME-Version: 1.0
X-Received: by 10.112.14.106 with SMTP id o10mr48876089lbc.2.1426522582644;
 Mon, 16 Mar 2015 09:16:22 -0700 (PDT)
Received: by 10.114.182.50 with HTTP; Mon, 16 Mar 2015 09:16:22 -0700 (PDT)
In-Reply-To: <20150316151911.GB20416@kroah.com>
References: <1426193381-9039-1-git-send-email-ksenija.stanojevic@gmail.com>
	<20150316151911.GB20416@kroah.com>
Date: Mon, 16 Mar 2015 17:16:22 +0100
Message-ID: <CAL7P5jKESCNAsVXyv1V9W2x=7e0xcHpyFQBMLXQki5Wf9PN_Vw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Compile driver as a module
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 16, 2015 at 4:19 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Thu, Mar 12, 2015 at 09:49:41PM +0100, Ksenija Stanojevic wrote:
>> This patch changes Kconfig file so that driver could be compiled as
>> a module. Changes have also been made in TODO list by removing this
>> task.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/media/omap4iss/Kconfig | 2 +-
>>  drivers/staging/media/omap4iss/TODO    | 1 -
>>  2 files changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/media/omap4iss/Kconfig b/drivers/staging/media/omap4iss/Kconfig
>> index b78643f..32403cc 100644
>> --- a/drivers/staging/media/omap4iss/Kconfig
>> +++ b/drivers/staging/media/omap4iss/Kconfig
>> @@ -1,5 +1,5 @@
>>  config VIDEO_OMAP4
>> -     bool "OMAP 4 Camera support"
>> +     tristate "OMAP 4 Camera support"
>>       depends on VIDEO_V4L2=y && VIDEO_V4L2_SUBDEV_API && I2C=y && ARCH_OMAP4
>>       depends on HAS_DMA
>>       select VIDEOBUF2_DMA_CONTIG
>> diff --git a/drivers/staging/media/omap4iss/TODO b/drivers/staging/media/omap4iss/TODO
>> index fcde888..4d220ef 100644
>> --- a/drivers/staging/media/omap4iss/TODO
>> +++ b/drivers/staging/media/omap4iss/TODO
>> @@ -1,4 +1,3 @@
>> -* Make the driver compile as a module
>>  * Fix FIFO/buffer overflows and underflows
>>  * Replace dummy resizer code with a real implementation
>>  * Fix checkpatch errors and warnings
>
> How did you test that this worked?  Did you cross-build for the omap
> platform?

No, I didn't. I don't have the hardware.

Ksenija

> thanks,
>
> greg k-h

