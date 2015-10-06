X-GM-THRID: 6200896862154653696
X-Received: by 10.129.159.71 with SMTP id w68mr28225821ywg.28.1444104505734;
        Mon, 05 Oct 2015 21:08:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.53 with SMTP id 50ls2869141qgc.26.gmail; Mon, 05 Oct
 2015 21:08:24 -0700 (PDT)
X-Received: by 10.31.161.201 with SMTP id k192mr18431471vke.12.1444104504982;
        Mon, 05 Oct 2015 21:08:24 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id uv4si4395893pac.0.2015.10.05.21.08.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 21:08:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv12so200748926pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 21:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JCsfaqCz4lb+/m52fmPBWfEQbJTfmhb5k3Oj2f7jhPg=;
        b=mC0A+73qB7+lYF9S5mQUCJiDP1rzVdC8Y6OKmzK/rGUGUlW9ZUF7G1Sflv8VEVBx4l
         Vgu92CL0CFRLT8CIIZ9qkFC6VEGt8QGfFAkXKU9JZPcL9isGGWCU6evaybbByLtCrMJO
         L424G7SWuWbRb3/gxcNnIwpkGSSza3661x1ZVcaKvVgZL33YLdgsfRVZ59Tg/uuvRW6A
         Ten2bHlZUuhF7gPgO5Lfe5uWVoRD4Pqndp7JRf52rRBkrFu0yHYTrDrJ5ZeBFPrQ2y7l
         EGj/wVazFNSFQ2m+5WhirH+3nsf46LXP0Rlbym/1PQ7Pg+IyLX3PtEw3EWPtGIUoqBep
         sMZw==
X-Received: by 10.66.147.74 with SMTP id ti10mr44772748pab.88.1444104504687;
        Mon, 05 Oct 2015 21:08:24 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id xm4sm30596663pab.27.2015.10.05.21.08.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 21:08:23 -0700 (PDT)
Date: Tue, 6 Oct 2015 09:38:00 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
Message-ID: <20151006040800.GA30304@ubuntu>
References: <20151002040637.GA41415@ubuntu>
 <alpine.DEB.2.10.1510020959500.2633@hadrien>
 <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
 <20151002102819.GD9346@sudip-pc>
 <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
 <20151002125909.GB32540@sudip-pc>
 <71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
 <alpine.DEB.2.10.1510041457450.2661@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510041457450.2661@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Oct 04, 2015 at 02:59:17PM +0200, Julia Lawall wrote:
> On Sun, 4 Oct 2015, Shivani Bhardwaj wrote:
> 
>>>
>>> Hi Julia, Sudip! I think after I have used make allmodconfig,
>>> something is not working right. Now, when I use sparse, it shows
>>> messages and warnings for arch/ and include/ , is this dues to some
>>> change in configuration file? Please respond. 
>>> Thank you!
>>>
> > Thanks, Sudip! And for last two messages I did make use of mutt, I don't
> > know why doesn't it show up.
> > And, does this mean that every time I compile, I must use allmodconfig?
> 
> You have top posted again.  Once you make allmodconfig, it should be good
> enough to leave it as is, at least until you update your kernel and get a
> new Kconfig file.
> 
> julia
> 
> > Thank you
> >
> > On Friday, October 2, 2015 at 6:29:15 PM UTC+5:30, Sudip Mukherjee wrote:
> >       On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj
> >       wrote:
> >       > Hi Sudeep! I'm having trouble with inline mode of
> >       communication, I think
> >       > I'm doing it wrong. I'm not getting exactly difference between
> >       top-post and
> >       > inline way, I've been warned about this before as well. I'll
> >       learn as soon
> >       > as possible. I've sent my .config file. You can check it.
> >       Ok, now I understand why you are getting the warning. :)
> >       In your .config CONFIG_STAGING_BOARD is not selected. So
> >       staging/board
> >       is not included in the build and as a result the modules on
> >       which board
> >       is dependent are also not built. So in this scenario when you
> >       try to do
> >       make M=drivers/staging/board it gives warning. To test properly
> >       try with
> >       make allmodconfig.
> >
> >       regards
> >       sudip
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/71611fa2-5d15-4032-bd55-
> > b7991ea55a5b%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

