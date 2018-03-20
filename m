X-GM-THRID: 6534171640869158912
X-Received: by 10.223.169.234 with SMTP id b97mr1597626wrd.8.1521582357630;
        Tue, 20 Mar 2018 14:45:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.23.195 with SMTP id 186ls534923wmx.5.canary-gmail; Tue, 20
 Mar 2018 14:45:56 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt1dAVMChPaNDt5MpLjQXwTiBk6hWBV/61mzw+NObWW8bcPUL7OSl7kZrxo9JheT87VdN+T
X-Received: by 10.28.167.135 with SMTP id q129mr145640wme.28.1521582356384;
        Tue, 20 Mar 2018 14:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521582356; cv=none;
        d=google.com; s=arc-20160816;
        b=G1CkEx7wy8PmFZ68BwYt+WI3ujRYsLs1qDT4k5c++VmvH9tQB8JfBX1LHToPjtam1Y
         jm5cAwawRciAmiZhKH+kI9p+SXWfYSoErTpXxBbZA1fys/QTAB7w/AXS3/rflkXkT+Sx
         mu2CKO6gKGQsPabLFs99KU4x+w5Qb+nTHROT7d8/sExrcj1jWnt7fu2q8xXA/EbtB+My
         qkipyLlU16phSKulyFt8IVFvrowppOM1PDL/nDJpOQHimKOa+Lzusu3LOH69QMdEUWe9
         GHTIuFOND1EYWaKFfioNGjRj2NZevFxuJneaW/qeOoCTcszf470Y4WV9FJhWp+v63jsm
         Z69g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=8EeaV140Px8MqIMxbHYBDep6/84O5zEallwaN1qSSyo=;
        b=PpmDf36j23GDC/BPQdEZMg+Or7Pzfc65tHSe9Z/eILw+LfYpKJDz3RJm6O+54YfymJ
         +8fYQqVzioOJKWlMs85929BR42XkcntFWqgQDsUpWuBzd48+m1Ii/grsbpZ1i8kNX4NN
         azCIrcsnpbTJRhejiGRc5M/Rtw/91YqbXZ6PHO+kUyyVaTF54wU6I8wZ8grkSquz5JkD
         EjCNoC5UaeQcTL15o6MF05xjgpzkI59zjX8uKYPiPHP9pNgiNGq0gPMDMvrcMqO/kx8K
         EVk8tdtt+8aQnlgGoqPhGNmrmZwnPpH4t/l8u4j+nci9VZkWzlQ7lO/m77WQMaxvTeAP
         YHTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d12si50317wre.4.2018.03.20.14.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 14:45:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,337,1517871600"; 
   d="scan'208";a="319115715"
Received: from unknown (HELO [10.6.152.236]) ([206.71.246.138])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2018 22:45:55 +0100
Date: Tue, 20 Mar 2018 17:45:52 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: application
Message-ID: <alpine.DEB.2.20.1803201744400.2216@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

You can find some advice on your application here:

https://kernelnewbies.org/OutreachyApply

The most important is that if you are aplying for multiple kernel
projects, we would like ot know about your preference.  Also, please give
a timeline for at least your first choice.

julia

