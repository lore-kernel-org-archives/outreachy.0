X-GM-THRID: 10218275602432
X-Received: by 10.43.100.138 with SMTP id cw10mr29565682icc.5.1427902217469;
        Wed, 01 Apr 2015 08:30:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.132 with SMTP id f4ls1773999igt.43.canary; Wed, 01 Apr
 2015 08:30:17 -0700 (PDT)
X-Received: by 10.66.229.36 with SMTP id sn4mr51701585pac.32.1427902217069;
        Wed, 01 Apr 2015 08:30:17 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id oc12si256619pdb.1.2015.04.01.08.30.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:30:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2A852B68;
	Wed,  1 Apr 2015 15:30:14 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:30:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: r8192U_core: Remove
 unnecessary check
Message-ID: <20150401153012.GA5741@kroah.com>
References: <1427576004-22684-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427576004-22684-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 28, 2015 at 10:53:24PM +0200, Ioana Ciornei wrote:
> Remove unnecessary check since kfree() handles NULL pointers fine.
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)

You sent me 5 patches for this driver, but no hint as to what order to
apply them in.  Please fix this by resending them as a patch series,
properly numbered and threaded so that I know how to apply them.

thanks,

greg k-h

