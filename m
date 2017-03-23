X-GM-THRID: 6400379439189852160
X-Received: by 10.157.20.163 with SMTP id d32mr371496ote.1.1490256709226;
        Thu, 23 Mar 2017 01:11:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.145 with SMTP id b139ls1328168ioa.38.gmail; Thu, 23 Mar
 2017 01:11:48 -0700 (PDT)
X-Received: by 10.99.9.129 with SMTP id 123mr361556pgj.120.1490256708328;
        Thu, 23 Mar 2017 01:11:48 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id a17si26741itd.1.2017.03.23.01.11.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 01:11:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id z70so6957670itb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 01:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=BKx4Xg6gy+/rkaAa54fHGhjCOqf/yM1+ZeGogNbjuQ8=;
        b=V/szuWH4kEBRvfrMBSi+yh06MAw17aFM+JyhyNVyb5paVwocecuc1COjgFdKW67p8x
         kLCG9xScdxU8a6KbwSWnTqyMUzF1ToJbdYjWyBYN23B4NvAcNQQ6qKac70cHaTgcwgJh
         rRPmY+ovORytyEqk7p/PKkNvoa7U6hxBVQgpSyCR3rysdzI8goZayBtqavCUZdZNwECn
         lQsz+nwvaHBbCjVxzqeTh0C0vtF0gr9aElRXABlKB+ZyKnrMliv/ZkyvhCJAyLoqMSTu
         wunUY8TjXYgXaWfr2jHIHuYrI6vkkk/JSQer3GTK3GerNl6i7l7daKSCvE9UdEX+dJ73
         l/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=BKx4Xg6gy+/rkaAa54fHGhjCOqf/yM1+ZeGogNbjuQ8=;
        b=ieNXMZKcCEGRi+jSiY4Z6Zv68xm9ZoxIfkraBuMVNqUnHFu9eAFbQZsXlNDAYP0W/n
         k59kXADRemdzeJqOvfEXUUkos21rehmcJpN+EDS5iAtwgO8GuJbPJP50K/R8sgv1lnbO
         QLp0NR3NxWHcRKPzOKWI1aAca+FzHzIXX2odcnvotg30mRCxZ6SUkwH8LRupj96muSJi
         bDLwjkHkDakDFhWrg4V4QgxR65Rr3+NXedGU2nPvHO8glGA2hbDMT9YpC/uQ5l+BQME5
         XMWwwcB8uSKDgX7VFEp0JbkSNPFzzVIMe8yJaegkf0J6UoGawqrW/W6+NTBENTQjYMkp
         /KUA==
X-Gm-Message-State: AFeK/H3a7O9m2kyYor80sJVvDZBGzBaDx2YYtyeiPBdKBKGfK3WrFj1IYVRnpY45sJBH/CasRd2HdwIjmUoLwg==
X-Received: by 10.36.146.134 with SMTP id l128mr1366659itd.19.1490256708006;
 Thu, 23 Mar 2017 01:11:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Thu, 23 Mar 2017 01:11:47 -0700 (PDT)
