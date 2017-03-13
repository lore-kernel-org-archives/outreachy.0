X-GM-THRID: 6395629856318554112
X-Received: by 10.25.201.198 with SMTP id z189mr4066490lff.15.1489385491627;
        Sun, 12 Mar 2017 23:11:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.9 with SMTP id 9ls1425639ljn.46.gmail; Sun, 12 Mar 2017
 23:11:31 -0700 (PDT)
X-Received: by 10.25.202.67 with SMTP id h3mr4342589lfj.30.1489385491169;
        Sun, 12 Mar 2017 23:11:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si652626wmg.0.2017.03.12.23.11.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 23:11:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,157,1486422000"; 
   d="scan'208";a="216484070"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2017 07:11:30 +0100
Date: Mon, 13 Mar 2017 07:11:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Tamara Diaconita <diaconitatamara@gmail.com>, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] staging: wilc1000: Improve
 code readability
In-Reply-To: <20170312234135.GA14759@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.20.1703130711120.2096@hadrien>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com> <20170312234135.GA14759@d830.WORKGROUP>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, Alison Schofield wrote:

> On Sun, Mar 12, 2017 at 11:15:15PM +0200, Tamara Diaconita wrote:
> > Improve code readability in wilc_spi_read_int dunction in wilc_spi.c
>
> spelling dunction ->function, or write it wilc_spi_read_int()
>
> You don't need to say file name. Reviewer sees it a few lines later
> in the diffstat.

Probably even the function name is not necessary.

julia

>
> >
> > Tamara Diaconita (3):
> >   staging: wilc1000: Declare variables at top of function
> >   staging: wilc1000: Correct name of variables
> >   staging: wilc1000: Remove unnecessary brackets
> >
> >  drivers/staging/wilc1000/wilc_spi.c | 52 ++++++++++++++++---------------------
> >  1 file changed, 22 insertions(+), 30 deletions(-)
> >
> > --
> > I am going to wait to see these patches in the staging tree, then resend additional patches for this driver.
> >
> > Changes since v1:
> > *Change the patches order.
> > 2.9.3
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312211518.3172-1-diaconita.tamara%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312234135.GA14759%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

