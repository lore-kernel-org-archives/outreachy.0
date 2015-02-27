X-GM-THRID: 4672151617536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,af7486cf6e3ccc9f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.72.44 with SMTP id a12mr688712wiv.0.1425061473380;
        Fri, 27 Feb 2015 10:24:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.98 with SMTP id q2ls178393wia.7.canary; Fri, 27 Feb 2015
 10:24:33 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr688709wiv.0.1425061473092;
        Fri, 27 Feb 2015 10:24:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si172366wid.1.2015.02.27.10.24.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 10:24:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,661,1418079600"; 
   d="scan'208";a="123714942"
Received: from unknown (HELO hadrien.local) ([88.128.80.16])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 19:24:32 +0100
Date: Fri, 27 Feb 2015 19:24:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8188eu: Compress two
 statements into one.
In-Reply-To: <ccb81a3b3ee7eed0cb5188832159c3344f78cfa3.1425054707.git.navyasri.tech@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271924030.3793@hadrien>
References: <cover.1425054707.git.navyasri.tech@gmail.com> <ccb81a3b3ee7eed0cb5188832159c3344f78cfa3.1425054707.git.navyasri.tech@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> -	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
> -	return ret;
> +	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);

Consider fixing the 80 character problem at the same time.

julia

