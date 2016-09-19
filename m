X-GM-THRID: 6332043627755208704
X-Received: by 10.25.139.9 with SMTP id n9mr659022lfd.22.1474295108393;
        Mon, 19 Sep 2016 07:25:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.138 with SMTP id m132ls1874975wma.18.canary; Mon, 19 Sep
 2016 07:25:07 -0700 (PDT)
X-Received: by 10.194.89.35 with SMTP id bl3mr673040wjb.8.1474295107745;
        Mon, 19 Sep 2016 07:25:07 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id e21si1743230wmc.2.2016.09.19.07.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:25:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id k12so8509564lfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=5G3Uzhtw1yGy+Y2ZBVTGcWLZw7us6H4O1IN/KnKEbGY=;
        b=vEn1GNDsRKQqSck97UyDezjVSMVrOni8VAmv+Q1oFB27RcpeTd/NMK+FemLGZhalEc
         k5Al81EvBFDyEG/QktSCjkoDPiBIHcoQgnSoQC4rIARsLJ3sMGXXyGVEFniJ3yCrDDsb
         8W7mjw33dMJdx0My1gppOTwdRjsOO6KAb+T0GWXBqsqQjC61Qo2eCmhAt2C/0Aq9g9fY
         eTfzTCRVd29m9d4sBXg1+r/n3zbFllW8wxfMn+l9l/25CSvkVD5YxsVBYcn7MGsBveF1
         XwQ1X/ClmgUVtwVF25NYkeKE6vQIFnqPXjV+UWOD2biebE0NuAaWWXo0/lrizRPkQ7sr
         C7Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=5G3Uzhtw1yGy+Y2ZBVTGcWLZw7us6H4O1IN/KnKEbGY=;
        b=mQIYOiQoOZYPep2P/x7BLMNEchUjNKQp0Tyebpf9DL27uo6Zcfh1Xyfzy06gisQhwE
         HhYT0BXBW0yAc4RIN8wRPJYwyJAnPU5KjnR8Ryo13v9itHznqYZUEpm59aIsTg5LE13Q
         0aWCIdRM3sxXE/4SSWPIHOsW6QBp1KJyyT9QQTd68+sI0H7eVtZmGCCSH3uTjZgZSajY
         T5dbapikKRErGrihK+bqgeo094Xruiu8pXwpFqohGsZhrMGeJT50Qt1B6xy3tZ+vfF4o
         85m78lR3EyvFT06BU/QhoBzbsSplhGxbM5hdaYhoI7UBfcErD+vjRpS5yJ40b4IOblP7
         EgkA==
X-Gm-Message-State: AE9vXwP7AUeK81Ja81363HxHPsJJppq8VVP8fHhew80Izsw3SFHxviRZSkzuos+dTjgzCnpk/S5FvyW2E4LGjA==
X-Received: by 10.46.5.203 with SMTP id 194mr7808377ljf.9.1474295107091; Mon,
 19 Sep 2016 07:25:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Mon, 19 Sep 2016 07:25:06 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609191618590.3203@hadrien>
References: <1474293770-22208-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609191618590.3203@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Mon, 19 Sep 2016 19:55:06 +0530
Message-ID: <CAOH+1jH=Kx=hT8DZ4stQf5touCUeUofcJ9H50A3+odUK12r8cw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: wilc1000: Code cleanup
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, ganesh.krishna@microchip.com, 
	aditya.shankar@microchip.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 19, 2016 at 7:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Mon, 19 Sep 2016, Bhumika Goyal wrote:
>
>> This patchset declares some functions as static and remove their
>> declaration from headers. Also, drop prototypes of some already
>> static functions.
>
> Isn't this a v2?
>
> julia
>
Actually, yes but they weren't sent as a patchset before. I realized
that in order to make them work they need to be applied in series and
so I combined them in a patchset.  Do I need to put a v2 then?

Thanks,
Bhumika

>>
>> Bhumika Goyal (2):
>>   Staging: wilc1000: Drop static function prototypes
>>   Staging: wilc1000: Make functions wilc_mac_{open/close} static
>>
>>  drivers/staging/wilc1000/linux_wlan.c             | 30 ++++++++++-------------
>>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  3 ---
>>  drivers/staging/wilc1000/wilc_wlan.h              |  3 ---
>>  3 files changed, 13 insertions(+), 23 deletions(-)
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474293770-22208-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

