X-GM-THRID: 6397080703466471424
X-Received: by 10.157.37.82 with SMTP id j18mr16145929otd.68.1489442760164;
        Mon, 13 Mar 2017 15:06:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls1857400ith.16.canary-gmail; Mon,
 13 Mar 2017 15:05:59 -0700 (PDT)
X-Received: by 10.107.200.83 with SMTP id y80mr9741073iof.8.1489442759292;
        Mon, 13 Mar 2017 15:05:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si3257618pfa.4.2017.03.13.15.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 15:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [122.147.243.130])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A711CBAE;
	Mon, 13 Mar 2017 22:05:58 +0000 (UTC)
Date: Tue, 14 Mar 2017 06:05:46 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH v3 0/2] staging: checkpatch cleanups
Message-ID: <20170313220546.GB14919@kroah.com>
References: <20170313202004.24382-1-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170313202004.24382-1-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 14, 2017 at 01:49:52AM +0530, Arushi Singhal wrote:
> Improve readability by fixing multiple checkpatch.pl
> issues in drivers. 
> 
> Arushi Singhal (2):
>   staging: speakup: identation should use tabs
>   staging: dvb-frontends: removed code in comments.

What changed from v2?

thanks,

greg k-h

