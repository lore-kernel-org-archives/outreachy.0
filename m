X-GM-THRID: 6252325247022792704
X-Received: by 10.67.8.2 with SMTP id dg2mr5439336pad.16.1455771606392;
        Wed, 17 Feb 2016 21:00:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.10 with SMTP id l10ls4772932qge.93.gmail; Wed, 17 Feb
 2016 21:00:05 -0800 (PST)
X-Received: by 10.129.85.68 with SMTP id j65mr5421261ywb.57.1455771605546;
        Wed, 17 Feb 2016 21:00:05 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x231.google.com (mail-ob0-x231.google.com. [2607:f8b0:4003:c01::231])
        by gmr-mx.google.com with ESMTPS id kr4si54655igb.0.2016.02.17.21.00.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 21:00:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) client-ip=2607:f8b0:4003:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x231.google.com with SMTP id xk3so49988662obc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 21:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=dra+j7YAhAV6hY9QDKrmj37VHghOrcQTdqprKdYt+Io=;
        b=w418GiEkljR1dhUVavqhXDorUQVxDrozQV4UgIhATHePJlA2POGXvhQ3RerlwBpTOo
         WRu/Hphk4zij0E/8v69ZKjpPkj219WIUUZIE+0qg5hTfawEmQ3ZZR5NYCUuQcfd+0tbd
         lUS4PdPubLVUIWcsV5p3bdSZ3hn4Bu+tKV63nxJQJVWYly+NbXPLK/npykAL3z/Ut0kf
         VZ9Ecb3vHWJXwW21j6/JnQiCY5EDBmAUAxkaMaTQm9NJBoE5VqJJQ7++99Ac6XiUi0Uh
         2LanfNIBHQXlN4VGrA234qQ2EuvktRZrG7tpfpwqDN3gfG+AyyysTpxAqjSw/v5AN8Dh
         SAqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=dra+j7YAhAV6hY9QDKrmj37VHghOrcQTdqprKdYt+Io=;
        b=U+EgHFccXxQtkyIhFkhP9897cFJt9J274DDnMIbSM95wLwcCOGIQxEz7VbXUkO26jI
         7RyPii8j3JFdd6vnv0ggOsacUEuy+7q7H1NurPTbif23U+0l8SzT0Gj9qJfuoqglcKy1
         6pN7cIQ1s1eihiZjhnFXdQJ99TqixTLMHFuvrk99FtDqcY09v5uGPQNeJG8TVmRwL5yl
         KcYWT4EGFzGPB3jlcWEAtHsNOpFzMtsDpMK25XIIqz7S1f83ezE8outLykJcUugG3RJY
         1SKrcDN+HCLqY366uOuctQ0aO7r7sBrGqK8NlZU3rug39W7PuHGbtRM+wBbROZTc2FZ5
         24cQ==
X-Gm-Message-State: AG10YORLSNxxia69XXWlrQvyF8UD48Ibu9Q6kG4sDix93HAp68g35Tg5y18TNcd14BYHhAizUqHIVwfF2CF13A==
MIME-Version: 1.0
X-Received: by 10.202.199.10 with SMTP id x10mr4476950oif.101.1455771605358;
 Wed, 17 Feb 2016 21:00:05 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Wed, 17 Feb 2016 21:00:05 -0800 (PST)
In-Reply-To: <CAOH+1jE2Fc=0wGkj=PjTPtY6MK41YP6LxxRKP5DfEEKMXPENtQ@mail.gmail.com>
References: <1455732899-17222-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602171837210.4547@hadrien>
	<CAOH+1jE2Fc=0wGkj=PjTPtY6MK41YP6LxxRKP5DfEEKMXPENtQ@mail.gmail.com>
Date: Thu, 18 Feb 2016 10:30:05 +0530
Message-ID: <CAOH+1jGB=EFPMTLiMYfem4dQ2QMR5p5PvsWz3=UJYW=8hQbYdw@mail.gmail.com>
Subject: Fwd: [Outreachy kernel] [PATCH] Staging: comedi: drivers: Delete
 double assignment
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 18, 2016 at 5:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 17 Feb 2016, Bhumika Goyal wrote:
>
>> The two assignments here are identical so one can be removed.
>> Found using coccinelle:
>> @@
>> expression i;
>> @@
>>
>> *i = ...;
>>  i = ...;
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/comedi/drivers/dt2814.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
>> index 66705f9..e40ad56 100644
>> --- a/drivers/staging/comedi/drivers/dt2814.c
>> +++ b/drivers/staging/comedi/drivers/dt2814.c
>> @@ -249,7 +249,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
>>               return -EIO;
>>       }
>>       i = inb(dev->iobase + DT2814_DATA);
>> -     i = inb(dev->iobase + DT2814_DATA);
>
> Inb reads from the device.  The first call may have a side effect.
>
> julia
>

Ok and here the reason might be that both calls are important because
suppose the value is not read in first call it can be read in the
second call?  Please correct me if I am wrong.

Thanks,
Bhumika
>>       if (it->options[1]) {
>>               ret = request_irq(it->options[1], dt2814_interrupt, 0,
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455732899-17222-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

