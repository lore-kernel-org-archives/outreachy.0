X-GM-THRID: 6249509204772519936
X-Received: by 10.28.126.149 with SMTP id z143mr1054311wmc.4.1455089073543;
        Tue, 09 Feb 2016 23:24:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.68 with SMTP id l65ls89159wmd.8.gmail; Tue, 09 Feb 2016
 23:24:33 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr1067482wme.4.1455089073186;
        Tue, 09 Feb 2016 23:24:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si63697wme.0.2016.02.09.23.24.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:24:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="164141825"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 08:24:32 +0100
Date: Wed, 10 Feb 2016 08:24:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Greg KH <gregkh@linuxfoundation.org>
cc: Janani Ravichandran <janani.rvchndrn@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: slicoss: Align #define
 constants
In-Reply-To: <20160210061105.GA22525@kroah.com>
Message-ID: <alpine.DEB.2.02.1602100824080.2050@localhost6.localdomain6>
References: <20160210090650.GA3575@janani-Inspiron-3521> <cd332ec7-4bf6-4854-859d-3ab667383154@googlegroups.com> <20160210061105.GA22525@kroah.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Greg KH wrote:

> On Tue, Feb 09, 2016 at 08:10:51PM -0800, Janani Ravichandran wrote:
> > This is embarrassing. The alignment looked fine on vim. All the constants were
> > in the
> > same column. I don't understand why the alignment looks so bad in the patch.
> > Can someone
> > explain this? :/
> 
> What looks wrong to you now?  The patch looks good to me, please
> explain, by quoting the lines you feel are not correct.

The three context lines above the patch don't seem to be lined up with 
each other.

julia

> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210061105.GA22525%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
> 

