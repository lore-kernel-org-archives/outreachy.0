X-GM-THRID: 6255259573485043712
X-Received: by 10.112.16.34 with SMTP id c2mr755410lbd.19.1457218034614;
        Sat, 05 Mar 2016 14:47:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.84.21 with SMTP id i21ls215163lfb.11.gmail; Sat, 05 Mar
 2016 14:47:14 -0800 (PST)
X-Received: by 10.112.141.33 with SMTP id rl1mr775301lbb.9.1457218034019;
        Sat, 05 Mar 2016 14:47:14 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 71si313238wmp.0.2016.03.05.14.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 14:47:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9AC40DD3;
	Sat,  5 Mar 2016 22:47:12 +0000 (UTC)
Date: Sat, 5 Mar 2016 14:47:12 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: "pooja.shamili" <poojashamili@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: gdm72x: Add spaces before
 and after '*'
Message-ID: <20160305224712.GA28210@kroah.com>
References: <20160225160130.GA8646@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160225160130.GA8646@localhost>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 25, 2016 at 09:31:30PM +0530, pooja.shamili wrote:
> This patch fixes the checkpatch.pl error:
> CHECK: spaces preferred around that '*'
> 
> Signed-off-by: pooja.shamili <poojashamili@gmail.com>

We need a full name here, and in your From: line, not a username with a
'.' in it, as I doubt that is how you sign paperwork :)

I'm going to go drop this from my tree, as I shouldn't have accepted it.
Please resend all of your patches that you did this with so that they
can be properly accepted.

thanks,

greg k-h

