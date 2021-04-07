X-GM-THRID: 6946280249577439232
X-Received: by 2002:a05:6402:1777:: with SMTP id da23mr3306027edb.223.1617788786500;
        Wed, 07 Apr 2021 02:46:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:d9de:: with SMTP id qk30ls528150ejb.1.gmail; Wed, 07
 Apr 2021 02:46:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwOiflLHLH+IoIewzmTVTQDO0NODtN4Q/7P3m3Qxp4EJqDC/W+jfen9L5oMX4vYkavj3oAM
X-Received: by 2002:a17:906:cc49:: with SMTP id mm9mr2635109ejb.339.1617788785027;
        Wed, 07 Apr 2021 02:46:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617788785; cv=none;
        d=google.com; s=arc-20160816;
        b=tURVDBXlPXJ8dRtDK3hRtXUt4rPcoyRmTTcZLWgweQ5csclqN1/YqG7sel9NTsN1Ih
         K/4VSb7FEeimBS922tTfl7xyXFy/swPivaSZ17/XlnlpSWqAZS0P/OWsuAyoR9/L31j/
         Dmgvga7yhUnCOMFFzYFPVMDXjql9gBjL4VV5hVJeAvnJLjz9GtbmQG8ZY6wwNmwTsV4J
         tb0dwow+JHn1lDBhDSNDnkdhZFG7MV3u2CRNGnVTP9FHW4LpkfJpNBQu2RnxuZwCcxrw
         W5nI+sohmQf8WWZ2YEVroOrWlkwLgRl3Ixw603NWrNh7+wx2YeQmjqwnpO14xTCkjM/d
         fabw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gtSTu4ozECxUjEi0hKFQnozmLfj1cbDOGz3NG1Yhu3c=;
        b=YziY6+ehAl5lJutviWPRtttg2E8eRjSSGDutOtm+ZZ1ROYmKH65P3RiVWb9JOPoKwq
         XMu3HqzZW8qQXskp72XZvw1l4Njd+5NDKoBevPVNRzw2IK81DspD6RkZmB6eOSRReoI2
         RBOlxXwuCMvddUq8elNLHCyjZtuZEPahpap/MrMUoQxAdFR2tUtgDBPAOzRGDOGzBkuz
         gYVcnkd1xZZ07x9W0b447EtoH9CavQR/Y1IHeV1h0SDBn8pGYf/KbY18YYrKiM3DkvvS
         gT60YRK6ynZFIpLAhFL/dqtCUsIjEk+zr+65sMSk1hDfCKcOZ8LgfDlKfxuPGLNqNQcP
         fqJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqZgo5sr;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id m18si2335312edd.5.2021.04.07.02.46.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 02:46:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqZgo5sr;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x335.google.com with SMTP id w203-20020a1c49d40000b029010c706d0642so2243591wma.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 02:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=gtSTu4ozECxUjEi0hKFQnozmLfj1cbDOGz3NG1Yhu3c=;
        b=UqZgo5srz7oGoMxxgJ10mhX7JsO0z0SVItepKoCMYAQZUhY27Yn5ezBBWj8D/9kbfQ
         pvcsWNLEKza4owVAznW0kVeLGbt2za/N45X1EZATFwCnqfnVXGqeZoPNsehU69enpEUt
         sVYVmZuVnXpIIITcdDAbVLp/I3HOAb+TLb6tkvkWV8XNmiYR/H750GZAQxmOFIurbU8i
         0pl2Oz5V8lUJWfDgpgzCY74GtxL3D3ctj1EcpXdlW0Hp97rVK/vpaweS2o6GUu+4y2TX
         JUVNrXppAA6W2BmA5FyIrS1hVPBVF1zKaZdjUGcp+Zgbsjsk8ReRByPTfxOvuabO5pe3
         vpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=gtSTu4ozECxUjEi0hKFQnozmLfj1cbDOGz3NG1Yhu3c=;
        b=msCSWkne57KsG7zKNkax2svtYBlgCEkkHZ0oq1CTRL0CFuKDGvqW7/BXh6Iwm+q9Pb
         moTAoJSr2QRoEtDyatphNo9Ls93PhYhO7ImyGddbk0PQqkWDt8fehlgIG7L9CaA++qNE
         n209Dv2oeR5NOPDlsHH6l706T/9sy6i/37+PK2/VurFFdf3TXCD3IJYIExohmu47QVxZ
         +jfqo0t9kqO0glPk7nWJlzxtYZz6ZEzchsPt6hphDNX6kFpu5FqD1krn6BMKEI1Y+zly
         LfYm8uFcPntKWPPPOcieVjIdTMQD7JRm/ewuOgz8xwVPK0fcmkKx/Hsx8z2CJuYo1b4u
         Fu2g==
