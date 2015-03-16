X-GM-THRID: 8319960875008
X-Received: by 10.236.110.38 with SMTP id t26mr61840701yhg.1.1426525688690;
        Mon, 16 Mar 2015 10:08:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.195 with SMTP id k64ls1752335ioi.66.gmail; Mon, 16 Mar
 2015 10:08:08 -0700 (PDT)
X-Received: by 10.42.95.135 with SMTP id f7mr58970493icn.30.1426525688459;
        Mon, 16 Mar 2015 10:08:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si2052150pdo.0.2015.03.16.10.08.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 10:08:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 24A64981;
	Mon, 16 Mar 2015 17:08:06 +0000 (UTC)
Date: Mon, 16 Mar 2015 18:08:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: Add helper macro
 for spk_synth boilerplate
Message-ID: <20150316170803.GC20171@kroah.com>
References: <20150316142901.GA18101@vaishali-Ideapad-Z570>
 <alpine.DEB.2.10.1503161748520.2704@hadrien>
 <CAK-LDbJKZpUrzc4rbaHM6mBQAs-NbnTTuwNjge_d0RN0yG=U9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDbJKZpUrzc4rbaHM6mBQAs-NbnTTuwNjge_d0RN0yG=U9A@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 16, 2015 at 10:34:34PM +0530, Vaishali Thakkar wrote:
> On Mon, Mar 16, 2015 at 10:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> +#define module_spk_synth(__spk_synth) \
> >> +     module_driver(__spk_synth, synth_add, \
> >> +                     synth_remove)
> >
> > Why the newline before synth_remove?
> 
> Just for the consistency. I followed all such macro examples
> like module_usb_driver, module_platform_driver, module_pci_driver
> etc. And I guess may be this line will go over 80 characters though
> I haven't checked that.
> 
> Should I go for writing like this in a single line
> [if it will not go beyond 80 characters]?
> 
> module_driver(__spk_synth, synth_add,  synth_remove) \

Yes, please do so, the only reason I wrapped the module_usb_driver()
lines was because I had to.

thanks,

greg k-h

