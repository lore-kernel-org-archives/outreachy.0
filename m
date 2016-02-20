X-GM-THRID: 6253357236964294656
X-Received: by 10.112.132.97 with SMTP id ot1mr697343lbb.10.1456009087479;
        Sat, 20 Feb 2016 14:58:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.89.138 with SMTP id n132ls233285lfb.70.gmail; Sat, 20 Feb
 2016 14:58:07 -0800 (PST)
X-Received: by 10.112.235.137 with SMTP id um9mr2489749lbc.8.1456009086991;
        Sat, 20 Feb 2016 14:58:06 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w128si637517wmd.0.2016.02.20.14.58.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 14:58:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 88299106E;
	Sat, 20 Feb 2016 22:58:05 +0000 (UTC)
Date: Sat, 20 Feb 2016 14:58:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: rtl8192u: Use system_wq
Message-ID: <20160220225805.GA4024@kroah.com>
References: <20160220131552.GA3543@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160220131552.GA3543@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 20, 2016 at 06:45:52PM +0530, Bhaktipriya Shridhar wrote:
> 
> This patchset removes create_workqueue() usages in rtl8192u.
> With conccurency managed workqueues, use of dedicated workqueues can
> be replaced with system_wq.
> 
> Bhaktipriya Shridhar (2):
>   staging: rtl8192u: Use system_wq
>   staging: rtl8192u: Use system_wq

Both subjects were identical, yet the patches were different, that's not
something I can accept, sorry :(


