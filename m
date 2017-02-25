X-GM-THRID: 6390634706454446080
X-Received: by 10.46.84.68 with SMTP id y4mr796877ljd.21.1488017476024;
        Sat, 25 Feb 2017 02:11:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.87.69 with SMTP id l66ls581451wmb.18.gmail; Sat, 25 Feb
 2017 02:11:15 -0800 (PST)
X-Received: by 10.223.164.195 with SMTP id h3mr203767wrb.2.1488017475269;
        Sat, 25 Feb 2017 02:11:15 -0800 (PST)
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [141.255.128.1])
        by gmr-mx.google.com with ESMTP id i76si314253wmh.1.2017.02.25.02.11.15
        for <outreachy-kernel@googlegroups.com>;
        Sat, 25 Feb 2017 02:11:15 -0800 (PST)
Received-SPF: neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=141.255.128.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id CF62DB9F4;
	Sat, 25 Feb 2017 11:11:14 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMJXQHblBqBS; Sat, 25 Feb 2017 11:11:14 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 510BBB9D1;
	Sat, 25 Feb 2017 11:11:14 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.88)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1chZJj-0003JI-Ho; Sat, 25 Feb 2017 11:11:07 +0100
Date: Sat, 25 Feb 2017 11:11:07 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Varsha Rao <rvarsha016@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace BUG_ON()
 with WARN_ON().
Message-ID: <20170225101107.4k3nwjwcgquunh2z@var.youpi.perso.aquilenet.fr>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
 <alpine.DEB.2.20.1702241814330.3089@hadrien>
 <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
 <20170225094123.ssback7e4kmw2ett@var.youpi.perso.aquilenet.fr>
 <alpine.DEB.2.20.1702251055390.2088@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.20.1702251055390.2088@hadrien>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Julia Lawall, on sam. 25 f�vr. 2017 10:55:58 +0100, wrote:
> > Julia asked about when the branch is *not* taken. In that case retval is
> > still 0, that's not a useful value. Please make retval -INVAL instead of
> > 0.
> >
> > And then with all these fixed (including the WARN_ON logic inversion),
> > your patch makes perfect sense to me.
> 
> -EINVAL ?

Sure :)

Samuel

