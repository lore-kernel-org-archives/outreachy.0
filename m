X-GM-THRID: 6399695110711279616
X-Received: by 10.46.21.28 with SMTP id s28mr4570317ljd.14.1490076473444;
        Mon, 20 Mar 2017 23:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.28 with SMTP id s28ls1466027ljd.22.gmail; Mon, 20 Mar
 2017 23:07:52 -0700 (PDT)
X-Received: by 10.46.84.13 with SMTP id i13mr4553365ljb.2.1490076472442;
        Mon, 20 Mar 2017 23:07:52 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n128si945270wmf.2.2017.03.20.23.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 23:07:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,198,1486422000"; 
   d="scan'208";a="265424846"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2017 07:07:51 +0100
Date: Tue, 21 Mar 2017 07:07:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alexander Alemayhu <alexander@alemayhu.com>
cc: sayli karnik <karniksayli1995@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] nftables task question
In-Reply-To: <20170320222623.GB3079@gmail.com>
Message-ID: <alpine.DEB.2.20.1703210707330.2131@hadrien>
References: <CAKG5xWj2WBS4MiOdgcdatnHMkgdsBATKtgr_h5=sQPgrnOyBvA@mail.gmail.com> <20170320222623.GB3079@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1083427537-1490076472=:2131"

--8323329-1083427537-1490076472=:2131
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 20 Mar 2017, Alexander Alemayhu wrote:

> On Tue, Mar 21, 2017 at 02:54:50AM +0530, sayli karnik wrote:
> >
> > The project description for nftables lists translations to nft as a
> > possible small task. I couldn't find the files to work on. Which tree
> > accepts patches for these translations?
> >
> git clone git://git.netfilter.org/iptables
> cd iptables
> git grep iptables-translate
> <make changes>
> send patch to netfilter-devel@vger.kernel.org

Please send patches to outreachy-kernel too.

julia

>
> --
> Mit freundlichen Grüßen
>
> Alexander Alemayhu
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170320222623.GB3079%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1083427537-1490076472=:2131--

