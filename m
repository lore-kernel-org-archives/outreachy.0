X-GM-THRID: 6663442013681090560
X-Received: by 2002:a17:906:2641:: with SMTP id i1mr1016774ejc.9.1551512174757;
        Fri, 01 Mar 2019 23:36:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8b8a:: with SMTP id m10ls3132830edm.7.gmail; Fri, 01 Mar
 2019 23:36:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqwvnlGt5sEbuVVZnX/6eaf5vLhiBhLIUicr7bZ6cq48xAXjc7lteo0k2SHoZUqe5bBjOu4C
X-Received: by 2002:a50:915d:: with SMTP id f29mr1211801eda.12.1551512173971;
        Fri, 01 Mar 2019 23:36:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551512173; cv=none;
        d=google.com; s=arc-20160816;
        b=f41iLYWJjLXGsphIj7lWum6kgan9qJEEusLeEmPCpRC89B001NdeSwU0J1bIPQ/vcM
         0LgEUiwO7bf67xO67SrbPdfDI1A5mmKKLCoZI9Z993PhF39ze8071L0US9XdlKr8fiRL
         rN4n+gi/bjltBooXIucLpdKGqK/CNqFu92M7A2WthrFm7BDhHipprma+Cnd5Nwx7uU/U
         Itdqylgx0ykXAzfWnN/9IX8jBY5iOkNy6XXGAEdRVaBnosYLjUId8vR1JFTWKffOPV/2
         h5JutteUQU0zQeF077shgN9uxZHBn64WQ7b6+FV15oRQaAAdxdfjwceppm0tcxThYjTS
         IWfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0zlaQnnSSTbtaMhQdjriWreQu6TVtlHN/qDxvfmbAZA=;
        b=rvQC1hWKVtWfS2tKgHsqGBp9ATfJO2hE9PUbkjCfC3/O/7Old/hItOdovOk4E/9bIN
         0w2kvBA2csvjNBbsakBh9Jc7Y1LpX7jGzJHXOAmcksIQEgVl0fIFYVCgecdiSa1ajMBh
         v2UlVUqGjC2AQjXvqz3Vqytm0JgcNWpSJm7xt/BcE8yeNAsqIr1qHH59u2Kqem09tUxZ
         U4BNwWs+3p2NjoSAqMgU40BIsc9M8Q6Ljy96tJ0uaArwplInN9xUbiRszVM6WB9JBVqR
         Ln2QZMgyi75gOa0ldCES4fNp1za7M/14TdG/iTd/hGLIg1xez9o6jruXQLa3Tb7NGAZs
         4tkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si19168edb.1.2019.03.01.23.36.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 23:36:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,431,1544482800"; 
   d="scan'208";a="371599476"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 08:36:13 +0100
Date: Sat, 2 Mar 2019 08:36:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Octave <jbi.octave@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: mt7621-dma: add SPDX
 GPL-2.0 or later version license identifier
In-Reply-To: <CAOuULM40UOwHdzELPDS6=fj4NyHuV38P5zMtfBinaarApRqn4g@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903020835430.2572@hadrien>
References: <20190301151801.7886-1-jbi.octave@gmail.com> <20190301151801.7886-2-jbi.octave@gmail.com> <20190301153935.GA3877@kroah.com> <CAOuULM6W1PtuaysLX7=z+nXhXnM35Wyz65Gx++urmrLJcbGe2w@mail.gmail.com> <20190301200104.GA19353@kroah.com>
 <CAOuULM6csFS6UCZMfefDZhOdraTspMBKrXT5JiL3Gi2EOqAyXw@mail.gmail.com> <alpine.DEB.2.21.1903020729430.2572@hadrien> <CAOuULM40UOwHdzELPDS6=fj4NyHuV38P5zMtfBinaarApRqn4g@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-964915939-1551512173=:2572"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-964915939-1551512173=:2572
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 2 Mar 2019, Jules Octave wrote:

> Apology, I did not  see that. I will change.

This is top posting again.  No mail sent to the mailing list should
involve top posting.

julia

>
> Jules
> ..
> BCS West Yorkshire Secretary
> Positive action combined with positive thinking results in success - Shiv
> Khera
>
>
> On Sat, 2 Mar 2019 at 06:30, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sat, 2 Mar 2019, Jules Octave wrote:
>
>       > Thanks . I have just changed it. I take good note.
>
>       Greg told you not to top post.  But you are top posting again. 
>       Please
>       move down to the thing that you are responding to and put your
>       response
>       right under it, like I have done in this message.
>
>       julia
>
>       >
>       > Jules
>       > ..
>       > BCS West Yorkshire Secretary
>       > Positive action combined with positive thinking results in
>       success - Shiv Khera
>       >
>       >
>       > On Fri, 1 Mar 2019 at 20:01, Greg KH
>       <gregkh@linuxfoundation.org> wrote:
>       >       A: http://en.wikipedia.org/wiki/Top_post
>       >       Q: Were do I find info about this thing called
>       top-posting?
>       >       A: Because it messes up the order in which people
>       normally read text.
>       >       Q: Why is top-posting such a bad thing?
>       >       A: Top-posting.
>       >       Q: What is the most annoying thing in e-mail?
>       >
>       >       A: No.
>       >       Q: Should I include quotations after my reply?
>       >
>       >
>       >       http://daringfireball.net/2007/07/on_top
>       >
>       >       On Fri, Mar 01, 2019 at 05:38:58PM +0000, Jules Octave
>       wrote:
>       >       > Some people say  GPL-2.0+ has deprecated (
>       >       >
>       https://www.drupal.org/project/lightning/issues/2938910 ) but I
>       will
>       >
>       >       That is drupal, not the kernel.
>       >
>       >       > change it to GPL-2.0+.
>       >       > I tried looking  on  https://spdx.org/licenses/
>       >
>       >       That's a nice place to read as well, but we are using an
>       "older" version
>       >       of spdx.
>       >
>       >       Always read the in-kernel documentation, we write it for
>       a reason :)
>       >
>       >       Look at Documentation/process/license-rules.rst please,
>       it shows that
>       >       you should use the "GPL-2.0+" marking.
>       >
>       >       thanks,
>       >
>       >       greg k-h
>       >
>       >       --
>       >       You received this message because you are subscribed to
>       the Google Groups "outreachy-kernel" group.
>       >       To unsubscribe from this group and stop receiving emails
>       from it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       >       To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       >       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190301200104.GA19353%4
>       0kroah.com.
>       >       For more options, visit
>       https://groups.google.com/d/optout.
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOuULM6csFS6UCZMfefDZhO
>       draTspMBKrXT5JiL3Gi2EOqAyXw%40mail.gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>       >
>
>
>
--8323329-964915939-1551512173=:2572--

