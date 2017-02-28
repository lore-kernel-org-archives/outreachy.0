X-GM-THRID: 6391874178049376256
X-Received: by 10.98.152.83 with SMTP id q80mr774496pfd.17.1488310487537;
        Tue, 28 Feb 2017 11:34:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.71.144 with SMTP id t138ls2617164itb.8.canary-gmail; Tue,
 28 Feb 2017 11:34:46 -0800 (PST)
X-Received: by 10.36.20.18 with SMTP id 18mr63586itg.2.1488310486510;
        Tue, 28 Feb 2017 11:34:46 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id y63si262644ywe.5.2017.02.28.11.34.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:34:46 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.131] (helo=sslproxy02.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cinXh-0007Y4-5s; Tue, 28 Feb 2017 20:34:37 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy02.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cinXg-0007rz-Tj; Tue, 28 Feb 2017 20:34:37 +0100
Subject: Re: [PATCH v2] staging: iio: accel: Move header file content to
 source file
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>
References: <20170228185117.GA10378@singhal-Inspiron-5558>
 <885c0c37-3709-7b56-a9cf-69a34c735bae@kernel.org>
 <a7be45a3-12e3-2074-b58f-d30494ba5955@kernel.org>
 <CALrZqyNWFtPzorYN--eQHyhvaZqgR51xgqcwpio+ZM_vB+ccRw@mail.gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <6780baa6-178a-111a-b6fb-30917beaa9dc@metafoo.de>
Date: Tue, 28 Feb 2017 20:34:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CALrZqyNWFtPzorYN--eQHyhvaZqgR51xgqcwpio+ZM_vB+ccRw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23145/Tue Feb 28 17:56:05 2017)

On 02/28/2017 08:32 PM, SIMRAN SINGHAL wrote:
> On Wed, Mar 1, 2017 at 12:53 AM, Jonathan Cameron <jic23@kernel.org> wrote:
>> On 28/02/17 19:17, Jonathan Cameron wrote:
>>> On 28/02/17 18:51, simran singhal wrote:
>>>> The contents of the header file are used only by this single
>>>> source file. Move content into .c and remove .h.
>>>>
>>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>> Applied to the togreg branch of iio.git and pushed out as testing
>>> for the autobuilders to play with it.
>>>
>>> Thanks,
>>>
>>> Jonathan
>>
>> One quick note:
>>
>> The title should include the name of the driver being modified
>> as this is probably the bit interested people are most likely
>> to pick up on in a long list of patches.
>>
>> I fixed this up.  Thanks,
>>
>> Jonathan
> 
> I have included the name of driver being modified.
> Due to want me to include the name of file i.e adis16201_core.c

Not the full filename, but the partnumber. E.g.

	'staging: iio: adis16201: ...'


