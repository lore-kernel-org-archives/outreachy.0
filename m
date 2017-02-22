X-GM-THRID: 6388438478115307520
X-Received: by 10.176.83.151 with SMTP id k23mr9184760uaa.20.1487784869623;
        Wed, 22 Feb 2017 09:34:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.202 with SMTP id m71ls501053ioi.17.gmail; Wed, 22 Feb
 2017 09:34:28 -0800 (PST)
X-Received: by 10.107.149.16 with SMTP id x16mr11416963iod.72.1487784868878;
        Wed, 22 Feb 2017 09:34:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d63si361202pfe.2.2017.02.22.09.34.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 09:34:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 38198B2B;
	Wed, 22 Feb 2017 17:34:28 +0000 (UTC)
Date: Wed, 22 Feb 2017 18:34:25 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: xgifb: function definition argument should
 also have an identifier name'
Message-ID: <20170222173425.GC28125@kroah.com>
References: <20170218134611.GA5240@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170218134611.GA5240@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Sat, Feb 18, 2017 at 07:16:11PM +0530, Arushi Singhal wrote:
> function definition argument 'struct vb_device_info *' and 'unsigned
> long' should also have an identifier name.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/xgifb/vb_init.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

What changed from v1?  Please always list it.  Please fix up and resend.

thanks,

greg k-h

