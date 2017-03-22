X-GM-THRID: 6400379439189852160
X-Received: by 10.129.163.208 with SMTP id a199mr20845722ywh.135.1490204464968;
        Wed, 22 Mar 2017 10:41:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.246.200 with SMTP id u191ls836765ith.11.gmail; Wed, 22 Mar
 2017 10:41:04 -0700 (PDT)
X-Received: by 10.107.7.16 with SMTP id 16mr11529011ioh.15.1490204464061;
        Wed, 22 Mar 2017 10:41:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 190si588673pfv.3.2017.03.22.10.41.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 10:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so31724206pge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 10:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pvIyZCWrz2qwhNfvnoNpCn3qhzWaoRE1EpA7GsiCOMI=;
        b=oo8ZC5e+QEqrWCSCoCfOg7AKqnydg9nSY05XtyZDYRvkg0vgOApw2XXhhkO589Ivk4
         mPA2G8CmXhvIb99scVQvcUyhKnzL3M7nA+7DUFU3hpFP5IdfSc4dhy47b5i2iVGqY3la
         cp73xAU2UnU4ZYztJpG/qjXXJJT8PSzSZlBLjpWaBpyDCpyn5RZIURa/GjMbSrctFcTq
         reNjspz+zh+497UQAACLQ9DTu3ZHSaKvXATspU6/VCS0PckHsFFAZYtad3RILC05es5t
         udziM9f3foovypvkxaSUXnRqaVpasA6goZxFjLPlftD3npfQ14oteKjGalLKlPMI7Qvw
         c6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pvIyZCWrz2qwhNfvnoNpCn3qhzWaoRE1EpA7GsiCOMI=;
        b=eijXG/3IFDaaKzHQ8QUeViIFHCWLg4p6j/4aKbcdGlXOtDzXZpzFLn3zUiay2UQj5N
         8UU2aRzp55jcIAJdjHjmzR4qUKq4/xe7htpOP1XpWjBoeP7aKprb1dV6hPLXdS/kCH0H
         4MxKm4Ep8bEHlU3Jky9reLLuSkm10be2+BYaUzGTlyEugqMhPuaZwAWjdZff1vz7b8Jb
         Rzimcd6LtIYO4Aiu8kGiN72x3cb7/VPfNNi2HXqC7nUYfy7W9HqGqzFg43h9ATIZ/UvN
         r2MFdp+T1nDAvpYoE0+7W5WvwCd6HJOjwoDUnCOkHYWOef2+9ZN8BTwOlmcy9Y3DvQrZ
         7paw==
X-Gm-Message-State: AFeK/H3sQY1bBdQzUVnW661XWKys3C+DHn6r1jGF6Xkl9aZLoOzIAcVgfZ/dZ84V2ovb3g==
X-Received: by 10.84.160.195 with SMTP id v3mr56887832plg.161.1490204463644;
        Wed, 22 Mar 2017 10:41:03 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id p4sm5221717pgd.50.2017.03.22.10.41.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Mar 2017 10:41:03 -0700 (PDT)
Date: Wed, 22 Mar 2017 10:41:02 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: daniel.baluta@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] iio meter patches - same!]
Message-ID: <20170322174101.GA3076@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Daniel - Find "Daniel" near end of msg

----- Forwarded message from Alison Schofield <amsfield22@gmail.com> -----

