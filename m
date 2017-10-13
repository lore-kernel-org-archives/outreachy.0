X-GM-THRID: 6476280701205348352
X-Received: by 10.25.170.139 with SMTP id t133mr10008lfe.7.1507876604910;
        Thu, 12 Oct 2017 23:36:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.85.202 with SMTP id g71ls904685lje.5.gmail; Thu, 12 Oct
 2017 23:36:42 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QKbFRfIz/5a3e/4RjJgvrqnz/IvQhdWifbFE1wMNq75/YXmntqkV0e63G2z5Mx6ZTVpZUu
X-Received: by 10.46.4.26 with SMTP id 26mr11944lje.22.1507876602228;
        Thu, 12 Oct 2017 23:36:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507876602; cv=none;
        d=google.com; s=arc-20160816;
        b=nY+H8oJfGNEtwfCD0aZ+WonirA5gYX+zrJKYsC7wy6FH4r01Aa+iBS1MEITfu9CxGN
         cp6c4/ndRST/CQPulB+L0DrCeVEWVOp8FPQeP73Ce3jG/Oo9jq916TjKnaCf9RycPfpz
         fMWmQ/DE1K1c9XdGaCMr5C5tfJnAhhtGStqAUEM7c5peBhE7Hk13lFH2NBDuD5/b3c64
         wOgCmZtjiKJB/xC2HdaW80YEIZAZUeg13m6xzjR2b5QY0MsaJgpZ4Dtj3CKzl8s8FLsv
         3gQV6Gzr9bf8jt3mTZOkEAl7M4akvu3/5I5uXtqPF4JZD7JBpv26LeoAIRuY9mi9xM5F
         EWBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=4Vw1iRKX2sVRBFa3UIGSm2vQ2JjIXq6jDuUVcSsi+4g=;
        b=vpULPIDkE+GQ1sORnbNxtLAY7KBpvEOWyDLTuQX+REXjWZvC+o/AiLmBlM3e0XvQw+
         bYeOaLEleMmi6HUO9+HxXp7bF933SijHloKoPhDWDtsmBnZ1Tv4lsxhXOAvMIS5R96Yz
         G8aoNyvEvLw/RCsDWbw9G+UjcKkehqQ8WXC/0l2sz5e9noqCmfQMuMaY/DO84vREySRx
         CcXRTqLHnFCNn4wAn1Rflft/amAufZvAPb0I4XC5ojXWhelI17aGDsVyXb98fzfAaUoG
         xCI6u5/qQxAPQszeXFxo9HPgdyAKAco5Mp/7BavoBX046l6O5IY0wxT3tVdHm9jmdqM+
         udJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r73si9024lfr.4.2017.10.12.23.36.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 23:36:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,369,1503352800"; 
   d="scan'208";a="296009978"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2017 08:36:41 +0200
Date: Fri, 13 Oct 2017 08:36:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: useless casts
Message-ID: <alpine.DEB.2.20.1710130823050.3147@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

In looking through some make coccicheck results, I see a bunch of useless
casts in the following file, if someone wants to clean them up :)

drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c

julia

