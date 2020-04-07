X-GM-THRID: 6813022730075504640
X-Received: by 2002:adf:f588:: with SMTP id f8mr2080573wro.386.1586282772213;
        Tue, 07 Apr 2020 11:06:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:67c2:: with SMTP id b185ls4463895wmc.1.gmail; Tue, 07
 Apr 2020 11:06:10 -0700 (PDT)
X-Google-Smtp-Source: APiQypIIC1Lo32JeTmOcUzrtCWRPZjpqHMGkLBwre+WL1aGik4BoKxsllggBQSf+XCnrDaFQqhlF
X-Received: by 2002:a1c:f302:: with SMTP id q2mr488408wmq.185.1586282770886;
        Tue, 07 Apr 2020 11:06:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586282770; cv=none;
        d=google.com; s=arc-20160816;
        b=nPq+z/Q9Gmsws3hE3hCTlG4mO2nfnwTXPnryeREn65zV4iBQX076BVN3chuW3mkPY+
         z4JOfUtCXGkVrL9KDWHQRqWmM8dQd6Yv1sWfdbbUUO2a0rIfX2IBt4PhOBECm98b1A2f
         iKqi9YReD10lR03+2DIvvA/tpR5gXT2r5UXuS8wHiIqSDi/iFQ7TyI7bus6z43aCBRXS
         CYYP1ogOC2m6046OVKzRPzAZxAmVL/M2D9eECZHJTnr/V4fSqP+f3QB8fHNE7Qg7ukmf
         MT0aoWIL5t+H+yMPnErPYjA19eKzlZbqP5x3YsfgZUJtg3WsLEuwJe30kidD3WZYJMLE
         Mm5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qvlHLqqm4i1d6SrwoNk3WYluyJc2xLDrKgwkyO4gcdQ=;
        b=QKT2C3XZtbvKMsjG9LJL7j8/gpNYO0dEm1IhXePsAmyQKD7/WSHrlS5aZn2n25l1v8
         9NQF4BhMmfm6IKBos7jImnzTbthnyilD1TqfyhQzK4XQBcBsFBsRrBQykac5XBWsfEvo
         na9PWZuRES1npoNjdQzE+pFMIQWujHec38Eu+HS+a2UkO+9Qu4Xe3J2U1xciPBQZbFmu
         UqPyb3cRTPqXk7snjy15DQdc4ofHJbat9hf+5kpbW62Va2LA7sUX1G+kHr44+n7/o0mD
         fE5sUnJg370MdMnnj33ndX93LoaxpQ1vheoZJfjp6eihNu44KUj6g5Fc2A3ksq4CbUL0
         r8tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l20si291965wrc.0.2020.04.07.11.06.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:06:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,356,1580770800"; 
   d="scan'208";a="444274542"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Apr 2020 20:06:10 +0200
Date: Tue, 7 Apr 2020 20:06:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Stefano Brivio <sbrivio@redhat.com>
Subject: Re: Query about Outreachy Kernel Mailing List
In-Reply-To: <20200407172735.GA13609@tulip.local>
Message-ID: <alpine.DEB.2.21.2004072005420.2982@hadrien>
References: <20200407172735.GA13609@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Apr 2020, R Veera Kumar wrote:

> Hi,
>
> Vaishali informed that after today this list won't be moderated. She
> told to send contributions directly to maintainers(upstream).
>
> So does it means Julia and Stefano won't review and comment on the
> posts done here.
>
> Shall I not post anything here anymore?

No, you shouldn't post here any more.  Good luck with your application :)

julia

>
> Please clarify!
>
> Thanks,
>
> R Veera Kumar
>

