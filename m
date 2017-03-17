X-GM-THRID: 6397390793328295936
X-Received: by 10.107.40.18 with SMTP id o18mr3739013ioo.6.1489741416127;
        Fri, 17 Mar 2017 02:03:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.46 with SMTP id h43ls6782085ote.9.gmail; Fri, 17 Mar
 2017 02:03:35 -0700 (PDT)
X-Received: by 10.129.40.134 with SMTP id o128mr7217227ywo.82.1489741415449;
        Fri, 17 Mar 2017 02:03:35 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id y63si1028857ywe.5.2017.03.17.02.03.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 02:03:35 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1connE-0000dq-LM; Fri, 17 Mar 2017 10:03:28 +0100
Received: from [93.104.170.34] (helo=[192.168.178.40])
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1connE-0002SN-CA; Fri, 17 Mar 2017 10:03:28 +0100
Subject: Re: [PATCH v2] staging: iio: adis16240: Remove mutex_lock() and
 mutex_unlock() function call.
To: Jonathan Cameron <jic23@kernel.org>, Varsha Rao <rvarsha016@gmail.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
References: <58c81906.42d5620a.3e22a.7a2b@mx.google.com>
 <39a0f2ff-5771-b287-60ca-b62ba330f31b@kernel.org>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <08d175a1-af67-40f9-7301-7f7158347e3c@metafoo.de>
Date: Fri, 17 Mar 2017 10:03:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <39a0f2ff-5771-b287-60ca-b62ba330f31b@kernel.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23211/Fri Mar 17 05:16:44 2017)

On 03/15/2017 11:11 PM, Jonathan Cameron wrote:
> On 14/03/17 16:23, Varsha Rao wrote:
>> Remove mutex_lock() and mutex_unlock() function calls, as the
>> adis16240_spi_read_signed() function can be run parallel and safely
>> multiple times. Also remove the mutex.h header file and comment, which
>> are no longer required.
>>
>> As indio_dev is declared and initialized in adis16240_spi_read_signed(),
>> again declaration to same type and initialization to same value is not
>> required, remove it from adis16240_read_12bit_signed().
>>
>> Simplify the return logic, by merging assignment and return into a single
>> line.
>>
>> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> It's a bit obscure, but isn't there the potential to get the check_status
> call spitting out text for the wrong read, or potentially miss a status
> value entirely?
> 
> (kind of more for Lars really, but feel free to comment Varsha!)
> 
> The various faults look like this wouldn't be an issue, but I'm not
> totally sure about the SPI failure and whether a following good read
> at exactly the wrong time might result in the error not being reported...

I don't think it matters. The error reporting is asynchronous anyway and the
bits are read-to-clear. So even if two access see the error flag set in the
data only one of them will be able to read the bits in the diag_stat
register (unless the error is persistent, in which case the error flag in
the data would also be persistent).


