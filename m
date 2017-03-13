X-GM-THRID: 6396343645329424384
X-Received: by 10.46.1.12 with SMTP id 12mr5661647ljb.30.1489409244026;
        Mon, 13 Mar 2017 05:47:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.87 with SMTP id 23ls1128617lju.52.gmail; Mon, 13 Mar
 2017 05:47:23 -0700 (PDT)
X-Received: by 10.25.216.154 with SMTP id r26mr4417108lfi.7.1489409243270;
        Mon, 13 Mar 2017 05:47:23 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id e72si691792wma.0.2017.03.13.05.47.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 05:47:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id r36so11770742lfi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 05:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jQw6x69L0OXWvOeC/jv2wAPLANvi407Dco9LfCbH09c=;
        b=DaolZIsmmJmriRMCHWfi2KupSriOPyTSKXG2+/jCfyXBXmuNRyQ11fwS1YzA0b6Hio
         gLnQEw858a2HqVu6cqQaZ1tfim57s4PAlOwGPTy2KZmfMhCji6HFmk1oeEn23QWicdGH
         41QHW1iy7pnGfRKOhJ/qqZobUOgTxahaWWQ9X1306cVqT40XjaF8+cNsUzKjA1CWdXZk
         E8GvtSQLTO9uKkL7lSaToFT7mxwtG9hwsAABHIjBRTDFv/LAZXxlUOCJrNqmtJdIQKgy
         0DHUd+VBnz/iaMRiT/kcJYTENflJEgEsZIWc2ph1LTTkB9W//Ze6rBF768iicYrPCqhG
         CFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jQw6x69L0OXWvOeC/jv2wAPLANvi407Dco9LfCbH09c=;
        b=iCUByP9XIuAtMK9KIVfO4IxoYnCFlNh/M4QQ6RR3ci31jItB0kd8bNpLOMRJ5AV4Xi
         auhEINOsyr110u8ZJn06Tjb+tipbXTNzRWjR9J4xkee1wRQjId30SpU0xnrEv0TC7c7d
         I4QBfm1UgCgV7dLAELQudUsi2pa52vg619sC/627mc+QvMnX0/U5hrBmfVqVBunoG73g
         st1EGeQ7gYBPMbDu1Pg0XRC2E5jrd0nCbcVw7mHDikme3CDZ6RHiv7W0H5nz1KfMgfM7
         7nlhA0L5xbRkG4hwfFMiYJuWe2yfw2S6irH7F2GMZowliDeNLmBmIl5OJbU+ie0fEwgU
         KaKA==
X-Gm-Message-State: AMke39kOupn0YfZKEf7IEVyS7LuzUpA99vpLmg4/3OVDBmip+DQhutMCDmgOhXAjG+RaY9dbuXxJG7pHt3iO6A==
X-Received: by 10.46.9.136 with SMTP id 130mr10168535ljj.87.1489409242796;
 Mon, 13 Mar 2017 05:47:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Mon, 13 Mar 2017 05:47:22 -0700 (PDT)
In-Reply-To: <20170313124144.GE4136@mwanda>
References: <20170311204001.GA13301@singhal-Inspiron-5558> <20170313124144.GE4136@mwanda>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Mon, 13 Mar 2017 18:17:22 +0530
Message-ID: <CALrZqyPRjhnpVswEDXqdiP=e+5Z5GKxUqomVXDExpa5thjGuPg@mail.gmail.com>
Subject: Re: [PATCH] staging: android: Replace strcpy with strlcpy
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, arve@android.com, riandrews@android.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 6:11 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Sun, Mar 12, 2017 at 02:10:01AM +0530, simran singhal wrote:
>> Replace strcpy with strlcpy as strcpy does not check for buffer
>> overflow.
>> This is found using Flawfinder.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/android/ashmem.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
>> index 7cbad0d..eb2f4ef 100644
>> --- a/drivers/staging/android/ashmem.c
>> +++ b/drivers/staging/android/ashmem.c
>> @@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
>>       if (unlikely(asma->file))
>>               ret = -EINVAL;
>>       else
>> -             strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
>> +             strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
>> +                     sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));
>                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> This isn't right.
>
> Also please do some analysis to see if it's a real bug or a false
> positive.  It is a false positive in this case.
>

Dan,
I have already sent v3 of this in which I have used:
sizeof(asma->name) - ASHMEM_NAME_PREFIX_LEN

Thanks!
Simran

> regards,
> dan carpenter
>

