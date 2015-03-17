X-GM-THRID: 8728898174976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dab188cd27b71f71
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.131 with SMTP id zo3mr5344193lbb.7.1426586401448;
        Tue, 17 Mar 2015 03:00:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.106 with SMTP id w10ls16544laz.62.gmail; Tue, 17 Mar
 2015 03:00:01 -0700 (PDT)
X-Received: by 10.112.148.10 with SMTP id to10mr4920099lbb.18.1426586400995;
        Tue, 17 Mar 2015 03:00:00 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id sf8si88081wic.2.2015.03.17.03.00.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 03:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id j2so6210021wif.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 03:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=rHmQJ+GvnaqTp3O7orzWMBPEJ2msEy1PKOF9Ai1PLs4=;
        b=tTxXtItv9nuUEhc3g+ChUHBGXW5PuC2lq4fXq0Xhld/E00PVRxXGSiMD0yUxoXAZQ9
         Xut/8BtCNjP7HaZ9MVwEH7AilwbD3+thrYXej3R7nFmMfiDGZTzScJgFbSjKDyG7DC3U
         hoTVb8qU3kfNtW2Z/0fC28Q0z5y60d2SuxMYYvM5bPzaNjxu8EJIfIWSCBLeavaBO9Lh
         3C9crH3W6vPmvvBm6C4scnDUFIWKW2CSCzM6KNRI9hzv00Fz5N5LNBL3i7p8ppJ3gmj3
         GD55WKhOzZTmq4xko44MjRK2qF8mYpb7958HSB3f031uOJMtwfvEz0HTFHr17cfb0YmA
         T51w==
MIME-Version: 1.0
X-Received: by 10.180.74.47 with SMTP id q15mr86568408wiv.90.1426586400877;
 Tue, 17 Mar 2015 03:00:00 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Tue, 17 Mar 2015 03:00:00 -0700 (PDT)
In-Reply-To: <20150317094351.GA3917@kroah.com>
References: <cover.1426576680.git.vthakkar1994@gmail.com>
	<93e46b6ee278940db8dc7a4934b8115248f5131f.1426576680.git.vthakkar1994@gmail.com>
	<20150317094351.GA3917@kroah.com>
Date: Tue, 17 Mar 2015 15:30:00 +0530
Message-ID: <CAK-LDbL3oX8dCpRu31mZ9R8BnRtuds8ZMOZ7WiAZ5e9b8MBGuA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: speakup: Add helper
 macro for spk_synth boilerplate
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 17, 2015 at 3:13 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Mar 17, 2015 at 12:59:45PM +0530, Vaishali Thakkar wrote:
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
>>       - Use module_driver macro in definition of helper macro
>> Changes since v2:
>>       - Correct unnecessory line wrapping of module_driver
>>       - Split patch in to 2 patches
>>
>>  drivers/staging/speakup/spk_types.h | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
>> index 8c565c9..5d0bc5f 100644
>> --- a/drivers/staging/speakup/spk_types.h
>> +++ b/drivers/staging/speakup/spk_types.h
>> @@ -16,6 +16,7 @@
>>  #include <linux/spinlock.h>
>>  #include <linux/mutex.h>
>>  #include <linux/io.h>                /* for inb_p, outb_p, inb, outb, etc... */
>> +#include <linux/device.h>    /* for struct device */
>>
>>  enum var_type_t {
>>       VAR_NUM = 0,
>> @@ -179,6 +180,15 @@ struct spk_synth {
>>       struct attribute_group attributes;
>>  };
>>
>> +/**
>> + * module_spk_synth() - Helper macro for registering a speakup driver
>> + * @__spk_synth: spk_synth struct
>> + * Helper macro for speakup drivers which do not do anything special in module
>> + * init/exit. This eliminates a lot of boilerplate. Each module may only
>> + * use this macro once, and calling it replaces module_init() and module_exit()
>> + */
>> +#define module_spk_synth(__spk_synth) \
>> +      module_driver(__spk_synth, synth_add, synth_remove)
>>  struct speakup_info_t {
>
> Please put a blank line after your new macro.
>
> Can you fix that up and resend?
>

Oops! my bad :( .

Yes, I am sending v2 of patch series with this change.

> thanks,
>
> greg k-h



-- 
Vaishali

