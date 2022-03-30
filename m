Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384B07C
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 11:10:39 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id p15so35164239lfk.8
        for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 04:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4E4TzAwgNiiTwiJM8+oBk6uWR7BgQB29BWqvuevxqzg=;
        b=KU8ohP5YLlcv4SaNeBzuIFEsa2qreJZggYybYCyaZLGZTgiksez1lsVb0TpJT24oSF
         oKHtdCv5uLefsS2KcuF3jQke5AF7XsdG0NEM62EXgVywXOrLMsiCQS8flv8DcFg3CX3n
         6+QiFOdxVUDbRnj/2DEJ1MmXkLk2o84jZhUk9Qp6B3FVK/en2Dl1xC/oxLJDZZYp6YA3
         vo9z6bcYxKg+e8gTdoLAPXGvvcvbL4tK8FHIigTCPYUOfYhRNquGdZBOJkOFFk/YlgH5
         jyxf5IfY2FHOSPOXRUhDMgpS3LbnZ5stuE3hrp6rMti0ACuUBhioBb0TYbSx4ThevrWl
         I4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4E4TzAwgNiiTwiJM8+oBk6uWR7BgQB29BWqvuevxqzg=;
        b=1FYxueD/fgGeiecO7cghSbN0IsxnBkpWUnDS2i0G12V+3N25BcM/wH4ODPu9fZWAxv
         GV3bX9W88ivXM5ombOxYxNkhjwTdEV5pS9VdwnSYJgsKbSyn+8+yNvA1h9l6lH/RVXlA
         xLpbGMRk40VGXJuQaUyHssKzXMbRL0+fgGipwQbQ7TBOCQ9m1W5l0aqwGQUTDfV7ompT
         zRbpwHdC8R38dqkqwQVv1WeM6cUapiXssJTxfr/LammeHsDL0j7GyfD+ccUkZRJYlTvN
         z2fLSIyAZ6JviSKgQl9kdGOatsx/PqHN6IGFQSAe8NHfthKBtODBiykMQ8Uo5fFHXsF6
         XGgg==
X-Gm-Message-State: AOAM531qqDSe8xiq8SdC2zEvIS9t5z8RwXSKHr9SCmFq9rsgLIx02xII
	6/cSqta5/5QNppPxqG9PEqx7piwLu6A19OgZPOE=
X-Google-Smtp-Source: ABdhPJx45lWc5kfleXoWF9iSiJFx4OVe60npTDepGqoBU0mHYJrwt/DCKlrxrSeDXltpZ2H+F8qNeul+pbxLhsVJLoY=
X-Received: by 2002:a05:6512:12d6:b0:44a:4a14:a19a with SMTP id
 p22-20020a05651212d600b0044a4a14a19amr6383838lfg.619.1648638636968; Wed, 30
 Mar 2022 04:10:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAMWRUK7oaT3bh7pJK5oMWYh3Sptwx6UdgNwds6d_A0CQxC24pw@mail.gmail.com>
 <20220330013408.GA1173441@alison-desk> <CAMWRUK4xoy3M8ob2soAwp-RHvro8TGGQdXBim9K1z5nXTTer_g@mail.gmail.com>
 <20220330025333.GA1173893@alison-desk>
In-Reply-To: <20220330025333.GA1173893@alison-desk>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Wed, 30 Mar 2022 07:10:25 -0400
Message-ID: <CAMWRUK4Tq3Y3TU1BivAyYeYimPUU9QBLS8LDvA-WcB2=ns3h0A@mail.gmail.com>
Subject: Re: [KERNEL NEWBIES ACCESS] SevinjAghayeva
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 29, 2022 at 10:51 PM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Tue, Mar 29, 2022 at 09:50:46PM -0400, Sevinj Aghayeva wrote:
> > Thanks! If you think my "[PATCH v2] staging: rtl8723bs: remove
> > redundant braces in if statements" is okay, I can replace the example
> > in PatchPhilosophy that contains "This patch fixes...".
> >
> Yes, go ahead and update the wiki directly. I can look at it in place
> once it's changed. Thanks!

Updated.


>
>
> > On Tue, Mar 29, 2022 at 9:31 PM Alison Schofield
> > <alison.schofield@intel.com> wrote:
> > >
> > > On Tue, Mar 29, 2022 at 09:25:10PM -0400, Sevinj Aghayeva wrote:
> > > > Please grant me edit privileges to improve the wiki pages.
> > > >
> > > > Thanks!
> > > Added you to https://kernelnewbies.org/EditorsGroup
> > > Ping me back if any issues.
> > > Thanks for helping maintain the wiki.
> > > >
> > > > --
> > > >
> > > > Sevinj.Aghayeva
> > > >
> >
> >
> >
> > --
> >
> > Sevinj.Aghayeva



--

Sevinj.Aghayeva
