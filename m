X-GM-THRID: 6330205612337528832
X-Received: by 10.28.43.129 with SMTP id r123mr198100wmr.6.1473920812755;
        Wed, 14 Sep 2016 23:26:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.130 with SMTP id r124ls135851wmb.1.gmail; Wed, 14 Sep
 2016 23:26:52 -0700 (PDT)
X-Received: by 10.28.152.87 with SMTP id a84mr192436wme.7.1473920812214;
        Wed, 14 Sep 2016 23:26:52 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id 185si68679wmr.2.2016.09.14.23.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 23:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id l131so1522068lfl.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 23:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=P9jMLn4yPzk5YhlypyKFmfMzZBT7FQ/VmSMnGosYWYk=;
        b=DPgBhq9/K8/RC1KGylYGWG24Qc8hxMblcW1L+cRv/mnxLV69+MDFjN1CynmqBl9TG3
         /8ofpJ49V8+7VIr0X3z0yW4tjZ8iJ6Rn8lu+yeEc4OKpeYOAasTcUOqFYToliIYbQmIy
         Ak3lBeyJ35TQLd5Jtlxvac2MRC+1YcJeZQQd0vpcLFIwCoqGCqsXEoDBgA40eDNkTpJv
         wcTV3mrZ+gHh5fuwOHeLqefZE+rsub3y4g7EY+pdYaLsbN5WSAmFsd0QPOqxfxiPZ/fj
         dpmoFmfPK5fnoJ1k7eFf8vixkTMO7FgOqUFd8Tqs1M8cN8nOWVWEL7LHcP7qckZYX8ll
         6dpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=P9jMLn4yPzk5YhlypyKFmfMzZBT7FQ/VmSMnGosYWYk=;
        b=PTN4nQXD0WrsJOBrf6LFJKWIHUW4sKQD8B0BcAJ4skLUeKjoJD5KBY1E97dIvqBLIN
         6QOvMdmOYzhKmCEAFQrUgj1/YC/wqA7eLwc4l58oBAQM9kxJNDiPTWwcgLidI1aw1JEk
         vnJ3J6l1RJso0DpH5hsqzoAwBWhBnYUH0JdY5XaqZRdZRfOjvXfS85lUcJDaqBW0iNTI
         /i8Y8cHS9UAHWW64mxgkN1G5wU17ZUoKjDqT7/ERBhrMaDhEaz6SO236qjTeZaKYkyjn
         r2lG1VguNrMUvzUwRw5LuapivgS/cXnCRqqJoJpzpXiHGmHEIjIbq41dh4dIaOQBpTm0
         0ROA==
X-Gm-Message-State: AE9vXwM+1LVasz8J/yDO7WFCLfnWYrIsXAJhOnN2cpK38ZYwi0So5KteYbFGPvR2G4zrCdKEO/NzBUfRf9op7g==
X-Received: by 10.25.208.213 with SMTP id h204mr2884382lfg.147.1473920811887;
 Wed, 14 Sep 2016 23:26:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.93.137 with HTTP; Wed, 14 Sep 2016 23:26:50 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609142116480.3347@hadrien>
References: <1473865793-20468-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609142116480.3347@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Thu, 15 Sep 2016 11:56:50 +0530
Message-ID: <CAOH+1jGuBcSvtZDFiNMU89=cUwdE8EJobD4d1W4=q0XVxdy8Jw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: drivers: Remove
 unused functions
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 15, 2016 at 12:48 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 14 Sep 2016, Bhumika Goyal wrote:
>
>> The functions s626_get_latch_source, s626_get_load_trig,
>> s626_set_clk_pol and  s626_set_index_src are not used anywhere in
>> the kernel. Therefore, remove them. The static unused functions were
>> detected using Coccinelle but the changes were done by hand.
>> Script used :
>>
>> @initialize:python@
>> @@
>> def display(name,p):
>>       print(name,p[0].file)
>>
>> @r1@
>> identifier func;
>> type T;
>> position p;
>> @@
>> static T func@p(...)
>> {
>> ...
>> }
>>
>> @r@
>> identifier r1.func;
>> position p;
>> @@
>> (
>>  func(...)
>> |
>>  func
>> )
>
> This pattern is unnecessarily complex.  The second part (just func), will
> also match anything the first part matches.  So you can just put func.
>
Yes, it is really unnecessary to put func(...) here. I will make the
changes and send a v2 for both the patches.
Thank you for the input.

