X-GM-THRID: 6213404069319409664
X-Received: by 10.182.107.162 with SMTP id hd2mr3220053obb.29.1446670868026;
        Wed, 04 Nov 2015 13:01:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.69 with SMTP id c66ls545495iod.15.gmail; Wed, 04 Nov
 2015 13:01:07 -0800 (PST)
X-Received: by 10.107.10.153 with SMTP id 25mr4400307iok.3.1446670867369;
        Wed, 04 Nov 2015 13:01:07 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si338039pab.0.2015.11.04.13.01.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 13:01:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ED2EB8B4;
	Wed,  4 Nov 2015 21:01:06 +0000 (UTC)
Date: Wed, 4 Nov 2015 13:01:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: patch queue now empty
Message-ID: <20151104210106.GA9508@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi all,

I've now processed all patches submitted for the outreachy kernel
positions.  If you have not received an email, and you had sent a patch,
please consider it lost and resend it after you have refreshed it
against my staging-testing branch and I will review it then.

If you wish to continue to do staging tree cleanup work like this,
please feel free to do so, but use the tool scripts/get_maintainer.pl to
determine the mailing list and developers to cc: on your patch.  It's
not ok to send new patches to this list at this point in time, sorry.

Also remember that coding style cleanups are usually not accepted except
in a few subsystems like drivers/staging/*

thanks,

greg k-h

