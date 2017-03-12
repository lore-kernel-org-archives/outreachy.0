X-GM-THRID: 6396343645329424384
X-Received: by 10.99.98.193 with SMTP id w184mr13518297pgb.83.1489331082492;
        Sun, 12 Mar 2017 08:04:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.218 with SMTP id v87ls3577464iov.10.gmail; Sun, 12 Mar
 2017 08:04:41 -0700 (PDT)
X-Received: by 10.99.228.83 with SMTP id i19mr13596090pgk.57.1489331081268;
        Sun, 12 Mar 2017 08:04:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si2675954pfa.6.2017.03.12.08.04.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:04:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 639D8932;
	Sun, 12 Mar 2017 15:04:39 +0000 (UTC)
Date: Sun, 12 Mar 2017 16:04:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	arve@android.com, riandrews@android.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] staging: android: Replace strcpy with strlcpy
Message-ID: <20170312150421.GA24990@kroah.com>
References: <20170311220244.GA21700@singhal-Inspiron-5558>
 <20170312133457.GA27791@kroah.com>
 <CALrZqyP=eMdcFQvM+ZvGiyrcSdnYJxiyOkmr5H6GyEG9qo-ggQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALrZqyP=eMdcFQvM+ZvGiyrcSdnYJxiyOkmr5H6GyEG9qo-ggQ@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 12, 2017 at 08:25:28PM +0530, SIMRAN SINGHAL wrote:
> On Sun, Mar 12, 2017 at 7:04 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Sun, Mar 12, 2017 at 03:32:44AM +0530, simran singhal wrote:
> >> Replace strcpy with strlcpy as strcpy does not check for buffer
> >> overflow.
> >
> > Can there be a buffer overflow here?  If not, then strcpy is just fine
> > to use.  Do you see a potential code path here that actually is a
> > problem using this?
> >
> >> This is found using Flawfinder.
> >
> > You mean 'grep'?  :)
> >
> > If not, what exactly does "Flawfinder" point out is wrong with the code
> > here?  At first glance, I can't find it, but perhaps the tool, and your
> > audit, provided more information?
> >
> > thanks,
> >
> 
> Flawfinder reports possible security weaknesses (“flaws”) sorted by risk level.
> The risk level is shown inside square brackets and varies from 0, very
> little risk,
> to 5, great risk.
> 
> So, here in this case I was getting risk of [4].
> This is what I got:
> drivers/staging/android/ashmem.c:551:  [4] (buffer) strcpy:
>   Does not check for buffer overflows when copying to destination (CWE-120).
>   Consider using strcpy_s, strncpy, or strlcpy (warning, strncpy is easily
>   misused).

Consider looking at the code to see if it actually is incorrect before
blindly accepting random comments by a random tool :)

Again, if you can see how this is incorrect, great, let's fix it,
otherwise please leave it as-is because so far your fixes are actually
breaking things :(

thanks,

greg k-h

