X-GM-THRID: 6666274038276423680
X-Received: by 2002:a2e:701a:: with SMTP id l26mr1302503ljc.26.1552156104858;
        Sat, 09 Mar 2019 10:28:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:551a:: with SMTP id n26ls103120lfe.12.gmail; Sat, 09 Mar
 2019 10:28:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqzrdpHp/UaekUOQwv5afEv4AFM+dwkeBmR1S0PmhByJGB1FehZBeUmby+BE5n3wYVegM1s2
X-Received: by 2002:ac2:419a:: with SMTP id z26mr1458693lfh.2.1552156103947;
        Sat, 09 Mar 2019 10:28:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552156103; cv=none;
        d=google.com; s=arc-20160816;
        b=IxVsuUbWdD45rv+Y1j5pFu/BHdhsT/NhgMpvmtqbPQntCOrw8wfYaRl68QgPmkwJ2F
         bZpY+j04qM0C1KbZ1zdaLHApM48UsHtEFMlMYNh1zvpOxnBudn5PtsN85ESAC79NkKrA
         Ty/wZ7XVCTmzYZESyshItpaVLMNnvqSTjatAPQVCTbCVB5aXUhtAn+qsbbU5PYChx0CI
         0YnXYw0TvKFT2fkjHugueFK0T94F3kBeGNTwT2INXn8TImxUTmS5AeYUHj2/bGQaveT0
         3zoRy3Rzdnhuz5wNgNsirxqg2HPu0UHM1HIOnStgxxwyOsmHAiCtvDfa8kIxe9lNWC/b
         8Y/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=E4nN7CTbIAVzWpp7wxdyqzn80K11dZtQ/VpruljZgn8=;
        b=vUpbJMOLkYZHMjrXlWlaqUwa5QHCr3Raw/ZgMTNWNrdVkf5OpotKYq3IZc0CZDhZ50
         PI/AarBfEECIqSf0GaEB9qKdpvgRVsUrpZL14vrQHw+vBJo0s+2yRWxw9IMMCrYxpy0y
         8WrB+XmWPqSoHPcbo6RLf+acB2POO9Y0rUdqzkpdf/58LY0oQrLqNMZ052lkKK6Dj+I0
         PRZOeA2hgpDXuGQK112dCJdDebIVjr/FrVnb6WWjm6Og5E6Y8eoqgo7GtG1Qoqx7Vitx
         RQEATIPdrMxKSHXDceo7hX9o6ma1WlqSqtI3S3l+WrN3tWWLtH86o50v1LApXvTZpbvS
         DY6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u21si58572lja.1.2019.03.09.10.28.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 10:28:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,460,1544482800"; 
   d="scan'208";a="372645143"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 19:28:23 +0100
Date: Sat, 9 Mar 2019 19:28:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Fix assignment
 operator alignment
In-Reply-To: <2ccb525d-0508-4abb-a25e-6afc4e6a4df8@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903091923450.13389@hadrien>
References: <20190309031718.GA18429@branx011-Vostro-430> <alpine.DEB.2.21.1903090734060.2558@hadrien> <9474be9e-9cd2-46a6-8b24-539b28e4a86c@googlegroups.com> <alpine.DEB.2.21.1903091437490.2452@hadrien>
 <2ccb525d-0508-4abb-a25e-6afc4e6a4df8@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1862939932-1552156103=:13389"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1862939932-1552156103=:13389
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 9 Mar 2019, Branden Bonaby wrote:

>
>
> On Saturday, March 9, 2019 at 8:38:38 AM UTC-5, Julia Lawall wrote:
>
>
> On Sat, 9 Mar 2019, Branden Bonaby wrote:
>
> >  
> >       Fixes confusing assignment operator alignment as highlighted by checkpath
> >
> >       > The commit message should be in the imperative.  Fix rather than Fixes.
> >
> >       > Fix is actually, not a very good word, because it doesn't describe what
> >       > you actually did.
> >
> >       > checkpath -> checkpatch
> >
> >       > I believe that checkpatch would also be warning about an ( at the end of
> >       > the line, and the change has preserved that problem.  Maybe a better
> >       > solution would be to leave the function call where it is and move the
> >       > argument up to the same line.  If it seems more readable that way, going
> >       > slightly over 80 characters could be OK.  One would have to see how it
> >       > looks.
> >
> >       > julia
> >
> >  
> > thanks for the feedback.
> > the only thing is when I move the function call and its arguments to the same like like below it makes the line 103 characters long
> > msg1.channellist.data.data[i] = ieee80211_frequency_to_channel(request->channels[i]->center_freq);
>
> My suggestion was to leave the function name on the second line where it
> was.  You have to make some compromises.
>
> > I could do something like move each member in the argument under each other leaving the "->" at the end and then making a new line under it
>
> No, never do this.
>
> julia

Can you sent up your mailer so that it puts > in front of quoted text?  It
looks like you wrote the part that I wrote.

>
> > but other than those two its probably better I leave that line alone since I don't want to break it.
> > what do you think?
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kern...@googlegroups.com.
> > To post to this group, send email to outreach...@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9474be9e-9cd2-46a6-8b24-539b28e4a86c%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
> I edited my patch into a second version but the message ID in my original message looks like its actually my machine
> no clue why that's happening as I went through all the steps in the Kernelnewbies wiki and also steps here
> https://www.linux.com/news/fetching-email-mutt . So what I did was, I resent it using git send-email using the message ID
> of the forum post in the --in-reply-to section. Looks like the Patch v2 sent to greg but doesn't appear here, so I don't think Greg
> will actually look at it and you wouldn't see it here. Should I resend it using git send-email and make it a new post but under v2
> since I know git send-email is working and actually giving me the correct Message-ID?

I think that Greg will look at anything he receives.  If you want to try
sending it again, you should use v3, because Greg will likely have
received v2.

>
> PS. I can send and receive emails through mutt which goes through my Gmail but all the emails from it has a message ID that ends in "@<my_machine_name>"

Maybe someone else has solved this issue and can help you.

julia
--8323329-1862939932-1552156103=:13389--