>>
>> @script:python depends on !r@
>> func<<r1.func;
>> p<<r1.p;
>
> Perhaps it is just my personal taste, but I always put spaces around <<.
>
> Looks good otherwise.
>

Ok, I will keep this in mind too :D.

Thanks,
Bhumika


> julia
>
>> @@
>> display(func,p)
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/comedi/drivers/s626.c | 51 -----------------------------------
>>  1 file changed, 51 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
>> index 6d89ca0..670d55c 100644
>> --- a/drivers/staging/comedi/drivers/s626.c
>> +++ b/drivers/staging/comedi/drivers/s626.c
>> @@ -1034,14 +1034,6 @@ static uint16_t s626_get_enable(struct comedi_device *dev,
>>  }
>>  #endif
>>
>> -#ifdef unused
>> -static uint16_t s626_get_latch_source(struct comedi_device *dev,
>> -                                   unsigned int chan)
>> -{
>> -     return S626_GET_CRB_LATCHSRC(s626_debi_read(dev, S626_LP_CRB(chan)));
>> -}
>> -#endif
>> -
>>  /*
>>   * Return/set the event that will trigger transfer of the preload
>>   * register into the counter.  0=ThisCntr_Index, 1=ThisCntr_Overflow,
>> @@ -1066,19 +1058,6 @@ static void s626_set_load_trig(struct comedi_device *dev,
>>       s626_debi_replace(dev, reg, ~mask, set);
>>  }
>>
>> -#ifdef unused
>> -static uint16_t s626_get_load_trig(struct comedi_device *dev,
>> -                                unsigned int chan)
>> -{
>> -     if (chan < 3)
>> -             return S626_GET_CRA_LOADSRC_A(s626_debi_read(dev,
>> -                                                     S626_LP_CRA(chan)));
>> -     else
>> -             return S626_GET_CRB_LOADSRC_B(s626_debi_read(dev,
>> -                                                     S626_LP_CRB(chan)));
>> -}
>> -#endif
>> -
>>  /*
>>   * Return/set counter interrupt source and clear any captured
>>   * index/overflow events.  int_source: 0=Disabled, 1=OverflowOnly,
>> @@ -1168,21 +1147,6 @@ static void s626_set_clk_mult(struct comedi_device *dev,
>>  }
>>
>>  /*
>> - * Return/set the clock polarity.
>> - */
>> -static void s626_set_clk_pol(struct comedi_device *dev,
>> -                          unsigned int chan, uint16_t value)
>> -{
>> -     uint16_t mode;
>> -
>> -     mode = s626_get_mode(dev, chan);
>> -     mode &= ~S626_STDMSK_CLKPOL;
>> -     mode |= S626_SET_STD_CLKPOL(value);
>> -
>> -     s626_set_mode(dev, chan, mode, false);
>> -}
>> -
>> -/*
>>   * Return/set the encoder mode.
>>   */
>>  static void s626_set_enc_mode(struct comedi_device *dev,
>> @@ -1203,21 +1167,6 @@ static uint16_t s626_get_index_pol(struct comedi_device *dev,
>>       return S626_GET_STD_INDXPOL(s626_get_mode(dev, chan));
>>  }
>>
>> -/*
>> - * Return/set the index source.
>> - */
>> -static void s626_set_index_src(struct comedi_device *dev,
>> -                            unsigned int chan, uint16_t value)
>> -{
>> -     uint16_t mode;
>> -
>> -     mode = s626_get_mode(dev, chan);
>> -     mode &= ~S626_STDMSK_INDXSRC;
>> -     mode |= S626_SET_STD_INDXSRC(value != 0);
>> -
>> -     s626_set_mode(dev, chan, mode, false);
>> -}
>> -
>>  static uint16_t s626_get_index_src(struct comedi_device *dev,
>>                                  unsigned int chan)
>>  {
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1473865793-20468-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

