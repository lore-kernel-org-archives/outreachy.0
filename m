Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69607149C64
	for <outreachy@lists.linux.dev>; Mon, 31 Mar 2025 06:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743403964; cv=none; b=D8YUiDjTx1AT+b1s+EmVopna576SNdh2S2dfKZ/NvWKTxbKqoG0CHXtKBjEmNtlXMDL9utvGMFv+Guxi/0CwZuLU82UxG37DwU3w+BQHZwNcvDXC/CkZH4Vh5BVJaDW4BteO1iBk9t0YQtFzS5sxkf+O7goKi7D7qJfIiaBdYcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743403964; c=relaxed/simple;
	bh=9PPFAdMcjIwzIsYoyecfbfw8Nv5OebLhTXHsVsBoepg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VwDqglN4XzJ72v/K312TTyBpyZcX5VM592i5abas0M9aPPfVaCu5lJ8AhwgXDIyc6caQyFAE1NEnluMXYZvptyZK5Y4IuITS3ljjxaDHuBeEcXUuDOqy2NYsl+YyY+BYnipapDAqruJw4EDs0HnPFWuO4g6Fv0NtNyTiBtJcUac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YzQt7K0y; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YzQt7K0y"
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5262475372eso376512e0c.2
        for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 23:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743403962; x=1744008762; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1pwPcCYM7292309C8yzQKBNbCdWpOcW6PejEypzQ6qc=;
        b=YzQt7K0ylcNtC44cNFM0rsU5ewPXjiVLS2WJCjYPTqIaTpO4wEPWcIA7RdGbs6l0nj
         ZHB1koiCQ5AnJH159HyCWd0UryI+HWyrtCtUaURc3HUCfE1V0Zmdcjo0fRg+hlZObutj
         0Mtgqo7tXNBJkRxE6oRvDjLIGF1AhbDOo/K5lzKd4CEoiGyktAtJhfMErB+lDmFmjtpO
         Rm9+M2GMFycYI7OS9k+f+OuF+jTOynR+yV42ixAOOcGUZFYHfNbvhMIXmmDx6b9kC6nJ
         BRbdVNBpWVX8pEAYtmlDc39aSyjttuTE+3VZFUnB/80SQT4cCiKCMMcADVtDjftadLwC
         KAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743403962; x=1744008762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1pwPcCYM7292309C8yzQKBNbCdWpOcW6PejEypzQ6qc=;
        b=f1jCVkw0Zdw0d1mviDQjqUrcxgEL0M7mEWCA608SgF0DLKUEW3kQ9K7+o7uKmPM4ug
         xBhKOSbn5nCUwRyRwSOI7qG9uVY6/l3hL5qHMGa4OmsWwFz5FJoSwqZqZfyMlSNVBpni
         vnSxEMbY59HB8qBW/GBqFSOpVOwDUSJbvXanidIbLHMSPhj0MyDhDH3dS4oD8eehzaRg
         0BPqOSq0d70c96WR9qQOvjQBjp4bXa+qhA/4WHqHlrtEJXi3Xnx/flp9uA2IX7PSHyIs
         /bHQVKsogL1MWE+ETyqtzb50gEbKpZu8goIBJfORBUE8RuXXNwjPEM314gH4A9Rx/7h6
         fLjg==
X-Gm-Message-State: AOJu0YzzOq3GrQ+8geTjhRC1srvNE+hyaiSI9fqVMHLnQqb20VRO5ztB
	3/erREvmKQj6t7ofA+MkWdz4iVJYvL4GNTIVDScFAwR/XefzL4TLTApBHFb1Ss0Ypj+h6SwsAUa
	TqhRzVgmK3G6IR8XnsCU/RVri6d8=
X-Gm-Gg: ASbGncsspdU+EITTQ4qD49Cmzhwp8KlyjCyZv4RbI1u/7ZjHjgMl7C1SCvkdOeniOWE
	2xNQlSJmwFT5e6ErUkMom1f0Nh16nkID6UkEFUCKyNgczybFGZVv66uVp9saTmUxQZqjCQYXqMl
	VCSFCaA9rokle+VCXijxYbzZ6AXqjqOvgQ1YpJ3Sc=
X-Google-Smtp-Source: AGHT+IErb+ON0t0HvEfM/bix4UiwTy5NlEd1tbGwH5EuGVDv0cOvetyXZZtzlc8RBT0tZIUulFDOJispxquIJuJqXA0=
X-Received: by 2002:a05:6122:927:b0:51f:4151:4834 with SMTP id
 71dfb90a1353d-5261d442179mr3220290e0c.7.1743403962132; Sun, 30 Mar 2025
 23:52:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <alpine.DEB.2.22.394.2503301654260.23941@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2503301654260.23941@hadrien>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Mon, 31 Mar 2025 07:52:33 +0100
X-Gm-Features: AQ5f1Jo88KnXch5yfQYR38IhaUc6bhbE33FtAa9F5YD1e4hOtqms2_RWYOZdoRI
Message-ID: <CADYq+fZJd03PNRbrAaVyzWjXN9GZw9mZFV_M6F9AkKyrRY5gVQ@mail.gmail.com>
Subject: Re: Coccinelle
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 30, 2025 at 3:56=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
> Hello,
>
> The actual internship project will involve using Coccinelle.  Some warm u=
p
> examplesin using Coccinelle are available at the following URL:
>
> https://who.paris.inria.fr/Julia.Lawall/outreachy25/

Hello Julia,
I have been studying the SmPL examples and some documentation.
But I have some questions as regards the flow of execution of the SmPL.

Firstly, I found out you are the writer and maintainer of Coccinelle, and I=
 just
want to say a job well done.

Looking at the first example of the SmPL,

@initialize:ocaml@   =3D> This defines an ocaml function
@@

let same_function p q =3D
  (List.hd p).Coccilib.current_element =3D (List.hd
q).Coccilib.current_element. =3D> This checks if both p and q belong to
the same function

@r@.   =3D> Defines a named rule 'r'
expression e;  =3D> matches an expression
position p;       =3D> Does this store the match's position like the
line number in the file?
symbol true,false;
@@

e =3D@p \(true\|false\)
This line above is where I am majorly confused.
Please clarify: Are we setting the value of the expression to true or
false and storing the position of the match?

@@
expression r.e;          =3D> Here, we are referencing the expression in
rule 'r' to replace the expression we have matched?
position q : script:ocaml(r.p) { same_function p q };  =3D> we are
setting position q if it the same as position p from the same_function
@@

e =3D@q
(
- 1
+ true
|
- 0
+ false
)

Then this line above replaces the 1 with true or 0 with false in the
expression that had been set previously above.
But my question is, are we setting the value of e =3D@p \(true\|false\)
or it just a place holder that will be replaced by any expression
we match
Then we can now check the matched expression if it is 0 and replace
with true and if is 1 we replace with false?

@s@
type T;
T e;
identifier fld;
symbol true,false;
@@

e.fld =3D \(true\|false\) =3D=3D> Same question applies here too

@@
type s.T;
T e;
identifier s.fld;
@@

e.fld =3D
(
- 1
+ true
|
- 0
+ false
)

Thanks

Adekunle.
