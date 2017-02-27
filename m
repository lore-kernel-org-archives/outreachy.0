X-GM-THRID: 6391540020415561728
X-Received: by 10.13.220.198 with SMTP id f189mr5913594ywe.121.1488203200387;
        Mon, 27 Feb 2017 05:46:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.1 with SMTP id 1ls13503642ota.5.gmail; Mon, 27 Feb 2017
 05:46:39 -0800 (PST)
X-Received: by 10.200.44.172 with SMTP id 41mr3581960qtw.30.1488203199681;
        Mon, 27 Feb 2017 05:46:39 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id d67si88853ywb.3.2017.02.27.05.46.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 05:46:39 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciLdK-0008Gh-7d; Mon, 27 Feb 2017 14:46:34 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciLdK-0006w6-0V; Mon, 27 Feb 2017 14:46:34 +0100
Subject: Re: [PATCH] staging: iio: ad9834: Moved contents of header file to
 source file
To: Narcisa Vasile <narcisaanamaria12@gmail.com>
References: <1488146361-14383-1-git-send-email-narcisaanamaria12@gmail.com>
 <b587366e-dec9-c550-3617-2a6d76200423@metafoo.de>
 <CAEdesYZkN4+ZXCycyP71FTEKYC750TtPAQMtF62FyYUp+fZCFA@mail.gmail.com>
Cc: knaack.h@gmx.de, pmeerw@pmeerw.net, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, jic23@kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <67b0af65-f4cb-5d2f-7018-633accd676dd@metafoo.de>
Date: Mon, 27 Feb 2017 14:46:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAEdesYZkN4+ZXCycyP71FTEKYC750TtPAQMtF62FyYUp+fZCFA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23139/Mon Feb 27 13:52:34 2017)

On 02/27/2017 02:41 PM, Narcisa Vasile wrote:
> Pe 27 feb. 2017 11:21, "Lars-Peter Clausen" <lars@metafoo.de
> <mailto:lars@metafoo.de>> a scris:
>>
>> On 02/26/2017 10:59 PM, Narcisa Ana Maria Vasile wrote:
>> > The contents of the header file are used only by this single source file
>>
>> Same here, platform data should stay in its the header file, everything else
>> can and should be moved.
>>
>>
> I'm attempting to fix this patch and I want to make sure I understood the
> right way to do it.
> According to the TODO above the platform data struct, this struct should go
> to include/linux/iio. So, is it ok to create a new header file with the
> original name (ad9834.h), place the platform data struct inside it and put
> this header file into include/linux/iio/frequency folder? 
> Then, in the C file, I will include this new header, remove the platform
> data struct, but keep the defines and state struct.
> Same for the other file (ad9832).

Moving this file to the regular include file path will only happen when the
driver as a whole graduates from the staging part of the kernel. For the
time being the file should stay were it is.

So basically the patch is file as it is, except that the platform data
struct should not be moved over to the C file.

