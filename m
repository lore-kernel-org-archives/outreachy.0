X-GM-THRID: 6391852583766458368
X-Received: by 10.28.148.132 with SMTP id w126mr456855wmd.10.1488226795775;
        Mon, 27 Feb 2017 12:19:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls511764ljd.21.gmail; Mon, 27 Feb 2017
 12:19:54 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr2086936ljd.23.1488226794499;
        Mon, 27 Feb 2017 12:19:54 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x229.google.com (mail-lf0-x229.google.com. [2a00:1450:4010:c07::229])
        by gmr-mx.google.com with ESMTPS id c188si746975wmd.0.2017.02.27.12.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 12:19:54 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::229 as permitted sender) client-ip=2a00:1450:4010:c07::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::229 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x229.google.com with SMTP id y193so10043193lfd.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 12:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=laZZv3KdsHPKSgBheyGGBDRhsmCO3zHqQ5KLZV85bWM=;
        b=TyhmNrEnjNyETnOXJG3q2uNBtQn1i/eiUfXJD0zHJ+v8rrbWwqrrVzgeZTYB/yH8ev
         o7bSpRyh9Egts7BE0q1RU1zGvBDh/xUr1qdxkMlcOyH4kq79AvIoVhZ61TfW18AuVBJ+
         O0wo8haViLs/wOrAUyuqYkhKniXkxV1dqVcvw8pxRCZTB6o7XMyPaNJj/oHT2w6D5b2I
         /RxJRKGITb1QcgYlu9tHbFwVLImqwpqvNG/0obw0MpKS8F8HgGkWITOQR0Izkx3BNgoz
         ofDhGO5VJF3QDEDRfujyqtYfF5b2Nz7uJLLjaouDWPKkVQfrmMbCsSIrMbH0lPStoHTW
         mhfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=laZZv3KdsHPKSgBheyGGBDRhsmCO3zHqQ5KLZV85bWM=;
        b=EUBHMkMOjw/sYN0aqdJQp6Jc2A9fsaU/7RBa7lZtgFlhD9a8kk8WeqM4QsnVWaSHKq
         wNQkrNm6zqipNRKGF1sYtqaFBi46fRP0I7/56Uqh4cQ+wdhqz2nhANbN0fw+YnvpuvrE
         7Hp4beH0dm8mOnPdI6BJz+vAyXIEZtGWXWtlovHtW2PnCMHl9IwL/w8iLNk0bi7xBytq
         pgppbQNfMY0UppH4zD2FrhhwHkj3Xtn2xb4rLbU1jDQcoYzl3EjFYcJGSFA755pS1ctK
         FydTO5a4rhvH5Nl5raPo/NW/5cK7d8Q/lLAC9SDYFGGekL6fpvGi1xq6UWnt5tw+7pYJ
         a16Q==
X-Gm-Message-State: AMke39lGGJ3L/rds057VSKmjhfV33z8Q26brWFwrSoLjpdphh5OnsHFs/TzmPYIJekOcCDdDraE8lGeTIM/Pfw==
X-Received: by 10.46.33.75 with SMTP id h72mr4858638ljh.37.1488226794264; Mon,
 27 Feb 2017 12:19:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Mon, 27 Feb 2017 12:19:53 -0800 (PST)
In-Reply-To: <1488224468.25838.11.camel@perches.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
 <1488219268-3006-5-git-send-email-singhalsimran0@gmail.com> <1488224468.25838.11.camel@perches.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Tue, 28 Feb 2017 01:49:53 +0530
Message-ID: <CALrZqyMy3q1GOj3uDK3VpXCs4rNrX2R7WM5wHgFXQTaH-U0utA@mail.gmail.com>
Subject: Re: [PATCH 5/5] staging: gdm724x: Remove unnecessary else after return
To: Joe Perches <joe@perches.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 1:11 AM, Joe Perches <joe@perches.com> wrote:
> On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
>> This patch fixes the checkpatch warning that else is not generally
>> useful after a break or return.
>
>> This was done using Coccinelle:
>> @@
>> expression e2;
>> statement s1;
>> @@
>> if(e2) { ... return ...; }
>> -else
>>          s1
> []
>> diff --git a/drivers/staging/gdm724x/gdm_endian.c b/drivers/staging/gdm724x/gdm_endian.c
> []
>> @@ -26,30 +26,26 @@ __dev16 gdm_cpu_to_dev16(struct gdm_endian *ed, u16 x)
>>  {
>>       if (ed->dev_ed == ENDIANNESS_LITTLE)
>>               return (__force __dev16)cpu_to_le16(x);
>> -     else
>> -             return (__force __dev16)cpu_to_be16(x);
>> +     return (__force __dev16)cpu_to_be16(x);
>
> again, not a checkpatch message for any of the
> suggested modified hunks.
>
So, I have to change commit message.

