X-GM-THRID: 6329440536904073216
X-Received: by 10.46.0.14 with SMTP id 14mr2623626lja.8.1473687714348;
        Mon, 12 Sep 2016 06:41:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.230.214 with SMTP id e83ls1369940wmi.0.gmail; Mon, 12 Sep
 2016 06:41:53 -0700 (PDT)
X-Received: by 10.28.43.129 with SMTP id r123mr1727917wmr.6.1473687713161;
        Mon, 12 Sep 2016 06:41:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1015558wmd.1.2016.09.12.06.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 06:41:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,322,1470693600"; 
   d="scan'208";a="236128879"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 15:41:52 +0200
Date: Mon, 12 Sep 2016 15:41:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: get_maintainer
Message-ID: <alpine.DEB.2.10.1609121540390.29099@hadrien>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Hello,

I have updated the command line for get_maintainer to avoid returning
mailing lists.  Now it should return just the name(s) of the
maintainer(s).  See

https://kernelnewbies.org/FirstKernelPatch#submit_a_patch

julia

