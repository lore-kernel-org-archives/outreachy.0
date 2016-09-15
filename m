X-GM-THRID: 6330205612337528832
X-Received: by 10.46.0.83 with SMTP id 80mr1678972lja.4.1473955000385;
        Thu, 15 Sep 2016 08:56:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.81 with SMTP id m78ls103169lfm.9.gmail; Thu, 15 Sep 2016
 08:56:39 -0700 (PDT)
X-Received: by 10.25.78.12 with SMTP id c12mr1669570lfb.1.1473954999703;
        Thu, 15 Sep 2016 08:56:39 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id p199si332062wmd.1.2016.09.15.08.56.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 08:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id s29so3264523lfg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 08:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zH7n2b2g0KAuKe+y1C/YGHVG+sHwfxSVVKZCJdwXAAU=;
        b=CAmJGUkHKghdSYY5MMcuNZvbeEIdK89XjD9bT7x622CAURSVq3lc8X7I8XGwWQKn64
         MvGFrpndkRNFoJRxc9hN2/7pRigtw33feyHgQ9y1v5/pUIIWKfy4+vSW5hoLZ+yTUCEp
         NcKNs5TZ+HOOvUETxq70LD9Y/ZhN8RWG0WIIDhoueTqQhvuWNjBYX794Hdsq0eCk6Y5D
         EFR3WgoSSrN5hfFH8PqPAP6+t2dFdk0pifUAjF42JcdoS7d+oZbUE55KWErlyn1LzOQZ
         jwTKtsQWC37ckOlWwh7IYj1apzUZKOvbRWWPjI6vEPeXE+UIowAteUnAWiZRCimgKbCq
         s7MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zH7n2b2g0KAuKe+y1C/YGHVG+sHwfxSVVKZCJdwXAAU=;
        b=FZJ1RSL12bSG1G/KGklbnuQfw64rMGlWy4PHleZTlr9GnhAEj+REnEIJ4tNQUoyix/
         L8KAT+vM+SFRiJzXopEWwU/br/SYjNpjpR8KZM3Aov6AGRXT84Z3Clg+saA5F7fkgmYm
         xAKajMvcLXA+9uOZ5fFzb9LxbOHXjEhkzKVo6IkHweyqBHj6Zv/NzxW5BVaMzROJ6yFs
         jfuLz7OpKLkm+x4nhqofoSZR87zWEjSAkUPv1v3F/aHP1KRN5xXXyShqUHmxuS1ZTOay
         VXCpcN0U15Q9JRfZSOiHoIPCFNVVU76mExTGXw0f9LWn8jxDkGrVkZQiqghCrAry+ZYN
         03Jg==
X-Gm-Message-State: AE9vXwOQViWY/3sKSgDNOBco84VmEAM54Q3gHXpSYHAhJJWJTl6PATv2G9Op2ahy0zJHazgKGGXGU3dQ2WB0Pw==
X-Received: by 10.25.158.143 with SMTP id h137mr4297473lfe.83.1473954999018;
 Thu, 15 Sep 2016 08:56:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Thu, 15 Sep 2016 08:56:38 -0700 (PDT)
