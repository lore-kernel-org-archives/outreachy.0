X-GM-THRID: 6523503828984135680
X-Received: by 10.46.118.14 with SMTP id r14mr564880ljc.8.1518873381656;
        Sat, 17 Feb 2018 05:16:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.8 with SMTP id h8ls426068ljb.8.gmail; Sat, 17 Feb 2018
 05:16:20 -0800 (PST)
X-Google-Smtp-Source: AH8x224ALyBoWBwyBpNfBr1xQlZUrsBE+ZlO+3LCJdDxS2vvIrigJUoo5KF+YL6DOUnZ55pvT7Vv
X-Received: by 10.46.34.69 with SMTP id i66mr563431lji.10.1518873380110;
        Sat, 17 Feb 2018 05:16:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518873380; cv=none;
        d=google.com; s=arc-20160816;
        b=0X0q8LcQdL5Ob3AXIg+c9hyeGGV2b2eGNn8LKS13WMDR2hXg0HPfD8f9mdTI5xNzjl
         79Cq5+IPLFVXkhHKU94kPiTW07J6nScQK/q7t5dC+y5g+bjdLvWqh18WMkJuLRbuLJFn
         6twQixu1GXeJa+L7ZprqJESi1EUDWl9O/vLcSPr1PsEKsWcNRfnFyHUPcSv0JXAcCA38
         KMO2FIgfwM9/eYteEOSAJjxlE/9CTRsI/gW+E9venHg9Uv7TJZ4x5bZt//4fYUSxciaB
         EaJjPduMszWHxNvBm55ag9m0vMgQSOh64Ek+VGc7gwYuLS1J5P5mQdmUyYaGPqebhu66
         P2RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=sCc1cCXT5lC5hsfeK9NiB1lz0MlFQDe+DQQUGK9R9ew=;
        b=X2AiRB6pFnRIY+u++4MatKSAJSaJiHe4yDnhWAz/+NqRyq2TxpF7L6xBGnt6Se4hZ0
         Ul8CjwmqUWeZWnmT9cWF5886LwHXqemAGAZdCLwl/jO8kf/08ET4scQD+DDDAJROhNDU
         KqlhoUYjI2ehkjup2hDpq/nuDsHNDE1dQyRR/TrpmAwingV4cWPeWRkSBK9g3w63KjcJ
         A5kJrhcmbYNO/tpcSwniHi9o4jywBF7IVj4fp1ChsfZTFo5+GY+PXTVSE09U3pmojCyl
         QmtAuu1N7gKqSamlV7QPWPfW1sH6r1K5BKOxna+QDSoj9RNfacBHAVeeYZmYEjn0QrcJ
         R0zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m2si182708lfj.2.2018.02.17.05.16.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 05:16:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,525,1511823600"; 
   d="scan'208";a="314052901"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2018 14:16:19 +0100
Date: Sat, 17 Feb 2018 14:16:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] fixing warning "else is not generally useful
 after a break or return"
In-Reply-To: <f8e55043-fbe6-4046-baee-c3ca4e8d3c8e@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1802171414550.2205@hadrien>
References: <f8e55043-fbe6-4046-baee-c3ca4e8d3c8e@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1290963512-1518873379=:2205"

--8323329-1290963512-1518873379=:2205
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 17 Feb 2018, Dafna Hirschfeld wrote:

> Hi,
> I see this warning "else is not generally useful after a break or return":
>
> #532: FILE: drivers/staging/vt6655/rxtx.c:532:
> +                       return buf->duration_a;
> +               } else {
>
> So the standard is to remove the "else" line when it is not necessary ? 
>
> In the function s_uFillDataHead there are more "else" statements that are
> redundant, for example this one since the "if" it relates to always
> returns. 
>
> So all redundant "else / else if" should be removed ?

Not sure.  Because in these cases the branches are declaring local
variables.  And the then and else branches seem kind of parallel.  So it
is probably better to leave them as they are.

julia




>
> Thanks,
> Dafna
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/f8e55043-fbe6-4046-baee-
> c3ca4e8d3c8e%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1290963512-1518873379=:2205--

