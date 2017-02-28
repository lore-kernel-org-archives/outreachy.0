X-GM-THRID: 6391874178049376256
X-Received: by 10.25.17.102 with SMTP id g99mr461519lfi.6.1488310639855;
        Tue, 28 Feb 2017 11:37:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.92 with SMTP id r28ls215736ljd.11.gmail; Tue, 28 Feb
 2017 11:37:19 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr539415ljd.16.1488310639277;
        Tue, 28 Feb 2017 11:37:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x22e.google.com (mail-lf0-x22e.google.com. [2a00:1450:4010:c07::22e])
        by gmr-mx.google.com with ESMTPS id v201si170250wmv.3.2017.02.28.11.37.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:37:19 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) client-ip=2a00:1450:4010:c07::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22e.google.com with SMTP id k202so10059578lfe.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 11:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GgUHWpbbsFj98uQRL5CI/olTu3uurannE0XeL1+kcj8=;
        b=GQBcEgC8Cq1TH6xqawNhI8JP8uBeBGSpZhOPL8Zi7xqwT6YQkGyp4AGkO6Wz0Mzb4p
         MyKgjixrCdg+dGm9dPVscM9niIGA31G/zaTQ+HJXd1lebjpE9e68l3qf8fd5TRNeByy7
         0570VP/4KaOOWNtqoSnT2A7IHd1spA4ev/TKQwb1M4a0oR3sSYF73VH6MjS/CsXlDN0V
         lJQSoS+PGd/UpAvKlwe26+zzZjN+gegue64QBcduK7jPAHK+8MD1gxNNtrSe3O3oNZL8
         IeWhnAt4PcrWvjlPLR1Ta0WDe7cyEoOmuMb8UJG9jCoGzdSJOnYKNwBYeT0fZa0isGDG
         TGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GgUHWpbbsFj98uQRL5CI/olTu3uurannE0XeL1+kcj8=;
        b=CCxFPBkhEVPd92hx0aRKyfyMwO5HGqQUDqdCnQSzwQs7QblulOYdXAAly0svrp0YUG
         1tHit0nRRldlgu7chwoc0zBX1aO4PUemlIC8/Te/ZL+UKf8EcuD9FJk4usSxfSxMizmn
         zKwF0cgU/Y65ztyZoyRwdKBJWNGas7ZicuzWvhPFuP8npM2RMIvVYcZVAK4SVMuojc2O
         bucEsWu6I8y/DtJV4ILRcSh6VmH5AEVtbreijfN+gmhxUUasjFIQcljkiYm77P9JoOZb
         1AFMwGCBykMmvPjK8oEqqK+KP7rdhtcztVPAIv7WKu6vw5ar0hSlJbymp3oD085Kp5mu
         4eHA==
X-Gm-Message-State: AMke39nGT0e43Y10lIyZkLhYycuZOufA+qacofXnC0npFAaOcULvTZe9lwq/iIDNauqc31UNQAcLesI32oWxFQ==
X-Received: by 10.46.21.89 with SMTP id 25mr1432178ljv.19.1488310639048; Tue,
 28 Feb 2017 11:37:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Tue, 28 Feb 2017 11:37:18 -0800 (PST)
In-Reply-To: <6780baa6-178a-111a-b6fb-30917beaa9dc@metafoo.de>
References: <20170228185117.GA10378@singhal-Inspiron-5558> <885c0c37-3709-7b56-a9cf-69a34c735bae@kernel.org>
 <a7be45a3-12e3-2074-b58f-d30494ba5955@kernel.org> <CALrZqyNWFtPzorYN--eQHyhvaZqgR51xgqcwpio+ZM_vB+ccRw@mail.gmail.com>
 <6780baa6-178a-111a-b6fb-30917beaa9dc@metafoo.de>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 1 Mar 2017 01:07:18 +0530
Message-ID: <CALrZqyMXWEgR6seOHBgVL+cS7jPmPAGvyiWjFSrTmR5t9yhwtA@mail.gmail.com>
Subject: Re: [PATCH v2] staging: iio: accel: Move header file content to
 source file
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Michael.Hennerich@analog.com, knaack.h@gmx.de, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg KH <gregkh@linuxfoundation.org>, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 1, 2017 at 1:04 AM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 02/28/2017 08:32 PM, SIMRAN SINGHAL wrote:
>> On Wed, Mar 1, 2017 at 12:53 AM, Jonathan Cameron <jic23@kernel.org> wrote:
>>> On 28/02/17 19:17, Jonathan Cameron wrote:
>>>> On 28/02/17 18:51, simran singhal wrote:
>>>>> The contents of the header file are used only by this single
>>>>> source file. Move content into .c and remove .h.
>>>>>
>>>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>>> Applied to the togreg branch of iio.git and pushed out as testing
>>>> for the autobuilders to play with it.
>>>>
>>>> Thanks,
>>>>
>>>> Jonathan
>>>
>>> One quick note:
>>>
>>> The title should include the name of the driver being modified
>>> as this is probably the bit interested people are most likely
>>> to pick up on in a long list of patches.
>>>
>>> I fixed this up.  Thanks,
>>>
>>> Jonathan
>>
>> I have included the name of driver being modified.
>> Due to want me to include the name of file i.e adis16201_core.c
>
> Not the full filename, but the partnumber. E.g.
>
>         'staging: iio: adis16201: ...'
>

Lars-Peter, I got it.

Jonathan, I got my mistake should I send v3.

