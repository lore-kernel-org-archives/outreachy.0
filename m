X-GM-THRID: 6400014269629333504
X-Received: by 10.99.154.9 with SMTP id o9mr452197pge.6.1490899467804;
        Thu, 30 Mar 2017 11:44:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.116 with SMTP id p49ls10884890otp.4.gmail; Thu, 30 Mar
 2017 11:44:27 -0700 (PDT)
X-Received: by 10.129.174.1 with SMTP id m1mr445581ywh.64.1490899467389;
        Thu, 30 Mar 2017 11:44:27 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id k191si217270vka.4.2017.03.30.11.44.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 11:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id d188so8221351vka.3
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 11:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=FLY4zBErKZsDY3gcCB04Chlk8wbthYNPzLZA/Tdk0N8=;
        b=XqGQUKbG9/CGwNEe9JYOhHF21VWeYueAJXUxgZ9qSirkc/D0oN39yB8IL9K05NFaGo
         yrlHNb3z5Td8ipxZOKh8Y0EMbo1/4p5mfFf6raSv8lus580v5gDwsJQvwYAGrv9vqF8t
         ScRCh0XUFzrsCqxzwf/iIAfy9zlAFeEPj3hjp7Lz6yrN40Qt3KxA+9yAS0HGVuFGfwCQ
         hm1VWyTbaqCM7/bo9nURHU1nrYT6ZmOdMc3JFuH75xv2mSnDKMbjLeMvo2yuE+FXAkDT
         SOzCaNvVRrbZL63mJn608nQLmO8xGizUT521XMqGs86Xr2/X2VZS1KeoJxtesS7XySmr
         DS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=FLY4zBErKZsDY3gcCB04Chlk8wbthYNPzLZA/Tdk0N8=;
        b=OVGtqPEFIvXli2rlrDfHVt3rsu3NMKo7JhuFoCYza5LCJEOIg1Q9vQgeM4S9S4voew
         MVt3CZsAPcNerhi8ISTBQzNQfWmr1uqCb4JeWnPIKYihnomj4js9YBRmPcyvx2HU7qyX
         rtL2W06r1nJOSt3rDZWXE3Pf1p22axxGcoqho2aXIU1G8CKHDg8Cg2LyZ7sasMZaIW+3
         A02W8nRZSHx/R5agwz1KYvI0qTAZqex5Za4O0ZMlu32ovdwlnksJcIoLo4ZYStshpXlZ
         9uCeenUYgdZ3Xstm3ubeIXX2mQ34Yd69fclrk8+9dK8+iMS8q3/e1QqJXNE+JLN9vII4
         oxQg==
X-Gm-Message-State: AFeK/H0Kh6KifGTcLrUvhzZLs0PD3ggiMjQr0AxuufDBzXFXKI4T6snMd2SZS9GQuirTwI6z0w6m0ZOfF50wTQ==
X-Received: by 10.159.35.143 with SMTP id 15mr676328uao.150.1490899466995;
 Thu, 30 Mar 2017 11:44:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Thu, 30 Mar 2017 11:44:26 -0700 (PDT)
In-Reply-To: <f942b9c4-e0a9-eb01-ac9f-dc75a8358fea@kernel.org>
References: <20170323183520.GA9871@singhal-Inspiron-5558> <20170323192116.GA6614@d830.WORKGROUP>
 <CALrZqyNP-8CeAGRr3uDuAhBweT1Sp3H4bWPy8y__7tvnzxR=zw@mail.gmail.com>
 <20170328183732.GA3808@d830.WORKGROUP> <f942b9c4-e0a9-eb01-ac9f-dc75a8358fea@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Fri, 31 Mar 2017 00:14:26 +0530
