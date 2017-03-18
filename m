X-GM-THRID: 6396604644937695232
X-Received: by 10.99.125.5 with SMTP id y5mr11403943pgc.30.1489858447041;
        Sat, 18 Mar 2017 10:34:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.18 with SMTP id v18ls1277612itc.7.canary-gmail; Sat, 18
 Mar 2017 10:34:06 -0700 (PDT)
X-Received: by 10.99.39.6 with SMTP id n6mr10184574pgn.98.1489858446102;
        Sat, 18 Mar 2017 10:34:06 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id c124si556576vkh.2.2017.03.18.10.34.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 10:34:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id j64so5220393vkg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 10:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=5WF/YCccXliXN1b+AKQ0OZ+VS7c/u9bwsQ5llvz3XhA=;
        b=qil1up4M+XLjNYo7KablqIuUHeYVajL8xMXutv04HtOdCI7WCBfjahOtnIwWacVcim
         ZScBbXvbN3GBGUeYE90TevszE0b5sBYwEsG2Lp/fJE4GAAEnhAmawLuhmPbg4PpqAbN7
         hDxvE10RApbbL9KbNqfs89mxSmaci0hzN/tPMKA4pXJFrESij1rDyMEVUxw9JfVtxv8W
         /mXAbftb4rjhRVgGyJwwpdC/l2m5uzzefGj1z1i3yzdekEaS1c1GaMvU8XA/3AXbxkl+
         bvADGNbwSlGRtOqZEdB9H4irLFeP/Sce/rovdC29SLHisy+pnym+oShVTjYtPXzHsPmH
         wUPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=5WF/YCccXliXN1b+AKQ0OZ+VS7c/u9bwsQ5llvz3XhA=;
        b=Rg1wPiSlzO+aFOD1bvqNp94v6A/IPLuG2adyLOtYGW0gCsVxpurm2UQqJnecXUagX5
         8xn5HRYcGEf4P8fTmoVWsBN7/Y4XaOeUTk/Y/TvC2levyEY7VBzVOAPQ5HTzi6lyASxx
         WSj43L9JSlhgUzxDKPUN8DREEB4hb7FpLili1Gq8ebM49Akf/r3ZBxCsWUv+uctvxh7m
         zcrH35ZzPGrEDz1XiR+aJNKz3hwDhPfdPgiDu9B92X4xwHqqTUIU+o2b+nG1Bp5FgQlc
         wBomSEJmliYHju5DheXMoA6V+WpQdGfNtIzVBC2C8bd61e8c9Lk9kJmMoRPduIeppWPx
         rr5w==
X-Gm-Message-State: AFeK/H2ceW4VXm5hnLProjn0gWbptaZqOIssmAvtkrXQk0r1X14krnsYjVwpqDLCYVscpaSiEqT2fjQrwj4yCg==
X-Received: by 10.31.102.69 with SMTP id a66mr3565880vkc.111.1489858445787;
 Sat, 18 Mar 2017 10:34:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.171.15 with HTTP; Sat, 18 Mar 2017 10:34:05 -0700 (PDT)
In-Reply-To: <b9b1e228-f025-bf8d-d367-2939a18bf992@kernel.org>
References: <20170313163107.GA31496@singhal-Inspiron-5558> <20170313195320.GA6705@d830.WORKGROUP>
 <b9b1e228-f025-bf8d-d367-2939a18bf992@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sat, 18 Mar 2017 23:04:05 +0530
Message-ID: <CALrZqyNLCzJm3N0aryTiRJfQmeB6G2jztfV73dFQ2bR5Zycs_A@mail.gmail.com>
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

On Thu, Mar 16, 2017 at 3:23 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 13/03/17 19:53, Alison Schofield wrote:
>> On Mon, Mar 13, 2017 at 10:01:07PM +0530, simran singhal wrote:
>>> The IIO subsystem is redefining iio_dev->mlock to be used by
>>> the IIO core only for protecting device operating mode changes.
>>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>>
>>> In this driver, mlock was being used to protect hardware state
>>> changes.  Replace it with a lock in the devices global data.
>>>
>>> Fix some coding style issues related to white space also.
>>>
>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>> ---
>>>
>>>  v2:
>>>    -Removed new lock to reuse the existing lock
>> Simran,
>>
>> The good news is that you have 2 patches that have similar
>> challenges!  I'll suggest picking one, drive it to completion,
>> then do the other.
>>
>> This has the nested locking issue that Lars warned about.
>> Need to refactor to avoid.  Check back on his review comments.
>>
>> I suggest dropping those whitespace changes - they appear
>> out of place in this patch since you are no longer actually
>> touching those lines of code.
>>
>> alisons
> Also missing a mutex_init, though that may well become irrelevant
> with refactoring as suggested.

Jonathon, what I found by looking at the codes of other drivers is that
we have to use mutex_init in probe function only.

Is this correct?

And this patch also suggest the same:-
https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/commit/?h=testing&id=388c8f18ff29fe95dbf72cb0a1bd8fbcd6f52f8f

>>
>>
>>>
>>>  drivers/staging/iio/meter/ade7753.c | 12 ++++++------
>>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>>> index dfd8b71..d88eaa3 100644
>>> --- a/drivers/staging/iio/meter/ade7753.c
>>> +++ b/drivers/staging/iio/meter/ade7753.c
>>> @@ -83,10 +83,10 @@
>>>   * @buf_lock:       mutex to protect tx and rx
>>>   **/
>>>  struct ade7753_state {
>>> -        struct spi_device   *us;
>>> -                struct mutex        buf_lock;
>>> -                        u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>> -                                u8          rx[ADE7753_MAX_RX];
>>> +    struct spi_device   *us;
>>> +    struct mutex        buf_lock;
>>> +    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>> +    u8          rx[ADE7753_MAX_RX];
>>>  };
>>>
>>>  static int ade7753_spi_write_reg_8(struct device *dev,
>>> @@ -484,7 +484,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>>      if (!val)
>>>              return -EINVAL;
>>>
>>> -    mutex_lock(&indio_dev->mlock);
>>> +    mutex_lock(&st->buf_lock);
>>>
>>>      t = 27900 / val;
>>>      if (t > 0)
>>> @@ -505,7 +505,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>>      ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>>>
>>>  out:
>>> -    mutex_unlock(&indio_dev->mlock);
>>> +    mutex_unlock(&st->buf_lock);
>>>
>>>      return ret ? ret : len;
>>>  }
>>> --
>>> 2.7.4
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313163107.GA31496%40singhal-Inspiron-5558.
>>> For more options, visit https://groups.google.com/d/optout.
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>
>

