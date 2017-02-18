X-GM-THRID: 6388128141195345920
X-Received: by 10.25.18.35 with SMTP id h35mr1532714lfi.11.1487444435364;
        Sat, 18 Feb 2017 11:00:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.83 with SMTP id 19ls376096ljv.49.gmail; Sat, 18 Feb 2017
 11:00:34 -0800 (PST)
X-Received: by 10.46.87.27 with SMTP id l27mr1376829ljb.28.1487444434583;
        Sat, 18 Feb 2017 11:00:34 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id y19si354376wmd.0.2017.02.18.11.00.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 11:00:34 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 08A4B40603;
	Sat, 18 Feb 2017 19:00:34 +0000 (GMT)
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: compress return logic
To: Julia Lawall <julia.lawall@lip6.fr>, Gargi Sharma <gs051095@gmail.com>
References: <1487351841-6639-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702171852520.3109@hadrien>
Cc: outreachy-kernel@googlegroups.com, lars@metafoo.de,
 Michael.Hennerich@analog.com, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <339b68da-1e2c-cc4a-d072-3edc74aa69b3@kernel.org>
Date: Sat, 18 Feb 2017 19:00:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1702171852520.3109@hadrien>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 17/02/17 17:53, Julia Lawall wrote:
> 
> 
> On Fri, 17 Feb 2017, Gargi Sharma wrote:
> 
>> Simplify function returns by merging assignment and return.
>> Found with Coccinelle.
>>
>> Semantic patch:
>> @@
>> local idexpression ret;
>> expression e;
>> @@
>>
>> -ret =
>> +return
>>      e;
>> -return ret;
>>
>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Applied to the togreg branch of iio.git and pushed out as testing for the autobuilders to
play with it.

Thanks,

Jonathan
> 
>> ---
>>  drivers/staging/iio/meter/ade7854.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
>> index e8007f0..c6cffc1 100644
>> --- a/drivers/staging/iio/meter/ade7854.c
>> +++ b/drivers/staging/iio/meter/ade7854.c
>> @@ -426,9 +426,7 @@ static int ade7854_set_irq(struct device *dev, bool enable)
>>  	else
>>  		irqen &= ~BIT(17);
>>
>> -	ret = st->write_reg_32(dev, ADE7854_MASK0, irqen);
>> -
>> -	return ret;
>> +	return st->write_reg_32(dev, ADE7854_MASK0, irqen);
>>  }
>>
>>  static int ade7854_initial_setup(struct iio_dev *indio_dev)
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487351841-6639-1-git-send-email-gs051095%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


