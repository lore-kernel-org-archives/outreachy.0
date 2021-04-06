X-GM-THRID: 6947860813701971968
X-Received: by 2002:ac2:58fc:: with SMTP id v28mr19528558lfo.201.1617698679839;
        Tue, 06 Apr 2021 01:44:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a409:: with SMTP id p9ls3442185ljn.0.gmail; Tue, 06 Apr
 2021 01:44:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy1T4PEFcpcqTKKYjXqUJxlht5/NtWjwfFHOuAITlbdjdmPAckKRkqOYJBa1VPebiJyPzL7
X-Received: by 2002:a2e:a494:: with SMTP id h20mr18455786lji.292.1617698677864;
        Tue, 06 Apr 2021 01:44:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617698677; cv=none;
        d=google.com; s=arc-20160816;
        b=K3w3geQNAUvzOoMcFT6Q7UpA24u5YvJObOHAXqLmulF1kvhMQDi0qi2pktnRLlImib
         2GskwbS5pvFIO3WME5YdtSIsoloR+oLTtiVXHxPmTHRLY5ZJqkvHoHSW+sM0T7qhQem3
         MY0RTet+T5cSA4raHD7T4t7MuSoyXUqz0s3wMV7VY9lizRpuNX37fCVNhLKfugjMk5yz
         uhVvZ464jQJqGoKG2ps/bXxiKvNimimuXXDTpX9SynGVMQfotTpjOko4jb/FDuFDWAZg
         TmYHMpcb2uRJoFLdvYfKW9lKyw063oVY/9Yjrwqtned9CM4MDFjhZ0YmVvsvSlYUcxjN
         +CBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=GcK8tzId1wigYF+ePqJW7G/0e+LAxpGDsY2frU7iY8A=;
        b=q//zCYZHnQCl+y/YIkETZn0F6raWDat0mnHZDcmBHuUBExCO/r2GY9oeNF/t1ULcNJ
         i6hxCXte2QoPyL8sLsAhDBZlEaCiZGXLIBYjfzsMSEFfne5lgasJx50Bm4v2qbXy/PMM
         S6eRKZ7dm8A4JCccPMKAIDWwxdXHW8QaG6N/xzTgKOHeD4ibqskHQBfHXxUNXhkqSkTY
         va3cyi6MFliURuAQcjzCIRnOSL/vt+1k++xdPzt2/mhuuY0etvWUHiZEI87lo+/km8aJ
         8/8yrBVpAnBHaQYRg1AY2rOxsK8S0KAQZdLnTtiYyUL3CS2jaOiDWne/2mFMS3p5F/kR
         mDww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p5si117325lfd.4.2021.04.06.01.44.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:44:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ak6OtjKGg+A5N+bFtpLqF45bXdLJzesId70hD?=
 =?us-ascii?q?6mlYQxZYa9HdssiokugS2xOcskdyZFgLn9ecNK6cBVbV8pBo6YccVI3SOTXOkm?=
 =?us-ascii?q?2uMY1k8M/e0yTtcheOhNJ1+K98f8FFaOHYIkN9ia/BjTWQN/YF7J25/LuzheHY?=
 =?us-ascii?q?pk0dOD1CT6179Q92BkK6PyRNNWp7LKE0Hpad+cZLzgDIER98Uu2AGnIHU+Lfzu?=
 =?us-ascii?q?elqLvaYAULDxNiyA6CgSLA0t/HOiWYxRsXXndzx64j+wH+/TDR26PLiZ2G4y6Z?=
 =?us-ascii?q?81WWw4VdmdPnxNcGLteLkNItMTnpihylfsBIR6CClCpdmpDg1H8a1P335zswNc?=
 =?us-ascii?q?V67H3cOkuvpwH24hLt1DY152Wn4UOEgF/uq83wQzIhD6N69MNkWyqcz3BlkMB3?=
 =?us-ascii?q?0apN0W7cnYFQFwn4hyj458LFTVVDile0m3w/iuQe5kYvEbc2Wft0l8gy7UlVGJ?=
 =?us-ascii?q?APEGbR84Y8CtB0AMXd/vpNNXixRRnizy1S6e3pek52MgaNQ0AEtMDQ+SNRhmpB?=
 =?us-ascii?q?1EcdxNYShDM73rdVcegH2830doBT0J1eRM4faqxwQM0bR9GsM3fARRLXPHjXHE?=
 =?us-ascii?q?/uE7sfPWnRloX+77o07ty7YZBg9upwpL3xFHdj8UIicUPnDsODmLdR9ArWeX6w?=
 =?us-ascii?q?WTT2xtsb759luqfkTL6uKyeKT1oplNatsuh3OLyDZ9+DfLZtR9PzJ2rnHohEmy?=
 =?us-ascii?q?fkXYNJEGITVM0Otsx+X16VuMrEJpftqvfQfJ/oVf/QOAdhflm6LmoIXTD1KskF?=
 =?us-ascii?q?xFusQGXAmxTUW2ngYAj45pJ/EK/T+uIXyIQLK41UugUZklii/KiwWHp/m51zWH?=
 =?us-ascii?q?E7DKLsk6u9q2Xz133P9X9RIRZYDlxY+vH4SHVBqRURP06xeqZGuNOCYmdb2XuB?=
 =?us-ascii?q?KHZEPpvrOT8ag24y1bO8LpSWyyxnIcmgKHiilHcWpGiHVdMAgaWF/97iYY4kFZ?=
 =?us-ascii?q?4oV6x6CBXTG3VO6EBXgVYGTDVBal7UFzvoh6ngpocTHvvje951hxruCdJIqFrE?=
 =?us-ascii?q?3H/s0v0Hdz8+ZXqDQMSXiQEhS35/nVtq6ZISh7KGhHKGNXY/uuIlK1dBAV7ndo?=
 =?us-ascii?q?5uPUCgXsF5i7rrcAZ/QSOhnjqBkSw+fWLs6gE0inH+KzaXPdXGGEBUtHwd8quC?=
 =?us-ascii?q?yiI8SkytO2ZLLlxqu4x0EmrL/lxp1/WQW6a122yNLlQYxOUQNyzEfCsSLgtiy8?=
 =?us-ascii?q?vf7m/fpB+yUVEdgrk+NO3UC7ouN5vJ3Gm2FYGOnaYaW/9YlawVfuzGg6sua6ay?=
 =?us-ascii?q?agWVJDT3B6cCwAqOvEsoPyFytT0hmfPs0xv18Xig0BcEcLfvCWUjY4teD8CX7m?=
 =?us-ascii?q?DiSfrN+o5+l8gJsey5NXi0bMWHx6HRZztKMQjSvmayUuEtpflvzOoPnYo2O6Oe?=
 =?us-ascii?q?fSrD1XlB0hl7BtzzjlkiTKNy562EJpViZNUIeyVS/kMgkdOGKEdDiH27PsYOOX?=
 =?us-ascii?q?UWy1PLNdKA5LTF7Yc1CkqavQ3qJB206CtG5crIWCOFyJ8XA689On5tdUA58Xhu?=
 =?us-ascii?q?ldnyOLH4OUGPTaVj9ED/GmKheLVdIZL1fYk4n1Jf2ZW0uMO5MwD/wxvduDNnJL?=
 =?us-ascii?q?kmyRfBfeqCRCSWF+ZO88+zJFSLhYqn6MO+ly3PUjegZ18GiYAtTz1KUu1zzh84?=
 =?us-ascii?q?jIM21SCuTLfQuUxNqSor3RhuikPt1o+64G3SAEFBNknDjo9LWCRIW0L46/jt4K?=
 =?us-ascii?q?yW0m/w7yNC3oSGHEBMfstWE9xVVYTvKTxyQPJgzYKA7u4rj2BbexElA3QnhD2V?=
 =?us-ascii?q?5ZIa4Z6pnPHTUfblE3HmJBYI/iNEHJd9mkUQ2B59Wtn76ZK2eQMMEOEUR/M5+4?=
 =?us-ascii?q?BNiTps7lz+9UcVYRkotgsm0Oj2XyLaFmU5EbKrkZr9gRAeqqTH41pypG9Iklfi?=
 =?us-ascii?q?jF2HoVD6k8u8pnJclRyskiZ37aGGADchiidQsQBqhbF7On2WSGj2XDeLNkj0wK?=
 =?us-ascii?q?ZAAwwXNUk/j+EwyBzNIKkAmsrgky5qrTEnDjMxxL/uHGDFUjmWHcDxKjfvFNnd?=
 =?us-ascii?q?Oq8IX99Bfm4Ya3ixP1DYn551SBTCctJozA+tlXcDHrLmANLbXCuNSJ0WuLUNMK?=
 =?us-ascii?q?ntSZOEjcjA1gJF52gfxriL8UCtjbZv94eHPQZyvtI2brhxNgqr9Cl+1MGPXQin?=
 =?us-ascii?q?Bfls3AjF62r76SpZI9cKwwMahUkCzB1gYR+VOw=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.81,308,1610406000"; 
   d="scan'208";a="501708919"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Apr 2021 10:44:36 +0200
