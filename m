X-GM-THRID: 6391536108233031680
X-Received: by 10.237.39.102 with SMTP id n93mr5014586qtd.19.1488187257048;
        Mon, 27 Feb 2017 01:20:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls12581846otj.6.gmail; Mon, 27 Feb
 2017 01:20:56 -0800 (PST)
X-Received: by 10.157.54.142 with SMTP id h14mr6001227otc.38.1488187256718;
        Mon, 27 Feb 2017 01:20:56 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id f187si1650812ywc.0.2017.02.27.01.20.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 01:20:56 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciHUA-0005Nf-PP; Mon, 27 Feb 2017 10:20:50 +0100
Received: from [93.104.175.213] (helo=[192.168.178.44])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1ciHUA-0003cF-8N; Mon, 27 Feb 2017 10:20:50 +0100
Subject: Re: [PATCH] staging: iio: ad9832: Moved contents of header file to
 source file
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>,
 Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org
References: <1488145439-32728-1-git-send-email-narcisaanamaria12@gmail.com>
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <453fa622-ffa9-4c62-6ad9-7dcab1e87f18@metafoo.de>
Date: Mon, 27 Feb 2017 10:20:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <1488145439-32728-1-git-send-email-narcisaanamaria12@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23137/Mon Feb 27 05:53:15 2017)

On 02/26/2017 10:43 PM, Narcisa Ana Maria Vasile wrote:
> The contents of the header file are used only by this single source file.
> 
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>

Hi,

Moving the registers define and state struct is OK. But the platform data
struct should stay in a separate header as it is supposed to be used from
somewhere else other than the driver. See the TODO comment right above the
struct.

[...]
> +/*
> + * TODO: struct ad9832_platform_data needs to go into include/linux/iio
> + */
> +
> +/**
> + * struct ad9832_platform_data - platform specific information
> + * @mclk:		master clock in Hz
> + * @freq0:		power up freq0 tuning word in Hz
> + * @freq1:		power up freq1 tuning word in Hz
> + * @phase0:		power up phase0 value [0..4095] correlates with 0..2PI
> + * @phase1:		power up phase1 value [0..4095] correlates with 0..2PI
> + * @phase2:		power up phase2 value [0..4095] correlates with 0..2PI
> + * @phase3:		power up phase3 value [0..4095] correlates with 0..2PI
> + */
> +
> +struct ad9832_platform_data {
> +	unsigned long		mclk;
> +	unsigned long		freq0;
> +	unsigned long		freq1;
> +	unsigned short		phase0;
> +	unsigned short		phase1;
> +	unsigned short		phase2;
> +	unsigned short		phase3;
> +};
>  
>  static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
>  {


