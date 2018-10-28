X-GM-THRID: 6617179960834523136
X-Received: by 2002:aa7:da54:: with SMTP id w20-v6mr815478eds.7.1540758542400;
        Sun, 28 Oct 2018 13:29:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b48f:: with SMTP id w15-v6ls1537953edd.10.gmail; Sun, 28
 Oct 2018 13:29:01 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cbg7SN/Kw+/zK/F2Y6mXrPNEEBhB3Lx87USkx+EKx8ClmnxBgKdRoy7Bua3zAjQ+l9F2df
X-Received: by 2002:aa7:da54:: with SMTP id w20-v6mr815477eds.7.1540758541664;
        Sun, 28 Oct 2018 13:29:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540758541; cv=none;
        d=google.com; s=arc-20160816;
        b=M+6QfvLcMliTSFEqjEjmWKpGd1zo88br+zOBcK9rkX9mAkqHLZSPCUnAGCML1Dg597
         VlCob1K2f+djEOCbsIsXzfRLJacdZlBRpiBN7Iw+N75BksikW306fO7VmGuazjkcXSbD
         P0kGgXNZNJ2YK/D4cRuZGaRb07N0c36t0TnyMA+W2FKqvbyJH5pbUpEmW+cwNB7edw+G
         MRIf2tBUzFYs7CzdAtApyL4qzYEjLzPv+3WoY0xkoKy6tAHJINJZfrY8iB1WHAFX3gmF
         2Bo5wViqEWtOWKi30eHfjqBtTvs29uEyOu1CttEeNniTOyStMuo8NWNPBeYvIYzrSkFp
         S1xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5L1nTnbmhex681basKH61vappPLq0jSY0MIkFI6oxy4=;
        b=xmUt7+vqKDTD9g2OmOc+RPaKgiwZApQOjaJdLkKMgqsceIaC244VpFlVToCHHXAmXe
         w9HZRxJdfz6uEauzI544sVdRE3lwp4E3xaDgsWxyiu3f6Njg8m0/b1MN6Xu74ulE+B4C
         Z++jr9qZIXV9nrWRIn0vZ+7jLXZYHVfW2KKgifDeSfO3hgzq1I042dqWduTWTDu+MInZ
         LG1cMCAJYLPGBneRvL7NNM3VXAEsu+YO1z+3q+YavhJKO/sKpDxZqGVBEMd4iNKupcwY
         yNJaCHhWXF0a5rcpV1dPX/lpOFylKHjVP+ohi8uiTM36M6lXq/24ZNVZBI9uOKx6coU6
         pTpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m25-v6si506080ejb.1.2018.10.28.13.29.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 13:29:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,437,1534802400"; 
   d="scan'208";a="283567008"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2018 21:29:00 +0100
Date: Sun, 28 Oct 2018 21:29:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] FirstPatch Wiki Change
In-Reply-To: <20181028202052.GA21843@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810282127140.2433@hadrien>
References: <20181027231742.GA11614@kvasir.local> <alpine.DEB.2.21.1810280627040.2450@hadrien> <20181028202052.GA21843@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 28 Oct 2018, Ioannis Valasakis wrote:

> On Sun, Oct 28, 2018 at 06:27:29AM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 28 Oct 2018, Ioannis Valasakis wrote:
> >
> > > Hi all!
> > >
> > > I wanted to added a few changed to the FirstPatch Outreachy
> > > Kernelnewbies wiki but I get the option that the page is immutable. On
> > > top of that, when I am choosing Load/Save from the menu, I don't get the
> > > whole page 'source' but a very tiny version of it.
> > >
> > > Anyone knows how could I edit and send my Wiki patch over to you? Thank
> > > you for the help :)
> >
> > What are your changes?
>
> I want to add my personal mutt settings (as I couldn't connect with the
> default recommendations) as I believe it can help future applicants.

This seems fine.

>
> Also I want to correct a few mistakes and add a summary section. I hope
> that makes sense.

I'm not sure what you mean by a summary section.  Perhaps post it to the
mailing list first.

>
> >
> > I can make you a site editor, and then you can make the changes directly.
>
> That would be great! Thanks.

I need to know your username.  I would suggest IoannisValasakis.

julia

