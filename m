X-GM-THRID: 6338829541865160704
X-Received: by 10.129.101.215 with SMTP id z206mr7159861ywb.86.1476088916008;
        Mon, 10 Oct 2016 01:41:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.202 with SMTP id z68ls6567950ota.47.gmail; Mon, 10 Oct
 2016 01:41:55 -0700 (PDT)
X-Received: by 10.31.33.79 with SMTP id h76mr4464669vkh.27.1476088915520;
        Mon, 10 Oct 2016 01:41:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id x14si2487356vkd.3.2016.10.10.01.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 01:41:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id x79so5345216lff.2
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 01:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fg528qFikTdXe9ttJioLxQWCN1lYHDumAPssFNndipY=;
        b=eba65ydAV04ehDMDXl2tvM9j0ROHxtOAqaKkHCxofmrpXnB6iYLxJqi29y8iFinV9x
         nMBg7/GSCKkebKhTuXtU4KV1e1dkGj+LgAnMbeiavTkF87IyZP2kg5Oqa/LcBgqiG0Ux
         G7QJ4w3TQXWLggYVnBgRXn8nunGhmSS32JnOBPHjMZI1eqQ0p5/x+8FivWMFsC53M7Z0
         SUw65ochMp30wsO8kDb7wdsEmLYmSWPOn80Z5WkZMGt4fTN1Ky96Z20E0kcXlzDTsKC2
         CuunMYukm2X6ZAmW3z/H6i+dvc3JTv75qD0zcvXXIxltDvnLMFxzxm3/UX0ssYRJIErp
         SHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fg528qFikTdXe9ttJioLxQWCN1lYHDumAPssFNndipY=;
        b=Oz1MM7yYPg/CDTjQqq8gKDhmlf6jPJLiqdT9lwl7QTpCxD860729/41RcDK69SKGDi
         mAJBiEd/+Az00pavH6hdX4DPo41lsO/uWNz5Vpf0YQ8l3Ujd+XN+GCdw61ALhmj/psws
         KShQ+AA/fgHz1TjJmEiogU77po/J+3sfC9nmjuo3klFuAx/kUn21t9miBCwKBYU4jRle
         aJ0hyGP5zI6RpXdEMJJ7tK9Zy3w5LQFrJSQq+PdWcqM9VXJI5CKF4CBhzIxjCG0drQWX
         Lytt953eoR1adUKXo2SkDx8imsxTW/CyGLXKmMHxM8IOMTyQyRWYXHEFptF1z7a5JQ1x
         eDBw==
X-Gm-Message-State: AA6/9RlFNp8yAVzNnlV8VCZs5KHth5cDwpwgVcsDCKKD8nWxxGDFzW3vjX5+050QZ4qexw==
X-Received: by 10.194.191.162 with SMTP id gz2mr28305398wjc.182.1476088914878;
        Mon, 10 Oct 2016 01:41:54 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id f2sm21542916wjr.2.2016.10.10.01.41.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 10 Oct 2016 01:41:54 -0700 (PDT)
Date: Mon, 10 Oct 2016 11:41:53 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: ks7010: Replace printk with netdev_*
Message-ID: <20161010084153.GA9069@domino-MS-16Y1>
References: <20161009203937.GA1549@domino-MS-16Y1>
 <20161010070913.GA25825@kroah.com>
 <20161010082846.GA8819@domino-MS-16Y1>
 <20161010083658.GA2343@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161010083658.GA2343@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 10, 2016 at 10:36:58AM +0200, Greg Kroah-Hartman wrote:
> On Mon, Oct 10, 2016 at 11:28:46AM +0300, Muraru Mihaela wrote:
> > On Mon, Oct 10, 2016 at 09:09:13AM +0200, Greg Kroah-Hartman wrote:
> > > On Sun, Oct 09, 2016 at 11:39:37PM +0300, Mihaela Muraru wrote:
> > > > This is a patch to ks_hostif.c file that fixes up a checkpatch.pl
> > > > 
> > > > WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> > > > dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...
> > > > 
> > > > For netdev devices netdev_info and netdev_warn is preferred over
> > > > printk(KERN_INFO/WARN..).
> > > > 
> > > > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > > > 
> > > > ---
> > > > Changes in v2:
> > > > 	-rebase the staging-testing branch
> > > 
> > > Really?  It still does not apply :(
> > > 
> > > Note, many people seem to be working on this same file, in the same
> > > area, for some reason...
> > 
> > Thank you for reply.
> > 
> > I saw that this file has a lot of problems and  because of that I will
> > rebase it again and I will resend it,if is ok for you. It is a small
> > contribution, but it can improve something.
> 
> Yes, please continue working on this file if you want to, I am always
> willing to accept patches.
> 
> I just know it can get frustrating when multiple people work in the same
> place, as someone always ends up getting their patch rejected.


Thank you,

mihaela

> thanks,
> 
> greg k-h

