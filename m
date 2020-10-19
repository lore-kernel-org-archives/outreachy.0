X-GM-THRID: 6885049612383551488
X-Received: by 2002:ae9:e60c:: with SMTP id z12mr15495039qkf.392.1603105059440;
        Mon, 19 Oct 2020 03:57:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:efcc:: with SMTP id d195ls1840447qkg.10.gmail; Mon, 19
 Oct 2020 03:57:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzL1m0YZr4mQfATmCeHJg1psOhF4bB5x8aXva4KW0Bxvd0f1lhklAgkNzAWGWpUbRDxkAJy
X-Received: by 2002:a37:9942:: with SMTP id b63mr16383527qke.85.1603105058202;
        Mon, 19 Oct 2020 03:57:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603105058; cv=none;
        d=google.com; s=arc-20160816;
        b=lT58hsZxWzJP77AjgxbRUygyInTzyAFr3QvPyMdw+XpBMvqgHe2scj6MvtbqXaHTWr
         9RNavzhR1xd22E0kH3tFBECPqU50y6HB51ebh+rMbBuh9oXwBgMANHefl0vE8m81aApX
         bwsA/dREblUPg8OXV8hx/DuYcsdjm8YoqrNXfL8+zC6itRP1JM8GZvtR+hSm/6oE6be6
         Q3gnMtIbPH0sum/KFow+na0Rlr6nb4ENPNJBI9dNi3SY1eZgRCwMvpLwbeOuZeuMEXKX
         2b3bi5lAPhDcp0bb42fEKdWtWK6EKQTCrVcUVG6UAiic13sAukpJZxbBj+05Lyp11BZ1
         P1dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4/ypvQb/S0lrBO6B2iGUKDphfWp5w5Oc2pVIAK7xZ08=;
        b=i/vDT8YgGyJXQhOcmy9OhBcCj6jrg4GhLlqVi5coii20fyci5r7d5Xf3QzClnzkimu
         cOkJVAFpOELZv6SKDHJf4CqEd0hoGWXfTzZv5RzMncCJvNEBk5whSS+BtwxqgGvSMpRg
         oA0Ff29HeElsWMWPPpKdz/ak92ckTShBGRRvBu2lysReEXPM7PP1L6PTV8o6N4zeiImA
         BbtQy9Ccs6UfK7r+qEdUQGJaQAL7mmLGQiSu83ibRTM7+uI4WRy+o3JLJjMNTs9y3yZF
         5CmrsvOSdUOfr2fX5KAhgxmytsYQh7xO6boTpvyd5VnApnYHIe6epVJlHmZamGSxDixj
         M4gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="k/Y9pEY0";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id p51si100597qtc.4.2020.10.19.03.57.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 03:57:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="k/Y9pEY0";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id hk7so5484491pjb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2020 03:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4/ypvQb/S0lrBO6B2iGUKDphfWp5w5Oc2pVIAK7xZ08=;
        b=k/Y9pEY05AjIwtYmX1s0HE6crhn6rJ4Dwq3ZoxDZRYjjRgxSs02nyUOb/QVNnZ95Aw
         5keKmjUJFAIqba/ESQRvY/G5Tdeeo/BPKGtbNuHexCWR60p6SIDDBpwtX/xiK2uBn1uW
         xGR4zQOdWhXL4L1yx+AquA1FS+Dd+fzwibXjkHszPVdNUBh4TwnKuIVJkTcVKaq4ou4M
         vPHs9EsgC95wXAG8+C/pxV3e7/s3qzzh05IkMjUfzVeCff1NRlAeinuSwa3dBvI5szbs
         bjyiAUybfAbezNL0tHXueyxDi/gP9qXUW2cBOUNIuteda6g/K7+Fd199XIbAVlauBa6q
         W2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4/ypvQb/S0lrBO6B2iGUKDphfWp5w5Oc2pVIAK7xZ08=;
        b=o1h2g4AeaYpQGXMbnnDHWZvSywXb1dlrvuLRnJBsM+rP9GGfVEmN52Rt2Dw6HO68nA
         mb1YmPzD2TgkQoIqkOghVOvGaIlgxsB3V6DsISgKTkYThgMcizfghu2lE+MFJ1HqfpLD
         hbivY8eXvWEpdmqbKAHdO0pcf7uCQS5NW9MRvFipgmuxFUNlBxugRRdM2UzkRT0+PPv2
         cH+4jtxmKwg5aJ2U/MMkdPoZicOAWzGc8Si+9WI/oRrRYOC0+d852mATYJ6U6aTrHdn6
         QJS5Yj1QGfvCo/+W3fQMQd7lcyfFUXv1r5EVzvGD0F/WM2ODkM8rm+uPKRUj4xlZhbNO
         owrA==
X-Gm-Message-State: AOAM530fWfkNxBiwJPXPUd+5rqzV5oDarN2gdod1ZUXYoJnGBt0EUQx0
	djEBCFaNKarafNnViLJAuP7nEQq+HkgTzA==
X-Received: by 2002:a17:902:8341:b029:d4:e3fa:e464 with SMTP id z1-20020a1709028341b02900d4e3fae464mr16601371pln.66.1603105057413;
        Mon, 19 Oct 2020 03:57:37 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id e23sm11497272pfi.191.2020.10.19.03.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 03:57:36 -0700 (PDT)
Date: Mon, 19 Oct 2020 16:27:31 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Ian Abbott <abbotti@mev.co.uk>, outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: comedi: combine
 split lines for improved readability
Message-ID: <20201019105731.GB9681@ubuntu204>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
 <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
 <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010191239360.2781@hadrien>

On Mon, Oct 19, 2020 at 12:41:14PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 19 Oct 2020, Ian Abbott wrote:
> 
> > On 18/10/2020 20:49, Deepak R Varma wrote:
> > > Instructions split on multiple lines can be combined on a single line
> > > for improved readability of the code.
> > >
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > ---
> > >   .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
> > >   1 file changed, 4 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > index 7db83cf5e4aa..a3b1be623861 100644
> > > --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
> > >   	const struct ni_route_tables *T = &private.routing_tables;
> > >     	init_pci_fake();
> > > -	unittest(!route_register_is_valid(4, O(4), T),
> > > -		 "check for bad source 4-->4\n");
> > > -	unittest(!route_register_is_valid(0, O(1), T),
> > > -		 "find first source\n");
> > > -	unittest(!route_register_is_valid(4, O(6), T),
> > > -		 "find middle source\n");
> > > -	unittest(!route_register_is_valid(9, O(8), T),
> > > -		 "find last source");
> > > +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source
> > > 4-->4\n");
> > > +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
> > > +	unittest(!route_register_is_valid(4, O(6), T), "find middle
> > > source\n");
> > > +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
> > >   }
> > >     void test_ni_check_trigger_arg(void)
> > >
> >
> > Is it worth breaking the 80-column limit for this?
> 
> Deepak,
> 
> It was much nicer before.
> 
> It can be awkward to break eg a + operation at the 80 character limit.
> But function argument stand by themselves.
> 
> julia
> 

Hi Julia and Ian,
I wanted to take advantage of the relaxation of 80 column limit to 100
columns and hence proposed combining the lines. Are you saying this is
allowed only in certain cases?

Please confirm and I will handle it accordingly.

Thank you,
Deepak.

> >
> > --
> > -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> > -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> > -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> > -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/f81a537c-c0fb-5133-52a3-825128814435%40mev.co.uk.
> >

