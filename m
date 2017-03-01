X-GM-THRID: 6391536108233031680
X-Received: by 10.31.160.131 with SMTP id j125mr530181vke.13.1488392092294;
        Wed, 01 Mar 2017 10:14:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls5010156otc.47.gmail; Wed, 01 Mar
 2017 10:14:51 -0800 (PST)
X-Received: by 10.31.47.78 with SMTP id v75mr543021vkv.40.1488392091516;
        Wed, 01 Mar 2017 10:14:51 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id n63si633837ywb.7.2017.03.01.10.14.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 10:14:51 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.131] (helo=sslproxy02.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cj8lz-0006Nf-Uy; Wed, 01 Mar 2017 19:14:48 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy02.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cj8lz-0007mC-P9; Wed, 01 Mar 2017 19:14:47 +0100
Subject: Re: [PATCH v3] staging: iio: ad9832: Moved contents of the header to
 the source file
To: Narcisa Vasile <narcisaanamaria12@gmail.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <1488145439-32728-1-git-send-email-narcisaanamaria12@gmail.com>
 <1488145439-32728-1-git-send-email-narcisaanamaria12@gmail.com>
 <1488216496-16969-1-git-send-email-narcisaanamaria12@gmail.com>
 <c5b95296-f346-4e7e-9248-0d68d7a51339@googlegroups.com>
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <376d777d-2579-7553-c488-aef80acf81ec@metafoo.de>
Date: Wed, 1 Mar 2017 19:14:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <c5b95296-f346-4e7e-9248-0d68d7a51339@googlegroups.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23150/Wed Mar  1 18:01:56 2017)

On 03/01/2017 06:12 PM, Narcisa Vasile wrote:
> Hi,
> Is this patch correct now or should I improve it ?

Patch looks OK. But in general you need to allow some time for review.
People are often busy with work, tight deadlines, etc. Jonathan for example
who will apply your patch works on this in his spare time. So it might take
a few days before somebody gets the time to look at your patch. Asking about
the state of the patch after a few days is just one more e-mail to read for
the maintainer. I understand that for you your patch is the most important
patch, but maintainers get bombarded with tens if not even hundreds of
patches a day and they have to care about them all equally.


