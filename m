X-GM-THRID: 6400661101399244800
X-Received: by 10.99.123.91 with SMTP id k27mr566393pgn.110.1490270369933;
        Thu, 23 Mar 2017 04:59:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls4682177ots.19.gmail; Thu, 23 Mar
 2017 04:59:29 -0700 (PDT)
X-Received: by 10.13.232.73 with SMTP id r70mr617671ywe.53.1490270369583;
        Thu, 23 Mar 2017 04:59:29 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id x124si568077ywb.1.2017.03.23.04.59.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 04:59:29 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.131] (helo=sslproxy02.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cr1Ol-0001iC-Ft; Thu, 23 Mar 2017 12:59:23 +0100
Received: from [2003:86:2c12:f000:8200:bff:fe9b:6612]
	by sslproxy02.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cr1Ol-0007gg-9z; Thu, 23 Mar 2017 12:59:23 +0100
Subject: Re: [PATCH] staging: tsl2x7x: Moved contents of the header to the
 source file.
To: Arushi Singhal <arushisinghal19971997@gmail.com>, jic23@kernel.org
References: <20170323115357.GA24360@arushi-HP-Pavilion-Notebook>
Cc: Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <d432970a-ffea-2cce-de3e-db4f30f0201f@metafoo.de>
Date: Thu, 23 Mar 2017 12:59:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170323115357.GA24360@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23229/Thu Mar 23 05:27:26 2017)

On 03/23/2017 12:53 PM, Arushi Singhal wrote:
> Moved the contents of the header(tsl2x7x.h) into the source file
> tsl2x7x_core.c with the exception of the platform data struct which is
> supposed to be used from somewhere else other than the driver.

The platform_data struct uses the other structs though.

