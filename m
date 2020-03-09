X-GM-THRID: 6801960387185999872
X-Received: by 2002:a2e:9182:: with SMTP id f2mr8709347ljg.110.1583739352376;
        Mon, 09 Mar 2020 00:35:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8647:: with SMTP id i7ls1563629ljj.11.gmail; Mon, 09 Mar
 2020 00:35:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuqm+3qBPNVFjJh2WFClLbhkqikI0QbV3r6jPrgXjN+n66l9Iap2Fxp6o6io/VG8Ldh81/Y
X-Received: by 2002:a2e:b792:: with SMTP id n18mr488744ljo.268.1583739350555;
        Mon, 09 Mar 2020 00:35:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583739350; cv=none;
        d=google.com; s=arc-20160816;
        b=C3T0N2nDKqqjJ0BNKlE6DC8zZB9NEe75R3U6zWdK59D6xN+Dx6fqxOHuIuvqJuJz2q
         VKeNvZM8RSn+BLC+5pqlcvdl08tyQvQIVmT2v4OfRuibzSm6OvaLQWnZVa4dx72Reu1T
         L3C5AvICAvmFi5JV6tcEHivQowFrw9mKQCTK44tWkJYZvxyfa/oXuKas2pK4JqKa3+Kd
         dl7u5g9ed/yG5LqMw1vB9NTvzgEU/j2j4OcIdBA7ndmLJFemvofg23AOAV6o/iPV9sOq
         pl+k+my2EQ/DgJmj2oocKjsx7y4GTLdS24EcC3l5IJVklhlX/GCIOLNI981oEUmrynC1
         HXNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xSRi1sSdwn3ZnOCOJafgtYgnaZ1VIW9VaA5COD1u96Y=;
        b=ILQgY7umqSag8gq7VondSTbGVbFslwDc96Ya51fNjHIBxYHcze1hOVcdxWp9zRbFND
         X+5dW3dQCoXBt2K4fq96gJPP7bBHOIvJVylCjm8o3qGmRSxg+CC3FMRIdIyFNRVtedwV
         i3g/hP+p8JHtC2Clol2Huu/SPptJ6RQyjr3+rqFg1+YBpX/4p+zQA/nWDhxpfIH3jPm6
         YxN98LehKopHkGg4TWXzBOn1PNPDD4i8gG2WYo8OpPI4eMBbvcsV1hCGAl0FOS0CDAGN
         Nx5iTzLREreGrVuxPu978SZ86KfYVkzEDry0oIlrePWMK3DR/AaKGBeWhqbRsvJAHflW
         s2ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j11si415872lfe.4.2020.03.09.00.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 00:35:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,532,1574118000"; 
   d="scan'208";a="439418215"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 08:35:24 +0100
Date: Mon, 9 Mar 2020 08:35:24 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: Joe Perches <joe@perches.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, sbrivio@redhat.com, daniel.baluta@gmail.com, 
    nramas@linux.microsoft.com, hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
In-Reply-To: <af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003090825280.2676@hadrien>
References: <20200308220004.9960-1-shreeya.patel23498@gmail.com>  <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com> <af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 9 Mar 2020, Shreeya Patel wrote:

> On Sun, 2020-03-08 at 16:05 -0700, Joe Perches wrote:
> > On Mon, 2020-03-09 at 03:30 +0530, Shreeya Patel wrote:
> > > Add space around operators for improving the code
> > > readability.
> >
> > Hello again Shreeya.
> >
> I have some questions here...
>
> > The subject isn't really quite appropriate as you
> > are not doing this space around operator addition
> > for the entire subsystem.
> >
> > IMO, the subject should be:
> >
> > [PATCH] staging: rtl8188eu: rtw_mlme: Add spaces around operators
> >
> > because you are only performing this change on this
> > single file.
> >
> > If you were to do this for every single file in the
> > subsystem, you could have many individual patches with
> > the exact same subject line.
> >
> > And it would be good to show in the changelog that you
> > have compiled the file pre and post patch without object
> > code change.
> >
> I'm not sure how to show this. Do you mean to add the output of
> "make drivers/staging/rtl8188eu/core" before and after the changes?

You are working on one specific file, maybe foo.c.  Compile before
making changes, which will give you foo.o.  Rename that file to something
else.  Make your changes and compile again.  Do a diff with the previously
compiled file.  It should produce nothing, indicating no difference.

If this .o file doesn't change and you only changed this .c file, the
whole compiled driver won't change either.

> I also don't understand the meaning of no object code change. If we are
> making the changes to code and then compiling it using the make command
> then a new file with .o extension is created and replaced by the
> previous one isn't it?
>
> > Also, it's good to show that git diff -w shows no source
> > file changes.
> >
>
> And this has to be...
> git diff -w --shortstat drivers/staging/rtl8188eu/core/

--shortstat does not seem useful.  What you hope to see is that it
produces nothing.

julia

> Am I correct?
>
> Thanks
>
> > > Reported by checkpatch.pl
> > >
> > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > > ---
> > >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++------
> > > ------
> > >  1 file changed, 20 insertions(+), 20 deletions(-)
> >
> > When I try this using checkpatch --fix-inplace, I get
> > 21 changes against the latest -next tree.
> >
> > What tree are you doing this against?
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel%40gmail.com.
>

