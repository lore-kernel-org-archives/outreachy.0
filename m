X-GM-THRID: 6206628710107316224
X-Received: by 10.13.247.132 with SMTP id h126mr17562706ywf.56.1445096167305;
        Sat, 17 Oct 2015 08:36:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.137 with SMTP id ii9ls965414obb.7.gmail; Sat, 17 Oct
 2015 08:36:06 -0700 (PDT)
X-Received: by 10.182.128.69 with SMTP id nm5mr17218415obb.46.1445096166936;
        Sat, 17 Oct 2015 08:36:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si2459783pbc.1.2015.10.17.08.36.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 08:36:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 86C4C1BB;
	Sat, 17 Oct 2015 15:36:06 +0000 (UTC)
Date: Sat, 17 Oct 2015 08:36:05 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Remove unused macros
Message-ID: <20151017153605.GA3911@kroah.com>
References: <1445093340-2881-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445093340-2881-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 17, 2015 at 08:19:00PM +0530, Shraddha Barke wrote:
> Remove the macros since they are defined but not used
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

Like I mentioned for other patches yesterday, this is not ok, please
leave #defines that describe hardware present in the driver, even if
they are not used, as they help people understand how the hardware works
and might be needed in the future.

thanks,

greg k-h