Date: Tue, 21 Mar 2017 20:48:33 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>, simran singhal
	<singhalsimran0@gmail.com>, sayli karnik <karniksayli1995@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] iio meter patches - same!
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 22, 2017 at 04:21:48AM +0530, Gargi Sharma wrote:
> On Wed, Mar 22, 2017 at 2:01 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> >
> > Simran, Gargi, Sayli, Arushi,
> >
> > With respect to these...
> >
> > meter/ade7753.c: simran singhal
> > meter/ade7754.c: Gargi Sharma
> > meter/ade7758_core.c: Sayli Karnik
> > meter/ade7759.c: ArushiSinghal
> >
> > They are all near identical and therefore should have near identical
> > solutions.  You could work together, or follow one another, but, in
> > the end we don't want to see 4 different flavors of the solution.
> > That makes it harder to maintain.
> >
> > Also - if 'we' can get one reviewed/ACK'd/applied, then we make the
> > reviewers and maintainers life easier when we follow it with 3
> > similar patches.
> >
> > Here's where I think you all dancing around...
> > You have Lars' feedback from ade7753:
> > > It might make sense to reuse the existing lock which currently
> > > protects the
> > > read/write functions. You can do this by introducing a variant of
> > > ade7753_spi_{read,write}_reg_16() that does not take a lock and use
> > > these to
> > > implement the read-modify-write cycle in a protected section.
> >
> > I'll add to that:
> > They were all using mlock to try to protect the spi read followed by
> > write operation.
> I have a question here: why do we want to protect the spi read?, I mean
> usually we want to protect writes since there might be a race condition.
> Or is it because if two threads are running the same function
> concurrently we want to give access of the function to the thread
> number 2 only once thread number 1 has written to the register?
> 
> >I don't think the lock was actually doing that.
> > I don't see a guarantee that another spi write could not intervene,
> > So perhaps there was no real protection.
> Again, if we have two threads 1 and 2, won't the structure indio_dev
> be same for the both of them? And only one thread can hold the lock at
> a time.
> >
> > I'm thinking one function that locks the existing transaction lock, does
> > the read, does the write, unlocks.
> Simran wrote a function write_then_read in this patch
> http://marc.info/?l=linux-driver-devel&m=149001635402891&w=2. Do we
> want to do something similar?
>
Good questions Gargi!  

Code was doing this - lock mlock, read, write, unlock mlock.
I actually think that sysfs would handle allowing only one reader/write
of that frequency at a time.  And, the driver doesn't use mlock anywhere
else. The vulnerable place was between the read and the write...

If you trace the code down to the spi subsystem calls you'll see that
the read you are questioning, is actually a write followed by a read. 
Now, most iio developers would just surmise that was needed, but let's 
follow that to the data sheet:

http://www.analog.com/media/en/technical-documentation/data-sheets/ADE7754.pdf
page 32 tells us "Each register is accessed by first writing to the
communications register, then transferring the register data."

The driver needs to read the current value of the register,
change the values and write the register back out to the device.
That is what you see happening in ade7754_write_frequency() 
We want to protect that set of transactions - the "read_modify_write"
(Yes - it's like Simran's other patch- but opposite I guess ;))

I think the vulnerability here is that we don't want anyone coming in
and changing the designated register that we are about to write. 
Another spi_read at this point could reset the register pointer,
and an spi_write type operation could write trash to the frequency
register.

The answer won't be to replace mlock with a new lock, because that
won't prevent other types of spi reads or writes from happening.
That would only protect this path.

BTW - I don't think you are just migrating away from mlock usage
anymore.  You are fixing a bug :)

OK- that's all my input for tonite. btw - I'm looking this all up
alongside you.  I'm not holding back.  I don't have a solution in
mind.  This needs to simmer in my brain overnite.  I look forward
to seeing what you all come up with while I'm sleeping.

alisons


Hi Daniel,

Can you sanity check this?  Above is what I thought yesterday.

We've been headed down the path of wanting to make the read
followed by write safe/atomic.  Now, I'm wondering why we are
even doing the read.  Can we just save the current register
value in global data, modify and write that out as needed?
(ade7754: ade7754_write_frequency())

That would be the simplest solution.  Too easy?

thanks,
alisons


> > > > Can you all coordinate that please.  This way the next patch we see on
> > this is agreed upon by all four.  Once that is applauded ;), the others
> > can follow easily!
> >
> Yeah that makes sense and is the most productive use of all of our ability! :)
> 
> Thanks!
> Gargi
> 
> > thanks,
> > alison
> >

----- End forwarded message -----

