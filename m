X-GM-THRID: 6476749325903855616
X-Received: by 10.107.180.72 with SMTP id d69mr10608405iof.50.1508271699450;
        Tue, 17 Oct 2017 13:21:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.13.195 with SMTP id 186ls413592itx.4.canary-gmail; Tue, 17
 Oct 2017 13:21:38 -0700 (PDT)
X-Received: by 10.36.112.71 with SMTP id f68mr3659238itc.16.1508271698658;
        Tue, 17 Oct 2017 13:21:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508271698; cv=none;
        d=google.com; s=arc-20160816;
        b=B49wf573BkyZZWt6BpnKGf+6uw7H8Z42HKKpaPV67DqPKblGCNu/5lomaC8B77HCdt
         QYCNjT61rvRP4YuNrzG8rxnPauSWzbMkgj+vQC3PdTqkY55pMd3PyXsAmrdWcRsb5Ryl
         Jv41aOhGN0wdiLYPKD00VBuuD7yfyiG6Xvo6S5PIBmR/cfBvBNWw+wP4AiII/UZACDE5
         4SjKD5C0Hz839yB1UxjnfxMkp4oHZsEdv8C6t7X3gYPoz1PFY7szPRz+dydMhf4mc+0R
         3xMj2n5OQAU+BDr+R8T7EBTjGP521+KLWBtVVu+ZIdJk2fIVnuO+FQ5OrMVJ5KF+C45o
         qqqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=CAEfDvSj+8vGYwZiQ2fnBjXkxuXcNEAUSmJ4ij1kKHA=;
        b=hmVM6zcgYqu7zkCBfBllr4I+c5MmdH+CU+HdN/GZQAi2qCskFkIVM1EMl7m8j+B0iI
         aZe9K6ZIpqmi3ESzQXKgPF6tJF/qM9eBBVQrnR77+rpRlSCC+wrt/1z3YsCj8z9JqaxS
         8b3p4AH5ZSCN12UPCvlMxSA6rv9uusXuDQVvQNR43UBu5sTmFg5uXB41qV/oc7ONBnt4
         2XluEzvRWUjylEAgR4oiV02ZLSaeW2FMHt2tXYRKl9hGQCNDffMsA/gcVp9/IDobZbws
         pV6RgcbSxGzOjOQ3xt1a9hJfJBjQmxZxm+BJoG8/fsYD2QejqZiGqTI/95fMaBVyqtBB
         zYpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k7dXdzr4;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id l10si5376ioc.2.2017.10.17.13.21.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 13:21:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k7dXdzr4;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id y23so3664885qkb.10
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CAEfDvSj+8vGYwZiQ2fnBjXkxuXcNEAUSmJ4ij1kKHA=;
        b=k7dXdzr4TCwtBPLtjBdq4T60//fTEm1p5zzbdnSBpBe9R5TqxAcs7SBYIr9l27Od+e
         8IhcItQUdOtiKs3KDzq7svIbpXa4lG4UhLQxDa37X1mr6CiY2UAgFFxoQSFbHclU9Qbn
         wmnRB0nuxj2jYbAARMRBFyHrdfteLSFmdD2esDbGNe35qULdVASnnyG9su6iSu1ZDj0v
         66DYHxcM5BCwtukOX7b+iRcwgkyKRwzFM4pHehkGxmpGs4BreQwfFB3eSF9vLR//70nZ
         qWjJCX8eOlXJfx3zizjei7JMDL9we5DWibbLIJYz33jE/TEOOo/6BjzlTKfB2ao9ptrC
         Y4hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CAEfDvSj+8vGYwZiQ2fnBjXkxuXcNEAUSmJ4ij1kKHA=;
        b=knvyGKUt283SSRFy4vleT6yY+BV3ykRM5Efu+AGiQVwpf6midm9Wv+Tw8jwo/ZBT7G
         ZXoAAGxjIrfmwqVn55QlXI6tufAIrWtul5ix1LzeMVIvaHY7W+DwCgzALAdC3MirMhAE
         Jl5jmOEVVcJZfjuvkWS/Fbofl0zDjIPBv6XiGUAOg2avFNY0acb12pb15GQF7Ucw0z5z
         zRjXMjA6US0xzzFZx38pcURwYeQBNBngDqdJC/W0Ah54L+fIu4WB1FNEngnu6QYKanKZ
         bR20uxRosIxY5NNaibkAAKSWfrvwRQeWRS2lJhd1gvTSuC24jgrOqxEwXs/PG5IFic0B
         5Kkw==
