X-GM-THRID: 8319960875008
X-Received: by 10.152.87.141 with SMTP id ay13mr4455240lab.3.1426432065273;
        Sun, 15 Mar 2015 08:07:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.131 with SMTP id eq3ls405078wib.24.gmail; Sun, 15 Mar
 2015 08:07:44 -0700 (PDT)
X-Received: by 10.180.109.34 with SMTP id hp2mr7316443wib.4.1426432064746;
        Sun, 15 Mar 2015 08:07:44 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id c8si267755wiw.1.2015.03.15.08.07.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 08:07:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id g7so17006515wib.1
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2015 08:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+lVrFabiCi5BTCvkH39EJ0E0a/mu5aHeTMd620HuHvg=;
        b=eZSZxfI3x6NDpk7Kv8Tp68okEJxoMFXr6rX2Al5w2ECl/C711NrvZTyBkvzM9SAwDA
         GGJw/UrvdPTgBj3vZiW/l76Dt8eLWuBcwMMAq5d1aswet6ufgIE4K0nO0/PG8D1fU4KJ
         az6N3c7jGnKL6mISGjnjvqW9oe/NlYCE6dJvX18x++bLN3XAOLk6cjZalNn9eN6OOcn2
         yyVYU2jiO+VJWbCKCtUW0BOPd7tebultA8QkhTjUt+vUJTPnW2gqmvWouD57VoYplbAO
         FTV7a3Pftnz5BfhJ6YJyoVemB3HmLurGBhsyyl6S00IqqX2IgEj4FHeLNN+Cf1QlMZYo
         4N8Q==
MIME-Version: 1.0
X-Received: by 10.194.134.68 with SMTP id pi4mr115235468wjb.101.1426432064642;
 Sun, 15 Mar 2015 08:07:44 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Sun, 15 Mar 2015 08:07:44 -0700 (PDT)
In-Reply-To: <20150315105016.GA5207@kroah.com>
References: <20150314165235.GA24545@vaishali-Ideapad-Z570>
	<20150315105016.GA5207@kroah.com>
Date: Sun, 15 Mar 2015 20:37:44 +0530
Message-ID: <CAK-LDbLi-4UeLHAzf-wuUEQaLxUfu1cXxJ=K0h7BFLAs7YLw-Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Add helper macro for
 spk_synth boilerplate
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 15, 2015 at 4:20 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sat, Mar 14, 2015 at 10:22:35PM +0530, Vaishali Thakkar wrote:
>> For simple modules that contain a single spk_synth without
>> any additional setup code then ends up being a block of
>> duplicated boilerplate. This patch adds a new macro,
>> module_spk_synth(), which replaces the
>> module_init()/module_exit() registrations with template
>> functions.
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>> v1 : Here, I know, I can go for changing all files
>>      and make them use module_spk_synth at a single point.
>>      But as I am sending this patch as a sample patch, I
>>      am changing only one file to show the use of helper
>>      macro. I will go for changing all other such cases in
>>      this driver if this patch will be accepted.
>>
>>  drivers/staging/speakup/speakup_audptr.c | 12 +-----------
>>  drivers/staging/speakup/spk_types.h      | 17 +++++++++++++++++
>>  2 files changed, 18 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/staging/speakup/speakup_audptr.c b/drivers/staging/speakup/speakup_audptr.c
>> index 5cbaec8..ea89e36 100644
>> --- a/drivers/staging/speakup/speakup_audptr.c
>> +++ b/drivers/staging/speakup/speakup_audptr.c
>> @@ -177,18 +177,8 @@ module_param_named(start, synth_audptr.startup, short, S_IRUGO);
>>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
>>  MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
>>
>> -static int __init audptr_init(void)
>> -{
>> -     return synth_add(&synth_audptr);
>> -}
>> -
>> -static void __exit audptr_exit(void)
>> -{
>> -     synth_remove(&synth_audptr);
>> -}
>> +module_spk_synth(synth_audptr);
>>
>> -module_init(audptr_init);
>> -module_exit(audptr_exit);
>>  MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
>>  MODULE_AUTHOR("David Borowski");
>>  MODULE_DESCRIPTION("Speakup support for Audapter synthesizer");
>> diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
>> index 8c565c9..e0c4fe3 100644
>> --- a/drivers/staging/speakup/spk_types.h
>> +++ b/drivers/staging/speakup/spk_types.h
>> @@ -179,6 +179,23 @@ struct spk_synth {
>>       struct attribute_group attributes;
>>  };
>>
>> +/* module_spk_synth() - Helper macro for speakup drivers that don't
>> + * do anything special in module init/exit. This eliminates a lot
>> + * of boilerplate. Each module may only use this macro once, and
>> + * calling it replaces module_init() and module_exit()
>> + */
>> +#define module_spk_synth(__spk_synth) \
>> +static int __init __spk_synth##_init(void) \
>> +{ \
>> +     return synth_add(&(__spk_synth)); \
>> +} \
>> +module_init(__spk_synth##_init); \
>> +static void __exit __spk_synth##_exit(void) \
>> +{ \
>> +     synth_remove(&(__spk_synth)); \
>> +} \
>> +module_exit(__spk_synth##_exit);
>> +
>
> Can't you use the module_driver() macro here instead of "rolling your
> own"?  Look at how module_usb_driver() is defined as an example.

Yes. I guess here I can use module_driver(). I will send revised version
with this change.

Thank You.

> thanks,
>
> greg k-h



-- 
Vaishali

