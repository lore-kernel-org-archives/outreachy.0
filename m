X-GM-THRID: 6340039489286569984
X-Received: by 10.107.143.150 with SMTP id r144mr381767iod.34.1476281017873;
        Wed, 12 Oct 2016 07:03:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.7 with SMTP id 7ls3362654otu.37.gmail; Wed, 12 Oct 2016
 07:03:37 -0700 (PDT)
X-Received: by 10.31.65.208 with SMTP id o199mr321233vka.6.1476281017146;
        Wed, 12 Oct 2016 07:03:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si860017vkd.0.2016.10.12.07.03.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 07:03:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,482,1473112800"; 
   d="scan'208";a="240492897"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2016 16:03:36 +0200
Date: Wed, 12 Oct 2016 16:03:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, hvaibhav.linux@gmail.com, 
    johan@kernel.org, elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/7] staging: greybus: Format
 block comments.
In-Reply-To: <20161012135508.GC5158@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610121603110.2927@hadrien>
References: <20161011031105.GA21887@lennorien.com> <20161012132401.GA22452@kroah.com> <20161012135508.GC5158@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 12 Oct 2016, Elise Lennion wrote:

> On Wed, Oct 12, 2016 at 03:24:01PM +0200, Greg KH wrote:
> >
> > Does not apply to my tree :(
> >
> > Can you refresh this whole series and resend it?  Keep the acks that
> > were sent for some of the patches, and fix up the subject: lines.
> >
>
> Ok, I'll create new patches containing the changes without ack.

Actually, Greg said to keep the acks on the patches that have been acked.

julia

>
> This one that doesn't apply, should I just drop it? Your tree is local
> so I can't see what is different, to adjust the changes, until you push
> the changes to staging-testing, right?
>
> thank you,
>
> elise.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161012135508.GC5158%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

