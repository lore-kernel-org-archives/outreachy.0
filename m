X-GM-THRID: 6802341212191719424
X-Received: by 2002:a05:651c:235:: with SMTP id z21mr7379816ljn.285.1583845791149;
        Tue, 10 Mar 2020 06:09:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3e04:: with SMTP id l4ls2444257lja.8.gmail; Tue, 10 Mar
 2020 06:09:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtiW6ZCihEgQPf7NEjYnV1HyxwUoOM0jUuql5BsGAdyN1wrs166p4115PMMbEbtfr9Jp0sB
X-Received: by 2002:a2e:964f:: with SMTP id z15mr4881184ljh.237.1583845789447;
        Tue, 10 Mar 2020 06:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583845789; cv=none;
        d=google.com; s=arc-20160816;
        b=biSTQ3piXKGvZ3TW+ij25ASdqOQdOEIuQETEZEAAPzSe7xLe6NhfSZkcmjh05daOKX
         wTfFsC7yDbSOMBCKb7mJY7ul2FER2QYPE6WCR6yFQ5pTbzfBiMUiw49HYrn4+qPCVcv3
         YzMylWKd7VjPGU/dGGfhijddSNfO5TIxxmUYp46ygb4tDpe64Tv6VM6Fs8Gp552DsvpL
         DjVdtcaH2vdoJc9OYeCcEef5VRTxVh1SZXoDDH8U+WiRF2xWkqo+qXC8AYFITOWZWQTj
         gSmBF48U3tS/j+2GxATjOlfLV7fcHI3QIc+j4z1iWjH7xxwHQLhV/KYMcue0HaGXIe+m
         F7Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/J+MqyRxZCADi4iRoqIDMyNYnnef/eUn8BxuU6fX1oo=;
        b=dkIwa32pwtcHC4CevNyHmABE4KWfUVczvWDlBW09+tOHCBQ8qd2cDyhqhzA9hawHa+
         ofodAG0CAmJc7W+CoEPPKcf3FmKneZFDeiKzRwShiEdUcVEcov7XCA9HqtNk6483S9e5
         DnoBkf43gChHKepCrB6Y1U0MYVnhU8QOiNetXnZ7aFWNYpj07tPHgP/G+qHh5vFiaPAj
         zANbD4gAyY6AxLWo3Nuq17o8FFXW5XrG0lHNJvBEYb9t94iJTJ75jkgyIjuhWG8yvMyV
         eii1SgtDvChtttpta8o3xxOQ21E0BfzCsgUwAbXuXDMXawoFubdVkBtyHpUczYmRKthB
         D1SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p14si377907lfo.0.2020.03.10.06.09.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,537,1574118000"; 
   d="scan'208";a="341881742"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 14:09:48 +0100
Date: Tue, 10 Mar 2020 14:09:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: =?ISO-8859-15?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Forest Bond <forest@alittletooquiet.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/7] staging: wfx: change 1 to bool
In-Reply-To: <2641095.QEJj9zIe3E@pc-42>
Message-ID: <alpine.DEB.2.21.2003101409210.26409@hadrien>
References: <20200309223751.GA5676@kaaira-HP-Pavilion-Notebook> <alpine.DEB.2.21.2003100824490.2455@hadrien> <20200310121242.GB11048@kaaira-HP-Pavilion-Notebook> <2641095.QEJj9zIe3E@pc-42>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2105449564-1583845788=:26409"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2105449564-1583845788=:26409
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Tue, 10 Mar 2020, J�r�me Pouiller wrote:

> On Tuesday 10 March 2020 13:12:42 CET Kaaira Gupta wrote:
> > On Tue, Mar 10, 2020 at 08:27:54AM +0100, Julia Lawall wrote:
> > > On Tue, 10 Mar 2020, Kaaira Gupta wrote:
> > >
> > > > policies[i].uploaded is a bool. It is equated to 1. Change it to bool.
> > >
> > > equated -> assigned
> > >
> > > As far as I can see, policies[i].uploaded is a u8, not a bool.  Have you
> > > checked that all of the uses indicate that it is used in a boolean way?
> >
> > Yes, I got this warning using coccinelle, after which I checked a few
> > uses of this as well. I found them to be indiacate policies[i].uploaded
> > as bool. For example line 227 of the same file :
> >
> > `if (!policies[i].uploaded && memzcmp(policies[i].rates,
> >                             sizeof(policies[i].rates)`
> >
>
> Hello,
>
> Indeed, policies[i].uploaded is a bool since 6673f2636b41 ("staging: wfx:
> use boolean appropriately").

Indeed.  I was looking at a totally unrelated structure having the same
name...

thanks,
julia
--8323329-2105449564-1583845788=:26409--

