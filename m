X-GM-THRID: 6395863057719885824
X-Received: by 10.98.4.133 with SMTP id 127mr1116279pfe.3.1489326907100;
        Sun, 12 Mar 2017 06:55:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls3581518iod.30.gmail; Sun, 12 Mar
 2017 06:55:06 -0700 (PDT)
X-Received: by 10.99.65.71 with SMTP id o68mr13864613pga.16.1489326906187;
        Sun, 12 Mar 2017 06:55:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y203si2265038pfb.0.2017.03.12.06.55.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4B5E08F5;
	Sun, 12 Mar 2017 13:55:04 +0000 (UTC)
Date: Sun, 12 Mar 2017 14:54:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: mchehab@kernel.org, linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v1] staging: media: Remove unused function
 atomisp_set_stop_timeout()
Message-ID: <20170312135423.GA911@kroah.com>
References: <20170310133504.GA18916@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310133504.GA18916@singhal-Inspiron-5558>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 10, 2017 at 07:05:05PM +0530, simran singhal wrote:
> The function atomisp_set_stop_timeout on being called, simply returns
> back. The function hasn't been mentioned in the TODO and doesn't have
> FIXME code around. Hence, atomisp_set_stop_timeout and its calls have been
> removed.
> 
> This was done using Coccinelle.
> 
> @@
> identifier f;
> @@
> 
> void f(...) {
> 
> -return;
> 
> }
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  v1:
>    -Change Subject to include name of function
>    -change commit message to include the coccinelle script

You should also cc: the developers doing all of the current work on this
driver, Alan Cox, to get their comment if this really is something that
can be removed or not.

thanks,

greg k-h

