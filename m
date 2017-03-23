X-GM-THRID: 6400379439189852160
X-Received: by 10.129.157.75 with SMTP id u72mr1210148ywg.11.1490293647963;
        Thu, 23 Mar 2017 11:27:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.36 with SMTP id 33ls2540589ota.46.gmail; Thu, 23 Mar
 2017 11:27:27 -0700 (PDT)
X-Received: by 10.157.43.49 with SMTP id o46mr1138822otb.27.1490293647531;
        Thu, 23 Mar 2017 11:27:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d20si2033171itc.1.2017.03.23.11.27.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 11:27:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id r137so29389012pfr.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 11:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fXWwDxek81XA0IPuUoFM1HLndtfWL9wQmC23N5vl+GU=;
        b=uo9TA76XcRWhn9jSsMmnP9L0E8DhePl5oln9+oAO1Zrj7IHOBzyg2HsW+C7m8THO+o
         yzSqcZDUUGK7uepcQt+cwotgZ9MR1EQaCcsCQSr1by5BWv5Rs1yT5JrzSq+wfrj16KUQ
         GimhRUpGttqMdyrxm01sdEHOylACi80SUW3geEtKUnJMPoYCLFNxJG50v6YsM8l/vtJA
         6YXXdiw56D6dizZtSPzQ9618Osc/ubHDY1EMpzhW22sY0dWdyr6TQ36Xihx9VDo062Rk
         +IPXPG05CPd8C6udxPbGuLWg9CPuKSulaXs5WBQ1UZt+b4MLbKytMkRzoyR+v3FILaRc
         AFlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fXWwDxek81XA0IPuUoFM1HLndtfWL9wQmC23N5vl+GU=;
        b=hUv6Q3sxL21Jovd9/pg8haG76kc9h17RM7YfYQFbU5SqVt1VFFwvEhdV8p+lBdCqaW
         qS+FDw/lrDnBWWHadwVZ2sWYqma7rim/nKVDv5gMYCML0j2bjTkaoJkdwiRFhbNJ4km+
         B4q2T7Tb21jK2BOZRm3QGPOi0rNJXkRmnPjYKwn4lhbX4oojpjM429xhqyBF7wZEZg9X
         8SFd8MGIBr6LwgAFAj/NJUwNDDhyaUZEdrtMCtRJEA3vH3SnIC6N7OFVJ3nFMIKiSjSp
         8yoGUxG/Zd3uvy0QPLXL6PRUUa/fGa9qfz7xgivniobGsqVdqy4r1zRIJCTEjFNyBFNa
         UUhQ==
X-Gm-Message-State: AFeK/H0ghSROW5w5BjKlfvFs7VQNZBpCpijQ5Aoc0jzMPCKmefm5A+zWVZw2EcqyYQtvJg==
X-Received: by 10.99.101.67 with SMTP id z64mr4588761pgb.78.1490293646805;
        Thu, 23 Mar 2017 11:27:26 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id s26sm11776285pge.33.2017.03.23.11.27.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Mar 2017 11:27:26 -0700 (PDT)
Date: Thu, 23 Mar 2017 11:27:25 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: gs051095@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] iio meter patches - same!]
Message-ID: <20170323182724.GA5287@d830.WORKGROUP>
References: <20170322174101.GA3076@d830.WORKGROUP>
 <CAEnQRZDYNQ23PvE1gNnRw_g2k0qRjSctabo5TGdx3Nb2oWoZuw@mail.gmail.com>
 <20170323173233.GB5084@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170323173233.GB5084@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 23, 2017 at 10:32:34AM -0700, Alison Schofield wrote:
