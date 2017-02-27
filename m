X-GM-THRID: 6391475391095111680
X-Received: by 10.107.161.12 with SMTP id k12mr2260228ioe.70.1488227772466;
        Mon, 27 Feb 2017 12:36:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls13747212oto.31.gmail; Mon, 27 Feb
 2017 12:36:12 -0800 (PST)
X-Received: by 10.13.216.20 with SMTP id a20mr6884163ywe.10.1488227772075;
        Mon, 27 Feb 2017 12:36:12 -0800 (PST)
Return-Path: <scott.branden@broadcom.com>
Received: from mail-qk0-x236.google.com (mail-qk0-x236.google.com. [2607:f8b0:400d:c09::236])
        by gmr-mx.google.com with ESMTPS id a202si2007081ywe.2.2017.02.27.12.36.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 12:36:12 -0800 (PST)
Received-SPF: pass (google.com: domain of scott.branden@broadcom.com designates 2607:f8b0:400d:c09::236 as permitted sender) client-ip=2607:f8b0:400d:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com;
       spf=pass (google.com: domain of scott.branden@broadcom.com designates 2607:f8b0:400d:c09::236 as permitted sender) smtp.mailfrom=scott.branden@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: by mail-qk0-x236.google.com with SMTP id n186so39788696qkb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 12:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=OXp/Fbbqg5ilnO+DwkDVVbn7HC2PWQb6mvZ3Di+LIG4=;
        b=TI4xNn2f4TMqAiP7tFRJukk7RLoo3grXk8MbBPTZ7VTwtUK6sKgOcN/bFJ1bo9B6Js
         3B+KMIsuY7NdSBTA76texoY5OYU+4zj1kgAH/CdHrS94tlNJpceX2Wa6W4e5sD6MIG69
         jbDJ7Q3XI5D8+HeYeIFLvoJjPtHIWkMzv4LyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=OXp/Fbbqg5ilnO+DwkDVVbn7HC2PWQb6mvZ3Di+LIG4=;
        b=Mr8gR4GHwqyYv5h8U1FeeNfdWEStarNmJVs4T9bNXSiFaYOlUjGZ/g/pnPGAU0Zr8I
         T1Bdz5SGvSwdSax3GU513MiVSD6nTQjbwgdmgt7M8R17nERwfWFleezYOawWSeSs7Oka
         IBsoPEEH55qwoAjqkmDG/4pex0SDyiWWdls4gSf3hPUXG/nH3JNug7VRi9SfOdpvACsA
         TgiNjeaLXSs8DIy/fCf3TIZgsSs+hGWLz3GzvP3UzWNIIb/4dAgqNS+SFgNOHmtQTv4N
         0LM2HrL3oWlrNPlPWGs70k6F7xJadSh/T49BcTz9JFcj+WWgbGS/D9FoHOkhvA6eYa4f
         P8Ig==
X-Gm-Message-State: AMke39mVrsx4jddPn1hwFZvJJHvxWbVZUQuBf7q6KeFl2Fy6THaR4doQB6hq8JVl7T6i3yfn
X-Received: by 10.55.161.140 with SMTP id k134mr16391684qke.171.1488227771545;
        Mon, 27 Feb 2017 12:36:11 -0800 (PST)
Return-Path: <scott.branden@broadcom.com>
Received: from [10.136.13.65] ([192.19.224.250])
        by smtp.gmail.com with ESMTPSA id i50sm11051503qti.13.2017.02.27.12.36.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 12:36:10 -0800 (PST)
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fixed spacing
 around '&'
To: Julia Lawall <julia.lawall@lip6.fr>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1702261901180.2056@hadrien>
 <1488134072.9188.3.camel@perches.com>
 <alpine.DEB.2.20.1702261956070.2056@hadrien>
 <1488137824.9188.7.camel@perches.com>
 <alpine.DEB.2.20.1702262038560.2056@hadrien>
 <1488146211.9188.10.camel@perches.com>
 <3ed05e4f-b00a-8a4b-f4f2-de23ff9b461e@broadcom.com>
 <alpine.DEB.2.20.1702270724430.2187@hadrien>
Cc: Joe Perches <joe@perches.com>,
 Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>,
 swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 daniel.baluta@spamfreegmail.com, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 mzoran@crowfest.net, danielperezdeandres@gmail.com,
 dan.carpenter@oracle.com, devel@driverdev.osuosl.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <954e0bc5-cd3c-c06f-dbfa-bed486b823c6@broadcom.com>
Date: Mon, 27 Feb 2017 12:35:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1702270724430.2187@hadrien>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Julia,

On 17-02-26 10:25 PM, Julia Lawall wrote:
>
>
> On Sun, 26 Feb 2017, Scott Branden wrote:
>
>>
>>
>> On 17-02-26 01:56 PM, Joe Perches wrote:
>>> On Sun, 2017-02-26 at 20:40 +0100, Julia Lawall wrote:
>>>> On Sun, 26 Feb 2017, Joe Perches wrote:
>>>>> On Sun, 2017-02-26 at 19:59 +0100, Julia Lawall wrote:
>>>>>> On Sun, 26 Feb 2017, Joe Perches wrot
>>>>>>> Mailing lists _should_ be copied on patch submissions.
>>>>>> The idea of outreachy is that it should be a place for people to get
>>>>>> started without too much criticism from the outside.  Originally, only
>>>>>> the
>>>>>> outreachy mailing list received patches.  But staging maintainers were
>>>>>> confused to have their drivers receiving patches that they had not
>>>>>> seen.
>>>>>> So we expanded it to maintainers.
>>>>>
>>>>> That also doesn't make much sense as patches
>>>>> should not be applied that have not reached
>>>>> a mailing list for review.
>>>>>
>>>>> As long as initial outreachy patches are not
>>>>> applied and are just for internal review by
>>>>> any outside person but the outreachy list and
>>>>> are not be applied by maintainers, then perhaps
>>>>> it's best if neither maintainers nor lists are
>>>>> cc'd on the patches.
>>>>
>>>> The patches are applied by Greg.  Greg suggested the policy of adding
>>>> maintainers but not including mailing lists.  I'll let him consider
>>>> whether the policy should be changed.
>>>
>>> Well, I will comment on patches sent to the kernel list.
>>>
>>> I'm not subscribed to outreachy and I don't want to be
>>> subscribed to that list either.
>>>
>> I would prefer this outreachy work uses their own mailing list and reviews
>> their patches first.  Then once they have everything sorted out they send out
>> the patch series to the proper maintainers/mailing lists. That way we're not
>> spammed with all these emails of people as they are learning how to format and
>> send out proper patches.
>
> If you consider that you are getting too much outreachy mail at the
> moment, just let me know what subsystem you want me to add an exception
> for.

The emails seem to mostly be coming with bcm2835-audio.
>
> thanks,
> julia

Thanks,
  Scott
>

