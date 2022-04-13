Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73ED52564
	for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 15:14:21 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id b21so2598181ljf.4
        for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 08:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9OQQBAMOrafcbilGAqoEb1MnxasjkXmsknkWvjXimPs=;
        b=GD/r27efBGF1Wws/8GCOvFUw8kNXaKO36+lH9rBIWOC/Qc0KdWKZL7nXHOHW08KNTQ
         so6FOtYvU4q3/F5b9iddyaus02GVT9e02U7nbvAZf33k4t6sb/M/2ZKAieAL8OlTPHU4
         xrvLOz7bzcNGv1s8XrNbNk298X3XBO3ZJRcilgVavOUL6Tgc0UZzZXtEtRAQyVE+Mn5I
         ZXvYVcAbXRRXVywvDJuPrnrRr1ZtKclXtkRBIYuSZyhAZ+dcOjKv6R45OfJJ0SH+eI3K
         K8/vxSWEXd6ZHAEioYKiJ1Ypj3pcRGYOMiJ5m4LOhev4awXYq2YKzOydnUY9AdZsHYvH
         7IaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9OQQBAMOrafcbilGAqoEb1MnxasjkXmsknkWvjXimPs=;
        b=BJnty1bCLNABTqbiNkiF0ovvtW8UVIFPhohl1/oAqYNKJHhK9RkGNAbSC+5C6Fpil3
         Zk0lgnQo1viUoOZe5daLp8RJDnyQ5G5Sjy1rPdFcD5Jo0QxOwU/w/R6bzdCZzpYooHmF
         /T+pw09JLnQAlu1QbR92pA+ANv9U6baCUK5+dfncTHcM9GN35hAFhu0eY+Wk1RTsKeFj
         z3XGpDVQLJlFZnmeAq1m+6WlXwUnZzX7EmBTFD02Sl5UyaW71X3wAopqLfzCFXkGJvHy
         LLqEb0ETKP/rJBCUO+y/NS6hIQZnSqc/ryRc9vb1lVLsEQPCyKzF7QhRUd99CR05Fcj7
         kjWA==
X-Gm-Message-State: AOAM533TdQex1kVnTNJV6mpVSE7QCXVVPEMfauGEUzvQGKyFHT0QPhRv
	01CUQ+XNPXFST+Wvwo09XY8XZb6sh5tpdbYYrkQ=
X-Google-Smtp-Source: ABdhPJzMfpMzCFZQAudr6WZHMnGoAfa4DZ0v1ZZA+4IgOhUvDPgzzgCIH4Wr97DMgQfuUCpHva1cIgjIP7hWvSjqJ7U=
X-Received: by 2002:a05:651c:10b7:b0:24b:405c:21f8 with SMTP id
 k23-20020a05651c10b700b0024b405c21f8mr20073917ljn.107.1649862859206; Wed, 13
 Apr 2022 08:14:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <1859502.6tgchFWduM@leap> <20220412223603.GA1237891@alison-desk>
 <CAMWRUK6W4-3Fwh7BAQ_aSWYG4Dh=oSX-ZKgHuiO0QhKUwyCEOA@mail.gmail.com> <20220413041553.GA1239114@alison-desk>
In-Reply-To: <20220413041553.GA1239114@alison-desk>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Wed, 13 Apr 2022 11:14:07 -0400
Message-ID: <CAMWRUK5N6fC9ZUAPXZ0sKao=nLF33WA3N4+HGZvJgHaiBnewFg@mail.gmail.com>
Subject: Re: Should we Cc this list when submitting patches for subsystems
 other than "staging"?
To: Alison Schofield <alison.schofield@intel.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, 
	outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 13, 2022 at 12:14 AM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Tue, Apr 12, 2022 at 08:00:24PM -0700, Sevinj Aghayeva wrote:
> >    On Tue, Apr 12, 2022 at 6:34 PM Alison Schofield
> >    <alison.schofield@intel.com> wrote:
> >
> >      On Tue, Apr 12, 2022 at 10:21:31PM +0200, Fabio M. De Francesco wrote:
> >      > Hello,
> >      >
> >      > During the current month I have submitted some patches for subsystems
> >      other
> >      > than drivers/staging. When I sent them I thought that those shouldn't
> >      be
> >      > Cc'ed also to this list. Now I'm not anymore sure if I did it
> >      correctly.
> >      >
> >      > My question is if all patches sent by the Outreachy's applicants until
> >      > April 22nd should also be sent to this list, even when they are for
> >      > subsystems other than drivers/staging.
> >      >
> >      > Furthermore, one of the above-mentioned patches is strictly related to
> >      one
> >      > of the three Linux projects, being it a reworking and extension of a
> >      large
> >      > section of the documentation of HIGHMEM. Is it sufficient to add that
> >      patch
> >      > to the page where we register our contributions in the Outreachy's
> >      website?
> >      >
> >      > I'm also asking because during these days I'm preparing further
> >      patches to
> >      > other subsystems and I'm going to submit them well before April 22nd.
> >
> >      Thanks for asking Fabio,
> >
> >      Yes, all contributions that an applicant considers to be part of their
> >      application should be shared on this list.
> >
> >      There's always an exception! Perhaps if a mentor gives out a small
> >      task for which a posting to this list would spoil the task for others,
> >      only gets sent to the mentor(s). I expect project mentors would tell
> >      you that case explicitly.
> >
> >      We like to see everything you all are doing and we want the list archive
> >      to accurately reflect all contributions and communications.
> >
> >    Oh, that's good to know. I did a few small patches already, but didn't Cc
> >    the list; will do so from now on.
> >
>
> FYI - We have patch reviewers for Outreachy on this list that won't
> see your patch if you omit the list. These reviewers volunteer their
> time during the Outreachy contribution period and are familiar with
> the Outreachy program.

How about non-kernel related changes? For example, I'm working on
improving https://mbuto.sh/mbuto/about/ with mentors. It's a script
that builds a minimal image that runs kernel selftests when booted
from; it speeds up testing kernel changes. Should I Cc them to the
list as well?

>
> >
> >      Alison
> >
> >      >
> >      > Thanks,
> >      >
> >      > Fabio M. De Francesco
> >      >
> >      >
> >      >
> >
> >    --
> >    Sevinj.Aghayeva



-- 

Sevinj.Aghayeva
