X-GM-THRID: 6462940414905155584
X-Received: by 10.84.128.15 with SMTP id 15mr1319139pla.36.1504778203662;
        Thu, 07 Sep 2017 02:56:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.196 with SMTP id d187ls1028389iog.38.gmail; Thu, 07
 Sep 2017 02:56:42 -0700 (PDT)
X-Received: by 10.129.96.132 with SMTP id u126mr1343303ywb.70.1504778202840;
        Thu, 07 Sep 2017 02:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504778202; cv=none;
        d=google.com; s=arc-20160816;
        b=h1eJXJ3Q/LozpEDFwiXGqSTiGNI3oKAV3OEoMWStIQscwmh5S1EgWx8sIvGgbtnLIp
         CwiMW1azYosvvEERq+a+u31TOgN7iRxK3dvTx8xvfHYgG+nIOZB5AP7MZEpKNmvVhwHC
         EqLuH5cNAuRIwu67/LMwdMkJltMx0yy9HzvqTWEdpK+ZTnN8IG5taAuNLuY5af6/ZV5w
         ttDGCDvgYHwhfC1raeQqSBkYMwQE9q7lxDCfihKR1RQV++W9a35WtnxZ7rhWwtJqLGUT
         5yUGTCbijZVQMyRM/iS5yFkNZnE7+vsSEdcfY8zun63BO6DJUXohsJG/92fI383MGvbf
         Ujkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=ssUNQR5T9/7CWx4CtQwxQH3/+vyfFmKwk48ynhXmuUM=;
        b=Ru0vBacbHOqQtc3ovmwaMPnBhx4wYJwXL283qqsKsxkSab+48gNETUOub2PVn+ekk0
         WhWnYfW/7CWUMCKD6PlNVodkBi7J05yafiKRCR1HUutM/YBeeNAtl2qnBpoqQ4zDC2vZ
         uNyobPYIFEHZirX9QwID5Oq70cDfHI49+Tzo3vDjDBn5IMlM1cGGlHX9HwNOSVbKdls9
         txyGC/BEKR+2199qncwx9POSW+SoXCQVHHTb8M8BedS0rgbF3Mojl1o8EIiL25HCjyh8
         NWZ65/B6O5LAFyN8111+PeEf4ohW1X7h8NjQUH5gcKoh5Z/9p7c8h/c1CYBm+e3jYKzv
         dWmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mTajSnO6;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id u127si152547ywg.1.2017.09.07.02.56.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 02:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mTajSnO6;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id g128so983127qke.0
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 02:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ssUNQR5T9/7CWx4CtQwxQH3/+vyfFmKwk48ynhXmuUM=;
        b=mTajSnO6pJCFnIvwRjU99JksAXHBlrRnRnr74vl9TYDiVgw5VzS9AUZQCIinfHUGIQ
         aoPoPXu6VMejAEJFw+N6qtroe+xE/C+piCgKCzOr2sFpHro7/jYCkotnlkfQlRyJxxcY
         fmb5gT8LPFqq2fxPyCRZDb6Jh3LfOwjkC/DODNkqXF9GLwdvStxg6/nTWrguaVMRd7/0
         Cl3l5ans/GN9dT+fkemmE9qrlJ3b5qE5fB6oi9ObiTx5mwMYMNQ3FwawuB2epuZtNlMa
         xuO3wKLavNJZvJiCqoVdH9qXArrk72/O8lOcUSCQ8iBtber6U6EZg3OY9bMsrg7ty+4c
         L/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ssUNQR5T9/7CWx4CtQwxQH3/+vyfFmKwk48ynhXmuUM=;
        b=JV4CnBMrV4O8x48OLYAajSR6ar0AJaSWYDqCMEK2bMchR/HajSmbooIiH2Vrgq9HjC
         qRE7UXb0A5L35KPDzBOq192HsVrSSgjA+DQr2ZwJj0eKYBRFWnnyZAC/WlP5OqMdBx9v
         Ev6W1mzBcsgzq9QWXfFWiDRa6K8Et8YwkcscFU0CcURRNfva7eaJasPJ8NxHd6wwHPhH
         WuXeVmZWriMS3kC2VgviosLwBu8Qz9HD8j6aGXKk4+UT2kawmMza+MY+hfcbGJoGiNy5
         dDLfOBaP500wd4qVZ67W6pj6jraYUhNsyYV/DHMjY7wc/UPvVrf1Pq+KY4hG78S/f5z6
         DGwA==
X-Gm-Message-State: AHPjjUjG5tSI4n7qaBRpoObchm3AKcoTCuvF/z8l5FZ19j8rVjVr374O
	zv39qMkqsxEkYLjWfWRTcVi3cMvjlg==
X-Google-Smtp-Source: AOwi7QCzZlsj7SLp1ThBZhO/ZKBwod0VWR8UUKZLKp+XSwiUrS5C/fVhxGa6qTJsYUfICRTDeJ/q6Stj3CRKIJlCgT8=
X-Received: by 10.55.158.6 with SMTP id h6mr93517qke.32.1504778202604; Thu, 07
 Sep 2017 02:56:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Thu, 7 Sep 2017 02:56:42 -0700 (PDT)
In-Reply-To: <CAOtvUMc0zxtAnfZhL5M4A7mrYt9z-i58mr2SLtYpXJ5-eEo+QQ@mail.gmail.com>
References: <1504770561-5554-1-git-send-email-srishtishar@gmail.com> <CAOtvUMc0zxtAnfZhL5M4A7mrYt9z-i58mr2SLtYpXJ5-eEo+QQ@mail.gmail.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Thu, 7 Sep 2017 15:26:42 +0530
Message-ID: <CAB3L5oyx4Au-BhZCg7Eo2SBD5drFS0OS=NOM3qCtQ4hLumdg1A@mail.gmail.com>
Subject: Re: [PATCH v5] Staging: ccree: Remove unused variable.
To: Gilad Ben-Yossef <gilad@benyossef.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 2:20 PM, Gilad Ben-Yossef <gilad@benyossef.com> wrote:
> Hi,
>
> On Thu, Sep 7, 2017 at 10:49 AM, Srishti Sharma <srishtishar@gmail.com> wrote:
>> Remove the local variable inflight_counter as it is never used.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>
> I've been meaning to clean that for some time now and never got around to do it.
> Thank you! :-)

Glad to know :)

>
> Acked-by: Gilad Ben-Yossef <gilad@benyossef.com>
>
>
>> Changes in v5:
>>  - Correct the format of the subject.
>>  drivers/staging/ccree/ssi_cipher.c | 3 ---
>>  1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
>> index 8d31a93..1ff3c8a 100644
>> --- a/drivers/staging/ccree/ssi_cipher.c
>> +++ b/drivers/staging/ccree/ssi_cipher.c
>> @@ -697,13 +697,10 @@ static int ssi_blkcipher_complete(struct device *dev,
>>                                   void __iomem *cc_base)
>>  {
>>         int completion_error = 0;
>> -       u32 inflight_counter;
>>         struct ablkcipher_request *req = (struct ablkcipher_request *)areq;
>>
>>         ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>>
>> -       /*Set the inflight couter value to local variable*/
>> -       inflight_counter =  ctx_p->drvdata->inflight_counter;
>>         /*Decrease the inflight counter*/
>>         if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
>>                 ctx_p->drvdata->inflight_counter--;
>> --
>> 2.7.4
>>
>
>
>
> --
> Gilad Ben-Yossef
> Chief Coffee Drinker
>
> "If you take a class in large-scale robotics, can you end up in a
> situation where the homework eats your dog?"
>  -- Jean-Baptiste Queru

Regards,
Srishti

