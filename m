X-GM-THRID: 6805811773689561088
X-Received: by 2002:a2e:9284:: with SMTP id d4mr1182751ljh.226.1584602081744;
        Thu, 19 Mar 2020 00:14:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5476:: with SMTP id e22ls228278lfn.7.gmail; Thu, 19 Mar
 2020 00:14:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vspzhgRekT1ahswJhJOPgyvztWitoaGVb3dip4WSD+fw2bxQyeEsMrpen9rq5XdvcjblVm/
X-Received: by 2002:ac2:569a:: with SMTP id 26mr1232816lfr.63.1584602079796;
        Thu, 19 Mar 2020 00:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584602079; cv=none;
        d=google.com; s=arc-20160816;
        b=h3xtwqzRuzXDHfaxJ0s1QFR9sRhk+DOY/lZ9KZcQosQf5uaRGWttKN35p1zHbNFRfv
         RK3pyuOpEmQs6qGucBQxXWv8gtuRywDI4mATj/5lvVy8MvjkvRI5E+xokDJs+QDiiHTJ
         1GDFcqLaTTJBeZJBRsVp+5aCcyfICfNheKjzulPxoW3bVORT/20PNkz0xueEsX1YOwPW
         IhCpbKUOIVG/pHAXvyfd+aYJSae+1lVIRMoNn0QjlT1lcmIOodjAAQ+/uLcp0Wi+7hCA
         3X7rBR94Fb1DPR7UGJIpSGM99FpOH8Ur3C8cS4fkQwHVSiUBW5o/jAi2Xgt1nVjcodOK
         21gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=UzpY5sHSfouta5i86EKX6tdA0yROAmwATDBMVa1qdhw=;
        b=KSgUL2BQskg1WXjVlNDYzJorw0SoufQAeAXuBZBleTOYMnp9Mwr8jL7SvzvaoePpkc
         hSx6SgIuHcGW8Xll2oIPjsZYNKw/+xNvu9Jfdj4oUnEVl9sMjO4Pk0BQbhutLAmFePt0
         LD7NkGMTH4Txr+q2T5BTQpGIDAbdCOnTnYtN1/f27ey+A970Gz//cxJ0Sc2vY8KZpGo2
         uM4qh1swUmlVuMGozNaZwqvV4BxEs+sKvoqOBDJ2GL1RuBuE1Blm01oDWqblRpiGeY9a
         y7LEg595kpu5NDcfcQ9cD1rXAlRhFAAkyZAVt0QIgBHwV3urkqft/rntalYT75fvOufL
         6JWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e4si43162ljn.1.2020.03.19.00.14.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 00:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,570,1574118000"; 
   d="scan'208";a="441089449"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 08:14:38 +0100
Date: Thu, 19 Mar 2020 08:14:38 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] How to change long C comment lines for a
 single statement
In-Reply-To: <20200319070524.GA1686@tulip.local>
Message-ID: <alpine.DEB.2.21.2003190814080.3010@hadrien>
References: <20200319070524.GA1686@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, R Veera Kumar wrote:

> Hi,
>
> How to change long C comment lines for a single statement or a C header
> define as per linux kernel coding style.
>
> E.g.
>
> 	abc (xyz(), "str"); /* This is example function call with a long line comment */
>
> which is okay:
>
> 	abc (xyz(), "str"); /* This is example function call with a
> 				long line comment */
>
> 	abc (xyz(), "str"); /* This is example function call with a
> long line comment */
>
> 	abc (xyz(), "str");
> 	/* This is example function call with a long line comment */
>
> 	abc (xyz(), "str"); /*
> 			     * This is example function call with a
> 			     * long line comment
> 			     */
>
> 	abc (xyz(), "str");
> 		/*
> 		 * This is example function call with a
> 		 * long line comment
> 		 */

I haven't done an extensive study on the question, but intuitively putting
the comment before the call would mke sense.

julia

