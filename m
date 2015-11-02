X-GM-THRID: 6210812523994677248
X-Received: by 10.28.55.209 with SMTP id e200mr2995535wma.1.1446479774583;
        Mon, 02 Nov 2015 07:56:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.76 with SMTP id r73ls487671lfd.6.gmail; Mon, 02 Nov
 2015 07:56:13 -0800 (PST)
X-Received: by 10.112.130.199 with SMTP id og7mr4164243lbb.0.1446479773602;
        Mon, 02 Nov 2015 07:56:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m135si522225wmb.0.2015.11.02.07.56.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 07:56:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,234,1444687200"; 
   d="scan'208";a="185656521"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Nov 2015 16:56:13 +0100
Date: Mon, 2 Nov 2015 16:56:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: applications
Message-ID: <alpine.DEB.2.10.1511021647560.2403@hadrien>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Hello,

The application system will close in a few hours (7pm UTC).  If you have
started an application before that time, you can update it afterwards, but
please do so very shortly after the deadline, as we will be reading the
applications very soon.

Also, after 7pm UTC you should not send patches to this mailing list any
more.  If you would like to continue contributing to the Linux kernel, you
can use the get_maintainer.pl script in the Linux kernel scripts directory
to find out who to send them to.  You may find the following options
useful to avoid sending patches to too many people:

 --nokeywords --nogit --nogit-fallback --norolestats

Another options is to work on the Y2038 problem, which has a dedicated
mailing list, or to work on the eudyptula challenge.

Please feel free to contact me if you have any questions, and thank you
for all of the work done during the application period.

julia


