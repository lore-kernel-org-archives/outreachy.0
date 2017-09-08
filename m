X-GM-THRID: 6463264709450661888
X-Received: by 10.129.41.12 with SMTP id p12mr1470473ywp.133.1504865532048;
        Fri, 08 Sep 2017 03:12:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.132 with SMTP id 126ls1892190ion.45.gmail; Fri, 08 Sep
 2017 03:12:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCGbB89MgRiNNsI/tfAsDxgwugiWwqgK3x028BGCEU2xWwsT/3Oet7FbASwrGPB6Jw8U99P
X-Received: by 10.202.8.147 with SMTP id 141mr1385299oii.30.1504865531301;
        Fri, 08 Sep 2017 03:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504865531; cv=none;
        d=google.com; s=arc-20160816;
        b=v1t/iKqFqiUf6wBtwz07C9glIBDAck/2noMu8RT+FWwEKLKqnvjoaZWw4PJAp4Rf4n
         Zg7d/dl/rZ5IuOnyDkGk5tBwfQfR9uedaXZ6KqEuTpP1mMXdY0d4IoxCy/WWAXsD5vdZ
         x/UjwLTa1XqRluQhol7Z0tHEhUH7PIacERDyCEu8aDfqYLovn//mn5u6W6HLMg2VJWKO
         E+CtgSf2B5q/OlbxSWZNyXDud8Y+b1sZ7yMJ/FC638JSSptHB4DDriFzMjMqa+BkVz8l
         RqoBNYn9uR05+pE2CgOP3wlFgrP+7J4impXLyesVPUxEiPtAwPUuBo9r38tUvvnx3Po2
         02CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=GvhOb7TGa7K9Jzf40Qg6vfcupr5DDAECb8g4WLNwez8=;
        b=N9KbnLm5ud4yf2Jx/SQP9rXmGGAuXQZKEu4JthobEIPGs3q0S3sYYPc3lpmrnMcL+5
         LVWc7/is+H7G9Besie8z708od32IYsOM/3AsM+Z7d09hMn2tKPl06R7c6ANEXOs5wcYA
         hvFPq9Yx51GxbwiWdhEe8O3LFplgLmuvHnnS2hSVkBabcR/rG0LZwC1Xpc1cQdnpuGWs
         LTVYXcUe8+ExiAWzH2+LSjtfMNqqj19f2nHLkKQhfG/nbyTcq1PFjJT7VYgziAxb2kBX
         mKsX1wKG6NDxwxpGhkYq+OdGENjGv7kQR2/K4IpCEZvHefZjRyhbVVaw32G6tQkYu1ij
         1kWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id o71si62928itb.4.2017.09.08.03.12.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 03:12:11 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.47.166.52] (helo=sslproxy04.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1dqGGT-0006TG-R7; Fri, 08 Sep 2017 12:11:57 +0200
Received: from [2003:86:2c30:3400:8200:bff:fe9b:6612]
	by sslproxy04.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1dqGGT-0002P9-H8; Fri, 08 Sep 2017 12:11:57 +0200
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: iio: adc: Added Space
 around binary op.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Jonathan Cameron <jic23@jic23.retrosnub.co.uk>,
 Himanshi Jain <himshijain.hj@gmail.com>, outreachy-kernel@googlegroups.com,
 Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20170908044752.GA6199@himanshi-Inspiron-5558>
 <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk>
 <20170908103257.00002165@huawei.com>
 <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de>
 <alpine.DEB.2.20.1709081157590.3165@hadrien>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <9590dab0-5bd8-c4d0-1f34-934d3835fade@metafoo.de>
Date: Fri, 8 Sep 2017 12:11:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709081157590.3165@hadrien>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23793/Fri Sep  8 10:39:01 2017)

On 09/08/2017 11:59 AM, Julia Lawall wrote:
> 
> 
> On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:
> 
>> On 09/08/2017 11:32 AM, Jonathan Cameron wrote:
>>> On Fri, 8 Sep 2017 07:29:06 +0100
>>> Jonathan Cameron <jic23@jic23.retrosnub.co.uk> wrote:
>>>
>>>> On 8 September 2017 05:47:52 BST, Himanshi Jain <himshijain.hj@gmail.com> wrote:
>>>>> Added space around(one on each side of) binary
>>>>> operator(-) as preferred according to kernel
>>>>> coding style.
>>>>>
>>>>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
>>>>
>>>> Take a closer look at that macro. It isn't doing what you think...
>>>> To give a hint, changing this breaks userspace.
>>>
>>> Ok, I'm bored of this particular one coming up. When you have
>>> worked out what is going on Himanshi, would you mind putting
>>> together a patch adding a comment describing why it is a bad
>>> idea to 'fix' this?  That would be a very useful patch as
>>> far as I'm concerned :)
>>>
>>> There aren't that many cases of this in IIO so adding a comment
>>> on each of them is probably reasonable just to avoid wasting
>>> people's time on fixing them! (I think we have had more than
>>> 5 such goes this year so far...)
>>>
>>
>> I'd much rather fix this API so that you have to put "" around the name so
>> that it is clear that it is a string, rather than doing the implicit
>> conversion to string using preprocessor magic. Better to have a
>> self-documenting API then having to add a comment to each user of the API.
> 
> All the DEVICE_ATTR macros use the same strategy.  And the non-IIO ones,
> eg DEVICE_ATTR_RW, also use the provided name to construct the names of
> the show and store functions, so I don't think a string would be
> appropriate.

I'm only suggesting to use a string for the _NAMED macros where the name is
not used to construct the identifiers.

In the case where the name is used to construct the identifiers we don't
have the issue with false positives since the name must be a valid
identifier on its own.

