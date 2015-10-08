X-GM-THRID: 6203360253861429248
X-Received: by 10.129.83.10 with SMTP id h10mr7613003ywb.6.1444332927917;
        Thu, 08 Oct 2015 12:35:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.85.233 with SMTP id k9ls483155obz.32.gmail; Thu, 08 Oct
 2015 12:35:27 -0700 (PDT)
X-Received: by 10.182.18.66 with SMTP id u2mr7241596obd.1.1444332927688;
        Thu, 08 Oct 2015 12:35:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x234.google.com (mail-qk0-x234.google.com. [2607:f8b0:400d:c09::234])
        by gmr-mx.google.com with ESMTPS id q133si3648061ywb.1.2015.10.08.12.35.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:35:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) client-ip=2607:f8b0:400d:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x234.google.com with SMTP id s79so23781038qka.0
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=iuu0x1Cbd62/GCLL1XAuZM4mOJpAsJcHIsqPQcKtkZc=;
        b=r2FaYUKC9+/OsCFtO3VeQAJljhyW/UNHaq0nLd3T3be+WKcQPetqiZ4S7YRAK2Cqsj
         4a3kBj+Fs9qKFxhvUT4gu4jb6X+/J2haUyyqVXczCgF4QvrfS7BQVZOYzPsPTO7mXwTy
         1LNR0dMeC1HUewKz081SJhT/kwDpkgScdaxE4G+Y/Vu9GBzbJb4KYPMRY9h89pjtMQMG
         LbgAH/Ce9Sr9DAxnpOm2fi8EubLMOGQif6GCUFLvcnTA7KQEbXCaQ5vl07wRnC+kxNcd
         vTWuWBrau8FuvLn8I7CZmkbt3clCNFg2qPiK/2p7B5cNPCz7F1KUdocC3KiSWNHHsbel
         oRxw==
MIME-Version: 1.0
X-Received: by 10.55.195.135 with SMTP id r7mr10984798qkl.4.1444332927514;
 Thu, 08 Oct 2015 12:35:27 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Thu, 8 Oct 2015 12:35:27 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510082133320.2165@localhost6.localdomain6>
References: <cover.1444332001.git.amitoj1606@gmail.com>
	<65d703974d96550d8802203b4243da28797ae8bf.1444332001.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1510082133320.2165@localhost6.localdomain6>
Date: Fri, 9 Oct 2015 01:05:27 +0530
Message-ID: <CA+5yK5EzXvbWeue4s3UadYgEBR3PhyVvbJ3uu0pYtWQrVRowfg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: sm750fb: Remove space
 after opening brace
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 1:03 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 9 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> Remove space after opening brace '{'. Problem found using
>> checkpatch.pl
>> CHECK: Blank lines aren't necessary after an open brace '{'
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/sm750fb/ddk750_chip.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
>> index ebc3242..6f05f78 100644
>> --- a/drivers/staging/sm750fb/ddk750_chip.c
>> +++ b/drivers/staging/sm750fb/ddk750_chip.c
>> @@ -238,7 +238,6 @@ unsigned int ddk750_getVMSize(void)
>>
>>  int ddk750_initHw(initchip_param_t *pInitParam)
>>  {
>> -
>>       unsigned int ulReg;
>>
>>  <<<<<<< HEAD
>
> Something went wrong here.
>

I just saw. This last line. HEAD. I'll look into this!

Thanks,

Amitoj