X-Gm-Message-State: AOAM531TPLPsc7Ce3h7E1bcXN8S/8LpE2nP+1H9itL0L0iHDyo4KW6va
	WlEzeReguYr4DPgVjyOz9fqqqUE23T+C8w==
X-Received: by 2002:a1c:a3c1:: with SMTP id m184mr2302414wme.64.1617788784569;
        Wed, 07 Apr 2021 02:46:24 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id r5sm1719060wrx.87.2021.04.07.02.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 02:46:24 -0700 (PDT)
Subject: Re: [RESEND PATCH] staging: emxx_udc: Ending line with argument
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
 <YGy4LXHBrBb/r3dk@kroah.com> <4c7df741-4e73-2ac4-f0d8-c9513ae29c88@gmail.com>
 <YG1FI38zNbidjt9q@kroah.com> <4d7ebe9c-8ebc-2fc9-10ed-6756ab42d5d7@gmail.com>
 <YG1usolTNEOfDqXh@kroah.com>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <e7a18709-0b26-751e-6ba4-b43dd89c203f@gmail.com>
Date: Wed, 7 Apr 2021 10:46:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YG1usolTNEOfDqXh@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


Em 07/04/21 09:34, Greg KH escreveu:
> On Wed, Apr 07, 2021 at 09:16:44AM +0100, Beatriz Martins de Carvalho wrote:
>> Em 07/04/21 06:37, Greg KH escreveu:
>>> On Tue, Apr 06, 2021 at 09:00:07PM +0100, Beatriz Martins de Carvalho wrote:
>>>> Em 06/04/21 20:36, Greg KH escreveu:
>>>>> On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
>>>>>> Cleans up check of "Lines should not end with a '('"
>>>>>> with argument present in next line in file emxx_udc.c
>>>>>>
>>>>>> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
>>>>>> ---
>>>>>>     drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
>>>>>>     1 file changed, 4 insertions(+), 7 deletions(-)
>>>>> Why is this a [RESEND] ?
>>>>>
>>>>> What happened to the first version?
>>>> Sorry, I didn't receive your review, and in kernelnewbies tutorial, they say
>>>> if not receive a response, may have missed the patch, so I resent it.
>>> Do you have a pointer to your previous patch in the lore.kernel.org
>>> archives anywhere?  I can't seem to find it.
>>
>> I found this, it's what is you need?
>>
>> https://lore.kernel.org/linux-staging/20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com/
> Ah, yes, I saw Julia's review and assumed you would fix up your patch
> based on her comments.  Please do not ignore review comments, it makes
> everyone's lives harder.
Sorry, I didn't fix up my patch based on her comments, because to do 
this was
to revert all my patch or will break a code line if I remaining within 80
characters. How the code line still stays between 85 or 90 I assumed 
that was
ok, so I was waiting for your review. Now I saw that I should send this 
answer
to her. What should I do with the patch?

Thank you for all reviews, I'm learning a lot about how to do a good
contribution and the importance of answer all reviews.
> thanks,
>
> greg k-h
Beatriz Carvalho

