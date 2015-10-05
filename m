X-GM-THRID: 6201888067640360960
X-Received: by 10.66.123.74 with SMTP id ly10mr22771763pab.41.1444015071298;
        Sun, 04 Oct 2015 20:17:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.115.197 with SMTP id jq5ls1250433obb.86.gmail; Sun, 04 Oct
 2015 20:17:50 -0700 (PDT)
X-Received: by 10.182.65.134 with SMTP id x6mr24508235obs.14.1444015070896;
        Sun, 04 Oct 2015 20:17:50 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u67si2238768ywf.5.2015.10.04.20.17.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 20:17:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [193.120.146.54])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 23C7AD73;
	Mon,  5 Oct 2015 03:17:48 +0000 (UTC)
Date: Mon, 5 Oct 2015 04:17:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: rtl8192u: Do not DMA on
 the stack in write_nic_byte_E()
Message-ID: <20151005031746.GD27303@kroah.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
 <594338659176808944f42cc535049b9f401c64d7.1443989364.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <594338659176808944f42cc535049b9f401c64d7.1443989364.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 04, 2015 at 10:14:00PM +0200, Ksenija Stanojevic wrote:
> Fix error "doing DMA on the stack" by using kzalloc for buffer
> allocation.
> Issue found by smatch.

What does smatch say after you made your changes and you run it on the
code again?

thanks,

greg k-h

