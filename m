X-GM-THRID: 4255252480000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a20ebfad3576ca1b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.18.102 with SMTP id v6mr11022321obd.11.1424993677214;
        Thu, 26 Feb 2015 15:34:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.9 with SMTP id 9ls338414ion.22.gmail; Thu, 26 Feb 2015
 15:34:37 -0800 (PST)
X-Received: by 10.42.16.141 with SMTP id p13mr10632725ica.6.1424993677017;
        Thu, 26 Feb 2015 15:34:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si298451pdb.1.2015.02.26.15.34.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:34:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 979B7B1A;
	Thu, 26 Feb 2015 23:34:36 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:34:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Caught up with pending patches.
Message-ID: <20150226233436.GA9847@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)


Hi all,

I've now processed all patches that have been sent in.  If you didn't
get an email from my scripts saying that your patch was accepted, or an
email from someone saying that it needed to be fixed up, please rebase
your patches on my staging-testing branch of the staging.git tree on
git.kernel.org and resend them.

I might have missed some patches, sorry about that, so please just
resend them.

thanks,

greg k-h

