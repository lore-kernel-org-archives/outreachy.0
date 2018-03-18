X-GM-THRID: 6534171640869158912
X-Received: by 2002:a19:d5d5:: with SMTP id m204-v6mr485556lfg.6.1521355388642;
        Sat, 17 Mar 2018 23:43:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d24d:: with SMTP id j74-v6ls1175965lfg.10.gmail; Sat, 17
 Mar 2018 23:43:06 -0700 (PDT)
X-Google-Smtp-Source: AG47ELutu8gxgHOV4Giaho921Esmdgh5In+DTwr2BQ8pjlz1ePqZLV1g6UDoX4xiWpzVTnLBwEw+
X-Received: by 2002:a19:1450:: with SMTP id k77-v6mr471518lfi.27.1521355386776;
        Sat, 17 Mar 2018 23:43:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521355386; cv=none;
        d=google.com; s=arc-20160816;
        b=FdlSUNP/6Hb1pD69qcp50wp/8NxvT4/NnU+HtyvIEyAOnHjr1SBNup6Ppb2eYNyxi+
         TbOGim1zcmPv7v6uxaYpiaWw2X1GpP44831UsAWNX0O8f0GoD4n6fdvzdXDyXZnAiVyw
         GONyHgGccUrod0lEjaWmFiisWCYHJCxMxVYfA/KjaEB3SEqtrsCI3LKX5Ad4xX7mRHz/
         4yu1ULQutjjV5+YUFQ/UdDytVPUCEGjXRUr8v+XYsGdxbpXmTDP93Fo3sNdsGQgw5jDG
         ItwPoiIE94hafvxxARLlDcskPHJMMkKJMHPtuFlHD9mzISCSMGlY69tM8ctbuKY8RG7r
         8TSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=YhH0maQ0S/dWc375h+80VTLQlf0TFjlgvr73rek6BYE=;
        b=oc7WoPMhqSZSPchKbJH6YIAWnUtU7oez4ATV9GlxwlHJmei7+AUp+PJ1QvSs13xaJs
         2E+/cFw4sfHwqv3vxu5CB429oE6zd6phxQLaDJLgXIkYCQUBKbiL4o0ZwG6alK4Zgppz
         oMI0DRGyAAwxSz0zUbwJGCOL6xXKgdfaOYQWZRfOV406S0Ggzi+Rneq/sxWDwzjKOt1N
         Boi5sTknW6bluj0ieEOYEoYCRiL1Rud2x+/9XJ+izRsVn2Nz0m+FCKupgznFjghiqcqX
         3eF5XvHWfR1YNbehfiH0qvdJu0tqzoABYGnZYvMHRKThppTX+KX8btqUceydgGV8kfhz
         Ceew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z79-v6si435518lfd.1.2018.03.17.23.43.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Mar 2018 23:43:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,324,1517871600"; 
   d="scan'208";a="318648088"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2018 07:43:05 +0100
Date: Sun, 18 Mar 2018 07:43:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: application
Message-ID: <alpine.DEB.2.20.1803180739260.3299@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

Currently three of the kernel projects have a deadline of March 22 and the
Userfaultd project has a deadline of March 29.  In either case, the
deadline is 4pm UTC.  You can find out what time that is in your area
using the following link:

https://www.google.com/search?q=4pm+UTC+to

You make a separate application for each project you are interested in.
If you are interested in multiple projects, please clearly indicate your
preference between them.

julia

