X-GM-THRID: 6338362197429714944
X-Received: by 10.157.58.35 with SMTP id j32mr117537otc.13.1475768622716;
        Thu, 06 Oct 2016 08:43:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls3279170otw.27.gmail; Thu, 06 Oct
 2016 08:43:42 -0700 (PDT)
X-Received: by 10.129.0.2 with SMTP id 2mr1888429ywa.104.1475768622195;
        Thu, 06 Oct 2016 08:43:42 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id v21si190743ywa.7.2016.10.06.08.43.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 08:43:41 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bsApe-0003bn-0d; Thu, 06 Oct 2016 17:43:38 +0200
Received: from [2003:86:2c57:7e00:8200:bff:fe9b:6612]
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bsApd-0002mL-Gt; Thu, 06 Oct 2016 17:43:37 +0200
Subject: Re: [PATCH] staging: iio: ad7606: implement
 IIO_CHAN_INFO_OVERSAMPLING_RATIO
To: Eva Rachel Retuya <eraretuya@gmail.com>, linux-iio@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <1475764920-7770-1-git-send-email-eraretuya@gmail.com>
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <baef9fc5-c3de-3b47-4e17-de559027e0b4@metafoo.de>
Date: Thu, 6 Oct 2016 17:43:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <1475764920-7770-1-git-send-email-eraretuya@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22315/Thu Oct  6 15:43:00 2016)

On 10/06/2016 04:42 PM, Eva Rachel Retuya wrote:
> This driver predates the availability of IIO_CHAN_INFO_OVERSAMPLING_RATIO
> attribute wherein usage has some advantages like it can be accessed by
> in-kernel consumers as well as reduces the code size.
> 
> Therefore, use IIO_CHAN_INFO_OVERSAMPLING_RATIO to implement the
> oversampling_ratio attribute instead of using IIO_DEVICE_ATTR() macro.
> 
> Move code from the functions associated with IIO_DEVICE_ATTR() into
> the read_raw hook as well as add the write_raw hook with both masks set
> to IIO_CHAN_INFO_OVERSAMPLING_RATIO.
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>

Looks good, thanks.

Acked-by: Lars-Peter Clausen <lars@metafoo.de>

I did some cleanup on this driver last week (not yet submitted), this was
the last bit I hadn't gotten to yet that needs to be done before the driver
can be moved out of staging.

