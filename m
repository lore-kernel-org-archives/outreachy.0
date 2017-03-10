X-GM-THRID: 6393343309495926784
X-Received: by 10.129.71.9 with SMTP id u9mr8895639ywa.142.1489183545784;
        Fri, 10 Mar 2017 14:05:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls9342569otc.44.gmail; Fri, 10 Mar
 2017 14:05:45 -0800 (PST)
X-Received: by 10.157.27.231 with SMTP id v36mr8615033otv.125.1489183545432;
        Fri, 10 Mar 2017 14:05:45 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si1936892pfz.1.2017.03.10.14.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 14:05:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CAA90B5F;
	Fri, 10 Mar 2017 22:05:44 +0000 (UTC)
Date: Fri, 10 Mar 2017 23:05:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-fbdev@vger.kernel.org, teddy.wang@siliconmotion.com,
	linux-kernel@vger.kernel.org, sudipm.mukherjee@gmail.com
Subject: Re: [PATCH 0/3] multiple checkpatch issues
Message-ID: <20170310220533.GA19329@kroah.com>
References: <20170310215657.7069-1-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310215657.7069-1-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 03:26:54AM +0530, Arushi Singhal wrote:
> Improve readability by fixing multiple checkpatch.pl
> issues in sm750fb driver. 

Note, _PLEASE_ put the subsystem/driver name in this 0/X email subject
line, like your patches have them.  It makes it easier when I sort
patches by driver/subsystem when reviewing them.  As it is, I end up
always ignoring these 0/X emails.

thanks,

greg k-h

