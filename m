X-GM-THRID: 6468588291165782016
X-Received: by 10.99.165.23 with SMTP id n23mr7225296pgf.112.1506442433507;
        Tue, 26 Sep 2017 09:13:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.225 with SMTP id u88ls857707ota.21.gmail; Tue, 26 Sep
 2017 09:13:52 -0700 (PDT)
X-Received: by 10.157.73.139 with SMTP id g11mr1522531otf.181.1506442432618;
        Tue, 26 Sep 2017 09:13:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506442432; cv=none;
        d=google.com; s=arc-20160816;
        b=UXeAN3HZYgImCUGQxH0vUNy3JUpn0AASGsFlN7QVYMLmc9butfZ2kATIIY+iAXkbQu
         /IY259eN28AqIS8dha00zcJddu59bGRIoFyr6lqpZVpBMKRyo5oeJFqnyFwrZEftJQDx
         t2r/Pvp0UNyrnyXsjb/o6oYKUJ7xLBhXBYWz1xDQo2T70oA0epJ7sLisNzN7PCWBMGID
         ZeLOrKHIB84K4yjNqx6gD84ZstlxhTckh8XeFXUjKAtP9XCnCAyqgsThFn5rerb6j3an
         UHpC/+IzxfRMXCZlWzzZhcqtGIIkyPekkV7vGVjhz7NLbXbo7x3pbIF8O8CfpsqAmqi+
         O2fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=dtOQVZUmY3DRawy1Dnrfu6NBmKmn9W93i9xzUfm0gsY=;
        b=ws5qDw8g55cTzwKXjnnUc29rBfrSJajSVToIfE4saiPRzhEDeVj0IpwO6wTFhWRpEA
         9vQ0fk+YjflEIvvF9TAk6qDX+6tus3ZKb6Yc18/3vbuBAz4cyOLS7wL50pogBaoU5NpY
         5NLIB6370jOVj4HUM12s/pRKJTdxxhTOl718wQFE937XnCQj58tsqDFSWgzpayKOPhws
         c/87fwBrIb/3Ob5g4QXn8NEMitkBdrCCRC9jZQL/cipkk9S+Say1CKxQ4iAlrSsK/f1x
         LH94E6/sJrSj80quqy4LuhkqfIQfU60MVZWuYey6NHV2hffBcqmtkO6/jGPR76wGgREh
         Zwqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oRbVyQDo;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id n131si435444ywb.20.2017.09.26.09.13.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:13:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oRbVyQDo;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id b1so7347570qtc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=dtOQVZUmY3DRawy1Dnrfu6NBmKmn9W93i9xzUfm0gsY=;
        b=oRbVyQDoY6703i/gCgMyRGz1yJvyCIOtC6HdjZLhAgbJ9c7kbYb81Z8oKhhLsj0Inw
         sRrluB5kUvBuX7NDnua5l84a9bvbiKNScOkVvjrvdQwfSZmYeQRX+zwDjhLUwKTbFFxw
         8iqNsoqffNYKxvrAE4/w5FUYSwRKB/oSLM2nCmHpgQ5tdK1LriJGqiWZZ/ySlrMNv3p1
         sdWB2BPGM0wNJasqTnpCLAlRTlO+g51SO1E+2CMUwkC5Rv94obprp0E8dvA5tgA6E/L1
         1lcC61kmH6ZEdcEcLlg3INKIZYsPh9QVP6kBSqNMPu8BtupqT5YR0a9iAKn4rhBTSrhD
         tK5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=dtOQVZUmY3DRawy1Dnrfu6NBmKmn9W93i9xzUfm0gsY=;
        b=blRfiJjjVAiX1Qv7l5/vl6BXIrZT9PSUV/ei10FA+9B4jyz74m01Ni+AnCkw9INohz
         FlzTpo8ip/AzzZoZkjd0jnejvuOO1Lb1TLzL93F5Yh1holFoiJlb+tlYotVbNuzkX4QT
         Pyf8YYEaKYD/b5b/12YsTQ8JS7McU7mzGUJYk2RTXnJR0/kk73ThQW98Bno2+qQrEQNE
         c8cLyEzC8SUIaANn4O1Ztm4dGDfwNB2qNUJ3b7lQKbrmozZIpA2ZAJlaLB1+5shQuLzA
         OHxgwlD1ygQAr6dQoFkBtTLj2VcR2j+w0Eugt8iXb3xYw16bUAuvYN1KawS0Lzt9qsOR
         hoYg==
X-Gm-Message-State: AHPjjUjKjdvWjy52EADwInMcpCxBy9mXyCk0GPCsjP2zt5e7gjzOVtUV
	6J0rvBKD6MbVfxHV7jA7OBAmLVWpaclJqCgyz2M=
X-Google-Smtp-Source: AOwi7QCwLoMc5xN1LjlR2xBArxFg1adK2b2z6+8aglcDK1x/IbZm/qYA4zC3b2sQAFm6nfpNCcXJb8bUiSA727X9rck=
X-Received: by 10.200.38.68 with SMTP id v4mr17466457qtv.128.1506442432215;
 Tue, 26 Sep 2017 09:13:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Tue, 26 Sep 2017 09:13:51 -0700 (PDT)
In-Reply-To: <CALta04wLzH_mJvA0Vx4U_SpvKFOkg6JMHrirVrDT6eArBEu0_Q@mail.gmail.com>
References: <cover.1506092223.git.georgiana.chelu93@gmail.com>
 <8813107f1cbbc593f55422ef905c4d5cfb575206.1506092223.git.georgiana.chelu93@gmail.com>
 <20170926074138.GA26263@kroah.com> <CALta04wLzH_mJvA0Vx4U_SpvKFOkg6JMHrirVrDT6eArBEu0_Q@mail.gmail.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 26 Sep 2017 19:13:51 +0300
Message-ID: <CALta04zFwGkrmWOzB+guhMfo3OE2uFJYdOT5fp38OG_2si112Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Staging: rtl8723bs: core: Code clean up
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On 26 September 2017 at 19:11, Georgiana Chelu
<georgiana.chelu93@gmail.com> wrote:
> On 26 September 2017 at 10:41, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>> On Fri, Sep 22, 2017 at 08:04:52AM -0700, Georgiana Chelu wrote:
>>> Clean the code to improve the coding style.
>>>
>>> Fix minor issues reported by checkpatch.pl:
>>> * CHECK: Alignment should match open parenthesis
>>> * CHECK: Logical continuations should be on the previous line
>>> * WARNING: line over 80 characters
>>
>> That's a lot of different things to be doing all in one patch.  Please
>> break this up into "one type of thing" per patch.
>>
>> And no, "fix all coding style issues" is not "one thing" :)
>>
>
> I will resend the patchset! Thank you!
>
Is the << "one type of thing" per patch>> required
> because it is easy to follow the same change in a patch?
>
> Have a nice day,
> Georgiana
>
>> thanks,
>>
>> greg k-h

