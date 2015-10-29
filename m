X-GM-THRID: 6210938115276668928
X-Received: by 10.68.245.234 with SMTP id xr10mr749579pbc.7.1446115619642;
        Thu, 29 Oct 2015 03:46:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls476834qgj.56.gmail; Thu, 29 Oct
 2015 03:46:59 -0700 (PDT)
X-Received: by 10.129.155.83 with SMTP id s80mr755935ywg.55.1446115619084;
        Thu, 29 Oct 2015 03:46:59 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si125464pbb.0.2015.10.29.03.46.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 03:46:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy1so31753432pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 03:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qMK9tmcbYqhDiEw+jwd4GBpJjT3oQsY7PUQ9hgwRd7A=;
        b=Z69OJQMS9eaCGFCeCFENlzDqOaWYMWEeusGiKG0GiC9YzEDrQFEg4qMGYUGXblDgJH
         r9+HXgTKaY8u79F1TW04+5fXJgjuLqrdI+ZG/vn3COHecbfLJtJjTXeq4PzcYrBx+A4x
         TvB6O2o04VOIB+p0lW3Wsc/YdpFoA7mMUcTm980MSbtRMRA0g0lIihliKJt9fR2KoXV5
         4gB3mZpGaLwii0knpsKNNTVJIe1Mry/3d1m6wlrIogI/5qFZwOovkSd4gjbO7jjm/a0C
         lnbbY5HtF3E0J9OQU4tXw6FsvQSM458KurV4MvJSjBxEA1M5HerM+LZi3XaNeV2oHENF
         hXFg==
X-Received: by 10.68.216.6 with SMTP id om6mr1213862pbc.29.1446115618916;
        Thu, 29 Oct 2015 03:46:58 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id rz9sm1620704pbb.61.2015.10.29.03.46.57
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 03:46:58 -0700 (PDT)
Date: Thu, 29 Oct 2015 16:16:52 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: console: Remove
 irrelevant return statement
Message-ID: <20151029104652.GC1331@sudip-pc>
References: <cover.1446096468.git.shivanib134@gmail.com>
 <add1870ead28913d364e09a1d06f85c5da8c74ed.1446096468.git.shivanib134@gmail.com>
 <20151029054828.GB16140@sudip-pc>
 <CAKHNQQF68wTk1v65i+aGEJwTmLsce-HCE0h4fiXsF-wze=_ksw@mail.gmail.com>
 <20151029055750.GC16140@sudip-pc>
 <CAKHNQQEGXJ5=xdwyUeyvggB6jY=FinnRA8vUyCPWBWg8xGs=fA@mail.gmail.com>
 <CAKHNQQE=hZL1yAULMiCj332R6qRW0KtfufTdG3yQzuGH-0T55w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQE=hZL1yAULMiCj332R6qRW0KtfufTdG3yQzuGH-0T55w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 29, 2015 at 11:30:17AM +0530, Shivani Bhardwaj wrote:
> On Thu, Oct 29, 2015 at 11:29 AM, Shivani Bhardwaj <shivanib134@gmail.com>
> wrote:
> 
> >
> >
> > On Thu, Oct 29, 2015 at 11:27 AM, Sudip Mukherjee <
> > sudipm.mukherjee@gmail.com> wrote:
> >
> >> On Thu, Oct 29, 2015 at 11:24:59AM +0530, Shivani Bhardwaj wrote:
> >> > On Thu, Oct 29, 2015 at 11:18 AM, Sudip Mukherjee <
> >> > sudipm.mukherjee@gmail.com> wrote:
> >> >
> >> > > On Thu, Oct 29, 2015 at 11:02:48AM +0530, Shivani Bhardwaj wrote:
> >> > > > Remove return statement from the function lstcon_group_ndlink_move()
> >> > > > as its return type is void.
> >> > > > Fix checkpatch WARNING: void function return statements are not
> >> > > > generally useful
> >> > > >
> >> > > > Signed-off-by : Shivani Bhardwaj <shivanib134@gmail.com>
> >> > >
> >> > > checkpatch is complaining about the "Signed-off-by" because of an
> >> > > extra space.
> >> > >
> >> > > regards
> >> > > sudip
> >> > >
> >> >
> >> > Sending this again. I'm sorry.
> >>
> >> BTW, are you adding this manually? Let git add these Signed-off-by and
> >> you do not need to worry about these anymore.
> >>
> >> regards
> >> sudip
> >>
> >
> > I fixed the commit message by git commit --amend. Did I do anything wrong?
> > Thank you
> >
> 
> And, should I be sending it again?

I am seeing that you have already sent it, but I think Greg will be
confused by that patch.

regards
sudip