X-Gm-Message-State: AMCzsaWLPWg4qDtPpOE9ti7xDexx/Rdm7JXJt06CvZTCdUNkCtnklkfG
	B8Mq28vl1OYKYfQ9jH1mj0tXVjsp0I+NXj4GQ/Q=
X-Google-Smtp-Source: ABhQp+RWn15rFe5+G/Zbs2rWplnHC/7lArIEb1/R2bqviAyWtdr8NpaXlpkYgV7Ibb1jIqyRgj+cOAyXKMKEgp5cNlk=
X-Received: by 10.55.19.98 with SMTP id d95mr21276100qkh.123.1508271698328;
 Tue, 17 Oct 2017 13:21:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.20.119 with HTTP; Tue, 17 Oct 2017 13:21:37 -0700 (PDT)
In-Reply-To: <CAOw6vbJX-zfR0d=xR=gtxQ6on=Q94gcTS2_O+13kmPEOERW1hA@mail.gmail.com>
References: <cover.1507985001.git.georgiana.chelu93@gmail.com> <CAOw6vbJX-zfR0d=xR=gtxQ6on=Q94gcTS2_O+13kmPEOERW1hA@mail.gmail.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 17 Oct 2017 23:21:37 +0300
Message-ID: <CALta04wi08t8L_TLDRoD1UBZv5d7=wnOZagtPVGj-E-3Z6J4vg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Drivers: gpu: drm: Fix coccinelle
 and checkpatch issues
To: Sean Paul <seanpaul@chromium.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@lip6.fr>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"

On 16 October 2017 at 21:39, Sean Paul <seanpaul@chromium.org> wrote:
> On Sat, Oct 14, 2017 at 8:54 AM, Georgiana Chelu
> <georgiana.chelu93@gmail.com> wrote:
>> The first two patches fix coccinelle issues and the last patch fix
>> a checkpatch issue.
>>
>> First patch: The return value of kzalloc does not need a cast because
>> the assignment operator will take care of this.
>>
>> Second patch: The 'result' variable does not change its value until the
>> end of the function. Instead of using the variable, return its default value.
>>
>> Third patch: Placing the constant on the right side will make the code easier
>> to read, as most of the people read from right to left.
>>
>> Georgiana Chelu (3):
>>   Drivers: gpu: drm: Don't cast kzalloc() return value
>>   Drivers: gpu: drm: Remove useless variable
>>   Drivers: gpu: drm: Place the constant on the right side of the test
>>
>
> Hi Georgiana,
> Thank you for your patches.
>
> A couple things:
> - Please look at git log for the file(s) you're changing when choosing
> your subject prefix. In this instance, it should be
> "drm/amd/powerplay:"
> - Please cc dri-devel@lists.freedesktop.org on drm patches
> - Please post the cocci script or the path to it when submitting
> cocci-generated patches.
>
> I look forward to your v2!
>

Hi Sean,

Thank you for the review! I will resend the patches soon.


Georgiana

> Sean
>
>
>>  .../amd/powerplay/hwmgr/vega10_processpptables.c   | 35 ++++++++--------------
>>  1 file changed, 13 insertions(+), 22 deletions(-)
>>
>> --
>> 2.11.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1507985001.git.georgiana.chelu93%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.

