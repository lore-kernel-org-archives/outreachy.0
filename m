X-GM-THRID: 6393330913423392768
X-Received: by 10.25.234.202 with SMTP id y71mr1062112lfi.2.1488643404237;
        Sat, 04 Mar 2017 08:03:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.129 with SMTP id q123ls1150993ljb.23.gmail; Sat, 04 Mar
 2017 08:03:23 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr1024916lfi.6.1488643403238;
        Sat, 04 Mar 2017 08:03:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x232.google.com (mail-lf0-x232.google.com. [2a00:1450:4010:c07::232])
        by gmr-mx.google.com with ESMTPS id b186si615722wme.1.2017.03.04.08.03.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:03:23 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) client-ip=2a00:1450:4010:c07::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x232.google.com with SMTP id j90so21191607lfk.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qK6k/gZKLCX/7NKbINpeE3cdXgfwQJmOfg2VZbCZGeQ=;
        b=SdnrTMnFeDrchoK2mau0qqSEqRsvsLZCD6HXgm1/MlyOzJl5aF7BuFGtCJU8xMfYid
         BCH9AQPXrAPhffRooXg5aEscIdFUWQs1kHOySS++eetVTRhWmz7mNiAMZfXQoUXNmFV6
         Zd0sei4J/5CbZkgGgpIDUfsYancm6Qd0nfysbcG8nA5wH3Eh6YFi872Li7qznhb08Pim
         Pob4cear0pA5ViHRXl+69TzRtBbvci4pcomi4fdLf2osGFeGKJGmVD7iDdZ2Kfy0JsDj
         frooxD+Xndt94SUrnDe5NIQZYLF4TJcTeU7ANmEqwbL6fr+GXClW/olPEOxMdjqjn7qz
         62Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qK6k/gZKLCX/7NKbINpeE3cdXgfwQJmOfg2VZbCZGeQ=;
        b=TMTAl6zo2oV9RffamyNcWR7xXd6sqmqe12isqUtLghZ562x+j+kv4GQIfXwnsHOQJu
         X3m+NLIi4vxI0P+fcDtofBEpbGHYJJR1lxuHvARaxiXlq8iROJMoxLJF5lMGLYk9lwsQ
         SKse62mkh5jKcFZRZnwt5wRmLhzeUbe1v0Uo80nPmKX6I79DrrHIatEDRmoSW88Czjkn
         ETlb6uthoREY8/earMGP1ejh/+5J7RvwXR16ZETfP8RA/7GmajHbVvfVW4F2SXhJIv+a
         wf7HWNT4kOZ5B32Jt+thg4p70FE2TmOCXtVhonA5TW9+45gdzgYlBvb62LDZxEKny3We
         JaCw==
X-Gm-Message-State: AMke39ljrqLX/Gx3d0MJnqZ449xiy7YMs2OXhCVKaPcmtRN5Pm6cqcua/YGUMX/3cXfQOar/vGxVLnc15UT2mw==
X-Received: by 10.25.233.201 with SMTP id j70mr79040lfk.20.1488643402953; Sat,
 04 Mar 2017 08:03:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sat, 4 Mar 2017 08:03:22 -0800 (PST)
In-Reply-To: <1488642734.2179.51.camel@perches.com>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com> <1488642734.2179.51.camel@perches.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sat, 4 Mar 2017 21:33:22 +0530
Message-ID: <CALrZqyN=tfHk5g=6cf9O6xHdbhVzbAEA3b5+YczeCYf0A-WbTw@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Remove unnecessary cast on void pointer
To: Joe Perches <joe@perches.com>
Cc: Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	oleg.drokin@intel.com, marvin24@gmx.de, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 4, 2017 at 9:22 PM, Joe Perches <joe@perches.com> wrote:
> On Sat, 2017-03-04 at 21:00 +0530, simran singhal wrote:
>> This patch-series removes unnecessary cast on void pointer in various
>> drivers.
>
> Much better, thanks.
>
> Trivia: (and it's probably not necessary to resend)
>
> The cover letter should describe the subsystem being
> changed or ideally something like "treewide" if the
> series touches files throughout the kernel sources.
>
> So this cover letter ideally would have a subject like:
>
> Subject: [PATCH v5 0/5] staging: Remove unnecessary casts of void pointer
>
>> v5:
>>   -Fixed compliation warning in lustre/lustre/llite/range_lock.c
>>    which remain unfixed in v3.
>> v4:
>>   -change the cover-letter subject
>> v3:
>>   -Fixed compilation warning in lustre/lustre/llite/range_lock.c
>>
>> simran singhal (5):
>>   staging: nvec: Remove unnecessary cast on void pointer
>>   staging: lustre: Remove unnecessary cast on void pointer
>>   staging: lustre: lustre: Remove unnecessary cast on void pointer
>>   staging: rts5208: Remove unnecessary cast on void pointer
>>   staging: rtl8712: Remove unnecessary cast on void pointer
>
> Some of these are acting on multiple instances.
>
> Please try to use plural and singular descriptions
> where appropriate.
>
Thanks Joe,
Will keep this in mind from next time.

>>  drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
>>  drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
>>  drivers/staging/nvec/nvec_kbd.c                  |  2 +-
>>  drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
>>  drivers/staging/rts5208/rtsx_transport.c         |  3 +--
>>  5 files changed, 10 insertions(+), 12 deletions(-)
>