In-Reply-To: <39752ed1-573d-dbbb-a670-a5ab9fbf287e@mev.co.uk>
References: <1473949424-12322-1-git-send-email-bhumirks@gmail.com> <39752ed1-573d-dbbb-a670-a5ab9fbf287e@mev.co.uk>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Thu, 15 Sep 2016 21:26:38 +0530
Message-ID: <CAOH+1jGH+4vvRYvFXEnRVF+FSK3KwEn-duxFLcqFvUNTNEK_4g@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: comedi: drivers: Remove unused functions
To: Ian Abbott <abbotti@mev.co.uk>
Cc: hsweeten@visionengravers.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 15, 2016 at 8:57 PM, Ian Abbott <abbotti@mev.co.uk> wrote:
> On 15/09/16 15:23, Bhumika Goyal wrote:
>>
>> The functions s626_get_latch_source, s626_get_load_trig,
>> s626_set_clk_pol and  s626_set_index_src are not used anywhere in
>> the kernel. Therefore, remove them. The static unused functions were
>> detected using Coccinelle but the change was done by hand.
>> Script used :
>>
>> @initialize:python@
>> @@
>> def display(name,p):
>>         print(name,p[0].file)
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
>> @@
>> func
>>
>> @script:python depends on !r@
>> func << r1.func;
>> p << r1.p;
>> @@
>> display(func,p)
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>> Changes in v2:
>> *  Simplify coccinelle script by removing func(...)
>>   and adding spaces around "<<".
>>
>>  drivers/staging/comedi/drivers/s626.c | 51
>> -----------------------------------
>>  1 file changed, 51 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/s626.c
>> b/drivers/staging/comedi/drivers/s626.c
>> index 6d89ca0..670d55c 100644
>> --- a/drivers/staging/comedi/drivers/s626.c
>> +++ b/drivers/staging/comedi/drivers/s626.c
>> @@ -1034,14 +1034,6 @@ static uint16_t s626_get_enable(struct
>> comedi_device *dev,
>>  }
>>  #endif
>>
>> -#ifdef unused
>> -static uint16_t s626_get_latch_source(struct comedi_device *dev,
>> -                                     unsigned int chan)
>> -{
>> -       return S626_GET_CRB_LATCHSRC(s626_debi_read(dev,
>> S626_LP_CRB(chan)));
>> -}
>> -#endif
>> -
>>  /*
>>   * Return/set the event that will trigger transfer of the preload
>>   * register into the counter.  0=ThisCntr_Index, 1=ThisCntr_Overflow,
>> @@ -1066,19 +1058,6 @@ static void s626_set_load_trig(struct comedi_device
>> *dev,
>>         s626_debi_replace(dev, reg, ~mask, set);
>>  }
>>
>> -#ifdef unused
>> -static uint16_t s626_get_load_trig(struct comedi_device *dev,
>> -                                  unsigned int chan)
>> -{
>> -       if (chan < 3)
>> -               return S626_GET_CRA_LOADSRC_A(s626_debi_read(dev,
>> -
>> S626_LP_CRA(chan)));
>> -       else
>> -               return S626_GET_CRB_LOADSRC_B(s626_debi_read(dev,
>> -
>> S626_LP_CRB(chan)));
>> -}
>> -#endif
>> -
>>  /*
>>   * Return/set counter interrupt source and clear any captured
>>   * index/overflow events.  int_source: 0=Disabled, 1=OverflowOnly,
>> @@ -1168,21 +1147,6 @@ static void s626_set_clk_mult(struct comedi_device
>> *dev,
>>  }
>>
>>  /*
>> - * Return/set the clock polarity.
>> - */
>> -static void s626_set_clk_pol(struct comedi_device *dev,
>> -                            unsigned int chan, uint16_t value)
>> -{
>> -       uint16_t mode;
>> -
>> -       mode = s626_get_mode(dev, chan);
>> -       mode &= ~S626_STDMSK_CLKPOL;
>> -       mode |= S626_SET_STD_CLKPOL(value);
>> -
>> -       s626_set_mode(dev, chan, mode, false);
>> -}
>> -
>> -/*
>>   * Return/set the encoder mode.
>>   */
>>  static void s626_set_enc_mode(struct comedi_device *dev,
>> @@ -1203,21 +1167,6 @@ static uint16_t s626_get_index_pol(struct
>> comedi_device *dev,
>>         return S626_GET_STD_INDXPOL(s626_get_mode(dev, chan));
>>  }
>>
>> -/*
>> - * Return/set the index source.
>> - */
>> -static void s626_set_index_src(struct comedi_device *dev,
>> -                              unsigned int chan, uint16_t value)
>> -{
>> -       uint16_t mode;
>> -
>> -       mode = s626_get_mode(dev, chan);
>> -       mode &= ~S626_STDMSK_INDXSRC;
>> -       mode |= S626_SET_STD_INDXSRC(value != 0);
>> -
>> -       s626_set_mode(dev, chan, mode, false);
>> -}
>> -
>>  static uint16_t s626_get_index_src(struct comedi_device *dev,
>>                                    unsigned int chan)
>>  {
>>
>
> It will be better to get rid of all the #ifdef'ed out functions in one go,
> rather than just few at a time.  Your commit
> dda68765d757c7da878b093a87f24d6a1d4cfb64 in February removed a few more
> unused functions from this driver.
>
Ok, I will remove all the #ifdef'ed functions together. But should I
send a v3 for that or a new patch?
Thanks for the input.

Thanks,
Bhumika
> --
> -=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
> -=(                          Web: http://www.mev.co.uk/  )=-

