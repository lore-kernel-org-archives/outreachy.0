X-GM-THRID: 6390634706454446080
X-Received: by 10.13.222.195 with SMTP id h186mr2462952ywe.132.1488016158929;
        Sat, 25 Feb 2017 01:49:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.34 with SMTP id h31ls8108092ote.3.gmail; Sat, 25 Feb
 2017 01:49:18 -0800 (PST)
X-Received: by 10.13.240.193 with SMTP id z184mr2617665ywe.129.1488016158502;
        Sat, 25 Feb 2017 01:49:18 -0800 (PST)
Received: by 10.55.73.143 with SMTP id w137msqka;
        Sat, 25 Feb 2017 01:43:06 -0800 (PST)
X-Received: by 10.25.141.85 with SMTP id p82mr796915lfd.8.1488015786583;
        Sat, 25 Feb 2017 01:43:06 -0800 (PST)
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [141.255.128.1])
        by gmr-mx.google.com with ESMTP id h62si239992wme.2.2017.02.25.01.43.06
        for <outreachy-kernel@googlegroups.com>;
        Sat, 25 Feb 2017 01:43:06 -0800 (PST)
Received-SPF: neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=141.255.128.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 53482B9FA;
	Sat, 25 Feb 2017 10:43:06 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sr7gykxiwaxY; Sat, 25 Feb 2017 10:43:05 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id C880DB9F4;
	Sat, 25 Feb 2017 10:43:05 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.88)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1chYsb-00047J-5s; Sat, 25 Feb 2017 10:43:05 +0100
Date: Sat, 25 Feb 2017 10:43:05 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Varsha Rao <rvarsha016@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace BUG_ON()
 with WARN_ON().
Message-ID: <20170225094305.7cgcmklqqae66nvd@var.youpi.perso.aquilenet.fr>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
 <alpine.DEB.2.20.1702241814330.3089@hadrien>
 <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
 <alpine.DEB.2.20.1702251036580.2088@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.20.1702251036580.2088@hadrien>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Julia Lawall, on sam. 25 f�vr. 2017 10:39:36 +0100, wrote:
> The double negation does not look like a good idea.  Normally kernel code
> looks like this:
> 
> if (detect_failure)
>    handle_failure;
>    return;
> success_code

Indeed, you could instead just do

if (WARN_ON(!group))
	return -INVAL;

and leave the rest intact.

Samuel

