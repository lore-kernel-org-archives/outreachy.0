X-GM-THRID: 6394869682861506560
X-Received: by 10.107.34.212 with SMTP id i203mr4389770ioi.13.1489077634781;
        Thu, 09 Mar 2017 08:40:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.170.68 with SMTP id y4ls5036529iti.0.canary-gmail; Thu, 09
 Mar 2017 08:40:33 -0800 (PST)
X-Received: by 10.99.154.9 with SMTP id o9mr6190093pge.6.1489077633901;
        Thu, 09 Mar 2017 08:40:33 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si1276771pfb.7.2017.03.09.08.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:40:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 375DCBD0;
	Thu,  9 Mar 2017 16:40:33 +0000 (UTC)
Date: Thu, 9 Mar 2017 17:40:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] drivers/staging/vc04_services
Message-ID: <20170309164024.GA30703@kroah.com>
References: <alpine.DEB.2.20.1703072219270.2292@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703072219270.2292@hadrien>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 07, 2017 at 10:20:21PM +0100, Julia Lawall wrote:
> The maintainers of drivers/staging/vc04_services would prefer not to
> be CCd on Outreachy patches.  Just send them to the outreachy mailing
> list, without using get_maintainers.

Really?  that's not good, their code is in staging they are responsible
for it, I want them to see the cleanup patches.  And at the least, I
want to be cc:ed on them please.

thanks,

greg k-h

