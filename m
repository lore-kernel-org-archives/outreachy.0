X-GM-THRID: 6396623308648873984
X-Received: by 10.129.89.65 with SMTP id n62mr11911711ywb.72.1489330280755;
        Sun, 12 Mar 2017 07:51:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls13527681ota.4.gmail; Sun, 12 Mar
 2017 07:51:20 -0700 (PDT)
X-Received: by 10.157.8.97 with SMTP id 88mr12064574oty.143.1489330280410;
        Sun, 12 Mar 2017 07:51:20 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id n63si1915083ywb.7.2017.03.12.07.51.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id h11so7520894ywa.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 07:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=cv6jfINWqYDLoQDD42tdr+DxFwaDLJv3FJK7oaVRj3w=;
        b=Unr/+S7g6BKQIJE/84ZBK4fab7V9GvE4PlUUvlBdEEnmINqytw8YbXwifLo+upX682
         TqDjhICEEuMgdbxisYfevF32K0PQjxEYcuzzxaKrDssu1bM5SdxIdnasn9bicax/cDGz
         Sfgzyse9xmY8eunWmSR7D3fM9u+tnG5xP+Yfv5VOULFfBLlBLV398+nzbCKtJqJhegYd
         KIbPUa7Yd+9W9h2Jo31YEfqbFFwtwsB8KH2Hzc+4kpnUjtha1ZPkxKULfjOC4BnVGXz4
         by3rBJeurqGdeHNr88scalyz2j6exItMG0K2RQc9hdoVOJbse+Lxf2M2iR+l0xZaAyOU
         IGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=cv6jfINWqYDLoQDD42tdr+DxFwaDLJv3FJK7oaVRj3w=;
        b=hgCEpT/tDO//37aDnvRT6BXjyxxmGEtDAMVLsEjK2rzEpt7mLadkZ99fDVU8JFya60
         nZB2S/l7y0p/qFlL6UYizxe5OLEQPKakaQHrx0HipJSP7JhIcCgmteystuteOtxpKOfx
         08Bh8PNFg3oKzQ0qr8wGr5RsLhweaHRXhRNCc2TmYWECSE3+/SVjHjQ9jBnWf+sqa+DL
         w3LC/RTcRfG/g50POqcEmjXGCZnNj4dcI6Mj/o+cg8djUNHLlWbLsHpd51vBoI55SRKd
         sknr+PoCigLQdZsuC12pn5Hd3+3nSkIQELchnerPjajl/fVzMjx3I4skN77YsmQfQbqG
         tMlA==
X-Gm-Message-State: AMke39k5p3iBPFr3FBHMKHQHchIZ9VeyDlTpsPVm0PA6gjfLx9scWPZaTfCT8hmiyX1oQCTUhSjIuQQ2iCtgPQ==
X-Received: by 10.129.86.132 with SMTP id k126mr12104094ywb.273.1489330280116;
 Sun, 12 Mar 2017 07:51:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Sun, 12 Mar 2017 07:50:39 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703121546590.2174@hadrien>
References: <cover.1489329182.git.karniksayli1995@gmail.com> <alpine.DEB.2.20.1703121546590.2174@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 12 Mar 2017 20:20:39 +0530
Message-ID: <CAKG5xWhTjVxD1+3mhpm1JE-rWoW5mLkOAj3dbGuOvyomDjQEDA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Use true/false instead of 1/0 for
 bool initialisations
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 8:17 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 12 Mar 2017, sayli karnik wrote:
>
>> The patch series uses true and false instead of 1 and 0 as bool variable
>> values. Detected by coccinelle/misc/boolinit.cocci.
>>
>> sayli karnik (2):
>>   staging: media: mt9m114: Use true/false instead of 1/0 for bool
>>     initialisations
>>   staging: media: mt9m114: Use true/false instead of 1/0 for bool
>>     initialisations
>
> The two lines are identical?
>
Actually one is for mt9m114.c and the other for mt9m114.h
Had sent 2 separate patches initially, but re-sent them as a series as
suggested by Greg.
> julia
>
>>
>>  drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
>>  drivers/staging/media/atomisp/i2c/mt9m114.h | 6 +++---
>>  2 files changed, 5 insertions(+), 5 deletions(-)
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1489329182.git.karniksayli1995%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

