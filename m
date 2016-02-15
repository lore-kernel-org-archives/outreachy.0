X-GM-THRID: 6250919415582294016
X-Received: by 10.182.91.80 with SMTP id cc16mr12971084obb.1.1455496228826;
        Sun, 14 Feb 2016 16:30:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.46 with SMTP id k14ls687140igt.44.canary; Sun, 14 Feb
 2016 16:30:28 -0800 (PST)
X-Received: by 10.66.150.68 with SMTP id ug4mr13478658pab.33.1455496228516;
        Sun, 14 Feb 2016 16:30:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si3035432pab.0.2016.02.14.16.30.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:30:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 351BA1007;
	Mon, 15 Feb 2016 00:30:28 +0000 (UTC)
Date: Sun, 14 Feb 2016 16:30:27 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Include KERN_
 facility level for printk()
Message-ID: <20160215003027.GA2672@kroah.com>
References: <20160214041910.GA25485@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602140827100.2039@localhost6.localdomain6>
 <CANnt6XnNYcWCBabrvQgmQ81LnLdW5Ph9jMj4ds90-2Sf=Ag43A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANnt6XnNYcWCBabrvQgmQ81LnLdW5Ph9jMj4ds90-2Sf=Ag43A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 14, 2016 at 10:09:00AM -0500, Janani Ravichandran wrote:
> 
> 
> 
>     >� � � �else
>     > -� � � � � � �printk("Debug-level enabled\n");
>     > +� � � � � � �printk(KERN_INFO "Debug-level enabled\n");
> 
>     You shouldn't add new uses of printk.� I would think checpatch would have
>     complained about this.�
> 
> Hi Julia, I made this change as there was a checkpatch warning about KERN_
> facility level
> not being there in the printk() statements.
> �
> 
>     I don't know what kind of driver this is, but
>     check whether pr_info, dev_info, or netdev_info would be appropriate.
> 
> This is a wireless device by Atmel. So I guess, netdev_info fits better.
> Do I make that change instead? Let me know :)

For this specific file and location, you are correct in using KERN_INFO,
but, the larger problem is that the driver shouldn't have this function
at all.  People are working on removing all of the "custom debugging"
logic in it, and when done, this function will be removed.

So I'll take this patch as-is, but you might want to work on removing
that logic if you are looking for something to do.  But note this is a
very fast-moving driver right now, I get about 100 patches a week for
it, so it might be tough to keep in sync with what is happening.

thanks,

greg k-h