Date: Tue, 6 Apr 2021 10:44:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in
 Hal8723BReg.h
In-Reply-To: <3119203.byjyqSS6Yo@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104061041270.2882@hadrien>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <CAPj211vtzZDmwYomg9BBcZwPWxiiwD55=yEpcAXL2WgzGyvUDQ@mail.gmail.com> <alpine.DEB.2.22.394.2104060956180.2882@hadrien> <3119203.byjyqSS6Yo@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Ok, I understand that I have to be very careful when working with spaces and tabs because
> they have different side effects on formatting patches, but...
> How can developers check that the patches they are going to send with git are
> properly indented? I mean, that the patches exactly represent what one sees in vim or in less?
>
> Apart the patch we are talking about in this thread, there is more: checkpatch.pl emits
> warnings when certain lines are not aligned with an open parenthesis of a previous
> line. How to do proper alignment? Using +/- spaces to align can lead to strange results
> (if I have understood what you wrote). How to make a good alignment without incurring
> in undesired side effects that propagate in the resulting patch?

The patch doesn't really matter.  What matters is the actual code.  But
what matters is the actual characters in that code, not what you see on
the screen.  Generally, if everything is done consistently, then
everything will be consistent after it has been pushed over by one space
to create the patch, even though it may look different than the original.
But what matters is the consistency.

julia

