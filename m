X-GM-THRID: 6391667528691613696
X-Received: by 10.157.10.165 with SMTP id 34mr5647263otq.76.1488187364672;
        Mon, 27 Feb 2017 01:22:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.194 with SMTP id f63ls3284892ioi.26.gmail; Mon, 27 Feb
 2017 01:22:43 -0800 (PST)
X-Received: by 10.36.33.66 with SMTP id e63mr3967582ita.38.1488187363936;
        Mon, 27 Feb 2017 01:22:43 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id r6si1371031ywb.6.2017.02.27.01.22.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 01:22:43 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciHVy-0005Wu-Og; Mon, 27 Feb 2017 10:22:42 +0100
Received: from [93.104.175.213] (helo=[192.168.178.44])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciHVy-0007ty-3E; Mon, 27 Feb 2017 10:22:42 +0100
Subject: Re: [PATCH] staging: iio: ad5933: move contents of header file to
 source file
To: Gargi Sharma <gs051095@gmail.com>, outreachy-kernel@googlegroups.com
References: <1488175928-15013-1-git-send-email-gs051095@gmail.com>
Cc: gregkh@linuxfoundation.org, Michael.Hennerich@analog.com,
 jic23@kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <bd8f137a-b23d-f7a7-936e-78e7e9f25611@metafoo.de>
Date: Mon, 27 Feb 2017 10:22:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <1488175928-15013-1-git-send-email-gs051095@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23137/Mon Feb 27 05:53:15 2017)

On 02/27/2017 07:12 AM, Gargi Sharma wrote:
> The contents of the header file are used only by this single
> source file.  Move content into .c and remove .h.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Hi,

The subject of the patch doesn't quite match th content. Anyway the platform
data should stay in the header file since it is supposed to be used outside
of the driver.


