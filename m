X-GM-THRID: 6397080703466471424
X-Received: by 10.129.156.135 with SMTP id t129mr16420362ywg.104.1489442747798;
        Mon, 13 Mar 2017 15:05:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.82 with SMTP id e79ls4361066iod.48.gmail; Mon, 13 Mar
 2017 15:05:46 -0700 (PDT)
X-Received: by 10.99.166.2 with SMTP id t2mr17591537pge.127.1489442746867;
        Mon, 13 Mar 2017 15:05:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y203si2887708pfb.0.2017.03.13.15.05.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 15:05:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [122.147.243.130])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 25DA7BAE;
	Mon, 13 Mar 2017 22:05:45 +0000 (UTC)
Date: Tue, 14 Mar 2017 06:05:34 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH v3 1/2] staging: speakup: identation should use tabs
Message-ID: <20170313220534.GA14919@kroah.com>
References: <20170313202004.24382-1-arushisinghal19971997@gmail.com>
 <20170313202004.24382-3-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170313202004.24382-3-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 14, 2017 at 01:49:54AM +0530, Arushi Singhal wrote:
> Indentation should always use tabs and never spaces.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/speakup_dtlk.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

What changed from v2?

Always list it, even if nothing changed...

thanks,

greg k-h

