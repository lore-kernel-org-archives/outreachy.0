X-GM-THRID: 6336999371468439552
X-Received: by 10.107.130.75 with SMTP id e72mr7368964iod.98.1476023708494;
        Sun, 09 Oct 2016 07:35:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.56 with SMTP id g53ls8403540ote.32.gmail; Sun, 09 Oct
 2016 07:35:08 -0700 (PDT)
X-Received: by 10.200.54.91 with SMTP id n27mr4942876qtb.29.1476023708157;
        Sun, 09 Oct 2016 07:35:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d11si3554109pfl.2.2016.10.09.07.35.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:35:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6D3517AA;
	Sun,  9 Oct 2016 14:35:07 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:35:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: sm750fb: replace macro with builtin fn
Message-ID: <20161009143515.GA11086@kroah.com>
References: <20161002223356.GA5653@localhost>
 <20161007145936.GA8908@kroah.com>
 <20161007223250.GA2680@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161007223250.GA2680@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Oct 07, 2016 at 03:32:51PM -0700, Elizabeth Ferdman wrote:
> On Fri, Oct 07, 2016 at 04:59:36PM +0200, Greg KH wrote:
> > On Sun, Oct 02, 2016 at 03:33:59PM -0700, Elizabeth Ferdman wrote:
> > > Drop a local macro definition and replace its uses with a standard
> > > macro function from linux/kernel.h: DIV_ROUND_CLOSEST, to avoid
> > > reproducing code.
> > > 
> > > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > > ---
> > > Changes in v2:
> > >  - Use "with" not w in the subject line 
> > >  - Specify the name of the builtin macro in the description
> > >  - Explain why this change is necessary
> > 
> > Someone else already sent this patch in and got it accepted before you
> > did, sorry.
> 
> Is there any easy way to monitor what's currently being sent? I found
> lkml.org and mail-archive.com/linux-kernel@vger.kernel.org. The latter
> is a nicer one to look at. Just wondering what you use.

lkml is not something you really need to read, it's a firehose :)

staging patches come in on the driverdevel mailing list, the address for
it is in the MAINTAINERS file.  You can subscribe to it, that is the
easiest thing to do, to see what is also being sent at the same time.

thanks,

greg k-h

