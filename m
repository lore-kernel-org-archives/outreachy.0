X-GM-THRID: 6388519093491728384
X-Received: by 10.99.219.69 with SMTP id x5mr2194847pgi.85.1488009136066;
        Fri, 24 Feb 2017 23:52:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls7869963ota.4.gmail; Fri, 24 Feb
 2017 23:52:15 -0800 (PST)
X-Received: by 10.157.35.38 with SMTP id j35mr2472218otb.74.1488009135698;
        Fri, 24 Feb 2017 23:52:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h130si2024162pfe.1.2017.02.24.23.52.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 23:52:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C5870279;
	Sat, 25 Feb 2017 07:52:14 +0000 (UTC)
Date: Sat, 25 Feb 2017 08:52:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/6] staging: rtl8192e: Removed unnecessary parentheses
Message-ID: <20170225075207.GA1614@kroah.com>
References: <20170220171147.GA15849@singhal-Inspiron-5558>
 <20170224171711.GA3159@kroah.com>
 <CALrZqyPpeCm1zj3aqAhAQXe3Q=TouHdFv7qY_4ijNNDBzqJZNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALrZqyPpeCm1zj3aqAhAQXe3Q=TouHdFv7qY_4ijNNDBzqJZNA@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Feb 25, 2017 at 04:18:27AM +0530, SIMRAN SINGHAL wrote:
> On Fri, Feb 24, 2017 at 10:47 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Mon, Feb 20, 2017 at 10:41:47PM +0530, simran singhal wrote:
> >> Extra parentheses were causing checkpatch issues
> >> and were removed.
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> ---
> >>
> >>  v2:
> >>    -Removed parentheses around argument of cast
> >>    -Removed cast
> >
> > I can't keep track of random patches in the middle of a series that is
> > updated.
> >
> > Please fix up and resend the whole series, as a series, that are linked
> > together in an email client, not as independent emails (i.e. use
> > git-send-email properly).
> 
>  I am using mutt for sending patches. In mutt I have to send each patch
>  of a particular patch series one by one. So, they come as independent
>  emails.
> 
>  And, they all get mix because of the reason, if I started sending new patch
>  series and at the same time sending new versions of patches of previous
>  patch series, so because of which their order changes.

Please do not do that.  Would you like to receive patches out of order,
not threaded, and all mixed up in the middle of hundreds of other
patches?  How would you be able to figure it out?  Please consider that
someone has to read what you send out :)

>  So, please suggest me some better way, considering I am using mutt.

You can use mutt for that, but you need to know what you are doing and
how to thread emails with it.  It's not simple, so please just use git
send-email for now until you learn mutt better.

good luck!

greg k-h

