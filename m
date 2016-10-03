X-GM-THRID: 6337170385938677760
X-Received: by 10.157.12.177 with SMTP id b46mr703919otb.46.1475487459661;
        Mon, 03 Oct 2016 02:37:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.169 with SMTP id u41ls236224iou.49.gmail; Mon, 03 Oct
 2016 02:37:36 -0700 (PDT)
X-Received: by 10.36.181.9 with SMTP id v9mr1444659ite.37.1475487456005;
        Mon, 03 Oct 2016 02:37:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z73si1433127pfa.1.2016.10.03.02.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 02:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3C43471;
	Mon,  3 Oct 2016 09:37:35 +0000 (UTC)
Date: Mon, 3 Oct 2016 11:37:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches and the kernel merge window
Message-ID: <20161003093741.GA4995@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Hi all,

As the 4.8 kernel was released a few hours ago, we are now in the middle
of the -rc1 merge window.  What this means is that I can not add any
more patches to my tree to go to Linus until after 4.9-rc1 is out (the
exception being bugfixes).

So, I'll be queueing up patches for staging in the staging-testing
branch instead, so as to not get too far behind and not give anyone
feedback for a whole two weeks, but that branch will not get merged into
my "normal" staging-next branch until after 4.9-rc1 is out (unlike normally when I merge them together every 24 hours or so.)

The staging-testing branch will also get rebased every so often, so be
careful if you are tracking it (do your work in your own branch, not on
mine).  If things get messy for you, please just email the list and we
can walk you through the steps for dealing with a rebased branch.

If anyone has any questions about this, please let me know.

Oh, I also caught up with almost all patches as of last night (European
timezone), with the exception of a few IIO patches, so if you sent
patches before then, and you did not get a response, consider them lost
and please resend them.

thanks,

greg k-h

