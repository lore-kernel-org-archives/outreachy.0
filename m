X-GM-THRID: 6400052199989182464
X-Received: by 10.129.181.8 with SMTP id t8mr9157400ywh.12.1490154517564;
        Tue, 21 Mar 2017 20:48:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls982994ott.28.gmail; Tue, 21 Mar
 2017 20:48:36 -0700 (PDT)
X-Received: by 10.157.21.97 with SMTP id z30mr17486688otz.147.1490154516964;
        Tue, 21 Mar 2017 20:48:36 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si33371pfb.0.2017.03.21.20.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 20:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so19554182pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 20:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vK6bYbwDiM0VAzX1iyQO4pZUkFerua1c3p/5RTYjdmg=;
        b=sm6H/5k/hyjDXw8N6XsXciTe6JWQEMy52+i66JTxyiadeWtoY8u9pte0AXg2HtxEc3
         ZWBo6QTF2OAyp7ecNEKILSRm3bS3aFKbJtIhlgx/aLUgwFXF/itbF+OOcYVBF2ukmJKT
         uLsJXvKn6Gdz9wWFtEJxlju99D0caDZ69gtGsBUjle6bKBlkyFo+jQa45C6U6flL43LY
         Px+Xm0jHndsc1YCeuS86fCq2VZvB8Mljv/L8+JzmSBNRSHRYQiy0DBkazlBEqF011fu0
         MpwQBJ/vcVlFlAXQlSXfe+B6XoaDD+W42uwGBOkraSnjeay6Oza73vfmlSRIaGKAG82y
         +U5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vK6bYbwDiM0VAzX1iyQO4pZUkFerua1c3p/5RTYjdmg=;
        b=YqvzFm48U0S3q9+viVmBLovbjKRNCclZEHp6GnvC6Rm/9AdAl9vSzkxLn73rL8xugZ
         KYV6YNzHiwZMDQLe4qJttm/3qbMqbzqDmmU9v+Xa+xh9V2jRMuwuSIYOEBy4BIwIirvK
         JNSIaNF/xGIskkuvkmOemvVsIo0hMw/uf+g1KJNdLxqySAsMSovtzzUxt05DxEre66zo
         11dmpLX68cbAb3Rq3g4aRE4odjk2y2UNplmqKsIyn0x2ZBM2+BEuJgu0exZtWTgrWuWf
         afWmqekTQcpbNNTi1WSO1ovTZ3DgDevteeqLPkp0GrvaYbNyCGK60DZ/wt1nplXlO2TR
         axcw==
X-Gm-Message-State: AFeK/H3Ajobaz6oIJQ3ZgD/h/8eXo0pQjNO9hn8t7/tL3EusO2mRXE82oClt9xyGhU2NNw==
X-Received: by 10.98.9.156 with SMTP id 28mr44007746pfj.199.1490154516658;
        Tue, 21 Mar 2017 20:48:36 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id b14sm210354pfh.114.2017.03.21.20.48.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 20:48:36 -0700 (PDT)
Date: Tue, 21 Mar 2017 20:48:33 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
	simran singhal <singhalsimran0@gmail.com>,
	sayli karnik <karniksayli1995@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] iio meter patches - same!
Message-ID: <20170322034832.GA16604@d830.WORKGROUP>
References: <20170321203110.GB12475@d830.WORKGROUP>
 <CAOCi2DF3AK_7iZyYaOAojOPEf3AEZiEfK-ZtmJO7VqaW8m0SCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCi2DF3AK_7iZyYaOAojOPEf3AEZiEfK-ZtmJO7VqaW8m0SCQ@mail.gmail.com>
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


> >
> > Can you all coordinate that please.  This way the next patch we see on
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
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170321203110.GB12475%40d830.WORKGROUP.
> > For more options, visit https://groups.google.com/d/optout.

