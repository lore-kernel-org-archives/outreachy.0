X-GM-THRID: 6337346063638200320
X-Received: by 10.36.70.130 with SMTP id j124mr2738330itb.18.1476700328753;
        Mon, 17 Oct 2016 03:32:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.141 with SMTP id o135ls2952251ioe.44.gmail; Mon, 17
 Oct 2016 03:32:06 -0700 (PDT)
X-Received: by 10.66.101.164 with SMTP id fh4mr4953318pab.121.1476700326122;
        Mon, 17 Oct 2016 03:32:06 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id 80si1893053ywv.5.2016.10.17.03.32.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 03:32:05 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bw5D4-0003vD-Md; Mon, 17 Oct 2016 12:31:58 +0200
Received: from [2003:86:2c57:7e00:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bw5D4-0005fN-G6; Mon, 17 Oct 2016 12:31:58 +0200
Subject: Re: [PATCH] Staging: iio: meter: ade7758_core: implement
 IIO_CHAN_INFO_SAMP_FREQ
To: Jonathan Cameron <jic23@kernel.org>,
 Sandhya Bankar <bankarsandhya512@gmail.com>, Michael.Hennerich@analog.com,
 knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
 linux-iio@vger.kernel.org
References: <20161003205906.GA9271@localhost.localdomain>
 <db94a7bd-715c-0c8d-3d9d-ecc4dbdefde4@kernel.org>
Cc: outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <26216a49-4186-1e3a-3aaf-924216c9f6f0@metafoo.de>
Date: Mon, 17 Oct 2016 12:31:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <db94a7bd-715c-0c8d-3d9d-ecc4dbdefde4@kernel.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22379/Mon Oct 17 07:52:44 2016)

On 10/09/2016 09:58 AM, Jonathan Cameron wrote:
> On 03/10/16 21:59, Sandhya Bankar wrote:
>> This driver predates the availability of IIO_CHAN_INFO_SAMP_FREQ attribute
>> wherein usage has some advantages like it can be accessed by in-kernel
>> consumers as well as reduces the code size.
>>
>> Hence moving functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into
>> IIO_CHAN_INFO_SAMP_FREQ handlers. Also Adding ade7758_read_raw() and
>> ade7758_write_raw() to allow reading/writing the element as well.
>>
>> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> Applied to the togreg branch of iio.git and pushed out as testing for
> the autobuilders to play with it.
> 
> This is another driver where I'd argue that hardware will be needed
> to take it much further unfortunately. I've asked Lars to confirm
> if Analog have any intent wrt to these meter drivers in the other
> thread. Let's see what he comes back with,

I'll let Michael make the decision on these.

On one hand these are pretty low priory, there is a lot of work to do and I
don't have the hardware nor experience with power meters. All of this speaks
for pulling them plug, but on the other hand I've seen people actually using
these drivers.


