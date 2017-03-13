X-GM-THRID: 6396716918154199040
X-Received: by 10.46.5.136 with SMTP id 130mr5448634ljf.6.1489439815797;
        Mon, 13 Mar 2017 14:16:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.9 with SMTP id l9ls325908lfi.42.gmail; Mon, 13 Mar 2017
 14:16:55 -0700 (PDT)
X-Received: by 10.25.104.21 with SMTP id d21mr4872740lfc.31.1489439815154;
        Mon, 13 Mar 2017 14:16:55 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id t131si654473wmf.1.2017.03.13.14.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 14:16:55 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.47.166.52] (helo=sslproxy04.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnWzP-0002Bb-VB; Mon, 13 Mar 2017 21:54:48 +0100
Received: from [93.104.168.23] (helo=[192.168.178.40])
	by sslproxy04.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cnWzP-0006Fw-Mg; Mon, 13 Mar 2017 21:54:47 +0100
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
To: Jonathan Cameron <jic23@kernel.org>, Gargi Sharma <gs051095@gmail.com>,
 Alison Schofield <amsfield22@gmail.com>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1703122154130.7649@hadrien>
 <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
 <alpine.DEB.2.20.1703122235320.7649@hadrien>
 <20170312221350.GA14070@d830.WORKGROUP>
 <CAOCi2DEyu6_bBjsrSFzf0VcXcUnZ3LugLf==R9zsSmj+1JdFKw@mail.gmail.com>
 <35231dfd-af42-bbd3-3be6-4e03a728a92f@kernel.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com,
 Michael.Hennerich@analog.com, knaack.h@gmx.de,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <73d214e0-46d0-0d4a-27e1-7c85cf3c05ed@metafoo.de>
Date: Mon, 13 Mar 2017 21:54:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <35231dfd-af42-bbd3-3be6-4e03a728a92f@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23201/Mon Mar 13 21:18:21 2017)

On 03/13/2017 09:51 PM, Jonathan Cameron wrote:
[...]
>>> Gargi,
>>>
>>> Please insert the new lock above the __cacheline_aligned struct
>>> member.
>>
>> I will do that, but is there any reason why the lock should be above
>> ____cacheline_aligned struct member?
> Yes.  It's in fact very important that nothing comes after that.
> 
> Will leave the why as an exercise for the reader.   I'll give the
> hit of spi drivers that do DMA...


One hint though, the answer is somewhere in Documentation/DMA-API.txt


