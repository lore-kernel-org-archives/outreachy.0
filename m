X-GM-THRID: 6205317079064641536
X-Received: by 10.107.26.84 with SMTP id a81mr16112533ioa.6.1445056012088;
        Fri, 16 Oct 2015 21:26:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.214 with SMTP id l83ls972177ioi.102.gmail; Fri, 16 Oct
 2015 21:26:51 -0700 (PDT)
X-Received: by 10.107.41.69 with SMTP id p66mr13495006iop.25.1445056011562;
        Fri, 16 Oct 2015 21:26:51 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ce6si1825884pad.0.2015.10.16.21.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 21:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1A7D190;
	Sat, 17 Oct 2015 04:26:51 +0000 (UTC)
Date: Fri, 16 Oct 2015 21:26:50 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove null check
 before kfree
Message-ID: <20151017042650.GA11306@kroah.com>
References: <1444787959-3930-1-git-send-email-shraddha.6596@gmail.com>
 <alpine.DEB.2.02.1510140740360.2038@localhost6.localdomain6>
 <alpine.DEB.2.11.1510141405020.3203@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.11.1510141405020.3203@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 14, 2015 at 02:06:39PM +0530, Shraddha Barke wrote:
> 
> 
> On Wed, 14 Oct 2015, Julia Lawall wrote:
> 
> >>-	if (pu8HdnNtwrksWidVal != NULL)
> >>-		kfree(pu8HdnNtwrksWidVal);
> >>+	kfree(pu8HdnNtwrksWidVal);
> >>
> >> 	return s32Error;
> >
> >Nothing to do with your patch, but maybe you could make a very small dent
> >in the horrible variable names used by this driver by changing s32Error to
> >ret.
> >
> >If you want to be more ambitious, you could use Coccinelle to find a
> >pattern like, where x is an identifier:
> >
> >x = f(...);
> >if (\(x != 0 \| x < 0\)) { ... return ...; }
> >
> >and then change all occurrences of x to ret.
> 
> Yeah I'll do this, wilc1000 has a lot of ugly names.

Watch out, the driver author is currently doing just that right now, I
keep getting 60+ patchs every week from them, so you might run into
merge issues trying to do this.

thanks,

greg k-h

