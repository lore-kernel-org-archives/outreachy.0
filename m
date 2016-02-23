X-GM-THRID: 6254501970986401792
X-Received: by 10.98.43.132 with SMTP id r126mr32477965pfr.5.1456245554230;
        Tue, 23 Feb 2016 08:39:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.136 with SMTP id b8ls2325083qgb.96.gmail; Tue, 23 Feb
 2016 08:39:12 -0800 (PST)
X-Received: by 10.140.41.69 with SMTP id y63mr5011186qgy.26.1456245552513;
        Tue, 23 Feb 2016 08:39:12 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id g136si1721270ywb.5.2016.02.23.08.39.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 08:39:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id s5so70100164qkd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 08:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ZmTL1TiFNz7LMqDU9c5E+mRMDbGXZMlrgIzsiZDC9BI=;
        b=QDqQuL0vRcf+eS9xiEtEO8P90YAW9Vahp0HIe3yFqFYuM+gXDt041uIgj/rRexbvK2
         krbUwDVev0G123mna+9mekWoHDmO2a1GVIEv+iY5spYeq7sbERNDf7c0plA9L9jNCjX4
         2TaN3fcovuAgD4HJNdZ0rmY4WZHRxhA5J7o4Yu5OtEWwGzpfY968E6JOto/DuuMcmMb2
         JlytBpBH6YXiaZomJWBpPrqzdCdRon3SBm6rdTkG6y+DS3GphqaFwP9PlgjsfLDJNAcM
         WaMWLlxxsnvHmIgWN4jjIQXaJC91E4idFn3cZMvdDG4pCPPadgzVt68pqegWbrOy8cVG
         F3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=ZmTL1TiFNz7LMqDU9c5E+mRMDbGXZMlrgIzsiZDC9BI=;
        b=BU0LraY9FeVKUPTbVr1HPzzlTuioDVYoyMq86t4+Ulv4LxOVWOOs0U9b2CZ+3WxeUs
         bUgR+K1dYI8e3YVScdhYB7xM4ZZ2oQ+z4bL2vsCesZ44zJQddBwiqNDrmKv5WYGR75wH
         MhnMpFLskLwZLe7R2uzj1QQQa/x8QTpT/HPOjXBm5CdMkdCAdrRsfL8gIChNfp78JAxP
         gZFv50cWgpEmOywsbWx82ahRu35HCg6/qeUXYeJbW1io4mfDSo5nYFonwdpqyS7ZhLy9
         6Sj/MNMr+6KxFsn9KjBMNvPs73Q8MvERkcV1MkeLbzakHmZwSpYjhB4tVFea2L03jY92
         IgQQ==
X-Gm-Message-State: AG10YOQmeaTlQEd5QUg8DhdqNNu7Wu87HZqaZPT9O7WK9Q0/JKAGArSBRzsEQkBUNvfeg8tJkemXIHv1I4HjIQ==
MIME-Version: 1.0
X-Received: by 10.55.71.143 with SMTP id u137mr42893384qka.1.1456245552336;
 Tue, 23 Feb 2016 08:39:12 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 08:39:12 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602231644340.2040@localhost6.localdomain6>
References: <20160223150151.GA11902@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602231644340.2040@localhost6.localdomain6>
Date: Tue, 23 Feb 2016 22:09:12 +0530
Message-ID: <CA+5yK5Fzjb+QAVs0iLgevdwEPdULkC_tSx3+C_d0aG+AU_C=mA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Simplify use of devm_ioremap_resource
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 9:15 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 23 Feb 2016, Amitoj Kaur Chawla wrote:
>
>> Remove unneeded error handling on the result of a call to
>> platform_get_resource when the value is passed to
>> devm_ioremap_resource.
>>
>> Move the call to platform_get_resource adjacent to the call to
>> devm_ioremap_resource to make the connection between them more clear.
>
> You didn't do anything for the latter.  It was already in the right place.
>
> julia
>
Yes, the deletion automatically made it adjacent. I'll revise the
message and send v2.

Amitoj

