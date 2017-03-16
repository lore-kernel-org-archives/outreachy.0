X-GM-THRID: 6394528999032225792
X-Received: by 10.99.56.5 with SMTP id f5mr3763700pga.75.1489628999249;
        Wed, 15 Mar 2017 18:49:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls3777116ots.19.gmail; Wed, 15 Mar
 2017 18:49:58 -0700 (PDT)
X-Received: by 10.129.46.136 with SMTP id u130mr3561936ywu.38.1489628998877;
        Wed, 15 Mar 2017 18:49:58 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g82si652385pfb.5.2017.03.15.18.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 18:49:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.132.152.98])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 40ED5BC1;
	Thu, 16 Mar 2017 01:49:58 +0000 (UTC)
Date: Thu, 16 Mar 2017 10:49:44 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, speakup@linux-speakup.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Improve code readability
Message-ID: <20170316014944.GB27447@kroah.com>
References: <20170310204155.6367-1-arushisinghal19971997@gmail.com>
 <e3451e76-4119-4ea9-8bd0-134de6504fd0@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3451e76-4119-4ea9-8bd0-134de6504fd0@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 15, 2017 at 01:39:19AM -0700, Arushi Singhal wrote:
> Hi
> This Patch series is not yet added to the kernel tree.

I don't see these in my queue either.  I think maybe they were rejected
due to the incorrect subject: line that I think someone said needed to
be fixed?  I can't remember, sorry, please rebase and resend if they are
still needed.

thanks,

greg k-h

