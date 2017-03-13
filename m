X-GM-THRID: 6396604644937695232
X-Received: by 10.157.5.168 with SMTP id 37mr15298831otd.0.1489413714072;
        Mon, 13 Mar 2017 07:01:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.8 with SMTP id e8ls1610780itc.3.canary-gmail; Mon, 13
 Mar 2017 07:01:52 -0700 (PDT)
X-Received: by 10.107.137.228 with SMTP id t97mr9224396ioi.64.1489413712905;
        Mon, 13 Mar 2017 07:01:52 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id n63si2295396ywb.7.2017.03.13.07.01.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 07:01:52 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.131] (helo=sslproxy02.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnQ7g-0005aI-7u; Mon, 13 Mar 2017 14:34:52 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy02.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnQ7g-0000Gq-1H; Mon, 13 Mar 2017 14:34:52 +0100
Subject: Re: [PATCH] staging: iio: ade7753: replace mlock with driver private
 lock
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
References: <20170312133250.GA7772@singhal-Inspiron-5558>
 <6e55c61d-7587-4191-1fc5-de43e26986d7@metafoo.de>
 <CALrZqyMfMvXmB4xRqxOog8eqqUE0q9WFyBAC6_ZEBc1voFJLyQ@mail.gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Pete Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <221527ad-aad4-5bfc-29da-d56880357c11@metafoo.de>
Date: Mon, 13 Mar 2017 14:34:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CALrZqyMfMvXmB4xRqxOog8eqqUE0q9WFyBAC6_ZEBc1voFJLyQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23200/Mon Mar 13 13:13:12 2017)

On 03/13/2017 01:33 PM, SIMRAN SINGHAL wrote:
> On Mon, Mar 13, 2017 at 5:30 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:
>> On 03/12/2017 02:32 PM, simran singhal wrote:
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
>>>  drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
>>>  1 file changed, 8 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>>> index dfd8b71..ca99d82 100644
>>> --- a/drivers/staging/iio/meter/ade7753.c
>>> +++ b/drivers/staging/iio/meter/ade7753.c
>>> @@ -81,12 +81,14 @@
>>>   * @tx:         transmit buffer
>>>   * @rx:         receive buffer
>>>   * @buf_lock:       mutex to protect tx and rx
>>> + * @lock:    protect sensor state
>>
>> It might make sense to reuse the existing lock which currently protects the
>> read/write functions. You can do this by introducing a variant of
>> ade7753_spi_{read,write}_reg_16() that does not take a lock and use these to
>> implement the read-modify-write cycle in a protected section.
>>
>> Looking through the driver there seem to be other places as well that do
>> read-modify-write that should be protected by a lock, but currently are not.
>> This might be a good task.
>>
> 
> Are you trying to say that their is no need of introducing "lock",
> I can using "buf_lock" only.

Yes, there should be no need for two locks. But you need to slightly
refactor the code to avoid taking the same lock nested.

> 
> Thanks!
> 
>>>   **/
>>>  struct ade7753_state {
>>> -         struct spi_device   *us;
>>> -                 struct mutex        buf_lock;
>>> -                         u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>> -                                 u8          rx[ADE7753_MAX_RX];
>>> +     struct spi_device   *us;
>>> +     struct mutex        buf_lock;
>>> +     struct mutex        lock;       /* protect sensor state */
>>> +     u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>> +     u8          rx[ADE7753_MAX_RX];
>>>  };
>>>
>>>  static int ade7753_spi_write_reg_8(struct device *dev,
>>> @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>>       if (!val)
>>>               return -EINVAL;
>>>
>>> -     mutex_lock(&indio_dev->mlock);
>>> +     mutex_lock(&st->lock);
>>>
>>>       t = 27900 / val;
>>>       if (t > 0)
>>> @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>>       ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>>>
>>>  out:
>>> -     mutex_unlock(&indio_dev->mlock);
>>> +     mutex_unlock(&st->lock);
>>>
>>>       return ret ? ret : len;
>>>  }
>>>
>>


