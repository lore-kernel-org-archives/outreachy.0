X-GM-THRID: 6334501758545428480
X-Received: by 10.28.1.83 with SMTP id 80mr357299wmb.14.1475004389685;
        Tue, 27 Sep 2016 12:26:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.156 with SMTP id f28ls2184318lji.31.gmail; Tue, 27 Sep
 2016 12:26:28 -0700 (PDT)
X-Received: by 10.25.152.10 with SMTP id a10mr1549782lfe.4.1475004388719;
        Tue, 27 Sep 2016 12:26:28 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id 185si1096562wmr.2.2016.09.27.12.26.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 12:26:28 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1boy1L-00023F-RZ; Tue, 27 Sep 2016 21:26:27 +0200
Received: from [46.244.239.26] (helo=[192.168.178.23])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1boy1L-0006Vu-EP; Tue, 27 Sep 2016 21:26:27 +0200
Subject: Re: [PATCH 1/2] Staging: iio: adc: constify attribute_group
 structures
To: Jonathan Cameron <jic23@kernel.org>, Bhumika Goyal <bhumirks@gmail.com>,
 outreachy-kernel@googlegroups.com, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
References: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>
 <1474866099-12282-2-git-send-email-bhumirks@gmail.com>
 <10137f4a-6794-e043-1525-e4152b568ec1@metafoo.de>
 <d6a775f3-b378-3f3b-be56-78549975530a@kernel.org>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <bf0c5fb2-8b67-320c-e164-01c37e5ba3e7@metafoo.de>
Date: Tue, 27 Sep 2016 21:26:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <d6a775f3-b378-3f3b-be56-78549975530a@kernel.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22262/Tue Sep 27 19:37:37 2016)

On 09/27/2016 09:22 PM, Jonathan Cameron wrote:
>>
>> Looks good, thanks. Just as something to remember for future patches, if you
>> send a patch for a single driver it is best to mention the driver in the
>> subject. Usually you can also leave out the sub-subsystem. So in this case
>> something like "staging:iio:ad7280a: ..."
>>
>> Acked-by: Lars-Peter Clausen <lars@metafoo.de>
> Applied to the togreg branch of iio.git and pushed out as testing.

Greg fast-tracked this one, it's already in staging-testing.


