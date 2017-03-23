X-GM-THRID: 6400705153326907392
X-Received: by 10.25.198.86 with SMTP id w83mr551670lff.28.1490289548263;
        Thu, 23 Mar 2017 10:19:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.207 with SMTP id r198ls476680lfe.14.gmail; Thu, 23 Mar
 2017 10:19:06 -0700 (PDT)
X-Received: by 10.25.210.146 with SMTP id j140mr556014lfg.10.1490289546761;
        Thu, 23 Mar 2017 10:19:06 -0700 (PDT)
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id q207si1977690wme.3.2017.03.23.10.19.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 10:19:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [10.146.208.97] (82-132-244-182.dab.02.net [82.132.244.182])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id E8DBC40788;
	Thu, 23 Mar 2017 17:19:04 +0000 (GMT)
Date: Thu, 23 Mar 2017 17:19:02 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <alpine.DEB.2.20.1703231547290.3193@hadrien>
References: <20170323144453.GA7093@aishwarya> <alpine.DEB.2.20.1703231547290.3193@hadrien>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: accel: adis16201: remove local variable addr
To: Julia Lawall <julia.lawall@lip6.fr>,Aishwarya Pant <aishpant@gmail.com>
CC: Lars-Peter Clausen <lars@metafoo.de>,Michael Hennerich <Michael.Hennerich@analog.com>,Jonathan Cameron <jic23@kernel.org>,Hartmut Knaack <knaack.h@gmx.de>,Peter Meerwald-Stadler <pmeerw@pmeerw.net>,Greg Kroah-Hartman <gregkh@linuxfoundation.org>,Barry Song <21cnbao@gmail.com>,outreachy-kernel@googlegroups.com,linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <A1780232-CAC7-47F5-ABD4-F06A8C3A4B79@jic23.retrosnub.co.uk>



On 23 March 2017 14:48:10 GMT+00:00, Julia Lawall <julia=2Elawall@lip6=2Ef=
r> wrote:
>
>
>On Thu, 23 Mar 2017, Aishwarya Pant wrote:
>
>> Remove local variable addr from adis_read_reg_16() and
>adis_write_reg_16()
>> as it is used only once=2E
>>
>> Signed-off-by: Aishwarya Pant <aishpant@gmail=2Ecom>
>> ---
>>  drivers/staging/iio/accel/adis16201=2Ec | 12 ++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/iio/accel/adis16201=2Ec
>b/drivers/staging/iio/accel/adis16201=2Ec
>> index fbc2406=2E=2Eb03c4f3 100644
>> --- a/drivers/staging/iio/accel/adis16201=2Ec
>> +++ b/drivers/staging/iio/accel/adis16201=2Ec
>> @@ -175,7 +175,6 @@ static int adis16201_read_raw(struct iio_dev
>*indio_dev,
>>  	struct adis *st =3D iio_priv(indio_dev);
>>  	int ret;
>>  	int bits;
>> -	u8 addr;
>>  	s16 val16;
>>
>>  	switch (mask) {
>> @@ -223,8 +222,9 @@ static int adis16201_read_raw(struct iio_dev
>*indio_dev,
>>  		default:
>>  			return -EINVAL;
>>  		}
>> -		addr =3D adis16201_addresses[chan->scan_index];
>> -		ret =3D adis_read_reg_16(st, addr, &val16);
>> +		ret =3D adis_read_reg_16(st,
>> +				       adis16201_addresses[chan->scan_index],
>> +				       &val16);
>
>The original code was probably nicer=2E  One line shorter in the part
>that
>actually does computation=2E
That did indeed fall out worse than i expected=2E

Sorry Aishwarya, I led you up a blind alley here!

Jonathan
>
>julia
>
>>  		if (ret)
>>  			return ret;
>>  		val16 &=3D (1 << bits) - 1;
>> @@ -244,7 +244,6 @@ static int adis16201_write_raw(struct iio_dev
>*indio_dev,
>>  	struct adis *st =3D iio_priv(indio_dev);
>>  	int bits;
>>  	s16 val16;
>> -	u8 addr;
>>
>>  	switch (mask) {
>>  	case IIO_CHAN_INFO_CALIBBIAS:
>> @@ -259,8 +258,9 @@ static int adis16201_write_raw(struct iio_dev
>*indio_dev,
>>  			return -EINVAL;
>>  		}
>>  		val16 =3D val & ((1 << bits) - 1);
>> -		addr =3D adis16201_addresses[chan->scan_index];
>> -		return adis_write_reg_16(st, addr, val16);
>> +		return adis_write_reg_16(st,
>> +					 adis16201_addresses[chan->scan_index],
>> +					 val16);
>>  	}
>>  	return -EINVAL;
>>  }
>> --
>> 2=2E7=2E4
>>
>> --
>> You received this message because you are subscribed to the Google
>Groups "outreachy-kernel" group=2E
>> To unsubscribe from this group and stop receiving emails from it,
>send an email to outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E
>> To post to this group, send email to
>outreachy-kernel@googlegroups=2Ecom=2E
>> To view this discussion on the web visit
>https://groups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/20170323144453=2EG=
A7093%40aishwarya=2E
>> For more options, visit https://groups=2Egoogle=2Ecom/d/optout=2E
>>
>--
>To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>the body of a message to majordomo@vger=2Ekernel=2Eorg
>More majordomo info at  http://vger=2Ekernel=2Eorg/majordomo-info=2Ehtml

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

