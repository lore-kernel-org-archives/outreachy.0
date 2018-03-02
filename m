X-GM-THRID: 6528381540192223232
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.25.72.6 with SMTP id v6mr473879lfa.18.1520008628549;
        Fri, 02 Mar 2018 08:37:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.65.141 with SMTP id d13ls1115918ljf.11.gmail; Fri, 02 Mar
 2018 08:37:06 -0800 (PST)
X-Google-Smtp-Source: AG47ELvwgiST+MtBj5p53cRYeHzPUXkE98RqaTTR1kvcdJ9K9hAs4HMIui4OWUIMN67CrFzVnjIe
X-Received: by 10.46.84.66 with SMTP id y2mr434527ljd.5.1520008626726;
        Fri, 02 Mar 2018 08:37:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520008626; cv=none;
        d=google.com; s=arc-20160816;
        b=tz3iDn7ScQ/0bpQ86Rqeo5TjxiSbeST72oO9Ehs8oOfSJU0kJgDA4tNMvzi/yEJbxT
         1ARWREdB2zR7GNMdGdhxOZEXZD6vmH7YNFtQqtVqWmQ9dYZd6e/OzTWgedq3u5aaThM+
         tvNTL8a721jjmKvEs59z1NXPuJKMR8nKjLDO1YUWbf3/AQGndDq7Ek2gvsCbqrI3h3Nb
         nB7lEya+aC9dYvdm0Spi4yMKhEy4r3OiL5qYHO9Xn8uHBdhZxZAdOQIjFDCD9KJWvFjg
         PG1fPQV8BFWRLgc1Lo/jn6x5gq9+Zzj3OLB5OLvmfiV1LUp4BXeVjio7zftQxez4y+ZB
         0GRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=8vRnJJ5DRvDwCyzVl7FljX+4av8QF6LHA3UQQuIq4N0=;
        b=QV05HOt/ZvkkybHmrVweWdP14cey+WR3gBVOThZGfiM2HV0JWefIkkFjqMzGkKnbpk
         wxjTxnFCRsOjh1OwA+uXbpTH2fC6zRXOsQdrmXAru74XFF4UCmZz/fzI8HSptinFsSTh
         E1Bo6QbGCbFboIg9JYUMROTKso0YZIbomz0JkbNvkHKqAdpOB63ErmMBK9kZbaueOQkt
         geZDW3riuX+akmmbU6+ZQ/VF34b2X97kOJKLQ7dSSwVaryHHf5T82gvgKt+Au1zcimlo
         QMfVUbriq1SlAiFftItsY3OvCuSFuggV7+2huggdd0/plyx+o2Appxlwjn+LLu7WXxeZ
         hf9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w7si297473lfc.2.2018.03.02.08.37.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 08:37:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,413,1515452400"; 
   d="scan'208";a="316104751"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 17:37:05 +0100
Date: Fri, 2 Mar 2018 17:37:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anika Murarka <murarka.anika97@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Unable to find "/I can modify" string
In-Reply-To: <34fccbb8-63bd-4613-b04c-8c6f31f4dd97@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1803021736250.17455@hadrien>
References: <34fccbb8-63bd-4613-b04c-8c6f31f4dd97@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Anika Murarka wrote:

> Hi,
>
> I am Anika. I am looking forward to contribute to Kernel for Outreachy this
> round. I am following the first patch guide[1] and stuck on testing my
> change.
>
> [1] https://kernelnewbies.org/Outreachyfirstpatch
>
> I did exactly what was written there. But the command - dmesg | less -> "/I
> can modify" says pattern not found. Where I am going wrong? I will be
> pleased if someone can help me.

Maybe you modified a driver for a device that you don't have?

julia

>
> Regards
> Anika
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/34fccbb8-63bd-4613-b04c-
> 8c6f31f4dd97%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

