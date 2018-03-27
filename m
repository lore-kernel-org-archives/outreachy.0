X-GM-THRID: 6534171640869158912
X-Received: by 2002:a9d:14f5:: with SMTP id r50-v6mr9025529otr.120.1522177236744;
        Tue, 27 Mar 2018 12:00:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:1e3:: with SMTP id e90-v6ls1115172ote.9.gmail; Tue, 27
 Mar 2018 12:00:34 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtqmAOixBaAQt64iZGfr2w7lPve6WM/bOLB0s1CBJBbvNMovupNQFuNwBJQ8fvtabIatkE/
X-Received: by 2002:a9d:3405:: with SMTP id v5-v6mr18079714otb.74.1522177234847;
        Tue, 27 Mar 2018 12:00:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522177234; cv=none;
        d=google.com; s=arc-20160816;
        b=dBwJ6iUL2b/vForrmp3nxJfDqPj9Klho8Tzn4c/+EDsALxDB3YUd7hOEOQcdpsICDZ
         /qDRMCOqA5izUswEfk4JRy0kiY0Vkj4FHDrcCFKso2t6pNwAzwHcHG1BnFcqK+O3q4j9
         8+bL6Cz0eSI81lPXZNIs9rvjSLfulw/6zpnckjK8t1YKD6cJVMKt8puzeGbOfuTjLz5x
         n5VaDTQcVQmziBR4Jl8nHluWe6g6ql65C0i1vJP7blsQVbJ3Re6Jn6Z2UMF/aaM6i98l
         evvQy+Z9c+6Sb//do2q5vneJiL24+bRh07KQEpA2a0HkLk5LEI58Wi5sPL77FxO2YUTN
         rY2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=/oH4BODT+3nFg52GRoq7mVz6ZKcXxeXcch/3Lxu0wfc=;
        b=MqgO/hviiPGNmSiNf8TqQFdWi4wKhmCfTcH29QhrdN+N11SJAhRfSN95wx4tS3wHsj
         qWZ/JI4lImfZUSp5s/hMdzg5SYEkNAHq7Q7ZVA5iPjxl7+Xkd4fuJb5rDNW7s8JNhpJZ
         bj8Xn5LzCrIyijb9x5vkc3YIUAjcsx2Xo5A0eRL294I4eqUlea7GZFf5SdsNevxzIjcK
         ReV3iW8YkUHex9P5rqVTo3zVVP7Isr/PcPUWyxqHEkmAemTxWrt683ZS3thUQpElVRGe
         FvMz4uQ6JWJrj+RIs+wbqfVDI43Yzs0Hk2G4cn19fAx9WfTotYJ3QaXsxkhRdZ/7vSES
         k+Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SqRS2LmL;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x22d.google.com (mail-it0-x22d.google.com. [2607:f8b0:4001:c0b::22d])
        by gmr-mx.google.com with ESMTPS id 26-v6si104740ois.3.2018.03.27.12.00.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Mar 2018 12:00:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::22d as permitted sender) client-ip=2607:f8b0:4001:c0b::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SqRS2LmL;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x22d.google.com with SMTP id y20-v6so506670itc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Mar 2018 12:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/oH4BODT+3nFg52GRoq7mVz6ZKcXxeXcch/3Lxu0wfc=;
        b=SqRS2LmLtZBgvi+OoVGvCqqJxUlAMLZNUCWylpCtUTQUhaIdDND8q+6aUvtBHUkvC1
         Xu8LBaB21SMYJBuGoXriyL6hLbTkq6AUDuE9OcIg5DPNCE98R4xMaklVNmKhsMgTCRV1
         JnRn+GsKII0hPHXzfaeK6nTexg4r7lDbEAkfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/oH4BODT+3nFg52GRoq7mVz6ZKcXxeXcch/3Lxu0wfc=;
        b=sI6+1Rw2ejYkWJR1lUdTm+nLXmZqG3Dt3ywxd53TT/4LjfzewunZbPH/M9FsxCsdzA
         lywHATfQIAbqDYLR8EyNBxQs9H6mN31RZt+Mu1ic0R2QV87cj21uthn/KVao9ucf0haF
         /HXcd1ourLokXWuuXxmhtWgl7pzzfwe0nfYlw2rt5PkC5Kie0eiFmgw9Rs1G5b7F+hgG
         7OIAoiGOX11kTHhaC6yr8bqwHmEPPVDD6UjBZXyY4COEhFgW3UVnaNPVPaj6UnrzxKDg
         ySBUlRQkbUUOkByocu1o29T6o4W+a9BM21uf/C+oYeoa5BR5wLFgV4IPHAgeBgwLzC0r
         ihOA==
X-Gm-Message-State: AElRT7EzzZzfRtwNarwk1djth2U9VXbrOKcYr/BSoXh3p0GRaCqZ/Fcv
	jbb7+Tv8vsj+a+4NszWEwgAyIvZn9XcB3Z1O6VQcuA==
X-Received: by 2002:a24:a54c:: with SMTP id w12-v6mr469384iti.96.1522177234369;
 Tue, 27 Mar 2018 12:00:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Tue, 27 Mar 2018 12:00:33 -0700 (PDT)
In-Reply-To: <CAO393ABtUKH6t6aZwSX0tPoDX7dQ5MggeWsN8t+Rhd1wnV6DBA@mail.gmail.com>
References: <alpine.DEB.2.20.1803180739260.3299@hadrien> <e84b04f6-0288-4490-b3e3-8bf9166f3d4f@googlegroups.com>
 <CAO393ABtUKH6t6aZwSX0tPoDX7dQ5MggeWsN8t+Rhd1wnV6DBA@mail.gmail.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Wed, 28 Mar 2018 00:30:33 +0530
Message-ID: <CAC4++KD6f+8As-7qxSHwp=m+hDZ85r_btf=cxtxSx75Hc7jTvw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: application
To: Shraddha Barke <shraddha.6596@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 21, 2018 at 3:34 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>
>
> On Tue, Mar 20, 2018 at 9:54 PM, Nishka Dasgupta
> <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
>>
>>
>>
>> On Sunday, March 18, 2018 at 12:13:08 PM UTC+5:30, Julia Lawall wrote:
>>>
>>> Hello,
>>>
>>> Currently three of the kernel projects have a deadline of March 22 and
>>> the
>>> Userfaultd project has a deadline of March 29.  In either case, the
>>> deadline is 4pm UTC.  You can find out what time that is in your area
>>> using the following link:
>>>
>>> https://www.google.com/search?q=4pm+UTC+to
>>>
>>> You make a separate application for each project you are interested in.
>>> If you are interested in multiple projects, please clearly indicate your
>>> preference between them.
>>>
>>> julia
>>
>>
>> Does this include the project "dri-devel aka kernel GPU subsystem"? Its
>> deadline is also listed as 29th on the outreachy website.
>>
>
> Yes, you should make a separate application for "dri-devel aka kernel GPU
> subsystem" project as well.
>

May I list the same cleanup patches as contributions if I apply to
multiple projects?

I will of course be ordering the projects according to my preference.

 Thanking you,
Nishka Dasgupta
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit
>> https://groups.google.com/d/msgid/outreachy-kernel/e84b04f6-0288-4490-b3e3-8bf9166f3d4f%40googlegroups.com.
>>
>> For more options, visit https://groups.google.com/d/optout.
>
>
>
>
> --
> Shraddha

