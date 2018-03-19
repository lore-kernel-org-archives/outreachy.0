X-GM-THRID: 6534701245303619584
X-Received: by 10.28.170.200 with SMTP id t191mr968367wme.10.1521478697284;
        Mon, 19 Mar 2018 09:58:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.19.81 with SMTP id 78ls709290wmt.4.canary-gmail; Mon, 19
 Mar 2018 09:58:16 -0700 (PDT)
X-Google-Smtp-Source: AG47ELs0bNrY25DHNgnjNm9YyEkok3bRICmWcKgUHLuhuEAuZe67SFuA46h8IhOF0eP5wFba2sCu
X-Received: by 10.28.9.143 with SMTP id 137mr468196wmj.27.1521478696250;
        Mon, 19 Mar 2018 09:58:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521478696; cv=none;
        d=google.com; s=arc-20160816;
        b=oBN83TB27Sf5PNnRQfWzOf3iixdp13cMdVe7aEOEzMPKuS95W0XlhIlSEpXNCm/a/q
         KzBAt7FqoHeYLHrSykraAl/ssUiqohgh1TWCsfUekbfPdKFPOX3q3I2/6SDLOfzaPQZ5
         tEzXyCP+Hhv4iZo/Y9/kawZvk4qI0akmoGkNSgrknIU8XyxOdEcCMwdQYWe6WGOwliBE
         ofHBJFhjuy5TXhxtGZRG+5iFWZgrT2A/PNIowfi46xLcXuHPrnPdq8RUKPG0pgcCODef
         aLgI/2NQEnd/hue/pcl+pPOcaD/QrEUr/C+vzT85DijUwRovU58FVzGx++FyhLtQckVA
         eB6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=FZglC/5iRHQty9wXIvQwcSmkvQiGXgSIWmUwi6l+LJw=;
        b=PZ8B3hwLAJ5u3Wz5jJG2zjpLQfTZm6oW+qdutTtTym2LLqk/a9np/y96qrHrNnxSdi
         7DlqeTt3XnfgJZkmjrQBwMxm1Dc9VFrGZ+9nPlibC8dIDczJzQV9DfnfQ1/Ukep9sVxD
         M8eP/pOdk8vV6QRdzRcbZBxFD9sr/vYvXm/tf3X9a41UVrque67KuOEnUnZyUmtHtrz3
         DFD2cdBGLEb/4JwDLANuAbuYB36Y0j7bZmVj3GiY9z/dLlgDF7mg2CB882JZjxZehX9c
         yKLBXJavUDduUQdXrAI3nZqcSzsPSuifeIrtvrJwDlNIbFFrl/0WHk9Nv2NpsZwuv2wy
         97zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a72si26311wme.1.2018.03.19.09.58.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 09:58:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,331,1517871600"; 
   d="scan'208";a="258967516"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2018 17:58:15 +0100
Date: Mon, 19 Mar 2018 17:58:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: about applications
Message-ID: <alpine.DEB.2.20.1803191756100.12990@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

You cannot update your application after the deadline of the project you
are applying for.  You can, however, continue to add contributions.

julia

