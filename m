X-GM-THRID: 6399916000486096896
X-Received: by 10.157.22.211 with SMTP id s19mr1413566ots.37.1490301928009;
        Thu, 23 Mar 2017 13:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.168 with SMTP id e37ls87785otb.3.gmail; Thu, 23 Mar
 2017 13:45:27 -0700 (PDT)
X-Received: by 10.157.15.133 with SMTP id d5mr1475765otd.68.1490301927632;
        Thu, 23 Mar 2017 13:45:27 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si21958pfz.1.2017.03.23.13.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 13:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B9639B8B;
	Thu, 23 Mar 2017 20:45:26 +0000 (UTC)
Date: Thu, 23 Mar 2017 21:45:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	speakup@linux-speakup.org, driverdevel <devel@driverdev.osuosl.org>,
	LKML <linux-kernel@vger.kernel.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH v2] staging:speakup: Fix alignment with
 parenthesis.
Message-ID: <20170323204511.GA9727@kroah.com>
References: <CA+XqjF9fNHFEUopsZH5rfiuha-Pv0WA+8oACvT_cNxwiSX-rjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+XqjF9fNHFEUopsZH5rfiuha-Pv0WA+8oACvT_cNxwiSX-rjg@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 23, 2017 at 07:15:38PM +0530, Arushi Singhal wrote:
> Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

<snip>

I can't take patches sent in html format :(

please fix your email client.

thanks,

greg k-h

