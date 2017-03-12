X-GM-THRID: 6395863057719885824
X-Received: by 10.46.78.9 with SMTP id c9mr4575944ljb.20.1489333501581;
        Sun, 12 Mar 2017 08:45:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls1339222lja.1.gmail; Sun, 12 Mar 2017
 08:45:00 -0700 (PDT)
X-Received: by 10.25.212.76 with SMTP id l73mr3797247lfg.13.1489333500832;
        Sun, 12 Mar 2017 08:45:00 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id f7si495810wmg.3.2017.03.12.08.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:45:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id y193so10148792lfd.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=RE5dnQPrbLU8qZPNQs0Zn0Bg5GjZCnYZH1aqKkRufhc=;
        b=aQPLzDep8PoDGuVTwVL641XJJi//hpykzwpYjmtkeO4rvYsYRPJ8TsVufQQzwIvPRv
         o7yXtL10oFM2sY/ov2htwuBJ/Q9K8/brnLMJnUtlwD5vgHDX+kHP3zUmB91gBCZiske8
         6knr8rWRyhfMhbrQhimpSy6twHNWwXAntHHq321wi/PIMzWiRrWJbM9EYMSi5PAvmmne
         /sTwHpnj1T09sWSzn25REaaMu4UQAgW5VScTgvIjsBWJL/IAltPstSyFxhSjKToVZrvr
         Vql1WUr6RP4Q9CT+tRglTJoyxWE0gsLU78GnqK586/yKuGo1NBmxBJ7nAPA0uwdVVNZl
         OZeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=RE5dnQPrbLU8qZPNQs0Zn0Bg5GjZCnYZH1aqKkRufhc=;
        b=GBcGellN1lZ9gwzo0t7l5YVvjs8R08JsMnjW20IgRH/QF0ngPjd+jGNb58js8gkGom
         VXEQe5L3M+lM8aS09MhaMirp8xcT/Q900OMhkyy/HjHe+GXSpT+W83cl73pQx7FhKqtV
         HHJH73NW98fRTnmRO5kioruYuq/W0Pydqtne2WsSXoGPspGNSA9pTCNvlUPfR3P1np3+
         CbcAGUe7FxVHV1g5q1eaf8SuKgClZIb4gQnF0cgREdedQ6bSHnbBHrrkIlEiMtlwn1MF
         vOkJttydWRsEhSvzYzb8GkueOXo7JcOTcHgy9xI8A/fRQuMSZ6KyX9BiaW+gLKlGoff/
         l4HA==
X-Gm-Message-State: AMke39m5GiaCbbzoqg/mLcMwv5g1SGxSUK2l2HBlZT1w8fwiBGGnuHSnukbPclZAHk9pZ6VViCER/YSDLKZA5Q==
X-Received: by 10.46.88.79 with SMTP id x15mr8631563ljd.39.1489333500210; Sun,
 12 Mar 2017 08:45:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sun, 12 Mar 2017 08:44:59 -0700 (PDT)
In-Reply-To: <20170312135423.GA911@kroah.com>
References: <20170310133504.GA18916@singhal-Inspiron-5558> <20170312135423.GA911@kroah.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 12 Mar 2017 21:14:59 +0530
Message-ID: <CALrZqyOdKmSF10Ba60_00OzzRMnKAt7XwjksmuQfGEKvBY-avg@mail.gmail.com>
Subject: Re: [PATCH v1] staging: media: Remove unused function atomisp_set_stop_timeout()
To: Greg KH <gregkh@linuxfoundation.org>
Cc: mchehab@kernel.org, linux-media@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 7:24 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Mar 10, 2017 at 07:05:05PM +0530, simran singhal wrote:
>> The function atomisp_set_stop_timeout on being called, simply returns
>> back. The function hasn't been mentioned in the TODO and doesn't have
>> FIXME code around. Hence, atomisp_set_stop_timeout and its calls have been
>> removed.
>>
>> This was done using Coccinelle.
>>
>> @@
>> identifier f;
>> @@
>>
>> void f(...) {
>>
>> -return;
>>
>> }
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  v1:
>>    -Change Subject to include name of function
>>    -change commit message to include the coccinelle script
>
> You should also cc: the developers doing all of the current work on this
> driver, Alan Cox, to get their comment if this really is something that
> can be removed or not.
>
> thanks,
>
Greg I have cc'd all the developers which script get_maintainer.pl showed:

$ git show HEAD | perl scripts/get_maintainer.pl --separator ,
--nokeywords --nogit --nogit-fallback --norolestats

Mauro Carvalho Chehab <mchehab@kernel.org>,Greg Kroah-Hartman
<gregkh@linuxfoundation.org>,
linux-media@vger.kernel.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org

> greg k-h

