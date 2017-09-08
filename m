X-GM-THRID: 6463264709450661888
X-Received: by 10.25.150.66 with SMTP id y63mr218610lfd.23.1504872227620;
        Fri, 08 Sep 2017 05:03:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.42.3 with SMTP id q3ls18676ljq.39.gmail; Fri, 08 Sep 2017
 05:03:46 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAizaYQj5kRgGIIjKCL9z6VV7eVVges9ENgyQR4ydrOeByChQwW/kV1OTlWONjsgSWOTzd+
X-Received: by 10.25.23.233 with SMTP id 102mr221304lfx.25.1504872226145;
        Fri, 08 Sep 2017 05:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504872226; cv=none;
        d=google.com; s=arc-20160816;
        b=IGBkkiSV8jdcHC6Bh4sQPPpdMiod3ura2Oh77rFX64OpOfLl49QXzYOHnv9Ib/amQb
         2qWgK0/lOp55mgMiYKpWQnOnQpM1FMcxHpqkrXEKIZXDvjpV4hzqbjtlyh7NTTrjixjt
         a6PQup66cDLCrS8+OlImydetBm5wtUVQbyHT25hGissW5slwjScUV0waPAE92Y1/uLTE
         tc9K9JT3ijyWzQYIG94U6atg7od/Jtc2RsTU+BBkT+trjGBZwowJ3UXgbzyJNKNQZozG
         FdUSShFE23kLy1V1RR85aEFqIExVkBxtLp1lXDZzaX5bnY5XvhfsmnfXy6ED8E5ScAAz
         CgRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=PThtV0XeFBO99IoZA3A/g0z3Y53FACeFNuiduz9kHyw=;
        b=Zzu013RxCJdTK97o3A/qChCYb1Qm4fpEL7y9KkngArfRPhl9/cDcIW5i3FexcTSHUI
         imi226/dMKg9VyCLeB0aybHtHbP/9DZI6NJ+9m3Q5pPxoTG+JplUY40o3gN9RizFoace
         cBds0Vm/NZ4x5jEFGO+OvWQXhjPZvN2agmtKH41u1wTGoKwJjf1A2UrE8BW5G2ReSQCq
         O2BA/QCypz4uqA9Ga1wGt7f8Gl7HQMw2vL5OmcHuFiY+WRcwGiGBNKDfWr9twrcmpoU3
         /XIhWRNRBNMdWa5SV3e+lsOaCnB/nwrQPvM80nHmrYk7gLI8uytoGxTPOuaoCLl2CV8U
         ST3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si114471wmb.3.2017.09.08.05.03.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 05:03:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,361,1500933600"; 
   d="scan'208";a="236784753"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 14:03:45 +0200
Date: Fri, 8 Sep 2017 14:03:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshi Jain <himshijain.hj@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: iio: adc: Added Space
 around binary op.
In-Reply-To: <bd51f23b-a84d-460d-9a7c-7b3b3213def7@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709081358500.3165@hadrien>
References: <20170908044752.GA6199@himanshi-Inspiron-5558> <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk> <20170908103257.00002165@huawei.com> <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de> <alpine.DEB.2.20.1709081157590.3165@hadrien>
 <9590dab0-5bd8-c4d0-1f34-934d3835fade@metafoo.de> <alpine.DEB.2.20.1709081232370.3165@hadrien> <bd51f23b-a84d-460d-9a7c-7b3b3213def7@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_4919_56542160.1504871858702"

------=_Part_4919_56542160.1504871858702
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Fri, 8 Sep 2017, Himanshi Jain wrote:

