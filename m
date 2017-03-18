X-GM-THRID: 6396604644937695232
X-Received: by 10.13.230.144 with SMTP id p138mr10723207ywe.71.1489862808227;
        Sat, 18 Mar 2017 11:46:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.110.142 with SMTP id w136ls1303214itc.22.canary-gmail; Sat,
 18 Mar 2017 11:46:47 -0700 (PDT)
X-Received: by 10.99.110.73 with SMTP id j70mr11492945pgc.143.1489862807379;
        Sat, 18 Mar 2017 11:46:47 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id h4si229049vkd.3.2017.03.18.11.46.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 11:46:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id u30so7899765uau.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 11:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=UIgS5cgdyUIRKZzg/Xx7eO3Ihb/BT5+xg2WyzOxBHNo=;
        b=ng1W9Vp2dtzz3oay/csXJKNp87vA21YslIZ52UiCEN6ltanyqOEhtm/iv/NBAN9qSw
         mEd37WX/JTTZsPU7PqI0PqiEPB9sQcD0pznQrUK4D4FoSORl5jpoCuIP93mZX3qTfOfw
         SeFcVmE7Y/KI+rj+FxSJG++39VEzcF4iBpuIUn7HVYWPB9VkGiVGAFkHLdBeRWQJv/RH
         CziNDWDDdNcPY3v52bqjLpD4F00o8eaR+jH3zeIdygePgsxhVKthJIEzmwqFJtjgYdXm
         H7MolJtLjlC1GK9he8E6q0DH+NwFQpUuZ2M/v+s8BFfZLOOevW2Nsb8qBfx1+NTV6J5J
         poaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=UIgS5cgdyUIRKZzg/Xx7eO3Ihb/BT5+xg2WyzOxBHNo=;
        b=ElTBeeCikYFE5BJ0hxjHneUa4P3mjhx1PpU2iF+q20API9VM4MGokUAtr+KhNQUMlw
         oo+gCk62jJ302gds3M4JwiMSLDpbeRYbTs0SjWWE1aIEuyflgvxRC8rfGSfYFgZc2o6C
         4NsS+G4FdsmJpsopi/htiQkkcVBiWB8fGLWscernsU1ujKR/IH8oPDybRl/PUbBCRliq
         mN+9glKXc1Vh/rPjWM5DS55rbzEXFADShnye4dlt/Q2iOalUCkt+PxmqGO5p9Xzj1GF5
         YEnYq7B5ZjufWz5sdGiInBQXwNk3GafpieqwAVc8C1NFODYJz01dvoPSLimhpKQWZCEU
         sq6g==
X-Gm-Message-State: AFeK/H1FryW4SInukyGtpiA3rjp8lRsGR/Bpj0dc59vMDeVmb4nlkeLLk1oSDy/Y+OXga8Z0AfQbFTbNbOwpVA==
X-Received: by 10.159.33.165 with SMTP id 34mr9535117uac.142.1489862807088;
 Sat, 18 Mar 2017 11:46:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.171.15 with HTTP; Sat, 18 Mar 2017 11:46:46 -0700 (PDT)
In-Reply-To: <6e2b0fa2-948e-007b-3d2b-9ad71357af03@kernel.org>
References: <20170313163107.GA31496@singhal-Inspiron-5558> <20170313195320.GA6705@d830.WORKGROUP>
 <b9b1e228-f025-bf8d-d367-2939a18bf992@kernel.org> <CALrZqyNLCzJm3N0aryTiRJfQmeB6G2jztfV73dFQ2bR5Zycs_A@mail.gmail.com>
 <6e2b0fa2-948e-007b-3d2b-9ad71357af03@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 19 Mar 2017 00:16:46 +0530
Message-ID: <CALrZqyPS_njKBh1Daxo4XB-BKM8pM5OiwrbyWr55DLaDm6yuRA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: iio: ade7753: replace
 mlock with driver private lock
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alison Schofield <amsfield22@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Hartmut Knaack <knaack.h@gmx.de>, 
	Pete Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 18, 2017 at 11:51 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 18/03/17 17:34, SIMRAN SINGHAL wrote:
