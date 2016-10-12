X-GM-THRID: 6340039489286569984
X-Received: by 10.129.107.68 with SMTP id g65mr336754ywc.101.1476283207686;
        Wed, 12 Oct 2016 07:40:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.98 with SMTP id 89ls3798968ota.5.gmail; Wed, 12 Oct 2016
 07:40:07 -0700 (PDT)
X-Received: by 10.129.103.135 with SMTP id b129mr380193ywc.14.1476283207181;
        Wed, 12 Oct 2016 07:40:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si1453400par.0.2016.10.12.07.40.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 07:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 60B86256;
	Wed, 12 Oct 2016 14:40:06 +0000 (UTC)
Date: Wed, 12 Oct 2016 16:40:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/7] staging: greybus: Format block comments.
Message-ID: <20161012144015.GA28533@kroah.com>
References: <20161011031105.GA21887@lennorien.com>
 <20161012132401.GA22452@kroah.com>
 <20161012135508.GC5158@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161012135508.GC5158@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Wed, Oct 12, 2016 at 10:55:08AM -0300, Elise Lennion wrote:
> On Wed, Oct 12, 2016 at 03:24:01PM +0200, Greg KH wrote:
> > 
> > Does not apply to my tree :(
> > 
> > Can you refresh this whole series and resend it?  Keep the acks that
> > were sent for some of the patches, and fix up the subject: lines.
> > 
> 
> Ok, I'll create new patches containing the changes without ack.

No, keep the acks, why delete them?

> This one that doesn't apply, should I just drop it? Your tree is local
> so I can't see what is different, to adjust the changes, until you push
> the changes to staging-testing, right?

My tree is pushed to staging-testing, so you should see this now.  Is it
not synced up somehow?

thanks,

greg k-h

