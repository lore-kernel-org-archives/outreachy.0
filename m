X-GM-THRID: 9199559901184
X-Received: by 10.152.8.73 with SMTP id p9mr8453287laa.6.1426841096068;
        Fri, 20 Mar 2015 01:44:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.99 with SMTP id bf3ls295458wib.9.canary; Fri, 20 Mar
 2015 01:44:55 -0700 (PDT)
X-Received: by 10.180.109.34 with SMTP id hp2mr2511934wib.4.1426841095727;
        Fri, 20 Mar 2015 01:44:55 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id gj20si78033wic.1.2015.03.20.01.44.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 01:44:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id g7so138545244wib.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 01:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=RCn2FneS+C3+w71euJabH9BXdn4icBA99zjYE98Ld34=;
        b=0V4TZ7n+diQfQgMwgO3FwxxMRvdZDOYpGbvnKgrYDt/aaFvENT28SKHw3l9FJKCY6e
         nmx9urPMiyAPmvpkRHU+OrGcCW4ylAGDgLGSjWnB1Kfvg8z7ZWffJ7Nz1Spv2wX50Y81
         FA8lwAnkRbSqr2HlCfJ8OvJ1tsgGIdxSCkQ5owNZC6OFMctvMAKAEzsY/I64UqENxp/W
         RV+U28YrZe2qI+3ci5086mGagkXpO2w8QL50cLOcQQBG3QGWmokqeZ6IrK77R/ytXOUY
         MImm6VMBrAm2mpot5ndV4ChdgQP9aBjn1SaEeaIcOm9dlH8H+zw6StRXWTnYXzIRosQy
         rZaQ==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr161528407wjw.149.1426841095636;
 Fri, 20 Mar 2015 01:44:55 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Fri, 20 Mar 2015 01:44:55 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1503200906150.2554@hadrien>
References: <20150320071750.GA8322@vaishali-Ideapad-Z570>
	<alpine.DEB.2.10.1503200906150.2554@hadrien>
Date: Fri, 20 Mar 2015 14:14:55 +0530
Message-ID: <CAK-LDbJavp-uek_E=VKPSHObYRsCV90cOZcChFEPbzkqAMWoMA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ste_rmi4: Use
 SIMPLE_DEV_PM_OPS() macro
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 20, 2015 at 1:37 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 20 Mar 2015, Vaishali Thakkar wrote:
>
>> Macro SIMPLE_DEV_PM_OPS() can be used when same suspend
>> and resume callbacks are used for suspend to RAM and
>> hibernation. So, here use SIMPLE_DEV_PM_OPS to make code
>> shorter and cleaner.
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>>  drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 9 +++------
>>  1 file changed, 3 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
>> index 6385b33..0f524bb 100644
>> --- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
>> +++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
>> @@ -1112,12 +1112,11 @@ static int synaptics_rmi4_resume(struct device *dev)
>>       return 0;
>>  }
>>
>> -static const struct dev_pm_ops synaptics_rmi4_dev_pm_ops = {
>> -     .suspend = synaptics_rmi4_suspend,
>> -     .resume  = synaptics_rmi4_resume,
>> -};
>>  #endif
>>
>> +static SIMPLE_DEV_PM_OPS(synaptics_rmi4_dev_pm_ops, synaptics_rmi4_suspend,
>> +                      synaptics_rmi4_resume);
>> +
>>  static const struct i2c_device_id synaptics_rmi4_id_table[] = {
>>       { DRIVER_NAME, 0 },
>>       { },
>> @@ -1128,9 +1127,7 @@ static struct i2c_driver synaptics_rmi4_driver = {
>>       .driver = {
>>               .name   =       DRIVER_NAME,
>>               .owner  =       THIS_MODULE,
>> -#ifdef CONFIG_PM
>>               .pm     =       &synaptics_rmi4_dev_pm_ops,
>> -#endif
>
> How does this work?  I guess that before the pm field could sometimes be
> null, if power management is not supported.  Not the field is not null.
> Are the fields for the functions now null if there is no power management,
> or are there just trivial definitions?  (It's not a suggestion about
> changing the patch; I am just wondering).

Yes. I think members of  synaptics_rmi4_dev_pm_ops can be null if there
is no power management after this change.

As far as I understand, 'SIMPLE_DEV_PM_OPS' macro is defined as follows:

#define SIMPLE_DEV_PM_OPS(name, suspend_fn, resume_fn) \
const struct dev_pm_ops name = { \
        SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn) \
}

And then 'SET_SYSTEM_SLEEP_PM_OPS' like this:

#ifdef CONFIG_PM_SLEEP
#define SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn) \
        .suspend = suspend_fn, \
        .resume = resume_fn, \
        .freeze = suspend_fn, \
        .thaw = resume_fn, \
        .poweroff = suspend_fn, \
        .restore = resume_fn,
#else
#define SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn)
#endif

So, when CONFIG_PM is not enabled, we can simply remove these
guards. And we can write like this:
static const struct dev_pm_ops synaptics_rmi4_dev_pm_ops{
};

However, at first I was unsure about this change. But as this patch is
not giving any kind of build error I guess this change should work.

Although this is my understanding. It may possible that I am wrong.
Correct me if I am missing something.

Thank You.

> julia
>
>>       },
>>       .probe          =       synaptics_rmi4_probe,
>>       .remove         =       synaptics_rmi4_remove,
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150320071750.GA8322%40vaishali-Ideapad-Z570.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Vaishali

