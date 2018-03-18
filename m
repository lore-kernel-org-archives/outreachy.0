X-GM-THRID: 6534171640869158912
X-Received: by 10.46.108.15 with SMTP id h15mr133733ljc.19.1521410400750;
        Sun, 18 Mar 2018 15:00:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.144.214 with SMTP id o22ls910574ljg.13.gmail; Sun, 18 Mar
 2018 14:59:59 -0700 (PDT)
X-Google-Smtp-Source: AG47ELv1TyVRE8Qexg9oBlzk+lFln5tqfyiPd7IjlO79BjS6Pyw3rltY6EJ4OtGdOiY+sNS7tJbr
X-Received: by 10.46.25.6 with SMTP id p6mr165597lje.11.1521410399184;
        Sun, 18 Mar 2018 14:59:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521410399; cv=none;
        d=google.com; s=arc-20160816;
        b=x9THEXlPetg6DVhPWvGrK1wRXcWyQfZARsR5sD+vIOYpO5QMv6N9KW7fRmfYgqYqkK
         M4ZWk5QhV3AavZaquL0Nl8RXAkBEtjRSOvJUsMpPIivKMl+Gr3o3xJ4H/O6WHb7YqP73
         kGINJpbmzOon1y5R8Ammp4wxQvigFbTd6zc3R5MG2MHfmw3OzpSgIeUrfpt2gYc7ek6y
         4FjiomqdQ1mTz0pdLjhDDn4MwCYo8JPUCLJkEP3vaOQi/iSReWe9gTKsuiE4gwwsJL8w
         Ytoby4s75UTeA9W1pFS81JYvh83qF4YoEfeT6zylrYfmXbJLWtlnZfuvkDjar3t+UnUI
         vdew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=59BP5dXeg426iGNhYjbeUhztjHr93kcodGUcYDZ923k=;
        b=UCekShqQNLb6HJsBW1/OaZX9J6/rJC/Xw/QCVltyGpC3OQ+s63YBXed5T7+SaYEPbK
         JbCt+snfDhakmGQBUqpR32lccqnleY9FCRgi1sw6IP8447bsgwgXdtUkffpYYc+nDIGH
         mYo13ez09KgcYGVyHisGgywE0MNpEIWZklnJ7wX7l6hRvPsUqS73psTcyvKfyRvLPCOI
         IZOO6nn+gTsO8Kn9DCWL8mtD9TUNltHGBUBgTAIh0/FAqF7VNoBKgmJ2k2tTbgvQOnHB
         ZATeK1S/TjtLZuTSY7TZFvFj23+6W8VphEPxhOz44ng7XSRw6Due36dCXYpMTHYN1vVE
         mang==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v6si450766ljc.0.2018.03.18.14.59.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Mar 2018 14:59:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,327,1517871600"; 
   d="scan'208";a="318702321"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2018 22:59:58 +0100
Date: Sun, 18 Mar 2018 22:59:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: application
Message-ID: <alpine.DEB.2.20.1803182259060.2420@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Please note that simpy recording your contributions is not enough ot have
made an application.  There is an application that has to be filled out
explicitly.

julia

