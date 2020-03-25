X-GM-THRID: 6808081754590543872
X-Received: by 2002:a19:5e06:: with SMTP id s6mr2115738lfb.154.1585136280301;
        Wed, 25 Mar 2020 04:38:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls249774lfe.4.gmail; Wed, 25
 Mar 2020 04:37:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvSjI4ZkGALbix4nADfcVGisaPpIsQHEvLTjp4da+aQ6h0rFM1+cOmbrPb4D24PpxiskvvW
X-Received: by 2002:a19:f618:: with SMTP id x24mr2090814lfe.106.1585136278583;
        Wed, 25 Mar 2020 04:37:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585136278; cv=none;
        d=google.com; s=arc-20160816;
        b=yvPbgpgTLl/z4EQMSYHPAx3x/L9qOoED1+6dAwWdEs5QU0+BDm8pL76hbB43IWKlWe
         frRybqBocyG0wNu98Do+Wmz+R18A/y1ebQ1tiEiS8xCdNaHSRQycFnv+Q3UTkMjip0Fz
         Isy09nM4h2YNT/ljIPZvOb8+yGntu5Jv7FNyuHFH332OoUuIxAjyCZbWlAbxGwR9rmv4
         LshGgqclvLga8+u4UiSvX37+cq4CS4+yeP1WiV9HF4py+SMSDmrFy6M6o7mXlpD+1gG7
         V8v6E7PVOy/GT+3u87yVowq7Q94DezkiPcB0sBl78mmf7G2MfoJZRMOEGmwLmYmnRA+j
         JlsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6CE7k7VEYyFG9gKlgzJuFO6WceRc21+4CLxw1CCwsKE=;
        b=IgnjDg1JJFzWk7MEGR4ZARdQm4taniTY/mMc1WM6yMCNQkTPdBEp8JTcnsBJ0WTzGF
         t1iwkBkHU9i69v21GIzVZ0iHACC1MUt9a7C9d2apBZ85Rc/igRpgh0GZkjzrAyfgqePH
         CY2OCg3T3iVdQwrTa7qjljkEOucPInGreNCJ6lf8BkqIlVcwLdLIEOyNLDD64uWhLvme
         ObS60EfCUUSzgb/3oGn25Z61/FZKfKGjsK8qCU+76heFcdTgrkbcx7EMKmv7CRA50Tyx
         Ok1pM0xeZZ8WX65orI0RWdi/f6+XOnPjGtat8DrjmBsgeH0QT+jaCnfZy3dKwXXG9ydh
         zwSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a21si1510392lff.3.2020.03.25.04.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 04:37:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,304,1580770800"; 
   d="scan'208";a="343676712"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2020 12:37:57 +0100
Date: Wed, 25 Mar 2020 12:37:56 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Simran Singhal <singhalsimran0@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, jeremy@azazel.net, 
    driverdevel <devel@driverdev.osuosl.org>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: kpc2000: Removing a blank
 line
In-Reply-To: <20200325095407.GA3788@simran-Inspiron-5558>
Message-ID: <alpine.DEB.2.21.2003251234560.2444@hadrien>
References: <20200325095407.GA3788@simran-Inspiron-5558>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 25 Mar 2020, Simran Singhal wrote:

> This patch fixes the checkpatch warning by removing a blank
> line.
> CHECK: Please don't use multiple blank lines

The subject line and the log message should be written in the imperative.
So that would be Remove, rather than Removing for the subject line.

The log message should first say what you did to fix the problem and why.
How the problem was found can come afterwards.  So you should not start
with "This patch fixes the checkpatch warning by".  "This patch" is not
useful, because it is obvious that it is a patch, based on the subject
line.  "fixes" does not given any information about what is done or why.
"the checkpatch warning" is useful, but it's not what one wants to see
first.

julia

>
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
> Changes in v2:
>   - Make the subject and commit message correct by mentioning that
>     this patch specifically removes a blank line.
>
>  drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
> index cb815c30faa4..f1fc91b4c704 100644
> --- a/drivers/staging/kpc2000/kpc2000/pcie.h
> +++ b/drivers/staging/kpc2000/kpc2000/pcie.h
> @@ -6,7 +6,6 @@
>  #include "../kpc.h"
>  #include "dma_common_defs.h"
>
> -
>  /*      System Register Map (BAR 1, Start Addr 0)
>   *
>   *  BAR Size:
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200325095407.GA3788%40simran-Inspiron-5558.
>

