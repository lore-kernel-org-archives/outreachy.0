X-GM-THRID: 6463264709450661888
X-Received: by 10.25.41.67 with SMTP id p64mr313894lfp.5.1504901382363;
        Fri, 08 Sep 2017 13:09:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.83 with SMTP id i80ls188027wmf.5.canary-gmail; Fri, 08
 Sep 2017 13:09:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCsnXcsaD4dwczxPnatBuxg3rN+ZVKbzKROrlAIPdHFx+lm9zTr4Ix4u4riKojL8FMiqdgA
X-Received: by 10.28.229.16 with SMTP id c16mr300879wmh.13.1504901381285;
        Fri, 08 Sep 2017 13:09:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504901381; cv=none;
        d=google.com; s=arc-20160816;
        b=dpblRkdpLvCy7MnSqEpshNlbISF9qf3d6L3liE7WraQfvEW2vUuCj6rf5mpBS4KO/e
         rNOn0vm3eI1PRqJEbKC6y/lUx4D/2MdmNqFrEnG8r7FtOfaXEpt2HpgQAZYD+5b0M+s/
         iDUIik2pqWFpzpsehPM6f+yhOqTnyPqGY0PbIEUpWtfKR8rrYQ0w9lZBhYdLcreVovoQ
         aLDR7cvlkUCuiubiPAx+cjVBLwQ30nu6tO35QQIZ4qmWyc2zKpnQv+27hTsvtQ46CkiQ
         cIZDh6Xi/ebKmP500YPJFJGVCischjcLOSSloM25wXJaKZBwKYo75t2xq2hJXYSn8YIC
         5eGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Z/xECcw8sfN3WIUsAhunjJbd0+dd3ogHVx9sTVge8g8=;
        b=e66arl/uofkN8KsRpkwwyHqOANZ9jErgc5kmnH4mhySyZvcyyKh0R99OnvzX43Zvs/
         oSUeyc5+QJhX/YNSeD2k7V3Uhp8NkRqRFpzfTq2yBYQ9GMa+UCt0waM3AXoIqHKOEP0i
         TQWGTK5s14JS1eadk5fP6L+fn6BNdtCAgHCTeCEJm7YWq1qA04FZa57BZG9HcPDed2Po
         eYkZq55OROFIdCRg6CPBkAfMcyT4YdVBnlFwQjC4ggYPDi4ZRUOlKGBGBnAZipQH/QqH
         LWXDYJ7JO8UfRCVxklX9B4kXGSiAE/L6EmzYlD2+DZ+IHu6ChbrpwoL+DVlVKJt7ovI2
         1ZCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t142si237792wmt.2.2017.09.08.13.09.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 13:09:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,363,1500933600"; 
   d="scan'208";a="290230218"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 22:09:40 +0200
Date: Fri, 8 Sep 2017 22:09:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshi Jain <himshijain.hj@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: iio: adc: Added Space
 around binary op.
In-Reply-To: <CAKJRnmOHBEF=qqfUPV+Dg7Sej-QdjvfOgPAknrWqJ=ofck+c_g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709082208530.2510@hadrien>
References: <20170908044752.GA6199@himanshi-Inspiron-5558> <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk> <20170908103257.00002165@huawei.com> <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de> <alpine.DEB.2.20.1709081157590.3165@hadrien>
 <9590dab0-5bd8-c4d0-1f34-934d3835fade@metafoo.de> <alpine.DEB.2.20.1709081232370.3165@hadrien> <bd51f23b-a84d-460d-9a7c-7b3b3213def7@googlegroups.com> <alpine.DEB.2.20.1709081358500.3165@hadrien>
 <CAKJRnmOHBEF=qqfUPV+Dg7Sej-QdjvfOgPAknrWqJ=ofck+c_g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Himanshi Jain wrote:

> So I would definitely like to work on this.
> What do you suggest me to proceed with? Adding comments to the files
> having this warning or modifying each MACRO use to pass string to it
> (with double quotes) and modifying the MACRO to cope with receiving a
> string(not sure how, would want to discuss and propose a solution in
> case we want to work with this option).

Lars suggested to change the definition to take a string.  I think that if
you start looking at the code and unfolding the definitions, then it will
be clear what to do.

julia

