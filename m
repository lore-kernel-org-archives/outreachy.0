X-GM-THRID: 6253814918113394688
X-Received: by 10.112.151.240 with SMTP id ut16mr3314966lbb.16.1456140959743;
        Mon, 22 Feb 2016 03:35:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.113.11 with SMTP id m11ls387048wmc.47.canary; Mon, 22 Feb
 2016 03:35:59 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr1069013wmd.7.1456140959260;
        Mon, 22 Feb 2016 03:35:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si1176434wmd.1.2016.02.22.03.35.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 03:35:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="204104759"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 12:35:46 +0100
Date: Mon, 22 Feb 2016 06:35:44 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: most: hdm-usb: Use macro
 DIV_ROUND_UP
In-Reply-To: <CAFNHFT897nR+k6oasfO8b9-B36vNmvGEiUvC9DO9GMtBAvfS7A@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602220635210.2655@hadrien>
References: <20160221183624.GA3428@Karyakshetra> <alpine.DEB.2.10.1602211937020.2512@hadrien> <CAFNHFT-veFJ+0-FC_9rJDV3A0uzg1RZmvGDJWnxvBhLfHoZ_7Q@mail.gmail.com> <alpine.DEB.2.10.1602220528250.2685@hadrien>
 <CAFNHFT897nR+k6oasfO8b9-B36vNmvGEiUvC9DO9GMtBAvfS7A@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:

> Hello Julia,
>
>
> On Mon, Feb 22, 2016 at 4:01 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> > On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:
> >
> > > Hello Julia,
> > >
> > > Like you suggested, I have dropped the macro CEILING altogether and
> > > have replaced
> > > it with DIV_ROUND_UP.
> > >
> > > Should I resend the patchset or should I just  send a v2  for this patch?
> >
> > Normally, if you send a patchset and then you change any patch in it, you
> > have to resend the whole thing.  If your previous patch set was a bunch of
> > different files for DIV_ROUND_UP and you are now going to add a bunch of
> > different files for CEILING -> DIV_ROUND_UP, perhaps it would make more
> > sense to make a v3 for the original patch set just dropping this change,
> > and then ake a new patch set for the CEILING change.  But if the CEILING
> > change is only in one file, maybe a v3 with teh current set of changes is
> > OK.
>
> Yes, the CEILING change is in a single file. Patches 1,2,4 are unchanged.
> Hence, I'm sending just a v2 for patch 3/4.
> Is the following subject fine for v2, patch 3/4
>
> [PATCH v2 3/4] staging: most: hdm-usb: Use macro DIV_ROUND_UP

No, you have to resend the whole patch set, even the unchanged parts.

julia

>
> Thanks,
> Bhaktipriya
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAFNHFT897nR%2Bk6oasfO8b9-B36vNmvGEiUvC9DO9GMtBAvfS7A%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

