X-GM-THRID: 6528045049398165504
X-Received: by 10.223.150.47 with SMTP id b44mr321910wra.7.1519933676864;
        Thu, 01 Mar 2018 11:47:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.182.17 with SMTP id f17ls2270044wre.14.gmail; Thu, 01 Mar
 2018 11:47:55 -0800 (PST)
X-Google-Smtp-Source: AG47ELt0sanMT1L0dffO8g3p6BvQt9ZPasvndedAHi5oUk1olKRtIl4Pu2eWHOMQX5RJYnKTc2WC
X-Received: by 10.223.172.146 with SMTP id o18mr309785wrc.18.1519933675750;
        Thu, 01 Mar 2018 11:47:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519933675; cv=none;
        d=google.com; s=arc-20160816;
        b=hJ/LgncKuxDWPN2cZxBGfXBU5oR3OX1FVD8ULx1eSiAntRCQ1eWoOlZFT8Nb+yL0IA
         0Bpwd1/uWEC64OIRuz+Kj7zkHFvo1V+25h2GPfj20JYM6EMTTufr9qyC5GsmcUUkwzms
         spSB6Is5wia1wxdl3Xvoaiud0Z1JPcnnTFDVoiYZlp4HqcQ4forBl/IApcEj9pEohB9+
         i37nAj+EWOdzPKrQ5C0xamGzkAsFSFQpeP2F4Gv7rpM7pHGTdsRfEsx3XNRBVFNRsEAF
         mXQEt9aI1dNfPHX9qwxdLDuaDUhydRTVb+M7HwFU9phw+kz2SqR3GGrBiI4NUvIr3O5u
         lNIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=G08fcU0JegF1gS23MHn2R9omvpa3kSENk0xYX746luw=;
        b=VMMdca6C9n2Ok0jQ8kaEA6s7LrQM4EIPOoWOrCUIkoBB/YtDkjhwT8+/vH/euUF+4/
         Bh2dl715NDtosOtt8l1F+HO19DNaHZlpTPi37h9lgIgfRWN3G8+NThvyHN7iAVvGrQjA
         O9+alXQ4fe4NClEmnAms59t+0X34T9lL9kR+nb8XghSgxefhdS9TbuRodaLcAvQdU/LX
         kxNGrLIjN0RiDUJ5TLSyHTtMDLI4/mxt6vvKmU7OC9ltXx75xIc/UDErLf1J/PZCxxrU
         1gdmVKoPG9EtBRMKAWkIkT35YLmYph54AuEc1q7NeXCbcuQUklOtL4roykCZz7IfiDXl
         7pxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g206si295704wme.2.2018.03.01.11.47.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 11:47:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,409,1515452400"; 
   d="scan'208";a="315958198"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2018 20:47:55 +0100
Date: Thu, 1 Mar 2018 20:47:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: shikha1212.goyal@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Discuss for Outreachy Round 16 with Linux
In-Reply-To: <b20afe74-c4fa-4148-ae29-2532f0976356@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1803012047330.3474@hadrien>
References: <b20afe74-c4fa-4148-ae29-2532f0976356@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 1 Mar 2018, shikha1212.goyal@gmail.com wrote:

> [cleardot.gif] Hello
>
> I am shikha Goyal, Senior year student at a university of India.
>
> I want to apply for outreachy for this round, but I am afraid as on the
> outreachy page it is written, Linux will take only 1 intern.
>
> But at the same time I can see 4 projects. Want to clarify the procedure and
> selection criteria.
>
> I qualified the eligiblity criteria for this coming round.

To our understanding there will be four internships available.

julia


>
> Waiting for reply.
>
> Regards
> shikha
> Amrita University
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/b20afe74-c4fa-4148-ae29-
> 2532f0976356%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

