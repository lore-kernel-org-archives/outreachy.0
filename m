X-GM-THRID: 6810919292495724544
X-Received: by 2002:a2e:9b07:: with SMTP id u7mr1442494lji.110.1585819759764;
        Thu, 02 Apr 2020 02:29:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:484d:: with SMTP id v74ls412042lfa.7.gmail; Thu, 02 Apr
 2020 02:29:18 -0700 (PDT)
X-Google-Smtp-Source: APiQypKhOCcZADKT+f6alJISgZHSHeWFwflcJOjiggCRXEGnBgyth8JWWqxhRE1EnOssOp154cdD
X-Received: by 2002:ac2:4a88:: with SMTP id l8mr1545113lfp.138.1585819758214;
        Thu, 02 Apr 2020 02:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585819758; cv=none;
        d=google.com; s=arc-20160816;
        b=ppbPb7pvUCLrW+QJnt9OPiCUFa48/rOqDPDCp745+tfRAzAbi6tlCZBHVnD4XCft6O
         lhk0HAw/07cYONtJ4YNcVtIKC/ljv7dZGu2JrJ1xlA45Ws4aSDVdKypvu1Ev2jipeMi9
         Ns45JuNWU3ZlYXMKbmZQz663jPN0rFLAqVA/ULXS8zVjZOEEU8bEcyz/G/IkgQCD4lV0
         jYLQfaF90wMsgqchKe24YTEAwvCcx4oXCh/vwPFHHM56uIftIRrkEtexbn6DAPFF7TL5
         SBIRBkg9s58c6M+iHGFlRRJjalheyhTG9B8ejVLPvUjLVqV/SdQSDqApMOvvTRGR6YcL
         i8Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+CGe3Hjq3RKDy9ORgId7R40+ujQ3nEz72p00hnymFEI=;
        b=V1W8pWxlXCB3LNFHjZ0xki+LVo6YnJPDHjjpXHrGnLhTDXOkAH9JVKksOWP0R06CCL
         2nME76RRuqR3jxSx7Cggiul1mSDJRRxQaYMlVlrDLmczLjuWuBfhEr6M1TagCXun1IJ3
         sVVcgGlNDeKVejRp+mnfeyD+brcbXa/e9ilaHGd+IwIIFS2ZnjzXlET4qVMgdCiWG5uo
         870Tj1g2k0bWInNuLd8ylbotg5Mv1lKkmimiD+dwk/JpoY6LBxh7nIIP8LQkRaq7DMus
         HAjVqY/QGzRjfwuUwrR9qCTxMBKqsct+jnsZYtAiVTEf01685ZqKJSbDD4u4Urzm/IgM
         NeMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w186si196842lff.4.2020.04.02.02.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 02:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,335,1580770800"; 
   d="scan'208";a="344685575"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 11:29:17 +0200
Date: Thu, 2 Apr 2020 11:29:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: John Wyatt <jbwyatt4@gmail.com>
cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: android: ion: Fix parenthesis
 alignment
In-Reply-To: <c8bd09741e0ec90507a034635d5e9e450e9a53b4.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2004021128120.3014@hadrien>
References: <20200402012515.429329-1-jbwyatt4@gmail.com>   <alpine.DEB.2.21.2004020910570.3014@hadrien>  <f8b3b9bb6544fb093b4c51b9626bfe8692e17b4c.camel@gmail.com>  <alpine.DEB.2.21.2004021056580.3130@hadrien>
 <c8bd09741e0ec90507a034635d5e9e450e9a53b4.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Apr 2020, John Wyatt wrote:

> On Thu, 2020-04-02 at 10:57 +0200, Julia Lawall wrote:
> >
> > On Thu, 2 Apr 2020, John Wyatt wrote:
> >
> > > On Thu, 2020-04-02 at 09:11 +0200, Julia Lawall wrote:
> > > > On Wed, 1 Apr 2020, John B. Wyatt IV wrote:
> > > >
> > > > > Fix 2 parenthesis alignment issues.
> > > >
> > > > Please try to find a way to describe what you have done that
> > > > doesn't
> > > > involve the word "Fix".  What have you done and why?
> > > >
> > >
> > > Understood.
> > >
> > > How about:
> > >
> > > Move spacing on function arguments to to comply with kernel style
> > > guide
> > > on parenthesis alignment.
> >
> > It's better (but drop the second "to" :).
>
> And I am going to bed. :)
>
> >
> > Obviously in this case it's not a big deal, but it's better to get
> > out of
> > the habit of just saying "fix".
>
> Understood, what about the title? Keep 'Fix'. or use 'Move'. or use
> 'Rearrange'?

The current subject line is not understandable.  You aren't actually doing
anything with the parentheses.  I would suggest to start the subject line
with "Align".

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c8bd09741e0ec90507a034635d5e9e450e9a53b4.camel%40gmail.com.
>

