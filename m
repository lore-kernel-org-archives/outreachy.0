X-GM-THRID: 6400014269629333504
X-Received: by 10.25.193.213 with SMTP id r204mr591613lff.24.1490293025139;
        Thu, 23 Mar 2017 11:17:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.94 with SMTP id g91ls489101lfi.4.gmail; Thu, 23 Mar 2017
 11:17:04 -0700 (PDT)
X-Received: by 10.25.201.198 with SMTP id z189mr579457lff.15.1490293024001;
        Thu, 23 Mar 2017 11:17:04 -0700 (PDT)
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id e72si2057210wma.0.2017.03.23.11.17.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 11:17:03 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 178.18.118.26 as permitted sender) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 178.18.118.26 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [192.168.0.4] (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 776A840766;
	Thu, 23 Mar 2017 18:17:02 +0000 (GMT)
Date: Thu, 23 Mar 2017 18:17:00 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <CALrZqyPkBCfAwr7=nO7QLXDfyC6cATDFmxFr32aSN+3D=jr8TQ@mail.gmail.com>
References: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com> <1490119436-20042-3-git-send-email-singhalsimran0@gmail.com> <5d65a41d-5290-eb55-6452-7bb8bfbdd9f2@kernel.org> <CALrZqyPkBCfAwr7=nO7QLXDfyC6cATDFmxFr32aSN+3D=jr8TQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/2] staging: iio: ade7753: Replace mlock with driver private lock
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>,Jonathan Cameron <jic23@kernel.org>
CC: Lars-Peter Clausen <lars@metafoo.de>,Michael Hennerich <Michael.Hennerich@analog.com>,Hartmut Knaack <knaack.h@gmx.de>,Peter Meerwald-Stadler <pmeerw@pmeerw.net>,Greg KH <gregkh@linuxfoundation.org>,linux-iio@vger.kernel.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org,outreachy-kernel <outreachy-kernel@googlegroups.com>
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <87F68D7D-B342-486E-92A2-0C127E23E862@jic23.retrosnub.co.uk>



On 23 March 2017 18:12:33 GMT+00:00, SIMRAN SINGHAL <singhalsimran0@gmail=
=2Ecom> wrote:
>On Thu, Mar 23, 2017 at 1:55 AM, Jonathan Cameron <jic23@kernel=2Eorg>
>wrote:
>> On 21/03/17 18:03, simran singhal wrote:
>>> The IIO subsystem is redefining iio_dev->mlock to be used by
>>> the IIO core only for protecting device operating mode changes=2E
>>> ie=2E Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes=2E
>>>
>>> In this driver, mlock was being used to protect hardware state
>>> changes=2E  Replace it with a lock in the devices global data=2E
>>>
>>> Signed-off-by: simran singhal <singhalsimran0@gmail=2Ecom>
>> Mutex is not initialized=2E=2E=2E
>
>Mutex is already initialized in ade7753_probe()=2E
Given you introduce a new mutex it seems unlikely that one is=2E You have =
to initialise each mutex=2E
>
>>> ---
>>>  drivers/staging/iio/meter/ade7753=2Ec | 6 ++++--
>>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/staging/iio/meter/ade7753=2Ec
>b/drivers/staging/iio/meter/ade7753=2Ec
>>> index b71fbd3=2E=2E9674e05 100644
>>> --- a/drivers/staging/iio/meter/ade7753=2Ec
>>> +++ b/drivers/staging/iio/meter/ade7753=2Ec
>>> @@ -80,11 +80,13 @@
>>>   * @us:         actual spi_device
>>>   * @tx:         transmit buffer
>>>   * @rx:         receive buffer
>>> + * @lock:       protect sensor state
>>>   * @buf_lock:       mutex to protect tx and rx
>>>   **/
>>>  struct ade7753_state {
>>>       struct spi_device   *us;
>>>       struct mutex        buf_lock;
>>> +     struct mutex        lock;  /* protect sensor state */
>>>       u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>>       u8          rx[ADE7753_MAX_RX];
>>>  };
>>> @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct
>device *dev,
>>>       if (!val)
>>>               return -EINVAL;
>>>
>>> -     mutex_lock(&indio_dev->mlock);
>>> +     mutex_lock(&st->lock);
>>>
>>>       t =3D 27900 / val;
>>>       if (t > 0)
>>> @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct
>device *dev,
>>>       ret =3D ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>>>
>>>  out:
>>> -     mutex_unlock(&indio_dev->mlock);
>>> +     mutex_unlock(&st->lock);
>>>
>>>       return ret ? ret : len;
>>>  }
>>>
>>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

