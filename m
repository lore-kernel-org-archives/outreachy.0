X-GM-THRID: 6947860813701971968
X-Received: by 2002:a19:234a:: with SMTP id j71mr19660151lfj.448.1617691240052;
        Mon, 05 Apr 2021 23:40:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9212:: with SMTP id k18ls3368920ljg.8.gmail; Mon, 05 Apr
 2021 23:40:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQFOOy5MPMT0zHegVm5E4VAYuFkhNsSYsH39b1qseSEe858DZhf5mpTtaD/LFa7fljHLcs
X-Received: by 2002:a2e:8841:: with SMTP id z1mr17340042ljj.303.1617691238235;
        Mon, 05 Apr 2021 23:40:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617691238; cv=none;
        d=google.com; s=arc-20160816;
        b=XYv/E1oxEzSNPQ5EFJoKG/wmQVqum+wCDOIPwzZ1A6mP5w1oITAG177Q3GEkwAWywK
         f3phQ/hiWWC4vaBicvxmaJjLuTeFkqO2mRlNVcbeIDeRfzJf8tBiDN8IfGhhFapyEK/Z
         0MSOs25EK85mtUoDtRLaBljbG3HY7Q65Vj9kc0DCApGZu82gNmtuQtlI0O35QohW0UZz
         txlVKD1iADdxZc+ahf9dbSVzVzSR7NRmUMw451/U0othKXzLErPhjQUWAbL7YTa4wJlP
         ljBac9ON5r6BhcBvOCxjQS8oLpuPLZr8x49q+BLM+pUJS80qHSKz2Vafs9uRyoGlnBdi
         iQ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=HP72TMY/WzIN9F102DeAcPXhhnvF1DXOIF9s48+eNLA=;
        b=rqDZQyV1BBvtLIbAvHg65imfn7z7lwWgOVkSwy7JCUU2nF8vziKWjUE6h6c5SoyGhF
         N74nFzEvIObpWdVM3zZTNmPH5G5vIQROE4bBdBGB3TOjoAKZR2agpeJR+52VxDaOzniZ
         ifeEBvwTU/DzQvuLE9YKz+YrvOJT2XDJGqCjXjtl50zjaiMq40Csidrrf1fPRaUumfAX
         GBWK2+DfuqD1Qbj7hsOJhvnwnVAQBJ0Y9YJg0gLuPqD2TdaCyfSXoiL9sn5XUqV6EC1N
         4ArNhxzmCtfXjgRnPUu7bE0TlpD4rpi4IpmpDj33hfO0txn925IP5SbDeHquWutumCBV
         Te/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d32si1350850lfv.8.2021.04.05.23.40.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 23:40:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Al4dEma1BdfvycZhTZpnpAgqjBHskLtp033Aq?=
 =?us-ascii?q?2lEZdDV+dMuEm8ey2MkB3RjvhzoLHF0mk9aMOK6PKEmslqJdy48XILukQU3aqH?=
 =?us-ascii?q?KlRbsD0aLOyyDtcheVysdzzqFlGpITNPTVLXxXyfn3+xO5FdFI+ri62YSln/3X?=
 =?us-ascii?q?wXsobQwCUcxdxjx0AAqaDUF6LTMubfEEPaCB7clKrSfIQxoqR/m8b0NrY9T+?=
X-IronPort-AV: E=Sophos;i="5.81,308,1610406000"; 
   d="scan'208";a="501666161"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Apr 2021 08:40:37 +0200
Date: Tue, 6 Apr 2021 08:40:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in
 Hal8723BReg.h
In-Reply-To: <1851038.q9TLUjBrch@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104060839310.2882@hadrien>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <YGvttKG+RNhKAmO/@kroah.com> <2303372.zkNegYAOfQ@localhost.localdomain> <1851038.q9TLUjBrch@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:

> On Tuesday, April 6, 2021 7:52:52 AM CEST Fabio M. De Francesco wrote:
> > On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> > > On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> > > > Correct indentation issues of many #define and comments in Hal8723BReg.h
> > > >
> > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
> > > >  1 file changed, 302 insertions(+), 302 deletions(-)
> > >
> > > You forgot to cc: all of the needed mailing lists.  And your subject
> > > line needs some work.  But the biggest issue is that I do not understand
> > > what this patch does at all.  What is wrong with the original code here
> > > that required you to "correct" it?
> > >
> > > confused,
> > >
> > > greg k-h
> > >
> > I'm sorry that I forgot to cc linux-staging and linux-kernel mailing lists
> > and for the subject I had already sent a v2 patch that had
> > all the required tags (staging: rtl8723: hal:).
> >
> > I think that what was wrong with the original code was that
> > the #define values were far from the symbols with random indentation.
> >
> > For example, I changed something like:
> > #define SYMB1 		0123
> > #define SYMB2 5678
> > #define SYMB3            9ABC
> >
> > to:
> > #define SYMB1 	0123
> > #define SYMB2 	5678
> > #define SYMB3            	9ABC
>
> the preceding defined values are in a single column. I don't understand why KMail show them in different levels of indentation. However, I hope that my argument in support of the patch was still clear.

There is surely a difference with the use of spaces and tabs.  If you
change something about the defines and this problem shows up, you can make
another patch in the series to make the spacing more uniform.

julia

