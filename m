X-GM-THRID: 9199559901184
X-Received: by 10.180.80.35 with SMTP id o3mr1300676wix.0.1426842001108;
        Fri, 20 Mar 2015 02:00:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.33 with SMTP id ld1ls364315lac.16.gmail; Fri, 20 Mar
 2015 02:00:00 -0700 (PDT)
X-Received: by 10.112.13.228 with SMTP id k4mr12603306lbc.8.1426842000679;
        Fri, 20 Mar 2015 02:00:00 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id cl5si306073wib.3.2015.03.20.02.00.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 02:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id p45so76843702weo.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 02:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=kJZ4csHkyvRQFTZVxqskQPR0UmV7yd6STs+AqgioTd4=;
        b=asbPgGx6RavEjZmGJf8X3kWNDCFPN8eGW1A5qSldmHWjd+7f/qGooYALM06WuYOreN
         MlDYjoTfR3mucivvuMUwogeVJXuS20Pxb2nD5bn4hy+etfD2fZFUq2bnBco3CwTl21Og
         kVE8w2Y9EZDppGYWJ1WAzcFAhlwL0JGNVM5jpLn6lrU3U/HlgRCzwZTJ5aWUhXbyXnp1
         nywqXaxBVV1XeQsbmo5kbH2/z1fZ81tYFKWFSyo+RebkOO8K77wR32zSGkRQS194Ujum
         ehYimNLrk7bGF2TfrY1gTQpJRs+4I9gyxjPzU7aZ11xHBsko27VlvkWfsmVrzsHjFdq5
         1Mhg==
MIME-Version: 1.0
X-Received: by 10.181.12.105 with SMTP id ep9mr23308781wid.85.1426841999067;
 Fri, 20 Mar 2015 01:59:59 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Fri, 20 Mar 2015 01:59:59 -0700 (PDT)
In-Reply-To: <CAK-LDbJavp-uek_E=VKPSHObYRsCV90cOZcChFEPbzkqAMWoMA@mail.gmail.com>
References: <20150320071750.GA8322@vaishali-Ideapad-Z570>
	<alpine.DEB.2.10.1503200906150.2554@hadrien>
	<CAK-LDbJavp-uek_E=VKPSHObYRsCV90cOZcChFEPbzkqAMWoMA@mail.gmail.com>
Date: Fri, 20 Mar 2015 14:29:59 +0530
Message-ID: <CAK-LDbLf0nk2iv2eeRKTOzd7PTke8jH2Cdk_prOdWTjNQjW1fw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ste_rmi4: Use
 SIMPLE_DEV_PM_OPS() macro
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 20, 2015 at 2:14 PM, Vaishali Thakkar
<vthakkar1994@gmail.com> wrote:
> On Fri, Mar 20, 2015 at 1:37 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> On Fri, 20 Mar 2015, Vaishali Thakkar wrote:
>>
>>> Macro SIMPLE_DEV_PM_OPS() can be used when same suspend
>>> and resume callbacks are used for suspend to RAM and
>>> hibernation. So, here use SIMPLE_DEV_PM_OPS to make code
>>> shorter and cleaner.
>>>
>>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>>> ---
>>>  drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 9 +++------
>>>  1 file changed, 3 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
>>> index 6385b33..0f524bb 100644
>>> --- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
>>> +++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
>>> @@ -1112,12 +1112,11 @@ static int synaptics_rmi4_resume(struct device *dev)
>>>       return 0;
>>>  }
>>>
>>> -static const struct dev_pm_ops synaptics_rmi4_dev_pm_ops = {
>>> -     .suspend = synaptics_rmi4_suspend,
>>> -     .resume  = synaptics_rmi4_resume,
>>> -};
>>>  #endif
>>>
>>> +static SIMPLE_DEV_PM_OPS(synaptics_rmi4_dev_pm_ops, synaptics_rmi4_suspend,
>>> +                      synaptics_rmi4_resume);
>>> +
>>>  static const struct i2c_device_id synaptics_rmi4_id_table[] = {
>>>       { DRIVER_NAME, 0 },
>>>       { },
>>> @@ -1128,9 +1127,7 @@ static struct i2c_driver synaptics_rmi4_driver = {
>>>       .driver = {
>>>               .name   =       DRIVER_NAME,
>>>               .owner  =       THIS_MODULE,
>>> -#ifdef CONFIG_PM
>>>               .pm     =       &synaptics_rmi4_dev_pm_ops,
>>> -#endif
>>
>> How does this work?  I guess that before the pm field could sometimes be
>> null, if power management is not supported.  Not the field is not null.
>> Are the fields for the functions now null if there is no power management,
>> or are there just trivial definitions?  (It's not a suggestion about
>> changing the patch; I am just wondering).
>
> Yes. I think members of  synaptics_rmi4_dev_pm_ops can be null if there
> is no power management after this change.
>
> As far as I understand, 'SIMPLE_DEV_PM_OPS' macro is defined as follows:
>
> #define SIMPLE_DEV_PM_OPS(name, suspend_fn, resume_fn) \
> const struct dev_pm_ops name = { \
>         SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn) \
> }
>
> And then 'SET_SYSTEM_SLEEP_PM_OPS' like this:
>
> #ifdef CONFIG_PM_SLEEP
> #define SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn) \
>         .suspend = suspend_fn, \
>         .resume = resume_fn, \
>         .freeze = suspend_fn, \
>         .thaw = resume_fn, \
>         .poweroff = suspend_fn, \
>         .restore = resume_fn,
> #else
> #define SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn)
> #endif
>
> So, when CONFIG_PM is not enabled, we can simply remove these
> guards. And we can write like this:
> static const struct dev_pm_ops synaptics_rmi4_dev_pm_ops{
> };
>
> However, at first I was unsure about this change. But as this patch is
> not giving any kind of build error I guess this change should work.
>
> Although this is my understanding. It may possible that I am wrong.
> Correct me if I am missing something.
>
> Thank You.

Ah, I think I am missing something. May be I can use this macro when
there is CONFIG_PM_SLEEP. But the way here CONFIG_PM is used
it seems like it should be CONFIG_PM_SLEEP. Though I don't have
knowledge about this particular driver. So, it would be good if you can
enlighten me on this particular topic.

Thank You.

>> julia
>>
>>>       },
>>>       .probe          =       synaptics_rmi4_probe,
>>>       .remove         =       synaptics_rmi4_remove,
>>> --
>>> 1.9.1
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150320071750.GA8322%40vaishali-Ideapad-Z570.
>>> For more options, visit https://groups.google.com/d/optout.
>>>
>
>
>
> --
> Vaishali



-- 
Vaishali

