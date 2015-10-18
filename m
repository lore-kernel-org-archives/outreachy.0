X-GM-THRID: 6206773156840996864
X-Received: by 10.50.78.230 with SMTP id e6mr11490459igx.10.1445139476998;
        Sat, 17 Oct 2015 20:37:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.104 with SMTP id pj8ls603140igb.32.gmail; Sat, 17 Oct
 2015 20:37:56 -0700 (PDT)
X-Received: by 10.66.221.131 with SMTP id qe3mr12439607pac.2.1445139476525;
        Sat, 17 Oct 2015 20:37:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si2653668pbc.1.2015.10.17.20.37.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 20:37:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2EF3D412;
	Sun, 18 Oct 2015 03:37:56 +0000 (UTC)
Date: Sat, 17 Oct 2015 20:16:09 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH]  Do not use multiple blank lines.
Message-ID: <20151018031609.GA12600@kroah.com>
References: <1445126881-27409-1-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445126881-27409-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 18, 2015 at 03:08:01AM +0300, Burcin Akalin wrote:
> Remove multiple blank lines. Problem found using checkpatch.pl
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>

Your patch looks good, but your subject: needs a bit of work.  You have
an extra space in there for some reason, and you don't say what part of
the kernel you are modifying.

The subject should look like this:
	Subject: [PATCH] staging: panel: do not use multiple blank lines.

which lets me properly sort the patches when I am applying them.

Can you fix this up and resend?

thanks,

greg k-h

