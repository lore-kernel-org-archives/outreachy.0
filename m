X-GM-THRID: 6924605769472016384
X-Received: by 2002:a17:906:9381:: with SMTP id l1mr22665371ejx.433.1612260418365;
        Tue, 02 Feb 2021 02:06:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:adb:: with SMTP id z27ls3828987ejf.1.gmail; Tue, 02
 Feb 2021 02:06:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJymbHynP1ClF+satEoHOrhbbc+JLs9cuY9QopuWQJtgVpdetGJva7F68AvzqS8roY2QdVr7
X-Received: by 2002:a17:906:828a:: with SMTP id h10mr21892401ejx.274.1612260416682;
        Tue, 02 Feb 2021 02:06:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612260416; cv=none;
        d=google.com; s=arc-20160816;
        b=XdMmnEijj7UwWgi9q0TH8coMFVxvlbINn+3wrj9ev+UzAjcPTK4FoT/KWf9o105bns
         bh22LVKEhREQ4TMUNU3Qx3bD4tfCdACjEvdcPoTOC/yPdlJZ9cSSq1wx51QL9FaX8hYi
         /b5fTGBUV6ad7nqEXnf9HsJ0Exi0UN4l51GGZyl2cXPVdR1CTYk3s9o+LsLw75AilzLQ
         9/NCHXvLHy8L3HYWfAqRiKRp1923XH/Z43/PJflIgJe+LCE9jyl3r+Ux7rA5jnHVmHqL
         3jkUDdhG9mVobXHf9z40px6f8BlQ5ehCu0ca1q/c2Hesj30CP/xuA9yemZO3dWAZQSuz
         0AGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date;
        bh=KYJYq97Iix6YjVGuFlXS6dJlnlR3RBJoQXyZCVrImyg=;
        b=FEs7HsPn8EfHwtbyfmeH32sU3AzUpSfucdfthkKuDy8HMFipQH9Pv3Q6eC+Bjj1JhP
         1U+pgQ6gnZNSdnYTj+56eZ1xfsWLRzCnykwf/Xiw7iJBuTYBBixK6OPrPLiWI5ouGaFD
         rBuXC9d37pj9vWBcSu1X81dH4Dci4lNCRjdno2T26jb2GOZwV0yGW8CrFOspvlBOyHcJ
         iY3YUsOIgzvMiTOsemt88elnr61mULMhK8VV06Evzjhm4Y6dQJ0pAJBJnDlljcuSi6XQ
         f3Nl4xQt+IOe3e1GkWWZJF32V5TP+t+BCRU1y9M8/VTJazFVkPcSVy4YRAngK12BSSBy
         q2pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id dm8si857433edb.5.2021.02.02.02.06.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 02:06:56 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.79,394,1602540000"; 
   d="scan'208";a="490359662"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 11:06:55 +0100
Date: Tue, 2 Feb 2021 11:06:55 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: Coccinelle tutorial
Message-ID: <alpine.DEB.2.22.394.2102021102060.2789@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

For those who want to looks at some Linux kernel code before outreachy
starts, I will be giving a talk about Coccinelle
(https://coccinelle.gitlabpages.inria.fr/website/) today as part of the
LF Live: Mentorship Series
(https://events.linuxfoundation.org/mentorship-session-coccinelle/).

The talk will be today at 4:30 CET (Paris time).  It will be available on
youtube afterwards.  An advantage of the talk today, though will be that
you can try out Coccinelle during the talk (if the VM works :).

There are other talks that give a good overview of how kernel development
work, for example from Greg Kroah Hartman last year or Dan Williams a
couple of weeks ago, that you can find on youtube.

julia

