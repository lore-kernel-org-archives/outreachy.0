X-GM-THRID: 6336450754880995328
X-Received: by 10.46.32.169 with SMTP id g41mr1035072lji.26.1475423592032;
        Sun, 02 Oct 2016 08:53:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.175.207 with SMTP id y198ls1113817wme.26.gmail; Sun, 02 Oct
 2016 08:53:11 -0700 (PDT)
X-Received: by 10.194.153.10 with SMTP id vc10mr1014084wjb.16.1475423591591;
        Sun, 02 Oct 2016 08:53:11 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id a126si752023wmd.1.2016.10.02.08.53.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:53:11 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bqj4f-0005OD-5V; Sun, 02 Oct 2016 17:53:09 +0200
Received: from [46.244.234.142] (helo=[192.168.178.23])
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bqj4e-0008IA-TE; Sun, 02 Oct 2016 17:53:09 +0200
Subject: Re: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix
 sparse warning
To: Alison Schofield <amsfield22@gmail.com>,
 sayli karnik <karniksayli1995@gmail.com>
References: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
 <20161002050032.GA14117@d830.WORKGROUP>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <e4800421-2dc9-2460-470b-a043d198f469@metafoo.de>
Date: Sun, 2 Oct 2016 17:53:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <20161002050032.GA14117@d830.WORKGROUP>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22291/Sun Oct  2 15:40:49 2016)

On 10/02/2016 07:00 AM, Alison Schofield wrote:
[...]
>> ---
>>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
>> index e0251b8..5355507 100644
>> --- a/drivers/iio/imu/bmi160/bmi160_core.c
>> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
>> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>>  	struct iio_poll_func *pf = p;
>>  	struct iio_dev *indio_dev = pf->indio_dev;
>>  	struct bmi160_data *data = iio_priv(indio_dev);
>> -	s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
>> +	__le16 buf[16];
>> +	/* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
>>  	int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
>>  	__le16 sample;
> 
> Wondering about this option below.  Data was read into an __le16, so that
> was good diligence on drivers part.  Seems we can use le16_to_cpu() for the
> conversion into the buf.
> 
> --- a/drivers/iio/imu/bmi160/bmi160_core.c
> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> @@ -408,7 +408,7 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>  				       &sample, sizeof(__le16));
>  		if (ret < 0)
>  			goto done;
> -		buf[j++] = sample;
> +		buf[j++] = le16_to_cpu(sample);
>  	}

This conversion is usually skipped on purpose and delayed until it is
actually needed by the user. The IIO channel is accordingly marked that it
will produce LE data.


