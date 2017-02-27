X-GM-THRID: 6391526097172824064
X-Received: by 10.157.80.21 with SMTP id a21mr3436875oth.89.1488187464033;
        Mon, 27 Feb 2017 01:24:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls2018241itc.10.gmail; Mon, 27 Feb
 2017 01:24:23 -0800 (PST)
X-Received: by 10.99.110.1 with SMTP id j1mr2839532pgc.52.1488187463321;
        Mon, 27 Feb 2017 01:24:23 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id r6si1371308ywb.6.2017.02.27.01.24.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 01:24:22 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciHXZ-0005em-Sq; Mon, 27 Feb 2017 10:24:21 +0100
Received: from [93.104.175.213] (helo=[192.168.178.44])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciHXZ-000322-Cc; Mon, 27 Feb 2017 10:24:21 +0100
Subject: Re: [PATCH] staging: iio: iio-trig-bfin-timer: Move contents of
 header file to source file
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20170226210516.GA20649@sayli-HP-15-Notebook-PC>
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <2ba38431-eaf2-ae38-14fe-180a326ae574@metafoo.de>
Date: Mon, 27 Feb 2017 10:24:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170226210516.GA20649@sayli-HP-15-Notebook-PC>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23137/Mon Feb 27 05:53:15 2017)

On 02/26/2017 10:05 PM, sayli karnik wrote:
> The contents of the header file are used only by this single
> source file. Move content into .c and delete .h.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Hi,

I apologize, I should have seen this during the first round of review. This
is the platform data struct which is supposed to be supplied to the driver
from outside the driver, so it has to stay in a separate header.


