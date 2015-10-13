X-GM-THRID: 6205182783994724352
X-Received: by 10.129.113.10 with SMTP id m10mr13833275ywc.36.1444756701133;
        Tue, 13 Oct 2015 10:18:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.196 with SMTP id qc4ls1514759igb.25.gmail; Tue, 13 Oct
 2015 10:18:20 -0700 (PDT)
X-Received: by 10.68.236.167 with SMTP id uv7mr29731674pbc.12.1444756700875;
        Tue, 13 Oct 2015 10:18:20 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id uv4si488612pac.0.2015.10.13.10.18.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 10:18:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (50-76-40-150-ip-static.hfc.comcastbusiness.net [50.76.40.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7FCF91813;
	Tue, 13 Oct 2015 17:18:20 +0000 (UTC)
Date: Tue, 13 Oct 2015 10:17:38 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Patch queue is now empty.
Message-ID: <20151013171738.GA29296@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi all,

I've worked through all pending patches that have been sent to the
outreachy-kernel mailing list.  If I haven't applied one of your patches
(you will get an automated email when I do apply it), please rebase your
patch against the latest staging-testing branch of my staging.git tree
on git.kernel.org and please resend it.

thanks,

greg k-h

