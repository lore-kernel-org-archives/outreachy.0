X-GM-THRID: 6388545566354178048
X-Received: by 10.157.48.75 with SMTP id w11mr5281984otd.31.1487496562430;
        Sun, 19 Feb 2017 01:29:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.15 with SMTP id p15ls845516ota.27.gmail; Sun, 19 Feb
 2017 01:29:21 -0800 (PST)
X-Received: by 10.157.6.80 with SMTP id 74mr5823959otn.5.1487496561744;
        Sun, 19 Feb 2017 01:29:21 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id z191si975308itc.0.2017.02.19.01.29.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 01:29:21 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cfNnz-0003Zc-8u; Sun, 19 Feb 2017 10:29:19 +0100
Received: from [212.114.238.86] (helo=[192.168.178.44])
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cfNnz-0004Gk-0W; Sun, 19 Feb 2017 10:29:19 +0100
Subject: Re: [Outreachy kernel] Re: [PATCH 2/3] staging: iio: ad7152: Use
 GENMASK() macro for left shifts
To: sayli karnik <karniksayli1995@gmail.com>
References: <cover.1487448326.git.karniksayli1995@gmail.com>
 <92240a3dca0138880fe47a7df0a5e6df869c8199.1487448326.git.karniksayli1995@gmail.com>
 <0b5ef4d0-14b5-1196-8bc4-deda9d8f75ce@metafoo.de>
 <CAKG5xWjTjrwGWN-wJwzL0GPGhC2kohovYe8Umtn54Rf=yawerg@mail.gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <45b398c9-0807-9eeb-76e0-74f167d1e585@metafoo.de>
Date: Sun, 19 Feb 2017 10:29:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAKG5xWjTjrwGWN-wJwzL0GPGhC2kohovYe8Umtn54Rf=yawerg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23089/Sun Feb 19 05:49:44 2017)

On 02/19/2017 07:01 AM, sayli karnik wrote:
[...]
>> [...]
>>>  /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
>>> -#define AD7152_CFG2_OSR(x)           (((x) & 0x3) << 4)
>>> +#define AD7152_CFG2_OSR(x)           GENMASK(((x) & 0x3), 4)
>>
>> The extra parenthesis around (x) & 0x3 are no needed when using the macro
>> (the macro will add them).
>>
> The outer parentheses are certainly not needed but for the ones around
> x, checkpatch.pl complains otherwise-
> CHECK: Macro argument 'x' may be better as '(x)' to avoid precedence issues

The one around x are needed and should stay.


