X-GM-THRID: 6340351948666961920
X-Received: by 10.28.168.206 with SMTP id r197mr77326wme.0.1476250634970;
        Tue, 11 Oct 2016 22:37:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.211.1 with SMTP id k1ls85839wmg.3.gmail; Tue, 11 Oct 2016
 22:37:14 -0700 (PDT)
X-Received: by 10.194.113.106 with SMTP id ix10mr566026wjb.7.1476250634205;
        Tue, 11 Oct 2016 22:37:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v15si47709wmf.1.2016.10.11.22.37.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 22:37:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,332,1473112800"; 
   d="scan'208";a="196460314"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2016 07:37:13 +0200
Date: Wed, 12 Oct 2016 07:37:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: Coccinelle Challenge 1
In-Reply-To: <20161011233203.GB11666@localhost>
Message-ID: <alpine.DEB.2.10.1610120712290.3282@hadrien>
References: <20161011233203.GB11666@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 11 Oct 2016, Elizabeth Ferdman wrote:

> Hi Julia,
> I worked on the first challenge and I wanted to run my findings and
> questions by you. Please confirm whether these observations are correct.
>
> I looked at the difference between local idexpression, expression, and
> identifier for ret.cocci.
>
> Local idexpression basically means what local identifier
> would mean-- just local vars--  except that's invalid.

An identifier is just a name.  It doesn't necessarily have any value.
For example, an identifier can be used in the place of a structure field
or a jump label.  An idexpression is an expression (term that has a value)
that is restricted to look like an identifier.  It cannot be used as a
field name or a jump label, only where other expressions are allowed.  As
such, a type can be specified for it, as in idexpression int x;, and as in
this case it can be specified to reference a local or global variable.

> Using expression in place of local identifier included results like
> this:
>
> - a->b = c;
> - return a->b;
> + return c;

Exactly.

> I don't know whether or not that's always the right thing to do. I think
> that if the changes are only local, it'd be fine to compress the lines.
> But if a->b happens to have a global effect than it'd be wrong. I'm not
> sure about this, but if the function receives *a as a parameter, then
> would a->b = c be a persistent change?

Yes it would.  If a->b = c doesn't make a persistent change, then
it probably doesn't make sense to write such code at all.  If it is a
purely local computation, one would use a local variable.

> Using identifier included results where 'ret' was not necessarily local,
> so compressing the lines would be bad because the global assignment
> would be deleted.

Correct as well.

> I noticed some potentially bad results with ret.cocci:
> 1. When the type of 'ret' happens to be important, lines shouldn't be
> compressed. For example, a function receives a variable of type u64 but
> then returns it as u32. Deleting the assignment line means that the
> value will be returned as the wrong type.

I don't think so.  The compiler does know the type of the function.  But
I'm not 100% sure.  Perhaps there could be a pathological case where the
expression is u64, the variable is u32, and the return type is also u64.
It could be nice for the person to use a cast in this case.  Coccinelle
can, however, detect that an assignment preserves the type:

@@
type T;
local idexpression T x;
T y;
@@

x = y // this assignment is type preserving

The only problem is that then Coccinelle has to figure out the type of x
(probably easy since it is a local variable) and y (probably hard; if it
is a call to a function defined in another file, then Coccinelle may not
know the return type).  Generally, determining type information may
require information in header files, and by default Coccinelle only
includes the ones in the same directory or with the same name as the .c
file.  Including more is possible, eg with the option --all-includes (all
directly included files) or --recursive-includes (also files included by
other included files), but these cause a significant slowdown, because a
lot more code needs to be processed.  There is an option
--include-headers-for-types that reads the header files but only collects
type information rather than trying to transform them.  This reduces the
performance impact.

> 2. spatch deletes a comment between the assignment and the return
> statement. E.g.:
>
> -       start = iwe(info);
> -       /* how to translate rssi to ?% */
> -       return start;
> +       return iwe(info);
>  }

That's true.  If you keep the word return instead of removing it and
adding it back, then the comment should stay as well.

>
> 3. readability issues--
> - the return value is very long with many |'s or ||'s
> - the name of the variable might be meaningful to the reader
> - there are if blocks with return statements:
>  same variable name but different values might provide meaning/order to
>   the program.
>   In these cases the variable reassignment or creation isn't actually
>   necessary, but does it increase readability?

Sure, it could be useful.  It's your responsability as a Coccinelle user
to look at the results and decide which are not a good idea.  Sometimes it
can be useful to adjust the semantic patch to remove the results you don't
like, but for things like meaningful names, the user would have to figure
out for themself.

> Questions:
> I'm pretty confused about how these lines work:
>
> -ret =
> +return
>      e;
> -return ret;
>
> The first line deletes the name of the variable and the equals sign,
> but what happens to the expression on the right?

Nothing.

> I'm confused as to why it doesn't say -ret = e to signify that the
> expression on the right is what we want 'e' to be. Then return gets
> added, and it's replacing 'ret ='. But why is 'e' even necessary if it
> wasn't deleted? And why is it on a new line with spaces in front?
> The last line '-return ret;' makes sense, we just want to delete the
> word return followed by the variable name.

In general, when you remove something and add it back, you change it from
how it was in the original code to how Coccinelle wants to pretty print
it.  This rule favors leaving the layout of the expression e as is.  But
there is no way to adapt this rule to leave the return as is, in order to
preserve any comment.  And the expression is now a function call, which
Coccinelle is now pretty good at pretty printing.  So it may be more
desirable to put eg:

- ret = e;
  return
-   ret
+   e
  ;

Coccinelle doesn't normally care about the spaces and newlines in the
specification.  So you can put newlines however needed for annotating
different tokens as - and +.  There is an option --smpl-spacing that will
preserve the spaces within a line of code.  This is useful if you are
working on a project that has layout conventions different from the Linux
kernel, such as putting a space after ( and before ).  But for the Linux
kernel, the default pretty printing strategy should be fine.

> I've read some basics of coccinelle, went through the slides, and read
> some articles people wrote about it but I'm still pretty confused. :/

There were a lot of good points in the above, so I don't think you are
actually so confused :)

julia

> Thanks for your time,
> Elizabeth
>

