X-GM-THRID: 6210237825494810624
X-Received: by 10.66.136.40 with SMTP id px8mr34681930pab.11.1445933670409;
        Tue, 27 Oct 2015 01:14:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.228 with SMTP id e97ls1960499ioj.26.gmail; Tue, 27 Oct
 2015 01:14:30 -0700 (PDT)
X-Received: by 10.107.135.218 with SMTP id r87mr22523110ioi.28.1445933670153;
        Tue, 27 Oct 2015 01:14:30 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si4053311pbb.2.2015.10.27.01.14.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:14:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.250])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 243EF90;
	Tue, 27 Oct 2015 08:14:28 +0000 (UTC)
Date: Tue, 27 Oct 2015 17:14:27 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Yet again the patch queue is empty.
Message-ID: <20151027081427.GC17198@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi all,

I've gone through all submitted patches, with the exception of the time
change patches, as I'll rely on Arnd to handle them.

If you have not gotten an automated email saying your patch was applied,
please rebased against the staging-testing branch of my staging.git tree
on git.kernel.org and resend it, as it's lost from my patch queue.

thanks,

greg k-h