In-Reply-To: <20170322174101.GA3076@d830.WORKGROUP>
References: <20170322174101.GA3076@d830.WORKGROUP>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 23 Mar 2017 10:11:47 +0200
Message-ID: <CAEnQRZDYNQ23PvE1gNnRw_g2k0qRjSctabo5TGdx3Nb2oWoZuw@mail.gmail.com>
Subject: Re: [Outreachy kernel] iio meter patches - same!]
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 7:41 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> Daniel - Find "Daniel" near end of msg
>
> ----- Forwarded message from Alison Schofield <amsfield22@gmail.com> -----
>
> Date: Tue, 21 Mar 2017 20:48:33 -0700
> From: Alison Schofield <amsfield22@gmail.com>
> To: Gargi Sharma <gs051095@gmail.com>
> Cc: Arushi Singhal <arushisinghal19971997@gmail.com>, simran singhal
>         <singhalsimran0@gmail.com>, sayli karnik <karniksayli1995@gmail.com>,
>         outreachy-kernel@googlegroups.com
> Subject: Re: [Outreachy kernel] iio meter patches - same!
> User-Agent: Mutt/1.5.23 (2014-03-12)
>
> On Wed, Mar 22, 2017 at 04:21:48AM +0530, Gargi Sharma wrote:
>> On Wed, Mar 22, 2017 at 2:01 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>> >
>> > Simran, Gargi, Sayli, Arushi,
>> >
>> > With respect to these...
>> >
>> > meter/ade7753.c: simran singhal
>> > meter/ade7754.c: Gargi Sharma
>> > meter/ade7758_core.c: Sayli Karnik
>> > meter/ade7759.c: ArushiSinghal
>> >
>> > They are all near identical and therefore should have near identical
>> > solutions.  You could work together, or follow one another, but, in
>> > the end we don't want to see 4 different flavors of the solution.
>> > That makes it harder to maintain.
>> >
>> > Also - if 'we' can get one reviewed/ACK'd/applied, then we make the
>> > reviewers and maintainers life easier when we follow it with 3
>> > similar patches.
>> >
>> > Here's where I think you all dancing around...
>> > You have Lars' feedback from ade7753:
>> > > It might make sense to reuse the existing lock which currently
>> > > protects the
>> > > read/write functions. You can do this by introducing a variant of
>> > > ade7753_spi_{read,write}_reg_16() that does not take a lock and use
>> > > these to
>> > > implement the read-modify-write cycle in a protected section.
>> >
>> > I'll add to that:
>> > They were all using mlock to try to protect the spi read followed by
>> > write operation.
>> I have a question here: why do we want to protect the spi read?, I mean
>> usually we want to protect writes since there might be a race condition.
>> Or is it because if two threads are running the same function
>> concurrently we want to give access of the function to the thread
>> number 2 only once thread number 1 has written to the register?
>>
>> >I don't think the lock was actually doing that.
>> > I don't see a guarantee that another spi write could not intervene,
>> > So perhaps there was no real protection.
>> Again, if we have two threads 1 and 2, won't the structure indio_dev
>> be same for the both of them? And only one thread can hold the lock at
>> a time.
>> >
>> > I'm thinking one function that locks the existing transaction lock, does
>> > the read, does the write, unlocks.
>> Simran wrote a function write_then_read in this patch
>> http://marc.info/?l=linux-driver-devel&m=149001635402891&w=2. Do we
>> want to do something similar?
>>
> Good questions Gargi!
>
> Code was doing this - lock mlock, read, write, unlock mlock.
> I actually think that sysfs would handle allowing only one reader/write
> of that frequency at a time.  And, the driver doesn't use mlock anywhere
> else. The vulnerable place was between the read and the write...
>
> If you trace the code down to the spi subsystem calls you'll see that
> the read you are questioning, is actually a write followed by a read.
> Now, most iio developers would just surmise that was needed, but let's
> follow that to the data sheet:
>
> http://www.analog.com/media/en/technical-documentation/data-sheets/ADE7754.pdf
> page 32 tells us "Each register is accessed by first writing to the
> communications register, then transferring the register data."
>
> The driver needs to read the current value of the register,
> change the values and write the register back out to the device.
> That is what you see happening in ade7754_write_frequency()
> We want to protect that set of transactions - the "read_modify_write"
> (Yes - it's like Simran's other patch- but opposite I guess ;))
>
> I think the vulnerability here is that we don't want anyone coming in
> and changing the designated register that we are about to write.
> Another spi_read at this point could reset the register pointer,
> and an spi_write type operation could write trash to the frequency
> register.
>
> The answer won't be to replace mlock with a new lock, because that
> won't prevent other types of spi reads or writes from happening.
> That would only protect this path.
>
> BTW - I don't think you are just migrating away from mlock usage
> anymore.  You are fixing a bug :)
>
> OK- that's all my input for tonite. btw - I'm looking this all up
> alongside you.  I'm not holding back.  I don't have a solution in
> mind.  This needs to simmer in my brain overnite.  I look forward
> to seeing what you all come up with while I'm sleeping.
>
> alisons
>
>
> Hi Daniel,
>
> Can you sanity check this?  Above is what I thought yesterday.
>
> We've been headed down the path of wanting to make the read
> followed by write safe/atomic.  Now, I'm wondering why we are
> even doing the read.  Can we just save the current register
> value in global data, modify and write that out as needed?
> (ade7754: ade7754_write_frequency())
>
> That would be the simplest solution.  Too easy?

Hi Alison,

Is that a status register? Can it be modified by the hardware?

If so, then we need to read it each time.

If not, we can cache it and only use write for updates, or switch to regmap.

Daniel.