>> On Thu, Mar 16, 2017 at 3:23 AM, Jonathan Cameron <jic23@kernel.org> wrote:
>>> On 13/03/17 19:53, Alison Schofield wrote:
>>>> On Mon, Mar 13, 2017 at 10:01:07PM +0530, simran singhal wrote:
>>>>> The IIO subsystem is redefining iio_dev->mlock to be used by
>>>>> the IIO core only for protecting device operating mode changes.
>>>>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>>>>
>>>>> In this driver, mlock was being used to protect hardware state
>>>>> changes.  Replace it with a lock in the devices global data.
>>>>>
>>>>> Fix some coding style issues related to white space also.
>>>>>
>>>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>>>> ---
>>>>>
>>>>>  v2:
>>>>>    -Removed new lock to reuse the existing lock
>>>> Simran,
>>>>
>>>> The good news is that you have 2 patches that have similar
>>>> challenges!  I'll suggest picking one, drive it to completion,
>>>> then do the other.
>>>>
>>>> This has the nested locking issue that Lars warned about.
>>>> Need to refactor to avoid.  Check back on his review comments.
>>>>
>>>> I suggest dropping those whitespace changes - they appear
>>>> out of place in this patch since you are no longer actually
>>>> touching those lines of code.
>>>>
>>>> alisons
>>> Also missing a mutex_init, though that may well become irrelevant
>>> with refactoring as suggested.
>>
>> Jonathon, what I found by looking at the codes of other drivers is that
>> we have to use mutex_init in probe function only.
>>
>> Is this correct?
> Yes, it only needs initializing once.
>>
So, no need of using mutex_init here as the function is not a
probe function.

Thanks
Simran

>> And this patch also suggest the same:-
>> https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/commit/?h=testing&id=388c8f18ff29fe95dbf72cb0a1bd8fbcd6f52f8f
>>
>>>>
>>>>
>>>>>
>>>>>  drivers/staging/iio/meter/ade7753.c | 12 ++++++------
>>>>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>>>>
>>>>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>>>>> index dfd8b71..d88eaa3 100644
>>>>> --- a/drivers/staging/iio/meter/ade7753.c
>>>>> +++ b/drivers/staging/iio/meter/ade7753.c
>>>>> @@ -83,10 +83,10 @@
>>>>>   * @buf_lock:       mutex to protect tx and rx
>>>>>   **/
>>>>>  struct ade7753_state {
>>>>> -        struct spi_device   *us;
>>>>> -                struct mutex        buf_lock;
>>>>> -                        u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>>>> -                                u8          rx[ADE7753_MAX_RX];
>>>>> +    struct spi_device   *us;
>>>>> +    struct mutex        buf_lock;
>>>>> +    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>>>> +    u8          rx[ADE7753_MAX_RX];
>>>>>  };
>>>>>
>>>>>  static int ade7753_spi_write_reg_8(struct device *dev,
>>>>> @@ -484,7 +484,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>>>>      if (!val)
>>>>>              return -EINVAL;
>>>>>
>>>>> -    mutex_lock(&indio_dev->mlock);
>>>>> +    mutex_lock(&st->buf_lock);
>>>>>
>>>>>      t = 27900 / val;
>>>>>      if (t > 0)
>>>>> @@ -505,7 +505,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>>>>      ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>>>>>
>>>>>  out:
>>>>> -    mutex_unlock(&indio_dev->mlock);
>>>>> +    mutex_unlock(&st->buf_lock);
>>>>>
>>>>>      return ret ? ret : len;
>>>>>  }
>>>>> --
>>>>> 2.7.4
>>>>>
>>>>> --
>>>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313163107.GA31496%40singhal-Inspiron-5558.
>>>>> For more options, visit https://groups.google.com/d/optout.
>>>> --
>>>> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>>>> the body of a message to majordomo@vger.kernel.org
>>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>>>
>>>
>

