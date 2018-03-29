X-GM-THRID: 6538298423614898176
X-Received: by 2002:a19:154d:: with SMTP id l74-v6mr3286292lfi.0.1522316230174;
        Thu, 29 Mar 2018 02:37:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7d8a:: with SMTP id y132-v6ls708046lfc.6.gmail; Thu, 29
 Mar 2018 02:37:08 -0700 (PDT)
X-Google-Smtp-Source: AG47ELstWXjKpEpkWgsiN0CURGFtozVADCtgpJA52BHeCxD+qa9sm5Wa0O6+8aaaGzBMG/fbcb5z
X-Received: by 2002:a19:d8d0:: with SMTP id r77-v6mr3355930lfi.44.1522316228716;
        Thu, 29 Mar 2018 02:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522316228; cv=none;
        d=google.com; s=arc-20160816;
        b=glZ/KREC5zUiZS0J5Fodh2KgGbtyilV2MVIqIyLVUNL0IGUmzN49Gg+RFEJIrcMX/k
         OVuX1LZ8NatJqQCGguXImRmcdrcb8sPdyvN381cf39fWTRhwdTHJTzzjUPOpEfJt2X/m
         IpiUBXwMc4Bb8YwNT/AvgBVZEV6E6qJkG3CMAt/P0QYyA/STtKsR+Fbs89sdjaATwshh
         w9VvK1e2xi+LTLwqGoKhRHlkGQrefxRHv4Rdf82kBCjRKguB1r4Az14Tq4ZW+xUNVhtg
         ARDwWhfrG42xpfwaZ3LHwN8rOrXpSkWTnoTgULrUCIGCbzT2+NJheipjmHTTtGcktftI
         riYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=Vt5zIo2jDi+bsQNC/KVZdM5K9g0P9SZdt05/Tl9vVCQ=;
        b=bVFSYKqMHB9ha3AEBjOpA3/S+3Yzq4fReLxvoc34JlAI3Y4h6Ob5/XgcvU5uQWtnrf
         CRxhR6P8MCF4ajwnSNzeZKTrViqxjT3rbLYjESLiw2VZgVaWfHzi9AUgbkdDv2cwGRlf
         GrbZg1eOhM9hu4qC7MV942m4srAzxqtD4MOsh4U5bxYUjUUBlvBRDHKM9lbjlfpPGzTG
         AsE2CsFFUno/no1eBeRHchK0fZt3ccHPPSviJOf6yOu4GOLlvA4GVuFqfZX8Z5FPuWjL
         CApvnBwubPXNtrUNnn9qBW5ZnwXYNM8qMxNA/Tt9Y1eDmb6FiF0KorJkmUYbTDsVKcR+
         2bOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j185-v6si176181lfe.3.2018.03.29.02.37.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Mar 2018 02:37:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,376,1517871600"; 
   d="scan'208";a="260252065"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2018 11:37:07 +0200
Date: Thu, 29 Mar 2018 11:37:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: applications
Message-ID: <alpine.DEB.2.20.1803291136170.3542@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Please remember that applicatyions are due today at 4pm UTC.

After that time, you can continue to add contributions, but only in cases
where you have made an application.

julia

