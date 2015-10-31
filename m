X-GM-THRID: 6211884889777635328
X-Received: by 10.28.211.201 with SMTP id k192mr845859wmg.3.1446320282330;
        Sat, 31 Oct 2015 12:38:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.92 with SMTP id k89ls276533lfi.16.gmail; Sat, 31 Oct
 2015 12:38:01 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr2983813lbs.18.1446320281848;
        Sat, 31 Oct 2015 12:38:01 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id g18si266306wmd.1.2015.10.31.12.38.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:38:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ll6so28816984wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 12:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ShdatKpxmVYW9Uk7pu4+/1tz8VXZ9IBbif/8tCNCTsc=;
        b=KjOg9o3OxpYmRgUqnfJ/+Wwhksbeld9JRoAsn1auU6NJaGe9qpLBHwqjQlfN13I/ws
         1217Io9jIn+N0vslhWPQH7PuX/zVdhFo2jOatVz/8IWougT54S7muSYZm2Uup48+365x
         bc2eIwPq2m9LmKvBhHHnDVNAIZkQvjRrz+Iv+FLD0q8Xloa7J+b0hkGdQ7Hx2NzTwuz3
         bpGQvqdsW3DRoWj/mb05GGhGfPPcqwvaAr6YpztK/fNauBMeyD/TlCjFsL2iQp8wnFgB
         gSh4aHOVU+W0WK1r5GleaGdDSSjDoYuRfvLmMRK18HI6uIPWUIVSOLewpOUi5afIb1Tk
         mD8Q==
MIME-Version: 1.0
X-Received: by 10.195.13.199 with SMTP id fa7mr1900353wjd.119.1446320281735;
 Sat, 31 Oct 2015 12:38:01 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sat, 31 Oct 2015 12:38:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510312036180.2194@localhost6.localdomain6>
References: <20151031184544.GA27064@ubuntu>
	<20151031185300.GA8949@kroah.com>
	<CAKHNQQEyJD+j+yNOGtsfZnTkjFcUBNxcAHsTjM=bJWqmb81hOQ@mail.gmail.com>
	<alpine.DEB.2.02.1510312007450.2194@localhost6.localdomain6>
	<CAKHNQQHALdjf7KpZ7keNf2+4wXXfCVmabGZj-zB-b+=uorKOtw@mail.gmail.com>
	<alpine.DEB.2.02.1510312013340.2194@localhost6.localdomain6>
	<CAKHNQQEoZZvtrLb_K+YVD1dfkoUn2tmPtQughnHf_2mPbYDdKg@mail.gmail.com>
	<alpine.DEB.2.02.1510312036180.2194@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 01:08:01 +0530
Message-ID: <CAKHNQQG6AM6q+cO3JcLT3jSNFNw8+57y9fpO-pHb3Ldo192cMQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: interval_tree:
 Convert inline function to macro
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 1:06 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 1 Nov 2015, Shivani Bhardwaj wrote:
>
>> On Sun, Nov 1, 2015 at 12:45 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> Inline functons have types, which help you find bugs.
>> >>
>> >> Inline functions don't risk duplicating computations.  In your macro,
>> >> if
>> >> eg x is the larger value, then whatever x is replaced by will be
>> >> evaluated
>> >> twice.  Consider what would happen if x is eg i++.
>> >>
>> >> Yes, Julia. I took into consideration this case  and I checked out the
>> >> entire code where the function was called, there was no situation like this.
>> >> Plus, I had read that inline functions are compiler dependent so I thought
>> >> of making the change.
>> >> Thank you for explaining. :)
>> >
>> > OK.  Still, someone else could extend the code in some way and want to use
>> > what looks like a function, and use is in a bad way.
>> >
>> > Anyway, the best is always to find a standard kernel function that does
>> > the same thing.  There are lots of them for these kind of numerical
>> > things.
>> >
>> > Also, you should set up your mailer so that it marks what you are replying
>> > to in some way.  In the above, one can't see the difference between what I
>> > wrote and what you wrote.
>> >
>> > julia
>>
>> Is it OK now?
>
> Perfect. Thanks!
>
> julia

Thank you

