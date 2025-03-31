Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CE7157A5A
	for <outreachy@lists.linux.dev>; Mon, 31 Mar 2025 08:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743411153; cv=none; b=Kltr5hV3F024NWMFtvhvZv7jLQhA+ZnGSHiZw3VT44Gi51TTHRMGLSemvdk0wx5Cs10luLcMlB2XRDUFdIoqmnyzWu10cVe40coa+nNETnKoqFOAR46d36naabFxTTZYRJbXSykGaRRMQ4L6dMD401qKgwgsbj/277Ydal4lUkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743411153; c=relaxed/simple;
	bh=GO1i6Mwk5SM8CHhAgGgFMqQTrZgdTpQ5MMcXPhvHYWc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=hdIgDHwEaApQcgBEdzw0C2TrUVd8IicrXs/KfHxQHye1z7C+Efdgnh66UNIa9ozuTCpCg17ceFQ33CvZYZQHP7hiHhrTchZUuKd/942VQcwOa5P/4KLRSlNcqx+2X8DWCHp8CD+0dHxbXYjPPIiPXM+x9ritPNVi7p61KytA8TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=Lnh2i0yw; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Lnh2i0yw"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ukh6AsJQoSugCsO3WhDDdsaUr9MS4GScRMCeNHwf7kM=;
  b=Lnh2i0ywAlqLqBj3l5CjSZuJekbUwbzC9Cm5AmMOdcxmKH9ujjEhJLwo
   STtVAuyUT+S7malxpNC87RxnNIVqSG7Q2ylKi1RX+Mt8pCOOujzdJrx13
   Yj0CStVmNAJtxcXFg4y642B9QJqD8AXalHmJ7hDLNv5KM1G+jL775ob+V
   E=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,290,1736809200"; 
   d="scan'208";a="215532608"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2025 10:52:20 +0200
Date: Mon, 31 Mar 2025 10:52:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Coccinelle
In-Reply-To: <CADYq+fZJd03PNRbrAaVyzWjXN9GZw9mZFV_M6F9AkKyrRY5gVQ@mail.gmail.com>
Message-ID: <5fa9ca8-d225-4fa8-aa32-1acdffe7530@inria.fr>
References: <alpine.DEB.2.22.394.2503301654260.23941@hadrien> <CADYq+fZJd03PNRbrAaVyzWjXN9GZw9mZFV_M6F9AkKyrRY5gVQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1831053646-1743411140=:3628"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1831053646-1743411140=:3628
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 31 Mar 2025, Samuel Abraham wrote:

> On Sun, Mar 30, 2025 at 3:56 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> > Hello,
> >
> > The actual internship project will involve using Coccinelle.  Some warm up
> > examplesin using Coccinelle are available at the following URL:
> >
> > https://who.paris.inria.fr/Julia.Lawall/outreachy25/
>
> Hello Julia,
> I have been studying the SmPL examples and some documentation.
> But I have some questions as regards the flow of execution of the SmPL.
>
> Firstly, I found out you are the writer and maintainer of Coccinelle, and I just
> want to say a job well done.

Thanks :)

> Looking at the first example of the SmPL,
>
> @initialize:ocaml@   => This defines an ocaml function
> @@
>
> let same_function p q =
>   (List.hd p).Coccilib.current_element = (List.hd
> q).Coccilib.current_element. => This checks if both p and q belong to
> the same function

Actually, this defines any data that you want to be global to the semantic
patch execution.  It is also possible to define a finalize that is
executed after all of the files have been handled.

You can also use python.  Then it would be eg initialize:python.

>
> @r@.   => Defines a named rule 'r'

Yes.  You dont' have to name all your rules.  But if you want to refer to
the metavariables defined in this rule from a later rule, then this rule
needs a name.

> expression e;  => matches an expression
> position p;       => Does this store the match's position like the
> line number in the file?

Yes.  You can also get the function name and the starting and ending lines
of the containing function.

> symbol true,false;
> @@
>
> e =@p \(true\|false\)
> This line above is where I am majorly confused.
> Please clarify: Are we setting the value of the expression to true or
> false and storing the position of the match?

This rule doesn't say it is an ocaml or python script, so it's a pattern
matching rule.  This is matching an assignment where the right hand side
is either true or false.  The left hand side is any expression e.  You can
also write the true or false pattern as:

(
  true
|
  false
)

where the ( | ) are in column 0.  Outside column 0, without \, they are
interpreted as somethign to match in the code.

>
> @@
> expression r.e;          => Here, we are referencing the expression in
> rule 'r' to replace the expression we have matched?

e is going to be an expression, but now it has to look the same as the one
matched in rule r.  It doesn't have to be at the same position, though.

> position q : script:ocaml(r.p) { same_function p q };  => we are
> setting position q if it the same as position p from the same_function

r.p is the position that was noted in rule r.  Here we want to note a
position and see if that position is in the same function as r.p.  The
idea here is that we may have x = true and then we may have x = 1.  But if
the second x is declared in a different function than the first x, then it
might be the case that the second one is really intended to be an integer.
So we take x = true as evidence that x should be a boolean only when the
two occurrences of x are in the same function.

This is of course a heuristic.  You can try something different, for
example getting rid of q entirely, and see what the result is.

> @@
>
> e =@q
> (
> - 1
> + true
> |
> - 0
> + false
> )
>
> Then this line above replaces the 1 with true or 0 with false in the
> expression that had been set previously above.
> But my question is, are we setting the value of e =@p \(true\|false\)

No.  Pattterns don't change anything.  The only way to change the state is
to write OCeml or python code (script:ocaml or script:python).

> or it just a place holder that will be replaced by any expression
> we match
> Then we can now check the matched expression if it is 0 and replace
> with true and if is 1 we replace with false?

The two matches of e are intrinsically at different places in the code,
since in one case there is true and in the other case there is 1 (or false
or 0).

>
> @s@
> type T;
> T e;
> identifier fld;
> symbol true,false;
> @@
>
> e.fld = \(true\|false\) ==> Same question applies here too

Same answer.  No assignment is executed here.  We find a random
expression of some type, and this expression has some random structure
field named fld.  The whole thing is found somewhere to be assigned to
true or to false in the source code.

I hope it's clearer now.  You may want to try running it on some small
example to see what it does.

julia

>
> @@
> type s.T;
> T e;
> identifier s.fld;
> @@
>
> e.fld =
> (
> - 1
> + true
> |
> - 0
> + false
> )
>
> Thanks
>
> Adekunle.
>
--8323329-1831053646-1743411140=:3628--
