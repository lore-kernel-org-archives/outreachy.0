X-GM-THRID: 6472784237919469568
X-Received: by 10.129.39.205 with SMTP id n196mr12809651ywn.204.1507137093974;
        Wed, 04 Oct 2017 10:11:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.123.212 with SMTP id w203ls1092786ywc.35.gmail; Wed, 04
 Oct 2017 10:11:33 -0700 (PDT)
X-Received: by 10.129.196.10 with SMTP id j10mr34577936ywi.215.1507137093223;
        Wed, 04 Oct 2017 10:11:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507137093; cv=none;
        d=google.com; s=arc-20160816;
        b=NGsmiamvraR323AO1cjUuM0Zi2JVQ4/ou7ffh/808aq+MS7epopMNk46gHJrj93yiY
         L2OqGb0+j6VQtipCuxb5FIhuPEctO0lJx48HFDpfsKDXCyMNxLAxwyZEOarE2eKfjB89
         PsXwPNXcQsTAZ52TOo8NMW5V+hU1QaMxVKyY9YhcCeXXjbjA1acsLesJQrEZUipf96M1
         wovzgRU6tlPOnHAtZb2j77kOKaKjCPqmSE32i5t89mGiSHla6qxihm6+GDcZysZLnif3
         Br8D4tW08sW/slTyhhVdd1rJwRAfwuLW7CE5Wb2Ab91xGlXe0vXFFH/A1rv9oR6hj4MH
         SS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=aa8eAjrLarDaZb6nyhPiHVrhdaK7peEqZE+S7qNAUDE=;
        b=is1tBW+JwVZq+nuOySAjIIPzjTXySodsVHQVFHgXoV8hwmzN+c/aegh6FvIHa2Cup2
         3Dv2quRZobRD1evu4C9PsdJBjvO3B0t7DI7wpuPDWkj17kZj3y7WpZ3INIu1MXxsXH2o
         9nMnteXox5oR1jCUMixjVoxoviI6si84g8Z/IQ33Sj2xTeNl81alf+wh+8Uwwp3liJAG
         k1C7wVcgoZXf4pNBFETylnjt8PH7+K8usPIuxUAv6jdXqSi5Dy6yBo7RNMGP3SXNA1Ly
         uctsCzJFvC5I5XxdXQykfwwPmzqfLHUUqp0mVAmUb8EM5QzxzTQWb1YSn3aV2eXukZ5c
         DVSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JYGhKN6z;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id p62si883832ywc.5.2017.10.04.10.11.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 10:11:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JYGhKN6z;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id 17so1483038qkq.5
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 10:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=aa8eAjrLarDaZb6nyhPiHVrhdaK7peEqZE+S7qNAUDE=;
        b=JYGhKN6zUv4/78TZmWtS+JS/+hOmsq2AZxsiVXtZTwlZKh4vuWKFcdGuNzuBThfmZp
         wEVUfUDOSaLj4NQtjsDEnGAKs0yzj7G+WX9Tk68/Vb2s5m+Cx+K1q22FKKRw60MkzBG3
         8+PxDt6EK5QGp2y0137MtXRYO6UU+Bh5DStkaqT6y2L+HwvJpwncaZNs19+4t009sLY8
         /4nNha5RgcwL8ao6Z+rEa6wIUGAHBLvouOYKFGTFYbYTH6YML9+sx7TbvH+a7y1Vo8If
         ip8dDGxM7JNjDyO3COpBInMvA4o1QpnSHX8p3rNbB4wQxfIrSGqSc1BrrqlWLmFB0W2T
         fVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=aa8eAjrLarDaZb6nyhPiHVrhdaK7peEqZE+S7qNAUDE=;
        b=baqa7iDpGJZVKZu58+KRXNam8cdkoukciOHNHKhEoE47m1jZX8HguR5nUZb1VAguLb
         HG+uZLJEFy6CmiKNl3zeef6NU+vvVrdWRvB6HMjcZnM1o25lwNGIJ+OAn+JP8uBNzJ2W
         skbqFISP1OKs6oLfg3ZQ9WM9EYVXRYVPZf9qDNcTZGYOQm0S5oRB8dRz02/glYBXSvue
         4nI6TFff8lEwg0dK1scKn5XJBN0+ZqhUg4V3yiLJCc7SniKLTa0S1s66FdRa9xpBnXoh
         yCUkiiZVC76OHw46GICuThtXb9Ue4o0trIkMRtADM7htHKW2IAnXnBCyaVFnF7lXlB9A
         Gcqw==
X-Gm-Message-State: AMCzsaU9wpo+TNh1X26DW4ZM69TGw373jWm7RmAHyi9wOlo/6uLAxcBR
	s9ld+Q6E0gmvXYLI+PzZED/nYb3l6SYJPi3cti0=
X-Google-Smtp-Source: AOwi7QBuLBA7xJmJhLDrgl9H1dCh/9L+cLuPkq1AZfXDNx5hNfN4Op7xq3EDJHQ4bBRLwNhAN4olmfhbI6vL9lSp44E=
X-Received: by 10.55.158.15 with SMTP id h15mr22518271qke.32.1507137092982;
 Wed, 04 Oct 2017 10:11:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.57.196 with HTTP; Wed, 4 Oct 2017 10:11:32 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710041907100.2815@hadrien>
References: <1507122755-5489-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1710041533110.2815@hadrien> <20171004150813.kajdk27w4ngrz57w@mwanda>
 <CAB3L5owT483S1ytafbS1CVLS06069CtiB7LFcmQCTSOFMH3Exg@mail.gmail.com> <alpine.DEB.2.20.1710041907100.2815@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Wed, 4 Oct 2017 22:41:32 +0530
Message-ID: <CAB3L5ox+FinC-UgcL4EgNQ5-DSj6f1_42Kr95w5WJ68cvCQ5TQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use list_for_each_entry_safe
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, devel@driverdev.osuosl.org, 
	Greg KH <gregkh@linuxfoundation.org>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 4, 2017 at 10:37 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 4 Oct 2017, Srishti Sharma wrote:
>
>> On Wed, Oct 4, 2017 at 8:38 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>> > On Wed, Oct 04, 2017 at 03:34:05PM +0200, Julia Lawall wrote:
>> >> Again, you have three patches on different files with the same subject
>> >> line.  You could add the file name eg rtw_ap: to the subject line to make
>> >> them unique.
>> >>
>> >
>> > And the subject needs to start with [PATCH v3] and then after the
>> > Signed off by line put:
>> Shouldn't it be only v2 as I haven't sent a v2 for this before.
>
> It should be ok.  There was a v1 that only did list_entry and where all
> the patches had the same subject, but Greg already dropped that one.

Yes, I have sent another patch where we only need to convert
container_of to list_entry, that is where there is no while loop
,since we now have much less cases of this type , I have sent only one
patch for it.

Regards,
Srishti
> julia
>
>>
>> Regards,
>> Srishti
>> >
>> > ---
>> > v2 and v3: Changes to the subjects and changelogs.
>> >
>> > regards,
>> > dan carpenter
>>

