X-GM-THRID: 6402897717905850368
X-Received: by 10.157.82.164 with SMTP id f36mr101671oth.17.1490791999812;
        Wed, 29 Mar 2017 05:53:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.36 with SMTP id 33ls2387334ota.46.gmail; Wed, 29 Mar
 2017 05:53:19 -0700 (PDT)
X-Received: by 10.129.181.75 with SMTP id c11mr92833ywk.57.1490791999002;
        Wed, 29 Mar 2017 05:53:19 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id f9si989668ywh.6.2017.03.29.05.53.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 05:53:18 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.47.166.52] (helo=sslproxy04.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1ctD65-0000DW-Iq; Wed, 29 Mar 2017 14:53:10 +0200
Received: from [93.104.162.70] (helo=[192.168.178.41])
	by sslproxy04.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1ctD65-0007O1-Aa; Wed, 29 Mar 2017 14:53:09 +0200
Subject: Re: [Outreachy kernel] [PATCH 4/4] iio: light: si1145: Replace
 ternary operator with min macro
To: Julia Lawall <julia.lawall@lip6.fr>,
 simran singhal <singhalsimran0@gmail.com>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
 <1490790791-5694-5-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703291440070.2989@hadrien>
Cc: jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <bd1805f2-4c8b-f51a-89fc-87d719f20ed6@metafoo.de>
Date: Wed, 29 Mar 2017 14:53:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1703291440070.2989@hadrien>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23247/Wed Mar 29 06:33:07 2017)

On 03/29/2017 02:40 PM, Julia Lawall wrote:
> 
> 
> On Wed, 29 Mar 2017, simran singhal wrote:
> 
>> Use macro min() to get the minimum of two values for brevity and
>> readability.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/iio/light/si1145.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/light/si1145.c b/drivers/iio/light/si1145.c
>> index 096034c..e7ad6fb 100644
>> --- a/drivers/iio/light/si1145.c
>> +++ b/drivers/iio/light/si1145.c
>> @@ -557,7 +557,7 @@ static int si1145_set_chlist(struct iio_dev *indio_dev, unsigned long scan_mask)
>>  	data->scan_mask = scan_mask;
>>  	ret = si1145_param_set(data, SI1145_PARAM_CHLIST, reg);
>>
>> -	return ret < 0 ? ret : 0;
>> +	return min(ret, 0);
> 
> A similar change involving max was already rejected.  ret < 0 is a
> standard way of detecting an error, so perhaps leaving that explicitly
> present will be preferred.

I think a more sensible thing to do here is to check whether ret/err can
actually take any positive values and if not, replace the whole thing with
just 'return ret;' or 'return some_fn()'. I'd expect that his can be done in
most of the cases.


