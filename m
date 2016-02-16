X-GM-THRID: 6251802816159940608
X-Received: by 10.28.158.216 with SMTP id h207mr2173207wme.4.1455644179901;
        Tue, 16 Feb 2016 09:36:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.1 with SMTP id p1ls460830wmd.36.canary; Tue, 16 Feb
 2016 09:36:19 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr2762584wjc.6.1455644179496;
        Tue, 16 Feb 2016 09:36:19 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e130si812494wme.2.2016.02.16.09.36.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 09:36:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2440010B2;
	Tue, 16 Feb 2016 17:36:18 +0000 (UTC)
Date: Tue, 16 Feb 2016 09:36:17 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: wilc1000:
 host_interface: replace semaphores with mutexes
Message-ID: <20160216173617.GA24363@kroah.com>
References: <cover.1455609607.git.amsfield22@gmail.com>
 <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 16, 2016 at 12:31:42AM -0800, Alison Schofield wrote:
> Replace semaphores with mutexes in the host_interface driver.
> 
> This is a safe performance improvement because the usage model
> meets the principle of ownership for mutexes: the thread that
> locks is the same thread that unlocks.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 114 +++++++++++++++---------------
>  drivers/staging/wilc1000/host_interface.h |  10 +--
>  2 files changed, 63 insertions(+), 61 deletions(-)

These are hard patches for me to accept if you don't have the hardware
to test with.

Also I would argue that most of these locks can be removed, or made to
work on a per-interface basis, and shouldn't be "global" to the whole
driver.  Also note that the driver authors for this driver are working
really hard to clean up these types of issues, I would stay away from
this code at the moment unless you are just doing basic fixes as you
will end up conflicting with their changes happening at the same time (7
more changes came up just last night from them).

I'll take your first patch in the series, but this one I can't, sorry.

thanks,

greg k-h

