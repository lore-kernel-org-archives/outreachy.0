X-GM-THRID: 6265914371751280640
X-Received: by 10.112.235.42 with SMTP id uj10mr1724657lbc.22.1458913074190;
        Fri, 25 Mar 2016 06:37:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.18.133 with SMTP id 127ls141619wms.18.gmail; Fri, 25 Mar
 2016 06:37:53 -0700 (PDT)
X-Received: by 10.28.47.11 with SMTP id v11mr4174749wmv.0.1458913073558;
        Fri, 25 Mar 2016 06:37:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si125174wml.0.2016.03.25.06.37.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 06:37:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,391,1454972400"; 
   d="scan'208";a="170821340"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Mar 2016 14:37:53 +0100
Date: Fri, 25 Mar 2016 14:37:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Svetlana Orlik <sveta.orlik.code@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Troubles doing Tutorial
In-Reply-To: <56F4FFE9.6030307@gmail.com>
Message-ID: <alpine.DEB.2.10.1603251437070.2507@hadrien>
References: <56F4FFE9.6030307@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 25 Mar 2016, Svetlana Orlik wrote:

> Hello
>
> While trail is hot, I'd like to report a couple of issues I faced when doing tutorial.
>
> 1. I found no email address of the mailing list, where to send patches to.  There was only the link to google groups. So, first I used web interface to post a patch, and it was wrong.  Julia then mailed the address to me.  Maybe the address should be mentioned in the tutorial explicitly?  (And OK, maybe  I'm lame in mailing lists, but the tutorial is for newbies after all:)

Thanks for the report.  I added the email address.

> 2. Submitting a patch using mutt went OK, but when I tried `git send-email` - I got error:
> sendmail: fatal: open /etc/postfix/main.cf: No such file or directory
> Died at /usr/lib/git-core/git-send-email line 1292, <FIN> line 3.

Do you know what is the solution for this?

julia

