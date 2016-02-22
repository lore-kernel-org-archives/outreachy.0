X-GM-THRID: 6254007511915954176
X-Received: by 10.28.48.88 with SMTP id w85mr1060569wmw.5.1456141137528;
        Mon, 22 Feb 2016 03:38:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.69 with SMTP id g66ls273856lfi.47.gmail; Mon, 22 Feb
 2016 03:38:57 -0800 (PST)
X-Received: by 10.112.173.6 with SMTP id bg6mr655768lbc.0.1456141137000;
        Mon, 22 Feb 2016 03:38:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si891457wmw.3.2016.02.22.03.38.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 03:38:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="165554146"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 12:38:55 +0100
Date: Mon, 22 Feb 2016 06:38:53 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: lnet: Use
 list_for_each_entry
In-Reply-To: <alpine.DEB.2.10.1602220534590.2685@hadrien>
Message-ID: <alpine.DEB.2.10.1602220637570.2655@hadrien>
References: <20160222070345.GA10232@Karyakshetra> <alpine.DEB.2.10.1602220534590.2685@hadrien>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> > @@
> > expression E1;
> > identifier I1, I2;
> > type T;
> > iterator name list_for_each_entry_safe;
> > @@
> > T *I1;
> > +  T *tmp;
> > ...
> > - while (list_empty(&E1) == 0)
> > + list_for_each_entry_safe (I1, tmp, &E1, I2)
> > {
> > 	...when != T *I1;
> > 	-	I1 = list_entry(E1.next, T, I2);

Could you try this rule on the entire kernel?  If there are many
occurrences, then maybe it would be a good idea to include this rule with
the other semantic patches in the kernel.

julia

