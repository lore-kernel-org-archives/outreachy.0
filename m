X-GM-THRID: 6462776611954491392
X-Received: by 10.129.52.79 with SMTP id b76mr1076616ywa.209.1504768338357;
        Thu, 07 Sep 2017 00:12:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.173.80 with SMTP id a16ls755023itj.12.gmail; Thu, 07 Sep
 2017 00:12:17 -0700 (PDT)
X-Received: by 10.36.31.141 with SMTP id d135mr1524088itd.52.1504768337588;
        Thu, 07 Sep 2017 00:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504768337; cv=none;
        d=google.com; s=arc-20160816;
        b=bOJiZeQgc7nTqsDUNR4c7Hw2uBAKN/puJfjf1rI2GpaQwK1GnS2gRhMIqHcdOOnn+7
         1g4izR9bPtjl/jfyWfm2Kr4PGrqLJ+8KhQqJi+q9aXyqOy/b9Q1XuhwCEEhr8zXUopfD
         N46mzDLs57mYJDSB2uhHFO3zzN6aD1yfVM4aDcTxC/DMSuXUMAl0xEb39w6p4vlX/vM3
         RpnTDWwGv0ULVyWO3X7YIHkilxi4JNZ9+LBL1ZPs+S6NwwwPeyYlOW/E7jgOzA495iL9
         B0sSFspsJ3oRwaxM7c2YNFk4HTx4cXpdQGr/lpregziXeXQ27OR9DDpdmqZeUYuENpnV
         ZAHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=mNPeEnBCtkWVpXPCNchvS3PFj0+0FO1RY5jlA4u+ZmE=;
        b=ACTOywK77bbMqjSdVrmuFcEym2Ejt86CllMy/XYTMidMTqb52uXHR99o65HWRjRUKW
         VI66jdWh2SFSJGC7q6ZNjXJzqIFVmOGEijNBJv5xAWt1MkM+KRDI/TGJhkhGXA2T/eDf
         Y9TFUb7rDLDceJkq1ZiaNN+cC8p0yZCLfIz5ZKZsWtnKHWCVsfRbEggFt1A2T2ms++8X
         r3r9m7AQO3vZbcwxrJqi2Edx+SRcn1+vY49JlbG21ji4rFOKOnHkiMQtKXzS0qXGDptD
         SFsEvd3KJTdZv7pXuwzwN+Gbul73S4u2QKx01BSr1kwrk8QZdMMJogwL8AKOM8UFX/g3
         UYFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OUURh82h;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id w65si158419ywg.18.2017.09.07.00.12.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 00:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OUURh82h;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id i14so4308528qke.3
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 00:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=mNPeEnBCtkWVpXPCNchvS3PFj0+0FO1RY5jlA4u+ZmE=;
        b=OUURh82h4aZJesxpqc5eln14a8NI58rteZtmyoI79A8wf39gG5Q23Auj2qvxstd6MZ
         ksSd6n6Mqp0X5HgQPSmaB+wwgYBMqL0LjYCpPoXbKNOj/1CGvPHhxClnJobidM9hQUoP
         GkueUHh2tu3XhCX/THZ2CmPMPdyAbLQFgeBRjj3Z0td+lBpJeTd2UNdxDx7l/eGqUUB9
         keER+/2gMrMolywQYHIQ6gY1GUvQOFtUCtQM0/oi6MoEMykp5Qye2sgv7D97z+3zxv2b
         VCTWyjpjgpAfZtn+ME/EupG7VdIBWOUMYh2AYDqX3GTJAxb9Tb9fs1HrwsloyGklP2hO
         Kicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=mNPeEnBCtkWVpXPCNchvS3PFj0+0FO1RY5jlA4u+ZmE=;
        b=TGdmIQ0WLZ+jig+661FDqEE281/iHclyGFSLrtNqBnau/Z2YB39fT7ENaL49+eG44Q
         EgbHQ+GmpyRMhoEYi27YZHmaAy8jAKI7Ci8DlmZzCBiVarZx8Qp9yTGMJNqHasX2TSDE
         7e9o6wBC6yoOx5j5o69Bjr7Nqnh3WB8ENqkrtR1fW6a7xvMrm3lbjQcutxFEUKxTvXmY
         hehd8AX14KqaqWWt/+yS8Pezp5c+8cAbIUmLrFw0yGASAJLmLYN0ZHJIywRP5oZD5ytf
         N3vZul7RlC1O+5CJPQT2llnVDV59CFTiZzAqc/ijfRRbbJp7fiaPBJB948uIu+52PCZi
         FE8g==
X-Gm-Message-State: AHPjjUgQOJ7jzaEnVQKFTcAQkYM0jCvinOTuhZBmAobHv3nyGQO+vy40
	QqVYUl1qPDNfBuHxUDeXT6V5tYGkbA==
X-Google-Smtp-Source: ADKCNb44x5nhhTT8Tg/EQRPirxKs9scmdLj48UhWJedgNJaSXd6pOV9zGwnOS9UTJeIG3tpX9lfietjA1dLWs3xEF5g=
X-Received: by 10.55.52.19 with SMTP id b19mr2224353qka.77.1504768337229; Thu,
 07 Sep 2017 00:12:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Thu, 7 Sep 2017 00:12:16 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709070852150.3084@hadrien>
References: <1504735553-13753-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709070852150.3084@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Thu, 7 Sep 2017 12:42:16 +0530
Message-ID: <CAB3L5oxbF=Qg8XE2boWM3V+A2m941j9gfaOBcFuCorro+acqBA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: ccree: ssi_cipher.c:
 Remove unused variable.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Gilad Ben-Yossef <gilad@benyossef.com>, 
	linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 12:24 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> One last detail.  The subject line above is not in the same format as that
> of all of the other subject lines one commits affecting this file.  You
> can use git log --oneline to see what others have done.  It is not really
> possible to guess correctly.  However, one does not generally include the
> extension on a filename.
>

Yes, they have not used the filename in the subject line . So I'll change it to
the required format .

Thanks ,
Srishti

> julia
>
> On Thu, 7 Sep 2017, Srishti Sharma wrote:
>
>> Remove local variable inflight_counter, as it is never used.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>> Change in v4:
>>  -There is no longer a need to make the comment more comprehensible, as I
>>   have deleted the variable associated with it. The v3 of this patch was
>>   not based on the original patch, hence v4.
>>  drivers/staging/ccree/ssi_cipher.c | 3 ---
>>  1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
>> index 8d31a93..1ff3c8a 100644
>> --- a/drivers/staging/ccree/ssi_cipher.c
>> +++ b/drivers/staging/ccree/ssi_cipher.c
>> @@ -697,13 +697,10 @@ static int ssi_blkcipher_complete(struct device *dev,
>>                                 void __iomem *cc_base)
>>  {
>>       int completion_error = 0;
>> -     u32 inflight_counter;
>>       struct ablkcipher_request *req = (struct ablkcipher_request *)areq;
>>
>>       ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>>
>> -     /*Set the inflight couter value to local variable*/
>> -     inflight_counter =  ctx_p->drvdata->inflight_counter;
>>       /*Decrease the inflight counter*/
>>       if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
>>               ctx_p->drvdata->inflight_counter--;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504735553-13753-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

