X-GM-THRID: 6528628385749401600
X-Received: by 10.28.158.193 with SMTP id h184mr819187wme.22.1520190331050;
        Sun, 04 Mar 2018 11:05:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.152.137 with SMTP id a131ls1125664wme.2.gmail; Sun, 04 Mar
 2018 11:05:29 -0800 (PST)
X-Google-Smtp-Source: AG47ELvyospIeMN7BVAxK0crydBOMijT8TUzGpnkQzExaVLfyObJrTRjtkwINc20nzsPxc6SnZuv
X-Received: by 10.28.212.200 with SMTP id l191mr284122wmg.9.1520190329934;
        Sun, 04 Mar 2018 11:05:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520190329; cv=none;
        d=google.com; s=arc-20160816;
        b=KbbvsbP57W8wGezDtXBv91qkb/Qdgk6hukaVAmiBlhO7V6bbLNicJlNNoEhJwNsLdJ
         CBG8W8Nx8ra/BmabM56+m4tIJPDy3czJgqTUNbinqz+QnjfbizRaHiNb0Ym8mlBuNW/x
         /yXpMqgV89cgjnuDwQl2oumTOyz4pzjq6ZZ5by9ro2z359kNuDChCULczL2r4yr+G64K
         Ej2CZJ3Bb5IbcCefYN5cz7fzv+wVa+0hF2PgQjXOfsrM9K/o8VVUCojoky5Z/C0HfHpW
         c4vgyNUz6fZ72dL2lQtYxIDX5fR9sTr+vkyLmec9CaYtfbX7VXfP2FAQY4B8O3XYBSHv
         gsOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=OKujmez2vGsSPaOMibhXsR+Hzkqf9OMndLJeMV6TTNk=;
        b=WD2/n2aKpX5yuEV/DJh+11kyFqOcAxUbEt9lZzToZhZ4bnW0ayOdERQ7y55Ksp1CBj
         lNu2pLFOf6uZV06/YvsEvCtYthJll+jxIdBpKDfjxS7k9Hk+wGaxjETQ5X9yMQ3zVG8Y
         u15x8/EMBkHezXe+P8I8ndaNp9YkY/nXLpsPruvHifrqr8GMe040jcD+EUCCaG3PwlTr
         buNXqES/WQen5my4qwOe2Q5zk4R4H0Xps2r2pRqnpzYrXp5JsREdgVaDtvSHonRJ48E8
         Lzfm7psS0Nd5xuypu+DFVW8YM2idzjGWRZ5+t5jLhE4nTWnhOG9j5/O7ZSw4CfdhjsEF
         R/PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g206si168638wme.2.2018.03.04.11.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 11:05:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,424,1515452400"; 
   d="scan'208";a="256918990"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 20:05:29 +0100
Date: Sun, 4 Mar 2018 20:05:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Cleanup for staging lustre
 obdclass
In-Reply-To: <cover.1520153895.git.dafna3@gmail.com>
Message-ID: <alpine.DEB.2.20.1803042005060.2182@hadrien>
References: <cover.1520153895.git.dafna3@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Dafna Hirschfeld wrote:

> Fixes of issues found with checkpatch.pl for the lustre obdclass driver.
>
> Changes in v2:
> patch 1:
> 1. Revert moving the constant to the right side of comparisons
> in order to keep the condition in the form of
> 'lower bound <= val && val <= upper bound'
>
> 2. Revert returning '!!ptr' instead of 'ptr != NULL' since this is
> not part of an 'if' statement.
>
> patches 2+3:
> No Change.

I think I acked these two.  You should keep the ack in the resubmission.

julia

>
> Dafna Hirschfeld (3):
>   staging: lustre: obdclass: Fix comparison to NULL
>   staging: lustre: obdclass: Add 'const' to char* array
>   staging: lustre: obdclass: Replace 'unsigned' with 'unsigned int'
>
>  drivers/staging/lustre/lustre/obdclass/cl_lock.c        | 2 +-
>  drivers/staging/lustre/lustre/obdclass/cl_object.c      | 2 +-
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 4 ++--
>  drivers/staging/lustre/lustre/obdclass/lu_object.c      | 8 ++++----
>  4 files changed, 8 insertions(+), 8 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1520153895.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