>
> Yeah, I am so sorry. That was too silly of me to just follow the checkpatch
> warning to think of a string passed as two variables being operated. I would
> definitely like to work on this so that others do not fall in this trap.
>
>
> So what do you suggest me to proceed with?
>
>  1.
>
>     If it is about adding comments to the files with these warnings that
>     these should not be fixed, I could find two more instances for this
>     warning in drivers/staging/iio/adc/* itself.
>
>
> I have a doubt here, so I tried searching for the checkpatch warnings using:
>
> perl scripts/checkpatch.pl -f drivers/staging/iio/*
>
> and it gives �nothing but an error (diff: drivers/staging/iio/accel/null: No
> such file or directory) due to folders contained in this directory. Is there
> a better way to search that I am missing? While finally I just ran this
> script for each folder individually with grep error to find two more
> instances.
>
>
>  1.
>
>     Or if it about the API, I am not that clear about what will I have to do
>     since I am new to this but as far as I could explore �and follow the
>     tags from :
>
> drivers/staging/iio/adc/ad7192.c (line 343 - IIO_DEVICE_ATTR_NAMED) �->
> include/linux/iio/sysfs.h (line 88 - IIO_ATTR) ->
> �include/linux/iio/sysfs.h(line 55 - __ATTR) -> include/linux/sysfs.h(line
> 101 - __stringify(_name)) - where the implicit conversion of _name to string
> is being handled.
>
> Would this be done by defining a MACRO �- VERIFY_IS_STRING(name) like for
> mode �VERIFY_OCTAL_PERMISSIONS(perms) in the file �include/linux/kernel.h ?

I think that the idea would be to make the NAMED macro take a string as an
argument in that particular position.  Then you will have to check how the
definition of that macro can cope with receiving a string.  There is a
whole chain of macros involved.  You could perhaps just inline them into
this definition.  The other option would be to create string variants of
all of the other macros, but perhaps that would be overkill if there are
no other uses.

Then you will have to update all the uses of this macro so that they take
a string.

julia

>
>
>
> On Friday, September 8, 2017 at 4:03:27 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:
>
>       > On 09/08/2017 11:59 AM, Julia Lawall wrote:
>       > >
>       > >
>       > > On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:
>       > >
>       > >> On 09/08/2017 11:32 AM, Jonathan Cameron wrote:
>       > >>> On Fri, 8 Sep 2017 07:29:06 +0100
>       > >>> Jonathan Cameron <ji...@jic23.retrosnub.co.uk> wrote:
>       > >>>
>       > >>>> On 8 September 2017 05:47:52 BST, Himanshi Jain
>       <himshi...@gmail.com> wrote:
>       > >>>>> Added space around(one on each side of) binary
>       > >>>>> operator(-) as preferred according to kernel
>       > >>>>> coding style.
>       > >>>>>
>       > >>>>> Signed-off-by: Himanshi Jain <himshi...@gmail.com>
>       > >>>>
>       > >>>> Take a closer look at that macro. It isn't doing what you
>       think...
>       > >>>> To give a hint, changing this breaks userspace.
>       > >>>
>       > >>> Ok, I'm bored of this particular one coming up. When you
>       have
>       > >>> worked out what is going on Himanshi, would you mind
>       putting
>       > >>> together a patch adding a comment describing why it is a
>       bad
>       > >>> idea to 'fix' this? �That would be a very useful patch as
>       > >>> far as I'm concerned :)
>       > >>>
>       > >>> There aren't that many cases of this in IIO so adding a
>       comment
>       > >>> on each of them is probably reasonable just to avoid
>       wasting
>       > >>> people's time on fixing them! (I think we have had more
>       than
>       > >>> 5 such goes this year so far...)
>       > >>>
>       > >>
>       > >> I'd much rather fix this API so that you have to put ""
>       around the name so
>       > >> that it is clear that it is a string, rather than doing the
>       implicit
>       > >> conversion to string using preprocessor magic. Better to
>       have a
>       > >> self-documenting API then having to add a comment to each
>       user of the API.
>       > >
>       > > All the DEVICE_ATTR macros use the same strategy. �And the
>       non-IIO ones,
>       > > eg DEVICE_ATTR_RW, also use the provided name to construct
>       the names of
>       > > the show and store functions, so I don't think a string
>       would be
>       > > appropriate.
>       >
>       > I'm only suggesting to use a string for the _NAMED macros
>       where the name is
>       > not used to construct the identifiers.
>       >
>       > In the case where the name is used to construct the
>       identifiers we don't
>       > have the issue with false positives since the name must be a
>       valid
>       > identifier on its own.
>
>       OK, it looks like a good project :)
>
>       julia
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/bd51f23b-a84d-460d-9a7c-
> 7b3b3213def7%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_4919_56542160.1504871858702--