> On Thu, Mar 23, 2017 at 10:11:47AM +0200, Daniel Baluta wrote:
> > On Wed, Mar 22, 2017 at 7:41 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > > Daniel - Find "Daniel" near end of msg
> > >
> > > ----- Forwarded message from Alison Schofield <amsfield22@gmail.com> -----
> > >
> > > Date: Tue, 21 Mar 2017 20:48:33 -0700
> > > From: Alison Schofield <amsfield22@gmail.com>
> > > To: Gargi Sharma <gs051095@gmail.com>
> > > Cc: Arushi Singhal <arushisinghal19971997@gmail.com>, simran singhal
> > >         <singhalsimran0@gmail.com>, sayli karnik <karniksayli1995@gmail.com>,
> > >         outreachy-kernel@googlegroups.com
> > > Subject: Re: [Outreachy kernel] iio meter patches - same!
> > > User-Agent: Mutt/1.5.23 (2014-03-12)
> > >
> > > On Wed, Mar 22, 2017 at 04:21:48AM +0530, Gargi Sharma wrote:
> > >> On Wed, Mar 22, 2017 at 2:01 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> > >> >
> > >> > Simran, Gargi, Sayli, Arushi,
> > >> >
> > >> > With respect to these...
> > >> >
> > >> > meter/ade7753.c: simran singhal
> > >> > meter/ade7754.c: Gargi Sharma
> > >> > meter/ade7758_core.c: Sayli Karnik
> > >> > meter/ade7759.c: ArushiSinghal
> > >> >
> > >> > They are all near identical and therefore should have near identical
> > >> > solutions.  You could work together, or follow one another, but, in
> > >> > the end we don't want to see 4 different flavors of the solution.
> > >> > That makes it harder to maintain.
> > >> >
> > >> > Also - if 'we' can get one reviewed/ACK'd/applied, then we make the
> > >> > reviewers and maintainers life easier when we follow it with 3
> > >> > similar patches.
> > >> >
> > >> > Here's where I think you all dancing around...
> > >> > You have Lars' feedback from ade7753:
> > >> > > It might make sense to reuse the existing lock which currently
> > >> > > protects the
> > >> > > read/write functions. You can do this by introducing a variant of
> > >> > > ade7753_spi_{read,write}_reg_16() that does not take a lock and use
> > >> > > these to
> > >> > > implement the read-modify-write cycle in a protected section.
> > >> >
> > >> > I'll add to that:
> > >> > They were all using mlock to try to protect the spi read followed by
> > >> > write operation.
> > >> I have a question here: why do we want to protect the spi read?, I mean
> > >> usually we want to protect writes since there might be a race condition.
> > >> Or is it because if two threads are running the same function
> > >> concurrently we want to give access of the function to the thread
> > >> number 2 only once thread number 1 has written to the register?
> > >>
> > >> >I don't think the lock was actually doing that.
> > >> > I don't see a guarantee that another spi write could not intervene,
> > >> > So perhaps there was no real protection.
> > >> Again, if we have two threads 1 and 2, won't the structure indio_dev
> > >> be same for the both of them? And only one thread can hold the lock at
> > >> a time.
> > >> >
> > >> > I'm thinking one function that locks the existing transaction lock, does
> > >> > the read, does the write, unlocks.
> > >> Simran wrote a function write_then_read in this patch
> > >> http://marc.info/?l=linux-driver-devel&m=149001635402891&w=2. Do we
> > >> want to do something similar?
> > >>
> > > Good questions Gargi!
> > >
> > > Code was doing this - lock mlock, read, write, unlock mlock.
> > > I actually think that sysfs would handle allowing only one reader/write
> > > of that frequency at a time.  And, the driver doesn't use mlock anywhere
> > > else. The vulnerable place was between the read and the write...
> > >
> > > If you trace the code down to the spi subsystem calls you'll see that
> > > the read you are questioning, is actually a write followed by a read.
> > > Now, most iio developers would just surmise that was needed, but let's
> > > follow that to the data sheet:
> > >
> > > http://www.analog.com/media/en/technical-documentation/data-sheets/ADE7754.pdf
> > > page 32 tells us "Each register is accessed by first writing to the
> > > communications register, then transferring the register data."
> > >
> > > The driver needs to read the current value of the register,
> > > change the values and write the register back out to the device.
> > > That is what you see happening in ade7754_write_frequency()
> > > We want to protect that set of transactions - the "read_modify_write"
> > > (Yes - it's like Simran's other patch- but opposite I guess ;))
> > >
> > > I think the vulnerability here is that we don't want anyone coming in
> > > and changing the designated register that we are about to write.
> > > Another spi_read at this point could reset the register pointer,
> > > and an spi_write type operation could write trash to the frequency
> > > register.
> > >
> > > The answer won't be to replace mlock with a new lock, because that
> > > won't prevent other types of spi reads or writes from happening.
> > > That would only protect this path.
> > >
> > > BTW - I don't think you are just migrating away from mlock usage
> > > anymore.  You are fixing a bug :)
> > >
> > > OK- that's all my input for tonite. btw - I'm looking this all up
> > > alongside you.  I'm not holding back.  I don't have a solution in
> > > mind.  This needs to simmer in my brain overnite.  I look forward
> > > to seeing what you all come up with while I'm sleeping.
> > >
> > > alisons
> > >
> > >
> > > Hi Daniel,
> > >
> > > Can you sanity check this?  Above is what I thought yesterday.
> > >
> > > We've been headed down the path of wanting to make the read
> > > followed by write safe/atomic.  Now, I'm wondering why we are
> > > even doing the read.  Can we just save the current register
> > > value in global data, modify and write that out as needed?
> > > (ade7754: ade7754_write_frequency())
> > >
> > > That would be the simplest solution.  Too easy?
> > 
> > Hi Alison,
> > 
> > Is that a status register? Can it be modified by the hardware?
> > 
> > If so, then we need to read it each time.
> > 
> > If not, we can cache it and only use write for updates, or switch to regmap.
> > 
> > Daniel.
> 
> Per ade7754 datasheet, driver uses this register to set the
> waveform sampling mode.  All bits are used to 'select' or 'enable'
> something.  
> 
> The pattern of read, modify, write is also used on other registers
> - but they are not grabbing mlock.
> 
> Gargi - It seems you have at least 2 choices of how to approach this.
> It is quite reasonable and acceptable to present one approach in
> your patch, and mention the alternative approach below the --- for
> review and consideration.
> 
> alisons

Gargi,

Leading you astray....sorry :(
Got through backlog of emails and found the piece I was missing
from Jonathan -

>>> mlock here is doing a lot more than protecting the buffer.
>>> It is ensuring the spi bus frequency and sampling frequency
>>> of the device are changed in an atomic fashion.

So the segment of code within the mlock, needs to occur 'atomically'.
My simple idea of just saving the register in global data, not good!

alisons

> 
> 
> 
> 
> 
> 
> 
> 

