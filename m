X-GM-THRID: 6467514574021066752
X-Received: by 10.55.132.66 with SMTP id g63mr793360qkd.23.1505835795329;
        Tue, 19 Sep 2017 08:43:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.104.6 with SMTP id d6ls3462740ioc.4.gmail; Tue, 19 Sep
 2017 08:43:14 -0700 (PDT)
X-Received: by 10.237.59.154 with SMTP id r26mr816702qte.56.1505835794752;
        Tue, 19 Sep 2017 08:43:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835794; cv=none;
        d=google.com; s=arc-20160816;
        b=JoCEfEbYRsqPwndqWMLHeWGh0NGTkDUXgD27ODaMCCvjNni67lk+CQJIvB/YuFHlWE
         4ir0eFKccGEOiW/Ux0B/PC0GBL9+qMYBjrzKv2byZikiZw5aLa1yVW5VTU5t7x2e5mMW
         +J+/XobKanjQTVo40c03oZH3PolfTes+esFvNsDv/B+O4xGgmGPkhkaiK4fjp+oHVtw4
         rSk2o60kJoa2P6hwkv+66gj5NLBlCTWoLehw0VLdlc7gZUHHrSRtQ/R/yBrqGbOThorq
         ycqN13ObMYO1uVrxLjln8V+OTqLmhG7I02xbWLB/rkgLEoWhCvblfppp+m9IoZ3u879/
         mOuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=zrZ4Gdp4g2gZ2KPtG4DQ0UZtE/+1t+iccZu4sQxbnPA=;
        b=gnt6f/tnQr1tBK852Fs+lGZaNURJD4VZ5EcAvt5NvMVkyNPrN0CIeFQZazevSeNh1l
         8Ty8ChtCtW1u8Al9FaO8UlkYD0/SrcvEys3L+TAg26ju3nwMFsi/bM8ShAqdXVSIJoup
         6AQJm6Fn+5qOGN7NdfZws0l9uF/EHApjgfQ3qpLrdKnQ5j9RQmSXc40IdUT1KpLTzEVC
         wYkV67GuIndF+441HcUdcuxeHjztkdSEMkGFrxj+ZEOUHAOG48E4mA5rQsQ9hAS+PDM+
         SU29+VVmuw0cQrxkFNi4L9X+ZdG4Pqz8H3zAVQMIamLQAiCsx6CE+psqNxHhIAY/shEF
         Dbyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JUIsD9bt;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id w187si472171vkb.4.2017.09.19.08.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:43:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JUIsD9bt;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id j189so9141vka.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zrZ4Gdp4g2gZ2KPtG4DQ0UZtE/+1t+iccZu4sQxbnPA=;
        b=JUIsD9bt3hEcLi9owbc1IL3RU5fyPozu5LqHAun47V6y4tGtLlYPg8vB6Qj9K6X5eI
         QfIhjTa3xCEGadYGYZdcI8oRWlT/u/6SzgButY6WNl6R74E3+gktCT+Q+TNVUbfPTup3
         klPztTdf1hr9uJtep1l49jxqinvRdym8f3uOoJomGXSGZCoVo3118r5h5aux/La1OnQb
         3dtdW0+ACEY5+cbGSpqjfycMP4MuKJ4Bn1bvFRBNoUE5hHIEvva09vMatYyiH2vMD47F
         awTTJNbKjHRrM2fxKkcDAQEZ5paUD6Oja/J9HzseTmMsXcGG1TCjYILyoWJt5s3/KQ1w
         fKig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zrZ4Gdp4g2gZ2KPtG4DQ0UZtE/+1t+iccZu4sQxbnPA=;
        b=jHwrarLPdvSzCY8pIvtRdno7HLAw/LupQr015PYoOFPFiVoPh0IOfNOwMNhZKhq6Vs
         wOlP8MSWyC9Fa5snlJwSL0Cg0oVnngKPf8aKmBe1veWZUtarvy9aEJkbb+64Dk5d0HNG
         tC1nuyu5UH2/kC+UR2ZJIIDdAfZzYGCHEHdpRHERIJB9gW9lSQ3ctAnqLuiT1I7KTSMn
         R5MYZ9m7WkWVvfJFeSMoA8cq2G+QTRxY74jPYjQLfjIFL7WGWWdCHfDLdQxxGwg0Rghg
         Di25KI3a3EyUSQQ0CgW9IkyPLY2DxpprV/yjPaJUw37T5Oy3F7dPs/N4qcT+JYOoTBYr
         oXIA==
