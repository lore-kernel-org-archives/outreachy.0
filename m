X-GM-THRID: 6209280550027395072
X-Received: by 10.31.3.23 with SMTP id 23mr25292772vkd.13.1446582552032;
        Tue, 03 Nov 2015 12:29:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.34 with SMTP id b34ls164081ioj.84.gmail; Tue, 03 Nov
 2015 12:29:11 -0800 (PST)
X-Received: by 10.66.141.110 with SMTP id rn14mr10482598pab.7.1446582551619;
        Tue, 03 Nov 2015 12:29:11 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si2766604pbb.0.2015.11.03.12.29.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 12:29:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mobile-166-176-185-129.mycingular.net [166.176.185.129])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 48B3790;
	Tue,  3 Nov 2015 20:29:11 +0000 (UTC)
Date: Tue, 3 Nov 2015 12:29:10 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, Amitoj Kaur Chawla <amitoj1606@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Tapasweni Pathak <tapaswenipathak@gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH v2] staging: media: lirc:
 lirc_sasem: Replace timeval with ktime_t
Message-ID: <20151103202910.GB30827@kroah.com>
References: <20151027074702.GA26499@amitoj-Inspiron-3542>
 <5227439.VKfeZbEDzt@wuerfel>
 <20151103173210.GC31651@kroah.com>
 <6264221.JsGodhA7Jx@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6264221.JsGodhA7Jx@wuerfel>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Nov 03, 2015 at 09:00:38PM +0100, Arnd Bergmann wrote:
> On Tuesday 03 November 2015 09:32:10 Greg KH wrote:
> > On Tue, Nov 03, 2015 at 05:39:00PM +0100, Arnd Bergmann wrote:
> > > On Tuesday 27 October 2015 13:17:02 Amitoj Kaur Chawla wrote:
> > > > This driver uses 'struct timeval' which we are trying to remove since
> > > > 32 bit time types will break in the year 2038 by replacing it with
> > > > ktime_t.
> > > > 
> > > > This patch changes do_gettimeofday() to ktime_get() because
> > > > ktime_get() returns ktime_t while do_gettimeofday() returns struct
> > > > timeval.
> > > > 
> > > > This patch also uses ktime_ms_delta() to get the elapsed time in
> > > > milliseconds.
> > > > 
> > > > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> > > > ---
> > > 
> > > The patch looks good to me, but after checking an old tree of mine, I found
> > > that I already have a patch from Tapasweni Pathak for the same thing.
> > > For some reason Greg did not apply it to staging back then. I'll send it out
> > > to the list for Greg to apply now to ensure this doesn't happen again.
> > 
> > Greg is not in charge of drivers/staging/media/* so don't send it to
> > him, he will just ignore it 
> 
> Sorry about forgetting that, I'm sure you've told me several times now.
> 
> Anyway, I'll take all patches that I have in my old branch and send them
> to whoever is responsible for merging them.

get_maintainer.pl is your friend :)

