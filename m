X-GM-THRID: 6394898863849734144
X-Received: by 10.99.125.68 with SMTP id m4mr4931223pgn.35.1489067535704;
        Thu, 09 Mar 2017 05:52:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.7 with SMTP id u7ls4830318itc.19.canary-gmail; Thu, 09
 Mar 2017 05:52:14 -0800 (PST)
X-Received: by 10.99.119.78 with SMTP id s75mr6159782pgc.124.1489067534897;
        Thu, 09 Mar 2017 05:52:14 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si1201359pfd.3.2017.03.09.05.52.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 05:52:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1DDA5305;
	Thu,  9 Mar 2017 13:52:13 +0000 (UTC)
Date: Thu, 9 Mar 2017 14:52:04 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sreya Mittal <sreyamittal5@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>
Subject: Re: [PATCH 1/2] staging: wilc1000: Fix spelling error
Message-ID: <20170309135204.GA31416@kroah.com>
References: <20170307231320.9716-1-sreyamittal5@gmail.com>
 <20170307231320.9716-2-sreyamittal5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170307231320.9716-2-sreyamittal5@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 08, 2017 at 04:43:19AM +0530, Sreya Mittal wrote:
> Fix the checkpatch issue:
> 'unkmown' may be misspelled - perhaps 'unknown'?
> 
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Both of these patches do not apply to my tree at all :(

Please rebase and resend.

thanks,

greg k-h

