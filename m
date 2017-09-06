X-GM-THRID: 6462748484201086976
X-Received: by 10.84.245.1 with SMTP id i1mr311568pll.13.1504731776155;
        Wed, 06 Sep 2017 14:02:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.114.14 with SMTP id n14ls42245ioc.12.gmail; Wed, 06 Sep
 2017 14:02:55 -0700 (PDT)
X-Received: by 10.107.148.209 with SMTP id w200mr321165iod.96.1504731775527;
        Wed, 06 Sep 2017 14:02:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504731775; cv=none;
        d=google.com; s=arc-20160816;
        b=ssvlnvuFv/SR2CpZRDCDFp1sZ7Mz6cEw7AvGDxhoJjijF+S+2H3TlaUeoZClnpmIGl
         3/qCKlrcQG2UpfUQqVNm2o9bJ5QoL890WawKCKHQfTzVEjYps1qGti0tNrlZrRiSCDjD
         pUyBH7IsyaspeVyj8uea0b8Ruv7f/2HzmU0uHdOEb85N38So80Z4tRo27pcuRHj6rlMz
         NEGw15lDuRJ72mwI5Sa1AursWhXUgnggdv/keNuDDXimsSb3uxbR7WD6CJlIXv41LD2A
         MWO6OcyeC1qZtQMri4IiIrBc3L+I0wGCl7v4XJ//qsNivl3o5+Fn4fKsPV26B7z7HuqN
         Fvqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=KQXnH8TWbOw5jNGiU0HciT7WEgOIXfHro1rXwyUsRQY=;
        b=a/Jw7AWFPe3coHmyRW51jrmgXhT/6wmuphN3f/BZQblHaw6ClJwvDcz1zABSnspowH
         xUvEexX/6jjpf9gCSbOKfUEjA7CnhzYoMocOaO95SyOAme8FjyN4e84Jux3QYx4dhQdN
         VoWnYRL4qu1aEyBY1s4BzJc3RAsC9GIg70l3lru8wtlCg7RB72tWFjVT8eHVhugYl+Xf
         s7cWhBxbY8iBzt8ZB8sbnuFW4WbJiV6te+MdNg/EIxBtFvIi6kqnLNGysN8P0GYxbML1
         QntFXnt2OBb7NmFxqoN9k8E+cQwycbqhwv61ZIPl6R1aHWFBHh+jGuVB5t+a7zFievhc
         tJfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L8FQSZrL;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id v23si57931ywg.5.2017.09.06.14.02.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:02:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L8FQSZrL;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id h21so4629976qth.4
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 14:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=KQXnH8TWbOw5jNGiU0HciT7WEgOIXfHro1rXwyUsRQY=;
        b=L8FQSZrLj3s/UMlqm6ftvAJ73gc6btg/cqLuKyg9xVXumTB1Dv+jcFqhYS4pD5+Awt
         fFJ9MhF03Qqqmjqp85en34xtJ/fpK7I95kBXPfnJnZY5EdGBwFWT92TXD8grAlHb7H1h
         jDMX1jWEMxh0UgQxLuzlw006nM5W+fndldqUD9XfPpW3Sjelpd33MGgytE1ojuUthmlb
         KNpRaT8RNTdSoBrVtWOw3t7yogPp+EL6izIcZUAGlUm/P3iHbKwJrsktkafcullqQScW
         01V30dyIWasCm7ihgjAJC+TCNxORhnnFsLKZYSlHRT1juB6/hPb+1eMsSHrA28CpSS0X
         n8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=KQXnH8TWbOw5jNGiU0HciT7WEgOIXfHro1rXwyUsRQY=;
        b=gXjgrrEQlYlOVZKiR5pogiQTgKtPjbF/4dnhE1OE9aJJHb2jV/mQp3balOMfPYdSI7
         uyLYacxhr86+7Ax/5NG5yyDOxc1WdiCSq4F5Z5h8DKhcoC2xewUgfPexh5yq6dKCVNDC
         kfC+L1btAREx/rfc4sj18nMzSLGn3HfU+KIFtG0vGLfwRVRVztYhckFeQ8g7KJPB6JzD
         Le4mRreFMGsnXIFJ3qFTGOeKnyAhHjuNcs4hYDXDXDWMisStUrqfzsh69Z8li7CzjfpI
         uQw7OXX8+Xxs2zwAl7pgwmwQMfiHF/Irod9VYjDIfl74uFzSMB8tikgiCcxDn5iH9mtZ
         lDVA==
X-Gm-Message-State: AHPjjUh9OOOhBlZh3pjnVgZ78FsU6NDUEkMr3ZUAFcGm5zXWtuj0T7bd
	QrZ8XKuRDTfPP8OezATUozg1c7tZkw==
X-Google-Smtp-Source: ADKCNb7ASA1L8F0PPYfXaHyDFN3TSQJXSRq82qftC0X+i6h4n7Q7ZLa3K1joHI3uRtbb7y96s04Ft9WOoyA3BUrTzHg=
X-Received: by 10.237.35.175 with SMTP id j44mr746638qtc.140.1504731775255;
 Wed, 06 Sep 2017 14:02:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Wed, 6 Sep 2017 14:02:54 -0700 (PDT)
In-Reply-To: <20170906205955.s22ssdslev3o4yiq@mwanda>
References: <1504725863-8495-1-git-send-email-srishtishar@gmail.com> <20170906205955.s22ssdslev3o4yiq@mwanda>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Thu, 7 Sep 2017 02:32:54 +0530
Message-ID: <CAB3L5oz_5hnLPLAMCB46AirDR5XEm6nhhc+PoS-rfDx9tf97KA@mail.gmail.com>
Subject: Re: [PATCH] Staging: ccree: ssi_cipher.c: Correct spelling mistake.
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	outreachy-kernel@googlegroups.com, driverdev-devel@linuxdriverproject.org, 
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 2:29 AM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Thu, Sep 07, 2017 at 12:54:23AM +0530, Srishti Sharma wrote:
>> Correct spelling of counter in comment .
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/ccree/ssi_cipher.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
>> index 8d31a93..99232b2 100644
>> --- a/drivers/staging/ccree/ssi_cipher.c
>> +++ b/drivers/staging/ccree/ssi_cipher.c
>> @@ -702,7 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,
>>
>>       ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>>
>> -     /*Set the inflight couter value to local variable*/
>> +     /*Set the inflight counter value to local variable*/
>>       inflight_counter =  ctx_p->drvdata->inflight_counter;
>
> Sure, but it would be better to just delete the comment.  It's obvious.
> But really just delete the local inflight_counter variable as well
> because that's never used.

  Okay, I'll delete it .
>
> regards,
> dan carpenter
>

Regards,
Srishti

