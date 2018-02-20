X-GM-THRID: 6524543773882449920
X-Received: by 10.28.247.5 with SMTP id v5mr2439935wmh.12.1519113726898;
        Tue, 20 Feb 2018 00:02:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.187.140 with SMTP id q12ls2807406wrg.9.gmail; Tue, 20 Feb
 2018 00:02:05 -0800 (PST)
X-Google-Smtp-Source: AH8x2277bo6mMy4XEy+1TWWHJKl7jXPaaJH3e6qXqmrsUIbs5RSHY4QoIIogj/U1uSTBUDQmvED/
X-Received: by 10.223.142.69 with SMTP id n63mr981594wrb.28.1519113725658;
        Tue, 20 Feb 2018 00:02:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519113725; cv=none;
        d=google.com; s=arc-20160816;
        b=fZTQY6/1GJdPcipzs/cC05v63UUMiZEPOWUkTl9DGyu4OIdYhGCBeh3/XDjItuHbNe
         Jogb1WhvZ2rLk6lvRhFaB2OMJv8ZkDNkNcs/L+L14Pqq44ZPNptEg1V47VuDNKFKPbGP
         rc/C12kch+c+8u0sOsb2bC5KVvcjea0WAE22seC/+vJ+wfSsHUwhGFrh4q1qvi6d0C/9
         E+MC/+dXKAY6vQbpaKD1suhH0RZoxwJwKZ+eVB9SJe7ex1ZH3u/Z/CisNYwuBkud0xAx
         HernUqPK3SK3N4rkjhl0qb/OJdCdIM61NRxdlWVcWFZ+vf5kiMw42jUZadBA5EMIOMpo
         2vDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=iVRaSdNmVAqU78qYxZrHrJjf5kwfi91Y/gOlc3Zbh+0=;
        b=XT7b0PYs1Lh8RE8GxFDW1lvm3iXb5YcSOYnWcT61I8Q5YmAhUFGgTuIMGcsyEi1gzY
         ePFg8uBvYuKRbuCP0a56yWq1MX3SwqI9HzrR5/SjPULp9Nh1wKo1ZdZ3ayqFRMnUH5GM
         pJ4Bm6aC2hD4qIPtD8nSYOEy9WYaqBIYb24ZAu9yZeZRljTL+xRdA3PWqC8rvzSfJtF/
         rZhgRBXAnyiIY7n8cTb6GHuDd31FnF+yKyYMUMqFhiREf0Xz4L9DnnFssCYWIjCC3Yum
         TkJVaW+3l6eEeEtqSxQnrO/g2q6De4vwQXOOLPr9RSB5dkxn79XD6PwIFVwF0sEurkVn
         n1fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i44si231548wri.1.2018.02.20.00.02.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 00:02:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,538,1511823600"; 
   d="scan'208";a="314409763"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2018 09:02:05 +0100
Date: Tue, 20 Feb 2018 09:02:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: Linux kernel application process
Message-ID: <alpine.DEB.2.20.1802200900100.2868@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

For those who are lurking and wondering where to start to make an
application, please start with the tutorial, as indicated in the How do I
make a contribution? section of the Linux kernel community page:

https://www.outreachy.org/2018-may-august/communities/linux-kernel/

There is no need to contact any mentor until you have completed the
tutorial, ie have 10 cleanup patches and 2 patch series accepted.

thanks,
julia

