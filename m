X-GM-THRID: 6265914371751280640
X-Received: by 10.25.91.73 with SMTP id p70mr1661125lfb.3.1458917272728;
        Fri, 25 Mar 2016 07:47:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.30 with SMTP id f30ls47159lfi.89.gmail; Fri, 25 Mar 2016
 07:47:52 -0700 (PDT)
X-Received: by 10.112.55.212 with SMTP id u20mr1721315lbp.7.1458917272030;
        Fri, 25 Mar 2016 07:47:52 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si131020wmd.1.2016.03.25.07.47.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 07:47:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,391,1454972400"; 
   d="scan'208";a="210218007"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Mar 2016 15:47:51 +0100
Date: Fri, 25 Mar 2016 15:47:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Svetlana Orlik <sveta.orlik.code@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Troubles doing Tutorial
In-Reply-To: <56F54228.3070407@gmail.com>
Message-ID: <alpine.DEB.2.10.1603251547340.2507@hadrien>
References: <56F4FFE9.6030307@gmail.com> <alpine.DEB.2.10.1603251437070.2507@hadrien> <56F54228.3070407@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-577664906-1458917266=:2507"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-577664906-1458917266=:2507
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 25 Mar 2016, Svetlana Orlik wrote:

> 25.03.2016 16:37, Julia Lawall пишет:
> > > 2. Submitting a patch using mutt went OK, but when I tried `git
> > > send-email` - I got error:
> > > sendmail: fatal: open /etc/postfix/main.cf: No such file or directory
> > > Died at /usr/lib/git-core/git-send-email line 1292, <FIN> line 3.
> >
> > Do you know what is the solution for this?
>
> Add this to .gitconfig, like Eva Rachel Retuya wrote:
>
> [sendemail]
>    smtpserver = /usr/bin/esmtp
>
> I checked, it works.

Thanks.  I updated the wiki.

julia
--8323329-577664906-1458917266=:2507--

