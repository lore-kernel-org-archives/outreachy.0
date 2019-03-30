X-GM-THRID: 6674273164554403840
X-Received: by 2002:a2e:8881:: with SMTP id k1mr1373339lji.7.1553976785239;
        Sat, 30 Mar 2019 13:13:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:894e:: with SMTP id b14ls696037ljk.3.gmail; Sat, 30 Mar
 2019 13:13:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLtrvK1gpMRji0pYW8zUYJYWvLg4Tuf9RYhg3GOMicO2OqCjUprAbDmFg5vmHgAhCWsbfz
X-Received: by 2002:a2e:9e42:: with SMTP id g2mr653904ljk.13.1553976784533;
        Sat, 30 Mar 2019 13:13:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553976784; cv=none;
        d=google.com; s=arc-20160816;
        b=Vc0eXClCGOeCTWrAcnn9jhw/7+3aPITY/rq9EEugkzNpZwVPEHLadSyjCOQxkpU/Xn
         kI8lGHgCSpCXOaPPGiCBn3QwfBKVCfUv7Eai5q1hp10qaFz6Dyxg2jHGjFZcZ2tb8g6p
         +tdMHeHfVi3lqcO+KghYR9xvbhdPoUbdfjBncDBBBNYmru+nVlNceFg0qdY4KKTMtvla
         JUOCCrbvymU+lc/Ph3DmMwhb8b9s03FiUpGBAMS+vYcL2HZ7YpfWIm9jhEHupY2RH0iR
         J8JDJVUE4xwCtL6NVa9/R7v7VD/X6zOLhiUVg/8fKdjqZKyP5r+D+NgdiS3x/jLIM8Py
         oLFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :to:from:date;
        bh=GJor8wFo3zgxnCjtr/vSLdRcw/FRPQjVVkxX3k/shWs=;
        b=E324x6ALUcYytaaxjEchGPeuQuO2oadQSXE9xyGX3pEc4Ndxbq+wnwKN3QvUahr42r
         8+n/2B6QL0zzySon5iqV+PnWyZi5FJ4MosWaIwbDESG7ORbdSPDKXeCsRmYRhwIc3FEH
         /y6HtSCTTqZ0GrhDGzt026CFPf1AS2dlJ0FM92+PHbSiROtCTZ2WXqCXV6rfAH4A8Alw
         Jac8jUqhPGv8+nq60bDbvtGwGRHH+9wk9EDbe5zqyLydsNr/qRJ+QEYtn1xhN+wF0ai9
         Z5xVrMXfTWPQw/q5EL7NPlsp3FDpF1z9xdKE7fjuDUSO3czaPRsJGSnukLnPk8OrXC4P
         sA1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l9si164954lfh.0.2019.03.30.13.13.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 13:13:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376478885"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 21:13:03 +0100
Date: Sat, 30 Mar 2019 21:13:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: 'Nishka Dasgupta' via outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2 v6] staging: rtlwifi: phydm:
 Simplify expressions
In-Reply-To: <cover.1553974929.git.nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903302112460.2608@hadrien>
References: <cover.1553974929.git.nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Simplify expressions to make code more readable.
>
> Nishka Dasgupta (2):
>   staging: rtlwifi: phydm: Move operator to left hand side
>   staging: rtlwifi: phydm: Move function arguments to previous line

So the one removing the parentheses was already applied?

julia

>
>  drivers/staging/rtlwifi/phydm/phydm_debug.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> --
> Changes in v6:
> - Split the patch into two.
>
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1553974929.git.nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

