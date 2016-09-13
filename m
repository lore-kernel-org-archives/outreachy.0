X-GM-THRID: 6329524753040146432
X-Received: by 10.46.0.208 with SMTP id e77mr3414141lji.7.1473769464846;
        Tue, 13 Sep 2016 05:24:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.79 with SMTP id j76ls279629wmg.25.gmail; Tue, 13 Sep
 2016 05:24:24 -0700 (PDT)
X-Received: by 10.28.222.4 with SMTP id v4mr165726wmg.0.1473769464339;
        Tue, 13 Sep 2016 05:24:24 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id y7si1511043wmd.0.2016.09.13.05.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 05:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id s29so7087586lfg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 05:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=D3+UT3baFsoWpBqzpD59jRTXH15PdJ2eIIOsohRYeag=;
        b=JPbhFYMIqfYgzpPanP/JOq4SdjlYNhiUB7kZAsu4KUa19+VZrBaN+im9ZtYapptZIW
         jA9eWY5pD4k6ti7ZcOSUxI0pv4aej4kQSJqBtdMzZoISzmqNyvt0YLauMvGzsEAhxj/t
         yfWdqjoFeO2xxiKOaJgd38otCxGWmuRsivuiAFayuzXweTKpKybNpU7tiuGOm0OsGxO2
         pisioiXkhKegbP3ebZQkUMP+OuItp9YfBW8K99u9GtOvWc7Z1JSH9tQRRs2REOoDkrvG
         HG3eKxU/COgzRfY8z0Um1AkW3/n9NPkZB1srM0SBA2mRkJ2nyW5ZbFLg58k8NdtVzP2w
         aPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=D3+UT3baFsoWpBqzpD59jRTXH15PdJ2eIIOsohRYeag=;
        b=cINOECdl6O1XuWmUtZArYwHOI+pZySeQxOzhE5WFysqxCQfG+sXTpwTLQCt/k9QVFV
         WZZF33e1TJG0Xjyv6YcgDTtSgIrAZuE4laaoLKJtE/PJaD61AxDwsz+Kj8Za9NdTE77K
         8KU0qCEQzXQXGyBnelkGGrPVp7Pg4xwShpqpbkNxSUVAI9eX0m+BvHTLpRlCWeakMgo7
         QdOz11TsfVpJt3nGRmffx4xBNfqbMJeVOtNMF+Qtm7r2OrxkPlXLkPT9GTZWgJogVdky
         i3v8BsYmBBPnzlJFjCKsu1OS1OYfb5EQqC4j63EBgWBuWbESbqcQYY5fQsCAIjICtWP0
         p8jg==
X-Gm-Message-State: AE9vXwMLqqNz6fJ5ExqXdEqIs8pbgmBUNKRNAEvOq3B9XZf40OayGgBKTTitEtIVLNaxoUN0piFHSFl+yK1ejg==
X-Received: by 10.25.168.212 with SMTP id r203mr6415867lfe.85.1473769463743;
 Tue, 13 Sep 2016 05:24:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Tue, 13 Sep 2016 05:24:23 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609131157530.3355@hadrien>
References: <1473707299-29700-1-git-send-email-bhumirks@gmail.com>
 <alpine.DEB.2.10.1609122318060.3549@hadrien> <CAOH+1jEzPD5tGuKsFFqGBiVTWJ=Qt+Vtf=_zm2SBnH5A4w4Ucw@mail.gmail.com>
 <alpine.DEB.2.10.1609131157530.3355@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Tue, 13 Sep 2016 17:54:23 +0530
Message-ID: <CAOH+1jGuQNMYctn=25r_GnG1mqt1-fajEvNtULtfQ8CJvq3TZA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove unused
 function vnt_key_init_table
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 13, 2016 at 3:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 13 Sep 2016, Bhumika Goyal wrote:
>
>> On Tue, Sep 13, 2016 at 2:48 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Tue, 13 Sep 2016, Bhumika Goyal wrote:
>> >
>> >> The function vnt_key_init_table is not used anywhere in the kernel.
>> >> Therefore, remove the function definition and prototype.
>> >> Grepped to find occurences.
>> >>
>> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> ---
>> >>  drivers/staging/vt6655/key.c | 10 ----------
>> >>  drivers/staging/vt6655/key.h |  2 --
>> >>  2 files changed, 12 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/vt6655/key.c b/drivers/staging/vt6655/key.c
>> >> index ffcaf25..e161d5d 100644
>> >> --- a/drivers/staging/vt6655/key.c
>> >> +++ b/drivers/staging/vt6655/key.c
>> >> @@ -31,16 +31,6 @@
>> >>  #include "key.h"
>> >>  #include "mac.h"
>> >>
>> >> -int vnt_key_init_table(struct vnt_private *priv)
>> >> -{
>> >> -     u32 i;
>> >> -
>> >> -     for (i = 0; i < MAX_KEY_TABLE; i++)
>> >> -             MACvDisableKeyEntry(priv, i);
>> >
>> > Nice to see things go.  Did you check whether there are other uses of
>> > MAX_KEY_TABLE and MACvDisableKeyEntry?
>> >
>>
>> Yes, both are getting used a couple of times. I will look for other unused ones.
>
> OK.  The case of static functions can be done easily with Coccinelle,
> because Coccinelle works on one file at a time, and static functions can
> only be used in the same file.  You should still check with grep, and then
> with a kernel compile, because sometimes static fuctions can be used in
> unexpected ways, due to strange #includes or macro calls.
>

Ok, I will work on the static ones first keeping in mind your points.
Thanks for the input.

Thanks,
Bhumika

> julia

