X-GM-THRID: 6396343645329424384
X-Received: by 10.25.156.74 with SMTP id f71mr3753487lfe.26.1489267844679;
        Sat, 11 Mar 2017 13:30:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.220 with SMTP id 89ls188714lfw.5.gmail; Sat, 11 Mar 2017
 13:30:44 -0800 (PST)
X-Received: by 10.46.20.74 with SMTP id 10mr3419272lju.0.1489267844172;
        Sat, 11 Mar 2017 13:30:44 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id b186si296693wme.1.2017.03.11.13.30.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 13:30:44 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id v2so9253899lfi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 13:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=V/+wiNl4iTNeUT1stfpgosDLCB2HzKne3zLavNZDV3c=;
        b=JyPCMlZ7sqnPn7ijM/vzfzsoIWsS6cEeRlXrT4y3rhil2ApuUe1m7sXiWHLXyCB8ns
         3miygg04VGZsUgdd6yBYFzVdRBlKYZIVAOrITTjdo+sWVT5tmzk3lNMFcBcLbN42aVrb
         zjV23XwOPIpm5udLFnzHCLKD2O/7vW39/tEPIaxGndoU1E3a19zrviN+YblYFZj12psh
         lkx+JODhBYrGJdCPR3kSdBb2j6ajoAw5WFbCkk9ayWGuczxSUWzdRRaMZYmC8L5xXWsT
         EnATsnu4mEkQ78kmxs8sQ748/SDPYTitalky3NkNio53L4f8i6jLS0XItvc+O7XI45Pf
         +L1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=V/+wiNl4iTNeUT1stfpgosDLCB2HzKne3zLavNZDV3c=;
        b=nqpCZ9vNZbB8n6KN8NZKog8qp+2u2qeXcxWwBifHHh1tfrlmouWWgUojEt2NZ+mVV0
         FiuF6YwdYAImYa2OXjNskv3l1xSvtBT5zoY3NA/hY3ldshGrXnvhILVyPT8CX8LUG+7I
         6nVYYN16uDzKYVGlYO2+w/5BlrEWhdg6mH8Nxh00pAle9YGcIL0liD3TzNus6sE0g/5+
         ZFF5AVi1HidRJA/JJtaJRdL2d7OnaDIX90fUlt39TY4hR95IGlQAi64D1eYSncl1/W+A
         InOvqhCZudsctie3E0uU6BsSjSwqS/XljQ4Qsm+wRlo2UZART3Ws8jrzH1xJO+BBiJt8
         dR6w==
X-Gm-Message-State: AMke39lenw05VEVrzRP9pqTnGaoRQacHegqXzTiBC6OetxYB/odRkEUsOM6CgjY43PST+5bFl/p/crF5jtPr/A==
X-Received: by 10.25.38.83 with SMTP id m80mr6553521lfm.166.1489267843643;
 Sat, 11 Mar 2017 13:30:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sat, 11 Mar 2017 13:30:43 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703112221270.2270@hadrien>
References: <20170311211725.GA12884@singhal-Inspiron-5558> <alpine.DEB.2.20.1703112221270.2270@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 12 Mar 2017 03:00:43 +0530
Message-ID: <CALrZqyPw8rU8RuoAT83rxjVGdckvuS7F1gqVXDcerQ0kXEM30g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: android: Replace strcpy
 with strlcpy
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, arve@android.com, riandrews@android.com, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 2:53 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 12 Mar 2017, simran singhal wrote:
>
>> Replace strcpy with strlcpy as strcpy does not check for buffer
>> overflow.
>> This is found using Flawfinder.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>
>>  v2:
>>    -Correcting the place of the parenthesis
>>
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
>
> This appears to be the old patch.
>
> Actually, looking closer, I don't think this is right at all.  There seems
> to be a goal of leaving some space at the beginning of asma->name.  So the
> amount of space available for local_name would be computed using a
> subtraction, not an addition.
>
Julia, By mistake I sent the wrong patch.
And I am not getting you want to mention which space.

> julia
>
>>
>>       mutex_unlock(&ashmem_mutex);
>>       return ret;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170311211725.GA12884%40singhal-Inspiron-5558.
>> For more options, visit https://groups.google.com/d/optout.
>>

