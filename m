X-GM-THRID: 6671642851007266816
X-Received: by 2002:a17:906:1182:: with SMTP id n2mr9072203eja.35.1553368260628;
        Sat, 23 Mar 2019 12:11:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9107:: with SMTP id e7ls734927eda.9.gmail; Sat, 23 Mar
 2019 12:10:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqypWV5IsApAUulRfHZBqeAsv15E8vr8FeE8wRkp6fLMeNWz5teqwEKQ2pmiUsUW2X41/y5G
X-Received: by 2002:a50:94d6:: with SMTP id t22mr11071131eda.32.1553368259832;
        Sat, 23 Mar 2019 12:10:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553368259; cv=none;
        d=google.com; s=arc-20160816;
        b=LxlhYfsZMlBbpv2wu9qSzww25fvncgF6aVd3085mEFCvZpNp/OSodb+inD6xPrgFSO
         OIEH2Ta8XmgwcsgK0Wcn7ML49A4TbMxplaB57TuhmYNP2+jTyiufJD1WQmnmdNkDDkfW
         WFha2DrjGvE2ehOR64rB/PuYYEdxk6vwI1LCg91Pi2/xUemVa2V5N27mNk5irXtUX89r
         ssOhV+w7FSvBZkWnV+n3Xug2ZXOj7tmf/3wVOQEguotLPDfLsXHVXHaDOHWMb5wEcbKj
         N0BhhOa6tRJ8Upb0beKVoAob1n4ziwNJLJjWRuiOfPuxfwV19vDIBIK0X4Jr2EHYjWqU
         jv3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vhi6fLNubNU4+gfGKmr2WJlR4tqkqUtKqtR+DgZ6IlE=;
        b=szhjVHK2Ry05ONdiBZcxAA8O0VKYsjT5GJfapXA7dkkRwY86kbrlb7oBgLKaIN7TL1
         oRimiGBd1foc24epGg31aE5i7kDImQ4noEuEShlbNwwM7BEM3u7EAfp/h7RBOFgNYlyy
         F50jpqqJr4Eu73mgGn9MvJe860BRI4UnnomzuKEtZbJUJWlCjhwLX46npjCx7HF/MrCo
         rphhiIsnmNOuu9/o9yCyGTrVi65ieZ7Uetm8PPSDArBYw0+pID985Gi7k+M+UBBiz7vQ
         ymZEPaPB6PGD41QQxJc5qNboAMgxcXFU1Du9/wVNsf427FFqri+DnYCnlz+8oyf0Wssz
         Y27w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i17si199771ede.0.2019.03.23.12.10.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 12:10:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300494658"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 20:10:59 +0100
Date: Sat, 23 Mar 2019 20:10:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: rtl8723bs: include:
 Eliminate p
In-Reply-To: <f926567f-8df4-4812-a8ce-6383a32307d2@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903232010430.5660@hadrien>
References: <20190323174121.5857-1-vatsalanarang@gmail.com> <alpine.DEB.2.21.1903231905310.5660@hadrien> <f926567f-8df4-4812-a8ce-6383a32307d2@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-742400856-1553368259=:5660"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-742400856-1553368259=:5660
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 23 Mar 2019, Vatsala Narang wrote:

>
>       >          u8 *pbuf;
>
>       You missed one.
>
>  
>       > -        u8 *pallocated_buf;
>       > +        u8 *allocated_buf;
>       >
>       >          u8 *pbuf;
>
>       And another one.
>
>       These are all structure fields.  Are they never used?  Did you
>       compile the
>       driver?
>
>       julia
>
>        
>
>
> yes, I  have compiled the driver and these structure fields are used in the
> code.
> I missed *pbuf as it was used more than 150 times in the code so patch size
> will become too long, I will make appropriate changes if you suggest me to
> do so.

You may as well go for it.

julia

> thanks in advance,
> Vatsala
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/f926567f-8df4-4812-a8ce-
> 6383a32307d2%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-742400856-1553368259=:5660--

