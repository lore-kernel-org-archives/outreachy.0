X-GM-THRID: 6391035517840916480
X-Received: by 10.176.3.148 with SMTP id 20mr2049136uau.9.1488030423224;
        Sat, 25 Feb 2017 05:47:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.168 with SMTP id e37ls9423272otb.13.gmail; Sat, 25 Feb
 2017 05:47:02 -0800 (PST)
X-Received: by 10.157.35.166 with SMTP id t35mr3019739otb.32.1488030422366;
        Sat, 25 Feb 2017 05:47:02 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id y63si1123320ywe.5.2017.02.25.05.47.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 05:47:02 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.131] (helo=sslproxy02.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1chcgd-00033v-WF; Sat, 25 Feb 2017 14:47:00 +0100
Received: from [93.104.170.27] (helo=[192.168.178.44])
	by sslproxy02.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1chcgd-0006hX-Nq; Sat, 25 Feb 2017 14:46:59 +0100
Subject: Re: [PATCH] staging: iio: Single source header file reorganization
To: Sreya Mittal <sreyamittal5@gmail.com>, outreachy-kernel@googlegroups.com
References: <20170225132140.20181-1-sreyamittal5@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <6a258cc8-6f07-5959-1265-675add61dd57@metafoo.de>
Date: Sat, 25 Feb 2017 14:46:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170225132140.20181-1-sreyamittal5@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23127/Sat Feb 25 13:54:05 2017)

On 02/25/2017 02:21 PM, Sreya Mittal wrote:
> The contents of the header file are used only by this single
> source file. Move content into .c and remove .h.
> 
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

Hi,

In general the intend of the patch is correct, but it looks like something
went wrong with the indention of the documentation.

[....]
> -#include "iio-trig-bfin-timer.h"
> +/**
> + *  * struct iio_bfin_timer_trigger_pdata - timer trigger platform data
> + *   * @output_enable: Enable external trigger pulse generation.
> + *    * @active_low: Whether the trigger pulse is active low.
> + *     * @duty_ns: Length of the trigger pulse in nanoseconds.
> + *      *
> + *       * This struct is used to configure the output pulse generation of the blackfin
> + *        * timer trigger. If output_enable is set to true an external trigger signal
> + *         * will generated on the pin corresponding to the timer. This is useful for
> + *          * converters which needs an external signal to start conversion. active_low and
> + *           * duty_ns are used to configure the type of the trigger pulse. If output_enable
> + *            * is set to false no external trigger pulse will be generated and active_low
> + *             * and duty_ns are ignored.
> + *              **/


