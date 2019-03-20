X-GM-THRID: 6670193586677481472
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr1918851ljs.12.1553112608649;
        Wed, 20 Mar 2019 13:10:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2c7:: with SMTP id y68ls452568lje.10.gmail; Wed, 20 Mar
 2019 13:10:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzrXFeRouZ4FkH6aeK4lrqHRLr7C4JC1iuBQ1Xcz349IblAJP9iakSsEUX9/IbPgr9EuwS
X-Received: by 2002:a2e:909a:: with SMTP id l26mr1936552ljg.1.1553112607361;
        Wed, 20 Mar 2019 13:10:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553112607; cv=none;
        d=google.com; s=arc-20160816;
        b=QQ6I2H/DsSJ6t0s+x0thc6CewBX4R5ZOFqYVZREoXtg2Hz3cqj8rSIM2eoz8xOVDpx
         S+POYxaMOrMPFCC0pBpLo5BlXIckGS8DpmsV++jCTPNj/SWAk/rnvOCGeag7KFLlopHj
         y8uET8TIT5myN5Om4/cU+JnJMc5wWOnN7Ad5Uz5kBkzpqFSRasIqvkTkRfINjdxBSsxX
         W3VhaTN3qmEogbH0GI5PGGRIAiwleXHZrHYf/KPbjkAnEO0edjCutFGas+vweKLElkPN
         n2ai3Nkx3/6cA9jUPILsaxeM0w5isxqoy7utnLhBJvo6WPduy+/HRxEhhD2uavo60if9
         nQGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fiE/8fC9ULqJID7Q19OnZKXRi4MyWDnmrVDtYhjSFnE=;
        b=RIMwO4Sx+rD/OWla3WJvZ9QIcjnDSJp893g5URNWDHvrq3OhVOt+r5JayYHjhlJG1E
         AKUJmO2OzurzCM6YFssD8hDK6IW3u/V1+W/UgvQPKcRP0+lkM1cwkgquxgPmahSTnoPn
         E/SH9ktB5+lTgiSjmEXXIJpJUGSwIJqdry8722+1hakNUKY4oSH7mVyeUy8CLtXEyiOB
         ujES3CeQw6cE98wDrQfJ3jyLYrSBLh3KtVigAxlCE2fZ7l3aRDLYTLGqT/Z9RuywhKlO
         bamIz7r1ME9dcj8UNYlAUA8f/czSTgAzXBslLnAyktLS664X7/3lZ6gZR+1bmZvR0kGE
         /PNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h14si196694lja.2.2019.03.20.13.10.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 13:10:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,249,1549926000"; 
   d="scan'208";a="300161498"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2019 21:10:06 +0100
Date: Wed, 20 Mar 2019 21:10:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, ajay.kathat@microchip.com, 
    adham.abozaeid@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Remove return variables in multiple
 functions
In-Reply-To: <0310644f-84f3-2aca-1a90-5463b2dc37b3@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903202109330.2691@hadrien>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com> <alpine.DEB.2.21.1903192102070.2460@hadrien> <0310644f-84f3-2aca-1a90-5463b2dc37b3@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, 'NIshka Dasgupta' via outreachy-kernel wrote:

>
>
> On 20/03/19 1:34 AM, Julia Lawall wrote:
> >
> >
> > On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> >
> > > The following patches remove the return variable in multiple functions
> > > and return the required values directly. These issues were suggested by
> > > Coccinelle using ret.cocci.
> > >
> > > Nishka Dasgupta (5):
> > >    staging: wilc1000: Remove return variable
> > >    staging: wilc1000: Remove return variable
> > >    staging: wilc1000: Remove return variable
> > >    staging: wilc1000: Remove return variable
> > >    staging: wilc1000: Remove return variable
> >
> > I haven't received the other patches in this series, but just from the
> > above there is a problem.  Every patch should have a subject line that is
> > unique.  On solution would be to incorporate the file name, but it seems
> > that you have only two files.  If the changes are not too voluminous, you
> > could send a single patch for all of the changes in a given file.
>
> Since you've acked one or two of them, should I send a version 2 of the entire
> patchset or just the ones that need adjustments?

Send a version 2 of the whole patch set.  If I've acked some, then you can
keep the ack in the v2.

julia


> Thanking you,
> Nishka
>
> > julia
>
> > >
> > >   drivers/staging/wilc1000/host_interface.c | 11 +++--------
> > >   drivers/staging/wilc1000/wilc_spi.c       |  6 ++----
> > >   2 files changed, 5 insertions(+), 12 deletions(-)
> > >
> > > --
> > > 2.19.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/cover.1553025265.git.nishka.dasgupta%40yahoo.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/0310644f-84f3-2aca-1a90-5463b2dc37b3%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

