X-GM-THRID: 6394807331810443264
X-Received: by 10.129.94.215 with SMTP id s206mr740249ywb.1.1488909093565;
        Tue, 07 Mar 2017 09:51:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.40.140 with SMTP id h134ls377998ith.5.gmail; Tue, 07 Mar
 2017 09:51:32 -0800 (PST)
X-Received: by 10.99.36.131 with SMTP id k125mr759005pgk.25.1488909092605;
        Tue, 07 Mar 2017 09:51:32 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id 13si3105794iti.0.2017.03.07.09.51.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:51:32 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id f203so1344623itf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=aLOBlGVAjT0G24TQCKKUZ/uxz8x7qFAPH0eu5R2V36A=;
        b=hNvD8z6mM3Zv2+Sm4aZewK6qoCGUFbSipZWa6qpCzErxHyjdDtYIReHKpavUsisx4+
         h7uxVdUY53RGI7AAo1VXejBuHw4kglh0zFUQ/CTGOs5/mBKeOsrtDmzsODTuFN01CK+8
         q3fW10CzBtTmmcRLbQgp2Ij9wclzpPvsABffmSFkTm3XIrCldLgHSKdJAhhiJmJ/EM9M
         LHJRnyCAgLHrVMdPHDmFz7/Xui7EMokVk0F6v+Wga5NDVBXmLzDh+CJBa/WH4ZPtFh6U
         MTYC3es4mbecWb2R/XrOelN+7MvWVfMoNC5mjwlw3b0bfIJ80aS+TOQdbuFO7yp4T41d
         3Qqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=aLOBlGVAjT0G24TQCKKUZ/uxz8x7qFAPH0eu5R2V36A=;
        b=RChWBu0Gthp5I9S+LHoBljxyLNCv6QSlOu9lo0BuB+ee5lUPthweArzizDghULMow0
         hkMQWorYtM/4myqsLzIAbs03jU38HpSIn58gmzC89H4mifNxtxzNXmOUbkHH/n1Tw5k3
         xZ4bpTngBD6+godgWTXAA/MQ0HPyvfqgatO0M4V9j5/92T5vmefrPdgqAsKkzEBOSoyE
         sNmT/ssFMZYcWRlWa/UwJzLmq/rXqw9+UEQaJs2pgfI4qtLCaVI4Ya27khR/Yrr/5Fgp
         AM2xowWT4/ldzNGt1hHeM7TIGq9aCtuce8IzowA1GVI+4nO4+HppP3tT7qWnYe1piEnn
         hqIg==
X-Gm-Message-State: AMke39nF9WT7uJFGinbTXVWBgrj7x94ioPOnk5NjpHfwMeIl2i5B8p7TgKiJUJf+oVfxpxcsBoKSvzJLicI57w==
X-Received: by 10.36.66.145 with SMTP id i139mr22100190itb.6.1488909092317;
 Tue, 07 Mar 2017 09:51:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 7 Mar 2017 09:51:01 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703071840580.3150@hadrien>
References: <1488906954-25933-1-git-send-email-gs051095@gmail.com>
 <SN1PR0101MB15652DA28CB022F0A3A8ED02D02F0@SN1PR0101MB1565.prod.exchangelabs.com>
 <alpine.DEB.2.20.1703071840580.3150@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 7 Mar 2017 23:21:01 +0530
Message-ID: <CAOCi2DFppKSRmtH-jLDp7x=wtrLwFZGhQ5MW1E4KU0f4zHU7NQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] RE: [PATCH] staging: comedi: Replace ternary
 operator with min macro
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Hartley Sweeten <HartleyS@visionengravers.com>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, "abbotti@mev.co.uk" <abbotti@mev.co.uk>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 7, 2017 at 11:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 7 Mar 2017, Hartley Sweeten wrote:
>
>> On Tuesday, March 07, 2017 10:16 AM, Gargi Sharma wrote:
>> >
>> > Use macro min() to get the minimum of two values for
>> > brevity and readability.
>> >
>> > Found using Coccinelle:
>> > @@ type T; T x; T y; @@
>> > (
>> > - x < y ? x : y
>> > + min(x,y)
>> > |
>> > - x > y ? x : y
>> > + max(x,y)
>> > )
>> >
>> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> > ---
>> >  drivers/staging/comedi/drivers.c | 2 +-
>> > 1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
>> > index a5bf2cc..6a413c7 100644
>> > --- a/drivers/staging/comedi/drivers.c
>> > +++ b/drivers/staging/comedi/drivers.c
>> > @@ -815,7 +815,7 @@ int comedi_load_firmware(struct comedi_device *dev,
>> >             release_firmware(fw);
>> >     }
>> >
>> > -   return ret < 0 ? ret : 0;
>> > +   return min(ret, 0);
>> >  }
>> >  EXPORT_SYMBOL_GPL(comedi_load_firmware);
>>
>> Technically this patch is correct. But, logically it might be confusing.
>>
>> This function either returns an error code (ret < 0) or success (0). The min() macro
>> makes it look like this function returns a minimum value.
>
> Agreed.  The ? is a bit ugly, but the min does not seem like the normal
> way of returning an error code.

Yeah, this makes sense. I'll redact this patch then. :)

thanks,
gargi
>
> julia
>
>>
>> Just my two cents...
>>
>> Regards,
>> Hartley
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/SN1PR0101MB15652DA28CB022F0A3A8ED02D02F0%40SN1PR0101MB1565.prod.exchangelabs.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

