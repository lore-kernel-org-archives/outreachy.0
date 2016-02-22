X-GM-THRID: 6254088718103085056
X-Received: by 10.112.168.201 with SMTP id zy9mr3333059lbb.23.1456145365699;
        Mon, 22 Feb 2016 04:49:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.131.134 with SMTP id f128ls412845wmd.45.canary; Mon, 22 Feb
 2016 04:49:25 -0800 (PST)
X-Received: by 10.28.226.132 with SMTP id z126mr1104861wmg.2.1456145365257;
        Mon, 22 Feb 2016 04:49:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 141si1101060wmy.2.2016.02.22.04.49.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:49:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="204114755"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 13:49:24 +0100
Date: Mon, 22 Feb 2016 07:49:22 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Replace simple_strtoul
 with kstrtoul
In-Reply-To: <CA+5yK5H2xSGQApR6aB_M_hksW3u6QuHOWtt2EQwHur0Ru48y=g@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602220748540.2532@hadrien>
References: <20160222121811.GA21856@amitoj-Inspiron-3542> <alpine.DEB.2.10.1602220737380.2532@hadrien> <CA+5yK5H2xSGQApR6aB_M_hksW3u6QuHOWtt2EQwHur0Ru48y=g@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Amitoj Kaur Chawla wrote:

> On Mon, Feb 22, 2016 at 6:08 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Mon, 22 Feb 2016, Amitoj Kaur Chawla wrote:
> >
> >> Replace obsolete simple_strtoul with kstrtoul.
> >> The Coccinelle semantic patch used to make this change is as follows:
> >
> > Check on the use of temp.  In teh second case it is used after the call.
> > I believe that the call is supposed to update the pointer, but you can
> > check on that.
> >
> > julia
> >
>
> Checked. I think I'll have to revise the semantic patch to only look
> for cases which have a NULL pointer as the middle argument since
> otherwise I'm not updating the pointer with this change.
>
> But that makes me wonder about the checkpatch warning for this, since
> simple_strtoul is obsolete and should be replaced.

Yes...  The warning tends to lead people to do things that are wrong.

julia

