X-GM-THRID: 6200017795364683776
X-Received: by 10.66.218.130 with SMTP id pg2mr7493499pac.12.1443557562466;
        Tue, 29 Sep 2015 13:12:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.111 with SMTP id m102ls9809qgd.43.gmail; Tue, 29 Sep
 2015 13:12:41 -0700 (PDT)
X-Received: by 10.129.56.7 with SMTP id f7mr24317951ywa.52.1443557561539;
        Tue, 29 Sep 2015 13:12:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q133si2687045ywb.1.2015.09.29.13.12.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 13:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.161])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3DBA4A18;
	Tue, 29 Sep 2015 20:12:40 +0000 (UTC)
Date: Tue, 29 Sep 2015 22:12:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: show() methods should
 use scnprintf()
Message-ID: <20150929201238.GA27265@kroah.com>
References: <1443554123-15360-1-git-send-email-ksenija.stanojevic@gmail.com>
 <20150929193803.GA23361@kroah.com>
 <CAL7P5jLdWFvBs9Bmc=YukTNnA=0A77LWB=PcdFxp4yN0neq5kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5jLdWFvBs9Bmc=YukTNnA=0A77LWB=PcdFxp4yN0neq5kg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 29, 2015 at 09:50:58PM +0200, Ksenija Stanojević wrote:
> Hi,
> 
> On Tue, Sep 29, 2015 at 9:38 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Tue, Sep 29, 2015 at 09:15:23PM +0200, Ksenija Stanojevic wrote:
> >> snprintf() may return a value that exceeds its second argument,
> >> show() methods should use scnprintf() instead of snprintf().
> >>
> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> >> ---
> >>  drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
> >> index 8d8bd12..36a1f4e 100644
> >> --- a/drivers/staging/fbtft/fbtft-sysfs.c
> >> +++ b/drivers/staging/fbtft/fbtft-sysfs.c
> >> @@ -198,7 +198,7 @@ static ssize_t show_debug(struct device *device,
> >>       struct fb_info *fb_info = dev_get_drvdata(device);
> >>       struct fbtft_par *par = fb_info->par;
> >>
> >> -     return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
> >> +     return scnprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
> >
> > They should?  Why?  This shouldn't be needed at all, and really, a
> > simple sprintf() is all that is necessary.  I would just leave this
> > alone, it's fine as-is.
> 
> In kernel documentation :
> https://www.kernel.org/doc/Documentation/filesystems/sysfs.txt
> it states:
> 
> show() must not use snprintf() when formatting the value to be
>   returned to user space. If you can guarantee that an overflow
>   will never happen you can use sprintf() otherwise you must use
>   scnprintf()
> 
> Should I just use sprintf instead?

If you are writing new code for sysfs attributes like these, yes, use
sprintf().  Don't modify existing code that is working just fine with no
errors at all by trying to convert snprintf() to scnprintf() please.

thanks,

greg k-h

