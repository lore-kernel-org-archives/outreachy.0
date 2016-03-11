X-GM-THRID: 6260927445706211328
X-Received: by 10.129.89.198 with SMTP id n189mr8932963ywb.10.1457735767418;
        Fri, 11 Mar 2016 14:36:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.13 with SMTP id j13ls657195ioi.33.gmail; Fri, 11 Mar
 2016 14:36:07 -0800 (PST)
X-Received: by 10.107.12.10 with SMTP id w10mr9022175ioi.5.1457735767068;
        Fri, 11 Mar 2016 14:36:07 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si1677240pab.0.2016.03.11.14.36.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 14:36:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B9C7EBE7;
	Fri, 11 Mar 2016 22:36:06 +0000 (UTC)
Date: Fri, 11 Mar 2016 14:36:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: All caught up on submitted patches!
Message-ID: <20160311223606.GA8018@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi all,

I've dug myself out from the huge number of submitted patches now.  For
some reason this feels like we have more submitted this time than any
other time before, which is a good thing overall, nice job.

If you haven't gotten an email from me about why I rejected a patch, or
from my patch system saying your patch was accepted, assume it is lost.
Rebase your tree against my staging-testing branch of staging.git,
refresh your patches, and resend them.

thanks,

greg k-h

