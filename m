X-GM-THRID: 6470437626319994880
X-Received: by 10.28.184.81 with SMTP id i78mr230736wmf.2.1506516157411;
        Wed, 27 Sep 2017 05:42:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.38.134 with SMTP id m128ls391286wmm.4.gmail; Wed, 27 Sep
 2017 05:42:36 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDPijh1vUMSh1bAkpBW9MNjqQi2EBrjVBOQkoJ2kBG2aH+mifOTFdSzEx4CTUhDeutPUB4t
X-Received: by 10.28.7.196 with SMTP id 187mr190856wmh.7.1506516156479;
        Wed, 27 Sep 2017 05:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506516156; cv=none;
        d=google.com; s=arc-20160816;
        b=sX0OLNKkzQ3aB76t7Mnuvc+JIFxpbDjXTgvUcxx0Lo3+/bU508qcia0cRgyIvrp6Ob
         RAWPKfB1jxWnw5N2SJHNfhIxq0B5Jh+jVvqAjq82Z/YAF1eSeEP7BiOftUo1femBJQiQ
         Q+B4ANfUI6k2GS5I4p8lYjzM6cai7ZWCW5BPWiVTB73PDdzEOSFkFTVFudY+735B0a4c
         RtEYUBuOyjnJ4CYZzqbnUDHYlXBqwQz+P7MIAOIiBb6wUr9iXv8oSGhHf20xQafTsR0U
         ig6r6DGoH/P6UFxnHeM5AIoVWYFpQsyB1BDEF9Fu41t9ozQcrv1uHCyg5eI4rgv5pCHw
         5yBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=UFZCWI1rx+56XO6202wOKExRYERPoK4lk0JOvvppP4A=;
        b=theqRRlkeFK9MQYk9kEtUucj1RkpX8DdTZrGDi5Gy05uZ79AlacUQitbo1tvY1F2HV
         jrxcEtgp35+eGmxYePN3h1KME9/ldrVm+cBJ43dJqts5w/2wPELMzkEVhlxxUb4Nhmb0
         8yEuty8uPkmaId80RVACXp8NaVweLVeR/f6xCshrwZK/fhloSgpWrAVnjIcdpjtlq7gW
         pv/i9iiO8GyeNm/eqaB2T/ohxlopsJ/HsWvhpKN70fnEABZ/uE6MbV4sL4UnoVL0p1Gl
         qRpagUdFWqD5BhsYjPaCprec1oVOKGdwiuN2/fTtCocoAuJvW7hDxWdpyI4XN/D+QYx/
         zfNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si443876wmg.4.2017.09.27.05.42.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 05:42:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,445,1500933600"; 
   d="scan'208";a="292961033"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Sep 2017 14:42:35 +0200
Date: Wed, 27 Sep 2017 14:42:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: kernelnewbies wiki
Message-ID: <alpine.DEB.2.20.1709271441260.3186@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

At the moment, it seems that no one has edit privileges.  I don't, anyway,
an several people have contacted me about it.  Perhaps it will start
working again shortly...

julia

