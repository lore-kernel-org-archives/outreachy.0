X-GM-THRID: 6200017795364683776
X-Received: by 10.182.70.4 with SMTP id i4mr24523319obu.15.1443556259832;
        Tue, 29 Sep 2015 12:50:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.245 with SMTP id m108ls3436qge.16.gmail; Tue, 29 Sep
 2015 12:50:59 -0700 (PDT)
X-Received: by 10.129.57.9 with SMTP id g9mr8841841ywa.19.1443556259197;
        Tue, 29 Sep 2015 12:50:59 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22b.google.com (mail-io0-x22b.google.com. [2607:f8b0:4001:c06::22b])
        by gmr-mx.google.com with ESMTPS id hx4si1979221igb.0.2015.09.29.12.50.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 12:50:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) client-ip=2607:f8b0:4001:c06::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22b.google.com with SMTP id i196so23358216ioi.3
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 12:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=mvhE6gq3LeCtBxYzz+qrQDV3C6U6mMyJaMhmIJMSYKg=;
        b=fuxqOsv+HA+AdVwG7CP9bVBPjYaQ+J7WTJPS413VaKm/JzoJF0pcS4YiUJydzMz3eP
         Q/yso3sX1cz+9mXy6N+9Z6daDIImHYbzAkaycxcDJxzyF9fhYdOeSa+IiIghYku0Fruw
         WsbugUf4P4qArnVZAOOmdcxHY14e4rFj0aLCMxig75m8F7kbXUu5oY3lwUHoO8uS+jfy
         TZ6W3vSGuxErqwPF/LlVe/iaqI9sLqAk1zzVWfI650JnUUrd54jIcM1JDii3GeEO8YV3
         wDV6z/3rUmbsF86UAyK5ptekonO1zgZCFexb+EC70DPabZopP/JNUpKd30mzsYVU7aBg
         iZKA==
MIME-Version: 1.0
X-Received: by 10.107.31.135 with SMTP id f129mr806890iof.8.1443556258978;
 Tue, 29 Sep 2015 12:50:58 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Tue, 29 Sep 2015 12:50:58 -0700 (PDT)
In-Reply-To: <20150929193803.GA23361@kroah.com>
References: <1443554123-15360-1-git-send-email-ksenija.stanojevic@gmail.com>
	<20150929193803.GA23361@kroah.com>
Date: Tue, 29 Sep 2015 21:50:58 +0200
Message-ID: <CAL7P5jLdWFvBs9Bmc=YukTNnA=0A77LWB=PcdFxp4yN0neq5kg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: show() methods should
 use scnprintf()
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi,

On Tue, Sep 29, 2015 at 9:38 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Sep 29, 2015 at 09:15:23PM +0200, Ksenija Stanojevic wrote:
>> snprintf() may return a value that exceeds its second argument,
>> show() methods should use scnprintf() instead of snprintf().
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
>> index 8d8bd12..36a1f4e 100644
>> --- a/drivers/staging/fbtft/fbtft-sysfs.c
>> +++ b/drivers/staging/fbtft/fbtft-sysfs.c
>> @@ -198,7 +198,7 @@ static ssize_t show_debug(struct device *device,
>>       struct fb_info *fb_info = dev_get_drvdata(device);
>>       struct fbtft_par *par = fb_info->par;
>>
>> -     return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
>> +     return scnprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
>
> They should?  Why?  This shouldn't be needed at all, and really, a
> simple sprintf() is all that is necessary.  I would just leave this
> alone, it's fine as-is.

In kernel documentation :
https://www.kernel.org/doc/Documentation/filesystems/sysfs.txt
it states:

show() must not use snprintf() when formatting the value to be
  returned to user space. If you can guarantee that an overflow
  will never happen you can use sprintf() otherwise you must use
  scnprintf()

Should I just use sprintf instead?

Thanks,
Ksenija


> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150929193803.GA23361%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.

