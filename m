X-GM-THRID: 6395557609672278016
X-Received: by 10.13.200.3 with SMTP id k3mr5483328ywd.136.1489084674842;
        Thu, 09 Mar 2017 10:37:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls7188908otb.17.gmail; Thu, 09 Mar
 2017 10:37:54 -0800 (PST)
X-Received: by 10.237.62.206 with SMTP id o14mr2832141qtf.43.1489084674440;
        Thu, 09 Mar 2017 10:37:54 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si1354613pfa.4.2017.03.09.10.37.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:37:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D7044B22;
	Thu,  9 Mar 2017 18:37:53 +0000 (UTC)
Date: Thu, 9 Mar 2017 19:37:45 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Chris Brannon <chris@the-brannons.com>
Subject: Re: [PATCH] staging: speakup: Simplify NULL comparisons
Message-ID: <20170309183745.GB15627@kroah.com>
References: <20170309174949.GA23928@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170309174949.GA23928@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 09, 2017 at 11:19:49PM +0530, Arushi Singhal wrote:
> Fixed coding style for null comparisons in speakup driver to be more
> consistant with the rest of the kernel coding style.
> Replaced 'x != NULL' with 'x' and 'x = NULL' with '!x'.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/fakekey.c  |  2 +-
>  drivers/staging/speakup/kobjects.c |  2 +-
>  drivers/staging/speakup/main.c     | 38 +++++++++++++++++++-------------------
>  3 files changed, 21 insertions(+), 21 deletions(-)

Also does not apply :(

greg k-h

