X-GM-THRID: 6210851747655581696
X-Received: by 10.66.172.39 with SMTP id az7mr31389838pac.25.1446076610215;
        Wed, 28 Oct 2015 16:56:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.9 with SMTP id l9ls139467qge.91.gmail; Wed, 28 Oct 2015
 16:56:49 -0700 (PDT)
X-Received: by 10.31.159.209 with SMTP id i200mr25718047vke.14.1446076609492;
        Wed, 28 Oct 2015 16:56:49 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iz5si294817pbc.2.2015.10.28.16.56.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B66B6413;
	Wed, 28 Oct 2015 23:56:48 +0000 (UTC)
Date: Thu, 29 Oct 2015 08:56:46 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: caught up on patch queue and changes for future patches
Message-ID: <20151028235646.GA13344@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi all,

Once again I've worked through all submitted patches, if I've missed
anyone's, please resend them.

Note, the merge window is about to be open upstream, so I need to close
my tree at this point in time (should have really done it a week ago).
I'll still be queueing up patches in my staging-testing branch, but
those will NOT be merged to Linus until 4.5-rc1 (3+ months from now.)
Don't worry, the work will not be lost, and will make it upstream
eventually, it's just that I can't take any non-bugfix patches at this
time for the 4.4 kernel release.

If anyone has any questions about this, please let me know.  It
shouldn't affect anyone here, just keep working off of my
staging-testing branch and all should be fine.

thanks,

greg k-h

