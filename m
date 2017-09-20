X-GM-THRID: 6467836648401928192
X-Received: by 10.202.75.140 with SMTP id y134mr2419640oia.53.1505912442097;
        Wed, 20 Sep 2017 06:00:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.97.15 with SMTP id v15ls485553iob.5.gmail; Wed, 20 Sep
 2017 06:00:39 -0700 (PDT)
X-Received: by 10.36.227.10 with SMTP id d10mr1082807ith.4.1505912439228;
        Wed, 20 Sep 2017 06:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505912439; cv=none;
        d=google.com; s=arc-20160816;
        b=ORIajkZFmWXgbj4tb+t+IjuHbRGuzm0h1vsK3VT+BPGtxnoun7nvkblHhkVMiRTtaM
         aI6EKho7qe9YpxPpnHZBWMrmyFU6XBG1dMJOM9C77xBk4oWvRfkWrnudaGtCcJl3V9zs
         07RR8EV+/RemR5V2NuOAg5iFM/UkphaKdkcv1i4anJYzVW/Mw445rBwGQ0kT1c4udpRR
         rO6tvStJJTku4IZQ0iKNljmnAyoC/GGqpAaSZlmVOs8YDy5D+FtczvgvsVg/XNQmnOXW
         KYN6mdKk9rCGwDSOphcYMQp9mbNrykskq/oGXFZRqWMCug+fmeZg5El1kS0XOv+u3I4/
         BYaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=+ShunUdqoPMk2AOre5rY5z/l78HdPCXAgoW+oBvHZSE=;
        b=cjrSfFmFGwlDcG9nFwA/FwY2PQA4bmf9qjupgp5JnVoJlUMnzNpsXWZ62qzwmj3pTh
         1kZWsmSSXAXg7pvGBHj6kaATWQLB75PDloxhlB1VZggTAZioPBdGqQg4oXA3LqOYUtX9
         +T75GYPN/GDFUjnyLScEEfOpulO+/BnFrhsQQVW0CnSkN/bGCJKjeimz0DWcEAb39U3+
         a5kbwyOld2CenknzTZPsCg2sb/LIDL9h3PIyvWBZfUYqRjEeKDYrUPVEyRtf9R5RR5r/
         8CYAs1msGITGvIZUdCrhQqC6vIxhSfmQh6olbxMeHsWj3m5ccOA0vfKGKxnfepJylCEs
         ITYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQKl00y8;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id p62si86214ywc.5.2017.09.20.06.00.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 06:00:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQKl00y8;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id b1so1679140qtc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 06:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+ShunUdqoPMk2AOre5rY5z/l78HdPCXAgoW+oBvHZSE=;
        b=YQKl00y8yAQtBqcw8Om6FgRpqKs+yB1Faw0dKgi+8wRRc5kPOdXpcPih1HYoOAaktK
         xi+BkrI/rv98tA37MNPD+vA9KTNXjUEgakgq0uj9lDPQios0omJ/94qCRH+i4AHJLGRT
         EIquN7v/UMNmCoS1G8nF74K/Fp8t9jrWWJTmyhQ03e62LGbVIs31SzRi8dL+2Cqo0Zow
         zu2F76YPHYH3+AsVbQA13EypBkzljoqls80a+476sdgjIVeuK9NyMUa35gAVrUjqW7BM
         JbzH5ECZ8mYQnjiH8R1cAz/8LYLsk+KX71Hn3HGoHWEpK/X7KNv94EfdjzVWcEde46sT
         AUlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+ShunUdqoPMk2AOre5rY5z/l78HdPCXAgoW+oBvHZSE=;
        b=jGbqqTIi9O3irs04oiJJTAvSMzitzOcLKztHj387yrEpIkINN+qKHLCdyXdyiVX91j
         fNEZrl/iLkW3tXnobWZq/Au4CbvSq/irRQhDG/BifRJ5c+tcJCPDUBOi8vINXqRjF1FR
         Dund+0TD2Y0ggZmRdJIswZ2rjvqvaPRJwtGgoYM2sXJxqNyhaQ7ipEHaHE2MxT+XjWVn
         YQnOvrF8N7MJun+uxlehiBA38su1d+E1bFcVfAlNXuhsk9zwdtL7QMApBLMT87faotNn
         ZrdiUxTzLwTCMm6DlTX7YvlYusAlPm8t+MPW7b9Tt17Ow2C+gqaUCxADsI2RZ29Lguxl
         Eo3Q==
X-Gm-Message-State: AHPjjUj3/GbmNY+0sjdS7GuU0xlRqgd9b/3Bci0aUsD7dzBPg3KQvQt3
	8vhYmJAvL+ebFY7bIwfzsAuxmFgirFe7YYlfR+0ywYkX
X-Google-Smtp-Source: AOwi7QCtSMfvxiM8Rac+mYvddLga6jeTwDg7LwGA1LowottoLMnL6AhZf2Sb1kvtWGVdbVZJ0JOwSTcBuQyUxlxyW5Y=
X-Received: by 10.200.4.169 with SMTP id s41mr6900866qtg.132.1505912437829;
 Wed, 20 Sep 2017 06:00:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Wed, 20 Sep 2017 06:00:36 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709201444450.3290@hadrien>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com> <alpine.DEB.2.20.1709201444450.3290@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Wed, 20 Sep 2017 16:00:36 +0300
Message-ID: <CALta04wZGH2g6ANabq__rrZJUvJqq-UE1+M9M6HVWT8pmm1Bzw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Staging: media: atomisp: Fix style issues
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 20 September 2017 at 15:45, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 20 Sep 2017, Georgiana Chelu wrote:
>
>> This patchset fix coding style issues found by checkpatch.pl.
>
> Did you send these before?  They look failiar, but they don't seem to have
> been applied either.
>
> julia

Yes, these changes were sent as a single patch.

Greg advised me to break it down because there
were too many different fixes for a single patch.
So, we agreed to resend it as a patch set.


Thank you,
Georgiana

>
>>
>> Georgiana Chelu (4):
>>   Staging: media: atomisp: Use unsigned int instead of unsigned
>>   Staging: media: atomisp: Add blank line after declarations
>>   Staging: media: atomisp: pci: Move open brace '{' on the next line
>>   Staging: media: atomisp: pci: Place constant on the right side in
>>     comparissons
>>
>>  .../atomisp/pci/atomisp2/atomisp_compat_css20.c    | 27 +++++++++++++++-------
>>  1 file changed, 19 insertions(+), 8 deletions(-)
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505909511.git.georgiana.chelu93%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

