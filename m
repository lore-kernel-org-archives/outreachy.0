X-GM-THRID: 6395538220161957888
X-Received: by 10.99.56.30 with SMTP id f30mr5904969pga.121.1489084596162;
        Thu, 09 Mar 2017 10:36:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls817228otc.36.gmail; Thu, 09 Mar
 2017 10:36:35 -0800 (PST)
X-Received: by 10.237.63.20 with SMTP id p20mr2887377qtf.3.1489084595774;
        Thu, 09 Mar 2017 10:36:35 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si1360187pfd.3.2017.03.09.10.36.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:36:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 187E0B22;
	Thu,  9 Mar 2017 18:36:34 +0000 (UTC)
Date: Thu, 9 Mar 2017 19:36:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH 0/4] staging: speakup: checkpatch guided cleanups
Message-ID: <20170309183626.GA15444@kroah.com>
References: <20170309163433.19462-1-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170309163433.19462-1-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 09, 2017 at 10:04:29PM +0530, Arushi Singhal wrote:
> Improve readability by fixing multiple checkpatch.pl
> issues in speakup driver. 

This series does not apply to my staging-testing branch at all.  Please
rebase and resend.

thanks,

greg k-h

