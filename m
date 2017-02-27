X-GM-THRID: 6391540020415561728
X-Received: by 10.129.115.197 with SMTP id o188mr6108033ywc.114.1488187305846;
        Mon, 27 Feb 2017 01:21:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls13854364otc.36.gmail; Mon, 27 Feb
 2017 01:21:45 -0800 (PST)
X-Received: by 10.200.50.174 with SMTP id z43mr4561623qta.32.1488187305513;
        Mon, 27 Feb 2017 01:21:45 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id y63si1584447ywe.5.2017.02.27.01.21.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 01:21:45 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciHUx-0005Qk-Hh; Mon, 27 Feb 2017 10:21:39 +0100
Received: from [93.104.175.213] (helo=[192.168.178.44])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciHUx-0000i3-14; Mon, 27 Feb 2017 10:21:39 +0100
Subject: Re: [PATCH] staging: iio: ad9834: Moved contents of header file to
 source file
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>,
 Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org
References: <1488146361-14383-1-git-send-email-narcisaanamaria12@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <b587366e-dec9-c550-3617-2a6d76200423@metafoo.de>
Date: Mon, 27 Feb 2017 10:21:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <1488146361-14383-1-git-send-email-narcisaanamaria12@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23137/Mon Feb 27 05:53:15 2017)

On 02/26/2017 10:59 PM, Narcisa Ana Maria Vasile wrote:
> The contents of the header file are used only by this single source file

Same here, platform data should stay in its the header file, everything else
can and should be moved.



