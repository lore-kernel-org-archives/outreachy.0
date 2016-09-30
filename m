X-GM-THRID: 6335880985647775744
X-Received: by 10.28.43.129 with SMTP id r123mr133789wmr.6.1475211419289;
        Thu, 29 Sep 2016 21:56:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.23 with SMTP id m23ls206137wma.3.gmail; Thu, 29 Sep 2016
 21:56:58 -0700 (PDT)
X-Received: by 10.28.208.13 with SMTP id h13mr145038wmg.1.1475211418319;
        Thu, 29 Sep 2016 21:56:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u190si229610wmf.0.2016.09.29.21.56.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 21:56:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,418,1473112800"; 
   d="scan'208";a="195139048"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2016 06:56:57 +0200
Date: Fri, 30 Sep 2016 06:56:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com
Subject: Re: [Outreachy kernel] Split String Checkpatch Warning
In-Reply-To: <20160929221404.GA7406@localhost>
Message-ID: <alpine.DEB.2.10.1609300654560.3314@hadrien>
References: <20160929221404.GA7406@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 29 Sep 2016, Elizabeth Ferdman wrote:

> I'm seeing this checkpatch error:
>
> WARNING: quoted string split across lines
>
> example:
> MODULE_AUTHOR("Ralph Metzler, Trent Piepho, Ben Pfaff, "
>              "Christoph Bartelmus, Andrei Tanas");

In general, you can put the whole string on one line, even if it goes over
80 characters.  It makes it easier to grep for.  Perhaps there could be a
way to make the string shorter too.  In this case, obviously you can't.
I'm not sure that there would be a need to grep for this anyway, ie it
doesn't look like something that would be generated in an error case, so
it is probably better left as is.

julia

>
> Just wondering if this is a good thing to fix, and how do I fix it? I
> don't see anything about it in the style guide. If I put the whole
> string on one line, it's more than 80 characters. I found one option on
> stack overflow that says you can do:
>
> char *my_string = "Line 1 \
>                    Line 2";
>
> So I'd be putting a space and a backslash after the line?
> I don't know if that conforms with linux kernel coding style though.
>
> I'm also wondering if anyone knows any good resources on common
> checkpatch errors and the proper way to fix them.
>
> Thanks,
> Liz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160929221404.GA7406%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

