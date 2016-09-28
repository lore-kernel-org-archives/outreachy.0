X-GM-THRID: 6335076166751223808
X-Received: by 10.25.195.134 with SMTP id t128mr1765245lff.1.1475047177954;
        Wed, 28 Sep 2016 00:19:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.142 with SMTP id d136ls117333wmd.5.gmail; Wed, 28 Sep
 2016 00:19:37 -0700 (PDT)
X-Received: by 10.28.203.3 with SMTP id b3mr474580wmg.17.1475047177290;
        Wed, 28 Sep 2016 00:19:37 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id s6si1328092wmb.1.2016.09.28.00.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 00:19:37 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bp99T-000366-27; Wed, 28 Sep 2016 09:19:35 +0200
Received: from [46.244.244.13] (helo=[192.168.178.23])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bp99S-0000Ai-Kb; Wed, 28 Sep 2016 09:19:34 +0200
Subject: Re: [PATCH v3] iio: temperature: maxim_thermocouple: Replace unsigned
 int with __be16/__be32 to fix endianness warnings
To: Matt Ranostay <mranostay@gmail.com>,
 sayli karnik <karniksayli1995@gmail.com>
References: <20160927181039.GA16272@sayli-HP-15-Notebook-PC>
 <CAKzfze8K65dar8LPkQscSy=ESU7M-P=PY3-VsFS4P_ufvz4fPg@mail.gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <69edaf73-92f5-aa45-39f6-97a48d2c3b3b@metafoo.de>
Date: Wed, 28 Sep 2016 09:19:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <CAKzfze8K65dar8LPkQscSy=ESU7M-P=PY3-VsFS4P_ufvz4fPg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22265/Wed Sep 28 07:37:38 2016)

[...]
>>
>> diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
>> index 39dd202..01cad6e 100644
>> --- a/drivers/iio/temperature/maxim_thermocouple.c
>> +++ b/drivers/iio/temperature/maxim_thermocouple.c
>> @@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
>>  {
>>         unsigned int storage_bytes = data->chip->read_size;
>>         unsigned int shift = chan->scan_type.shift + (chan->address * 8);
>> -       unsigned int buf;
>> +       __be16 buf1;
>> +       __be32 buf2;
>>         int ret;
>>
>> -       ret = spi_read(data->spi, (void *) &buf, storage_bytes);
>> -       if (ret)
>> -               return ret;
>> -
>>         switch (storage_bytes) {
>>         case 2:
>> -               *val = be16_to_cpu(buf);
>> +               ret = spi_read(data->spi, (void *)&buf1, storage_bytes);
>> +               *val = be16_to_cpu(buf1);
> 
> Meh don't really like having buf1, and buf2 esp since they only used
> in one branch of the switch statement. And waste 2-4 byte of stack :).
> 
> I recommend something like:
> 
> case 2: {
>         __be16 buf;
>         ret = spi_read(data->spi, (void *)&buf1, storage_bytes);
>         *val = be16_to_cpu(buf1);
>         break;
> }
> case 4:
> ....
> 

I'd be quite surprised if the compiled end result actually looks different
between this and the original patch. Compilers are quite smart these days. I
wouldn't worry too much about it and keep the original solution, since it
has a nicer code flow to it.


