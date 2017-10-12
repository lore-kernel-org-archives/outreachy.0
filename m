X-GM-THRID: 6475953327371714560
X-Received: by 10.223.163.215 with SMTP id m23mr156823wrb.25.1507800381302;
        Thu, 12 Oct 2017 02:26:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.10 with SMTP id c10ls743688wmh.10.canary-gmail; Thu, 12
 Oct 2017 02:26:20 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCPFIQ0LYmLgBlqrKdzlthpaiujk9NXzBGGhVXe8Q6yFgnXfJDZiDaRJz3Yk/mk1RzkAkbv
X-Received: by 10.223.151.213 with SMTP id t21mr167474wrb.12.1507800380514;
        Thu, 12 Oct 2017 02:26:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507800380; cv=none;
        d=google.com; s=arc-20160816;
        b=Dss+YBVNdLQAnWX7WfZZmv9xpC+TehxK+VLac9FmcCCM8i8Me5/zRVCDY0p/NjnR0l
         HTYL5GMBJLoAW2vv4pOS0wNB0/ootZCvdvkjqVljjrggjZsB8Qjh9ZsDZXEMJ0juHhmG
         AuWe2CcljrHWV6LKCVTldL9SoNa2Bnl2IKf1Pf5aevavi6UndIapuXDcm+HoYOEfJtp7
         lsb0YTWvoAf4ysZRuHoDF8n0J18IVPmrV3Ib5bu2ha3mkyq5mFVLNuJFsYdcKI8kt8aP
         lqys+jqP3lxS9diKeGRDaAuajzDDmb2Rs/ZWmMbc6clDh/4OfzwG0B/TO8fR+wUf0Q4w
         fmsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=EqGZH85nTyrJ6ilQdwNkWPtWCA/Ae3WhJpquWLXECt8=;
        b=oRA5jpk8DnjTiNArDIf+IE8DxQ2IfAHyLDgDwAOWrszegAwVjYdyMCrhI7YB9H25s5
         MpDkUnB7bEqQEbnb00tJ34nGGWEtWLHHYZMvdIZNqEvnEyw+XB92YsXITCcVtMrqtlFA
         SoVZebTWHvR0Tg8/Zbw+l3NBmKd+nQECppLgnNMdd5h7Cd230VTnSHD4E/0B2ITOQotL
         bLFFNs8yiFzxKxSsyiW6HC2m+U+qJ5J2ZK05Dh5OzPEKAO5flulBz2/s/y3Zb01oYnEz
         V/nlIigPv/aLzTgNUQZ3qIdtXnHV3zmyAJ0Zjq98AzJswWK6KlxVhWEhCi+6VF5eABx0
         pgxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si1870427wmb.3.2017.10.12.02.26.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:26:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,365,1503352800"; 
   d="scan'208";a="240730880"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2017 11:26:17 +0200
Date: Thu, 12 Oct 2017 11:26:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: applications
Message-ID: <alpine.DEB.2.20.1710121047050.3239@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

If you have not yet done so, please feel free to work on your
applications:

https://outreachy.gnome.org/

Note that it is not necessary to create a literary masterpiece.  We are
really looking at the quality of your contributions, more than the quality
of the application.  But the application does provide some background
information that can be taken into account.

julia