X-Gm-Message-State: AHPjjUjyYDZLDNUKCeHqHK+Podkl6Lm+T27k08iQ6NbfSsEHy0gB4p43
	TUQKNoa0RyCy4ahWy/XJjfT8JQkxTOqmHJJdwio=
X-Google-Smtp-Source: AOwi7QCy3XqSZ1SSmnmtpJpIy0EdTfYWaIX80HOdVp2ZjdmSJwyjWN/r+Iq5F0IyZK+BoJRUkr6BNewjkWF8fm93mXs=
X-Received: by 10.31.140.6 with SMTP id o6mr1473568vkd.182.1505835794362; Tue,
 19 Sep 2017 08:43:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.2.149 with HTTP; Tue, 19 Sep 2017 08:43:13 -0700 (PDT)
In-Reply-To: <20170919154056.nsvmwgnscupdqr4u@var.youpi.perso.aquilenet.fr>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com> <20170919154056.nsvmwgnscupdqr4u@var.youpi.perso.aquilenet.fr>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Tue, 19 Sep 2017 21:13:13 +0530
Message-ID: <CAHXiS5-B8Q+n2R973ebY5KiMqBAqY1pDmREt9nZvgmeDEh_AxQ@mail.gmail.com>
Subject: Re: [PATCH 00/12] staging: lustre: fix code styling issues and remove
 macros without users
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
	Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Apologies for this error.
Please ignore this patchset.
Aastha

On Tue, Sep 19, 2017 at 9:10 PM, Samuel Thibault
<samuel.thibault@ens-lyon.org> wrote:
> Hello,
>
> It seems the recipients of your mail are not appropriate: we develop the
> speakup driver, not the lustre driver.
>
> Samuel
>
> Aastha Gupta, on mar. 19 sept. 2017 21:09:12 +0530, wrote:
>> These patches fix:
>> - multi line comment styling
>> - line over 80 characters
>> - macro definitions warnings by checkpatch.pl
>> - drops macros without any users
>> - Comparisons should place the constant on the right side
>>
>> This patch series includes all the patches I sent for this driver to
>> show the correct order.
>>
>> Aastha Gupta (12):
>>   staging: lustre: fix incorrect multi-line comment style
>>   staging: lustre: fix comparisons should place the constant on the
>>     right side
>>   staging: lustre: fix macro definitions warnings
>>   staging: lustre: drop macro that has no uses
>>   staging: lustre: put trailing */ on separate line
>>   staging: lustre: fid: fix line over 80 characters
>>   staging: lustre: fld: fix line over 80 characters
>>   staging: lustre: ldlm: fix lines over 80 characters in ldlm files
>>   staging: lustre: llite: fix lines over 80 characters in llite files
>>   staging: lustre: llite: fix identation in dir
>>   staging: lustre: lllite: fix multi line comments alignment in file
>>   staging: lustre: llite: fix multi line comments style
>>
>>  drivers/staging/lustre/lustre/fid/fid_request.c    |  3 +-
>>  drivers/staging/lustre/lustre/fld/fld_request.c    |  3 +-
>>  drivers/staging/lustre/lustre/include/lu_object.h  | 18 ++++----
>>  .../lustre/lustre/include/lustre_dlm_flags.h       |  6 ++-
>>  .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++--------
>>  drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
>>  drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++-
>>  drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 +-
>>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++-----
>>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++-
>>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++-
>>  drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++-------
>>  drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
>>  drivers/staging/lustre/lustre/llite/dcache.c       |  9 ++--
>>  drivers/staging/lustre/lustre/llite/dir.c          | 24 ++++++----
>>  drivers/staging/lustre/lustre/llite/file.c         | 16 ++++---
>>  .../staging/lustre/lustre/llite/llite_internal.h   | 25 +++++++----
>>  drivers/staging/lustre/lustre/llite/llite_lib.c    | 45 ++++++++++++-------
>>  drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 +-
>>  drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 +-
>>  drivers/staging/lustre/lustre/llite/namei.c        | 24 ++++++----
>>  drivers/staging/lustre/lustre/llite/rw.c           | 15 ++++---
>>  drivers/staging/lustre/lustre/llite/rw26.c         |  3 +-
>>  drivers/staging/lustre/lustre/llite/statahead.c    | 18 +++++---
>>  drivers/staging/lustre/lustre/llite/super25.c      |  3 +-
>>  drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 +-
>>  26 files changed, 242 insertions(+), 132 deletions(-)
>>
>> --
>> 2.7.4
>>
>
> --
> Samuel
> How do I type "for i in *.dvi do xdvi i done" in a GUI?
> (Discussion in comp.os.linux.misc on the intuitiveness of interfaces.)