Message-ID: <CALrZqyMdKLjZAN+zH31nPMYnCrWdeaRjWdUKgGGyOHtzP1ueDw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: iio: ade7753: Replace
 mlock with driver private lock
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alison Schofield <amsfield22@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg KH <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 31, 2017 at 12:02 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 28/03/17 19:37, Alison Schofield wrote:
>> On Tue, Mar 28, 2017 at 10:55:17PM +0530, SIMRAN SINGHAL wrote:
>>> On Fri, Mar 24, 2017 at 12:51 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>>>> On Fri, Mar 24, 2017 at 12:05:20AM +0530, simran singhal wrote:
>>>>> The IIO subsystem is redefining iio_dev->mlock to be used by
>>>>> the IIO core only for protecting device operating mode changes.
>>>>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>>>>
>>>>> In this driver, mlock was being used to protect hardware state
>>>>> changes.  Replace it with a lock in the devices global data.
>>>>
>>>> Hi Simran,
>>>>
>>>> Please post all revision histories below the --- not just the most
>>>> recent.
>>>>
>>> Sorry, will not repeat this.
>>>
>>>> Does this lock enforce the needed "atomicity" in the write_frequency
>>>> function? I read Jonathans comment on a previous revision about
>>>> "ensuring the spi bus frequency and sampling frequency of the device
>>>> are changed in an atomic fashion"
>>>>
>>>
>>> By introducing another lock I am protecting read_modify_write and
>>> in this way also protecting the designated register that we are about
>>> to write.
>>
>> I see it protecting this path from being re-entered.  My uncertainty
>> is about other paths to read/write.
>>
>>>
>>>> Is it possible for another spi bus transaction (read or write) to
>>>> occur between the read and write in write_frequency?
>>>>
>>>
>>> Gargi has also come up with a solution.
>>> https://groups.google.com/forum/#!topic/outreachy-kernel/kzE9CrI5Bd8
>>>
>>> Should I do like her as her's also seem correct or go ahead with this.
>>
>> My suggestion would be to wait for feedback on Gargi's patch.
>> (See the Outreachy log about creating similar solutions.)
>>
>> We will not be able to close on this set of patches during the
>> Outreachy application window.  You can continue to push for closure
>> beyond the March 30th date as your time allows :)
>>
> It is a close choice between the two approaches. In some ways
> yours is easier to follow, but Gargi's is more elegant.
>
> Lets go with that one for consistency across similar drivers,
> but if you had been the original author and done it this way
> I certainly wouldn't bother asking you to change it!

Yes, jonathan I am the original author.

>
> So in conclusion both patches are good.
>
> Jonathan
>
>> Thanks,
>> alisons
>>
>>>
>>>> alisons
>>>>>
>>>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>>>> ---
>>>>>
>>>>>  v4:
>>>>>    -Add mutex_init
>>>>>
>>>>>  drivers/staging/iio/meter/ade7753.c | 7 +++++--
>>>>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>>>>> index b71fbd3..30aebaf 100644
>>>>> --- a/drivers/staging/iio/meter/ade7753.c
>>>>> +++ b/drivers/staging/iio/meter/ade7753.c
>>>>> @@ -80,11 +80,13 @@
>>>>>   * @us:         actual spi_device
>>>>>   * @tx:         transmit buffer
>>>>>   * @rx:         receive buffer
>>>>> + * @lock:       protect sensor state
>>>>>   * @buf_lock:       mutex to protect tx and rx
>>>>>   **/
>>>>>  struct ade7753_state {
>>>>>       struct spi_device   *us;
>>>>>       struct mutex        buf_lock;
>>>>> +     struct mutex        lock;  /* protect sensor state */
>>>>>       u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>>>>       u8          rx[ADE7753_MAX_RX];
>>>>>  };
>>>>> @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>>>>       if (!val)
>>>>>               return -EINVAL;
>>>>>
>>>>> -     mutex_lock(&indio_dev->mlock);
>>>>> +     mutex_lock(&st->lock);
>>>>>
>>>>>       t = 27900 / val;
>>>>>       if (t > 0)
>>>>> @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>>>>       ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>>>>>
>>>>>  out:
>>>>> -     mutex_unlock(&indio_dev->mlock);
>>>>> +     mutex_unlock(&st->lock);
>>>>>
>>>>>       return ret ? ret : len;
>>>>>  }
>>>>> @@ -581,6 +583,7 @@ static int ade7753_probe(struct spi_device *spi)
>>>>>       st = iio_priv(indio_dev);
>>>>>       st->us = spi;
>>>>>       mutex_init(&st->buf_lock);
>>>>> +     mutex_init(&st->lock);
>>>>>
>>>>>       indio_dev->name = spi->dev.driver->name;
>>>>>       indio_dev->dev.parent = &spi->dev;
>>>>> --
>>>>> 2.7.4
>>>>>
>>>>> --
>>>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170323183520.GA9871%40singhal-Inspiron-5558.
>>>>> For more options, visit https://groups.google.com/d/optout.
>

