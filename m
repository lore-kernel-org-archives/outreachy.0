X-GM-THRID: 8728898174976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dab188cd27b71f71
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.198.34 with SMTP id iz2mr10026171lbc.22.1426598324508;
        Tue, 17 Mar 2015 06:18:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.164 with SMTP id an4ls40431lac.19.gmail; Tue, 17 Mar
 2015 06:18:44 -0700 (PDT)
X-Received: by 10.112.219.102 with SMTP id pn6mr9884357lbc.12.1426598324108;
        Tue, 17 Mar 2015 06:18:44 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id gj20si116230wic.1.2015.03.17.06.18.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 06:18:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id cq43so7418822web.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 06:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ZaucdqqMLnqJ7FxCp6omsr+IgR3O6fFfg6BU9QGRlyM=;
        b=CHCOKEhdarzhLfvUOnGU0wwtMH6jdR2SegTED5rNmoNneBiHp3qMNqHfNhsm6Rlm03
         V60g9h2Oy2omGEdKQNzg1K2TycHAZkfJGHzcJ5sQuBIzH+yBnusRC5E9zZ0RxSQ3Hh1i
         x7bHQaFN02S4AGeBqHQr0UUSdXdI4QMll3WpFoVVlZ3M9V38Ng+OzANEo0O8Yvk07f6d
         EWTe9CVgnc1eppWWSMGyADN0JFS2fOioGWof+gzxpXUG1zX2K/r06grW/Nygd2OwDB2s
         eeYx8sKNjyzIBhe/8bg+Y9yrNp2gcEZ3/zdT/N+fz9lDviUbU5Nj9uFxbVayDtHBuhYb
         pbgg==
MIME-Version: 1.0
X-Received: by 10.180.85.103 with SMTP id g7mr170385860wiz.19.1426598323931;
 Tue, 17 Mar 2015 06:18:43 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Tue, 17 Mar 2015 06:18:43 -0700 (PDT)
In-Reply-To: <20150317131020.GA22383@kroah.com>
References: <cover.1426586934.git.vthakkar1994@gmail.com>
	<2905c4008dfeb64eaff938812d63202c1828f041.1426586935.git.vthakkar1994@gmail.com>
	<20150317131020.GA22383@kroah.com>
Date: Tue, 17 Mar 2015 18:48:43 +0530
Message-ID: <CAK-LDbJVSwHT8Rbjw0s-VA6hALRo-AVTRAEo923pbKZ8yQ6Deg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 1/2] Staging: speakup: Add helper
 macro for spk_synth boilerplate
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 17, 2015 at 6:40 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Mar 17, 2015 at 04:06:23PM +0530, Vaishali Thakkar wrote:
>> For simple modules that contain a single spk_synth without
>> any additional setup code then ends up being a block of
>> duplicated boilerplate. This patch adds a new macro,
>> module_spk_synth(), which replaces the
>> module_init()/module_exit() registrations with template
>> functions.
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>> Changes since v1:
>>         - Use module_driver macro in definition of helper macro
>> Changes since v2:
>>         - Correct unnecessory line wrapping of module_driver
>>         - Split patch in to 2 patches
>> Changes since v3:
>>       - Put blank line after module_spk_synth
>>
>>  drivers/staging/speakup/spk_types.h | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
>> index 8c565c9..38e0a3c 100644
>> --- a/drivers/staging/speakup/spk_types.h
>> +++ b/drivers/staging/speakup/spk_types.h
>> @@ -16,6 +16,7 @@
>>  #include <linux/spinlock.h>
>>  #include <linux/mutex.h>
>>  #include <linux/io.h>                /* for inb_p, outb_p, inb, outb, etc... */
>> +#include <linux/device.h>    /* for struct device */
>
> Ah, more complaints sorry...

No problem

> You aren't including this for 'struct device' you are doing it for
> module_driver().  Just remove the /* */ entirely, you don't need to
> specify why you are including a .h file, that's not needed.

Yes but I thought as it is indirectly related to  struct _spk_synth,
I should add it here. May be my misunderstanding.

Anyways, I will drop entire comment in next version.

Thank You.

> thanks,
>
> greg k-h



-- 
Vaishali

