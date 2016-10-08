X-GM-THRID: 6338591064541102080
X-Received: by 10.157.60.245 with SMTP id t50mr5926214otf.133.1475890770394;
        Fri, 07 Oct 2016 18:39:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.230.3 with SMTP id e3ls1808640ith.7.gmail; Fri, 07 Oct 2016
 18:39:26 -0700 (PDT)
X-Received: by 10.66.167.198 with SMTP id zq6mr4608264pab.96.1475890766099;
        Fri, 07 Oct 2016 18:39:26 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id d11si2508555pfl.2.2016.10.07.18.39.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 18:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 128so2067194pfz.3
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 18:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9kWiFAbJRCV7qVu68pMlTdB1WogaW55x6VyKh/K2Cdo=;
        b=yV5jiBfnvF0rxS7UbadZAgpJFM1cTBnwTVEXU+UxwstqsefkDY3jRNXWCFgv+MeF7e
         IrSlCkCaUekaOI+9v3H0sxYtqnCzJ9CYXsfuAzCYT9Zo6hLdF2Yas5zwChTwXfFm6AcG
         +FLPuADHEnF41/FPgXUlhe4YxNyrdMyJl94F0Sz3l1q+OE3pxoY9ZiFRUS7eNVUWM/7X
         QdU6AIF+ZbZ6Gf5Wcd1twd2DDV4fwqotO41qE1M8DOId4JWWLdl1KliQzSGnB3BCqjyR
         y5lhp8nK9IKlYZMKQXq/DnEeJZF69wX9WpOnLpGynZzQOdIydrs1LZT2K8pUxMX4xzCy
         PhOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9kWiFAbJRCV7qVu68pMlTdB1WogaW55x6VyKh/K2Cdo=;
        b=BmqI/pfYadzn3QdzkEpHYpBq4Bvk6txhLZXEVmztua9iaRxvAynq82dl/7Z8FW6NJm
         5sh3ko8udUk3ePZ1Vw7uPdRNKuiJj+TpzjBn0gr8d9RqeYKyleb4ArUiw8JURSsaJQhn
         FCkle1HcJFVToKSLUhAVdzpe9Iu3NQZU8H7uxz+YTSS9XjO5zUSswr0eaXXKHmBWOjAY
         ib744HIdZsLHmw2EK1wFZ2aE1yRumdLEaAlIe00QfNpMmwwBYcflTQzUFUMfIFTisc+g
         FvKsVQmGOqoQQ2HT6q4sojKJUdJiq3zmvf8ijf8IvnJADPUHJuFmsDtneMYULdYDhYzW
         T/Uw==
X-Gm-Message-State: AA6/9RlrNJuWinrfoGl02+hCeTpUn1vl68SR7uviO99eRlrxZv4BC2BjZUfEvhLoj4n7HA==
X-Received: by 10.98.15.90 with SMTP id x87mr17549838pfi.162.1475890765885;
        Fri, 07 Oct 2016 18:39:25 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id yo3sm33916439pac.42.2016.10.07.18.39.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 18:39:25 -0700 (PDT)
Date: Fri, 7 Oct 2016 18:39:23 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] vc04_services driver question
Message-ID: <20161008013923.GA17413@localhost>
References: <20161007053033.GA13812@localhost>
 <20161007125608.GA1317@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161007125608.GA1317@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Oct 07, 2016 at 02:56:08PM +0200, Greg KH wrote:
> On Thu, Oct 06, 2016 at 10:30:34PM -0700, Elizabeth Ferdman wrote:
> > I noticed a new driver vc04_services was just added and that the Kconfig
> > says it depends on BROKEN. The tutorial specifically says not to work on
> > drivers that have that in the depends on line. However, I also noticed
> > that patches were being accepted for rtl8712 and greybus and those
> > have BROKEN in the Kconfig as well... so is it ok to submit patches for
> > that one or even a patchset?
> 
> Yes, but make sure your patches don't make the code worse.  You might be
> able to build BROKEN code under some conditions.
> 
> And the vc04_services code will get that option removed real soon, I
> have a patchset in my queue to fix up the obvious build issues.  Feel
> free to get them out of the driverdevel mailing list archives and apply
> them locally if you wish to start working on that code.

Hey Greg,
Thanks for the tip. I'd love to do that but how? They've already been
sent so I won't get them if I apply to the mailing-list now, right? I
read that you can just save it and use something like git am/git apply.
I am seeing some vc04 patches in the driverdevel archive.. On the bottom
there is a url with a .bin file... I'm not really sure if that's what I
want. Can you clue me in on how to do it?

thanks, 
liz
> 
> thanks,
> 
> greg k-h

