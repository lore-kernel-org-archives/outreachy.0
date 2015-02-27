X-GM-THRID: 2517133950976
X-Received: by 10.52.88.67 with SMTP id be3mr13269708vdb.3.1425050724438;
        Fri, 27 Feb 2015 07:25:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.40 with SMTP id y8ls257422obg.51.gmail; Fri, 27 Feb
 2015 07:25:24 -0800 (PST)
X-Received: by 10.182.111.132 with SMTP id ii4mr13083799obb.2.1425050724245;
        Fri, 27 Feb 2015 07:25:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id nt14si505322pab.2.2015.02.27.07.25.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 07:25:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DB98BB04;
	Fri, 27 Feb 2015 15:25:23 +0000 (UTC)
Date: Fri, 27 Feb 2015 07:25:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/4] staging: rtl8192u: Fix quoted
 string split across lines.
Message-ID: <20150227152523.GB20485@kroah.com>
References: <cover.1424622240.git.navyasri.tech@gmail.com>
 <72bbf597b52686359f45a7f24f733f7771060f41.1424622240.git.navyasri.tech@gmail.com>
 <20150226214451.GB12357@kroah.com>
 <c3008926-a1a2-4843-9593-eea78a6664d6@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c3008926-a1a2-4843-9593-eea78a6664d6@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 07:16:07AM -0800, Navya Sri Nizamkari wrote:
> 
> 
> On Friday, February 27, 2015 at 3:14:52 AM UTC+5:30, gregkh wrote:
> 
>     On Sun, Feb 22, 2015 at 10:13:08PM +0530, Navya Sri Nizamkari wrote:
>     > This patch fixes the checkpatch.pl warning:
>     >
>     > WARNING: quoted string split across lines
>     >
>     > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com>
>     > ---
>     >  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 12 ++++++------
>     >  1 file changed, 6 insertions(+), 6 deletions(-)
> 
>     Also doesn't apply :(
> 
> 
> Does it not apply because some has already sent in this patch or due to the
> indentation being wrong? For the indentation I sent a newer version of the
> patch if that's the problem.

I really don't remember why it didn't apply.  I went through 700 patches
yesterday, they are all a blur...

thanks,

greg k-h

