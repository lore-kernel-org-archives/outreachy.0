X-GM-THRID: 6400052199989182464
X-Received: by 10.99.228.83 with SMTP id i19mr19262227pgk.57.1490136739943;
        Tue, 21 Mar 2017 15:52:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.182.67 with SMTP id g64ls199650iof.4.gmail; Tue, 21 Mar
 2017 15:52:19 -0700 (PDT)
X-Received: by 10.99.185.1 with SMTP id z1mr19740307pge.51.1490136739103;
        Tue, 21 Mar 2017 15:52:19 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id f73si1451138ita.1.2017.03.21.15.52.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 15:52:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id z70so3065995itb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 15:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CVB6Xk+aU5QCXEwfz9AOE/+9yUiJZmgKH7jO5yHF9Fs=;
        b=IOe86y74wNx7mxuhcSzHGmpDQrBi9OCr5k04wX/IyA0GwH2+ksHI6dm63xE86vUR0h
         t5sLMxdkAnscJsC2QWzI65VAmwCVca3z7M/luPOiqfxcqEaZIgieLALdqwf7qHIbwbmy
         M2/Xa7N/Z3lgMlc0KatbMc2v2RyGbhn2pZewPzk4AcMNZmQeazEcYu8NZN6h0reRzjkH
         OOn7/KTUfxj4dACMWcwZ6CTrlkgx4tsQa2ZTlEhQ/a7n6PWbPtoUZzYrhXgNI9CNZ3wY
         9d+jovLK24Ae/MNJKVNqE5uWAeHIwOVTA+7xDlkKq/yHFZCmuoetYAPP3TMst1yyMxBh
         tnGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CVB6Xk+aU5QCXEwfz9AOE/+9yUiJZmgKH7jO5yHF9Fs=;
        b=ItlKfwNvPVZNVhYlvsCI2f8/Dk+6CgvdWSXqbuoswnZk5sh+QNNnrijP0w4zbckLzc
         QCFZpid17+ALEWHgOpMPUYp1LJdsKW9ZOAO1AAtLdziQMFL+Ie02ZCI3K82LqdqcFAqj
         TIdrsgolvjTbngHrSmflb0x80ut+fe7CxAWgl03F3txf29LkkF8nlU299OhRD9e/lUyq
         mbemjuhyvsd7ahKwYhLuSFHg0WWr9GuwvGfmOvwcePQqhlkMyJQcoWLSJMgDeDTvFVi0
         0CMIsPnYnmdGgkqcjCypJnzUqW0ZkhzfhhRxxNAnnkX4k0gv4RU/KRUK7xBq4Q/nkYAe
         +omw==
X-Gm-Message-State: AFeK/H2UAGuax+FarkV7FHVYwWwALx5fAqsHVVYFub/c8+DmqsAwHydJ0C1kUoM3EcM8kttWffzsWEox83+HwQ==
X-Received: by 10.36.105.85 with SMTP id e82mr5352286itc.113.1490136738799;
 Tue, 21 Mar 2017 15:52:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 21 Mar 2017 15:51:48 -0700 (PDT)
In-Reply-To: <20170321203110.GB12475@d830.WORKGROUP>
References: <20170321203110.GB12475@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 22 Mar 2017 04:21:48 +0530
Message-ID: <CAOCi2DF3AK_7iZyYaOAojOPEf3AEZiEfK-ZtmJO7VqaW8m0SCQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] iio meter patches - same!
To: Alison Schofield <amsfield22@gmail.com>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	simran singhal <singhalsimran0@gmail.com>, sayli karnik <karniksayli1995@gmail.com>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 2:01 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>
> Simran, Gargi, Sayli, Arushi,
>
> With respect to these...
>
> meter/ade7753.c: simran singhal
> meter/ade7754.c: Gargi Sharma
> meter/ade7758_core.c: Sayli Karnik
> meter/ade7759.c: ArushiSinghal
>
> They are all near identical and therefore should have near identical
> solutions.  You could work together, or follow one another, but, in
> the end we don't want to see 4 different flavors of the solution.
> That makes it harder to maintain.
>
> Also - if 'we' can get one reviewed/ACK'd/applied, then we make the
> reviewers and maintainers life easier when we follow it with 3
> similar patches.
>
> Here's where I think you all dancing around...
> You have Lars' feedback from ade7753:
> > It might make sense to reuse the existing lock which currently
> > protects the
> > read/write functions. You can do this by introducing a variant of
> > ade7753_spi_{read,write}_reg_16() that does not take a lock and use
> > these to
> > implement the read-modify-write cycle in a protected section.
>
> I'll add to that:
> They were all using mlock to try to protect the spi read followed by
> write operation.
I have a question here: why do we want to protect the spi read?, I mean
usually we want to protect writes since there might be a race condition.
Or is it because if two threads are running the same function
concurrently we want to give access of the function to the thread
number 2 only once thread number 1 has written to the register?

>I don't think the lock was actually doing that.
> I don't see a guarantee that another spi write could not intervene,
> So perhaps there was no real protection.
Again, if we have two threads 1 and 2, won't the structure indio_dev
be same for the both of them? And only one thread can hold the lock at
a time.
>
> I'm thinking one function that locks the existing transaction lock, does
> the read, does the write, unlocks.
Simran wrote a function write_then_read in this patch
http://marc.info/?l=linux-driver-devel&m=149001635402891&w=2. Do we
want to do something similar?

>
> Can you all coordinate that please.  This way the next patch we see on
> this is agreed upon by all four.  Once that is applauded ;), the others
> can follow easily!
>
Yeah that makes sense and is the most productive use of all of our ability! :)

Thanks!
Gargi

> thanks,
> alison
>
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170321203110.GB12475%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

