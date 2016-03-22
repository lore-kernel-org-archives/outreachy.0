X-GM-THRID: 6264696942137180160
X-Received: by 10.107.136.210 with SMTP id s79mr9736984ioi.25.1458613421727;
        Mon, 21 Mar 2016 19:23:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.38 with SMTP id fl6ls1510184obb.6.gmail; Mon, 21 Mar
 2016 19:23:41 -0700 (PDT)
X-Received: by 10.182.240.137 with SMTP id wa9mr25821304obc.16.1458613421298;
        Mon, 21 Mar 2016 19:23:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si3478312pab.2.2016.03.21.19.23.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 19:23:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.111.11.2])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 99FD692;
	Tue, 22 Mar 2016 02:23:40 +0000 (UTC)
Date: Mon, 21 Mar 2016 22:23:39 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Caught up on all submitted patches
Message-ID: <20160322022339.GA18524@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi all,

I'm caught up on all submitted patches.  If you didn't get an email
saying your patch was accepted, or a rejection email from me, consider
it lost so please refresh it against my latest staging-testing branch of
staging.git and resend it.

Note, due to the merge window happening right now, none of the accepted
patches can be moved to my "staging-next" branch until after 4.6-rc1 is
released, so don't worry if you don't get an email for a while about it.
Your patch is not lost, it's just having to wait a bit.

thanks,

greg k-h

