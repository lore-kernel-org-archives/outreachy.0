X-GM-THRID: 1396280655872
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,17dd2eb2787598c1,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.171.37 with SMTP id ar5mr1448462lbc.16.1424452550204;
        Fri, 20 Feb 2015 09:15:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.98 with SMTP id l2ls299098laf.73.gmail; Fri, 20 Feb
 2015 09:15:49 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr1442444laa.2.1424452549776;
        Fri, 20 Feb 2015 09:15:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si148736wic.1.2015.02.20.09.15.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 09:15:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,615,1418079600"; 
   d="scan'208";a="122721803"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 18:15:49 +0100
Date: Fri, 20 Feb 2015 18:15:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: drivers to avoid
Message-ID: <alpine.DEB.2.10.1502201813150.2375@hadrien>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

First, thanks to all the applicants for the great patches you have been
sending!

There are some directories in drivers/staging that it would be best to
avoid, because these contain drivers that are on their way out of the
kernel rather than on their way in.  The current list is:

i2o
line6
media/parport
media/tlg2300
media/vino

This list is in the wiki, on the http://kernelnewbies.org/Outreachyfirstpatch
page in the section "Find a driver to clean up".

julia

