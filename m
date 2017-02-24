X-GM-THRID: 6390734400098664448
X-Received: by 10.129.67.15 with SMTP id q15mr1326768ywa.51.1487958803403;
        Fri, 24 Feb 2017 09:53:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.138 with SMTP id g132ls2076493ioe.5.gmail; Fri, 24 Feb
 2017 09:53:22 -0800 (PST)
X-Received: by 10.98.106.194 with SMTP id f185mr924216pfc.42.1487958802613;
        Fri, 24 Feb 2017 09:53:22 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h130si1675707pfe.1.2017.02.24.09.53.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:53:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E7D94A15;
	Fri, 24 Feb 2017 17:53:21 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:53:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Caught up on Outreachy patches
Message-ID: <20170224175315.GA23075@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.2 (2016-11-26)

Hi all,

I've now caught up on all submitted outreachy kernel patches.

So if you have not gotten an email from my automated patch scripts
saying your patch has been applied, consider it rejected or lost.
Please resend anything that you think is ready to be merged.

Note, I'm using my staging-testing branch of staging.git right now to
hold patches in.  I can't merge this to my staging-next to go into
linux-next until after 4.11-rc1 is out, in a little over a week.  If
anyone has any questions about this, please let me know.

thanks,

greg k-h

