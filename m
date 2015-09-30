X-GM-THRID: 6200064367824732160
X-Received: by 10.66.194.136 with SMTP id hw8mr1043236pac.39.1443579198258;
        Tue, 29 Sep 2015 19:13:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.202 with SMTP id 68ls127633qgx.97.gmail; Tue, 29 Sep
 2015 19:13:17 -0700 (PDT)
X-Received: by 10.31.44.18 with SMTP id s18mr1144193vks.6.1443579197746;
        Tue, 29 Sep 2015 19:13:17 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r189si2853770ywf.0.2015.09.29.19.13.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 19:13:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.184])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 823A511E7;
	Wed, 30 Sep 2015 02:13:16 +0000 (UTC)
Date: Wed, 30 Sep 2015 03:57:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Drivers: staging: wlan-ng:
 p80211conv: replaced functions for copying/comparing ethernet addresses
Message-ID: <20150930015716.GC8770@kroah.com>
References: <20150929221607.GA15184@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150929221607.GA15184@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 30, 2015 at 03:46:08AM +0530, Shivani Bhardwaj wrote:
> Replaced the function memcpy() by ether_addr_copy() and, memcmp() by
> ether_addr_equal() as these functions are more preferable for copying
> and comparing the ethernet addresses respectively.
> Also fixed the issue of character limit of 80 per line and removed
> one unnecessary statement.

When you start listing "other" things you did in a patch, that's a huge
sign that you need to split this up into different patches.  Remember,
it's "only one thing per patch".

Also, you can't just do a search/replace for ether_addr_equal(),
otherwise we would have done that a long time ago.  You have to be able
to prove that this function will work properly, and that depends on
knowing the layout of the structure to ensure that everything is aligned
properly.  Look at how other people have made this change in the
drivers/staging/ tree in the past for the type of proof that I need in
order to accept this change.

thanks,

greg k-h