>
> On Fri, Sep 8, 2017 at 5:33 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Fri, 8 Sep 2017, Himanshi Jain wrote:
> >
> > >
> > > Yeah, I am so sorry. That was too silly of me to just follow the checkpatch
> > > warning to think of a string passed as two variables being operated. I would
> > > definitely like to work on this so that others do not fall in this trap.
> > >
> > >
> > > So what do you suggest me to proceed with?
> > >
> > >  1.
> > >
> > >     If it is about adding comments to the files with these warnings that
> > >     these should not be fixed, I could find two more instances for this
> > >     warning in drivers/staging/iio/adc/* itself.
> > >
> > >
> > > I have a doubt here, so I tried searching for the checkpatch warnings using:
> > >
> > > perl scripts/checkpatch.pl -f drivers/staging/iio/*
> > >
> > > and it gives  nothing but an error (diff: drivers/staging/iio/accel/null: No
> > > such file or directory) due to folders contained in this directory. Is there
> > > a better way to search that I am missing? While finally I just ran this
> > > script for each folder individually with grep error to find two more
> > > instances.
> > >
> > >
> > >  1.
> > >
> > >     Or if it about the API, I am not that clear about what will I have to do
> > >     since I am new to this but as far as I could explore  and follow the
> > >     tags from :
> > >
> > > drivers/staging/iio/adc/ad7192.c (line 343 - IIO_DEVICE_ATTR_NAMED)  ->
> > > include/linux/iio/sysfs.h (line 88 - IIO_ATTR) ->
> > >  include/linux/iio/sysfs.h(line 55 - __ATTR) -> include/linux/sysfs.h(line
> > > 101 - __stringify(_name)) - where the implicit conversion of _name to string
> > > is being handled.
> > >
> > > Would this be done by defining a MACRO  - VERIFY_IS_STRING(name) like for
> > > mode  VERIFY_OCTAL_PERMISSIONS(perms) in the file  include/linux/kernel.h ?
> >
> > I think that the idea would be to make the NAMED macro take a string as an
> > argument in that particular position.  Then you will have to check how the
> > definition of that macro can cope with receiving a string.  There is a
> > whole chain of macros involved.  You could perhaps just inline them into
> > this definition.  The other option would be to create string variants of
> > all of the other macros, but perhaps that would be overkill if there are
> > no other uses.
> >
> > Then you will have to update all the uses of this macro so that they take
> > a string.
> >
> > julia
> >
> > >
> > >
> > >
> > > On Friday, September 8, 2017 at 4:03:27 PM UTC+5:30, Julia Lawall wrote:
> > >
> > >
> > >       On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:
> > >
> > >       > On 09/08/2017 11:59 AM, Julia Lawall wrote:
> > >       > >
> > >       > >
> > >       > > On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:
> > >       > >
> > >       > >> On 09/08/2017 11:32 AM, Jonathan Cameron wrote:
> > >       > >>> On Fri, 8 Sep 2017 07:29:06 +0100
> > >       > >>> Jonathan Cameron <ji...@jic23.retrosnub.co.uk> wrote:
> > >       > >>>
> > >       > >>>> On 8 September 2017 05:47:52 BST, Himanshi Jain
> > >       <himshi...@gmail.com> wrote:
> > >       > >>>>> Added space around(one on each side of) binary
> > >       > >>>>> operator(-) as preferred according to kernel
> > >       > >>>>> coding style.
> > >       > >>>>>
> > >       > >>>>> Signed-off-by: Himanshi Jain <himshi...@gmail.com>
> > >       > >>>>
> > >       > >>>> Take a closer look at that macro. It isn't doing what you
> > >       think...
> > >       > >>>> To give a hint, changing this breaks userspace.
> > >       > >>>
> > >       > >>> Ok, I'm bored of this particular one coming up. When you
> > >       have
> > >       > >>> worked out what is going on Himanshi, would you mind
> > >       putting
> > >       > >>> together a patch adding a comment describing why it is a
> > >       bad
> > >       > >>> idea to 'fix' this?  That would be a very useful patch as
> > >       > >>> far as I'm concerned :)
> > >       > >>>
> > >       > >>> There aren't that many cases of this in IIO so adding a
> > >       comment
> > >       > >>> on each of them is probably reasonable just to avoid
> > >       wasting
> > >       > >>> people's time on fixing them! (I think we have had more
> > >       than
> > >       > >>> 5 such goes this year so far...)
> > >       > >>>
> > >       > >>
> > >       > >> I'd much rather fix this API so that you have to put ""
> > >       around the name so
> > >       > >> that it is clear that it is a string, rather than doing the
> > >       implicit
> > >       > >> conversion to string using preprocessor magic. Better to
> > >       have a
> > >       > >> self-documenting API then having to add a comment to each
> > >       user of the API.
> > >       > >
> > >       > > All the DEVICE_ATTR macros use the same strategy.  And the
> > >       non-IIO ones,
> > >       > > eg DEVICE_ATTR_RW, also use the provided name to construct
> > >       the names of
> > >       > > the show and store functions, so I don't think a string
> > >       would be
> > >       > > appropriate.
> > >       >
> > >       > I'm only suggesting to use a string for the _NAMED macros
> > >       where the name is
> > >       > not used to construct the identifiers.
> > >       >
> > >       > In the case where the name is used to construct the
> > >       identifiers we don't
> > >       > have the issue with false positives since the name must be a
> > >       valid
> > >       > identifier on its own.
> > >
> > >       OK, it looks like a good project :)
> > >
> > >       julia
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/bd51f23b-a84d-460d-9a7c-
> > > 7b3b3213def7%40googlegroups.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> > >
>

