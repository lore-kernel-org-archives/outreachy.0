X-GM-THRID: 6470000031137005568
X-Received: by 10.46.43.93 with SMTP id q90mr845018lje.3.1506443944648;
        Tue, 26 Sep 2017 09:39:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.208 with SMTP id v16ls3506572wrv.8.gmail; Tue, 26 Sep
 2017 09:39:03 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDfiiuNZUNR31/4YG2NVuP54l0DBkJ06VwIONq2Wh/F8q3vq73rT6ZKMFBhQSGZH44wqXTG
X-Received: by 10.28.215.195 with SMTP id o186mr430636wmg.9.1506443943835;
        Tue, 26 Sep 2017 09:39:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506443943; cv=none;
        d=google.com; s=arc-20160816;
        b=DTx+NvIOF4meEiZ2+eAZf6ywUNb60sJADn+glTq6qainPKBCT9EepoViNuPNjQ0iBk
         +7OyVE2tArlPAt1m8p0NTFiGNTZW0nEgymmU2+C6Hi2ZR3J/CotYQSrwKRtMx3QfQVIk
         91+GabPu5a8GVYPJ/WtLBNQ8ExPIzobV2Vytjx9IDRMcD0DxpcpaBrus/QLVtEf6iOWL
         eXtVcPQfqyBfknmGopdVnUgQtt6LBbmTH+rR/Gl8JxykDFsMdxn75jAQ4LsTroRMImrO
         KgKabFrUFSNPsFBW0suTb3rtLwvuhHfPPWb3aTer+cmpYeyhQFlcpj9krASXiEu0wxzy
         3Pyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=XE0cXo7hBwWiGGSBr3wQ8clF1G4YfofvsnxCaR8ATJg=;
        b=sv8QfsS8i0uP7pNSQ6UaoZouwCQZ6iumXMSR96WVHYyVwHZZ5lLfDDWgyUzC3kmVlI
         BPkb6gptsa+4enGdLAyFgdXMVi/ad61WKY0HpaQsHimfuUhwc9QW7vY0SDwBRVVSpGWE
         Qn88jxcxSrS2CtEssBobtDASvw2IbddYkUAhlOMQAh+MUhs/6Tt00yyOyPistptQPP5k
         tFwsJjumXWYpF/3V8GRgLAs23qENjBHvCM8ezlf3H1mQOfZ1vbwbrbASZrq+dJjYae+b
         T5WWv+vk+AqBCOOZIuHEbaO8+mTROU7+AuW469SdmhyFf5rVAWYm886hkd/BO+Z7kVcM
         RkZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j4si250293wmi.2.2017.09.26.09.39.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:39:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,441,1500933600"; 
   d="scan'208";a="238801943"
Received: from unknown (HELO hadrien.local) ([93.83.33.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 18:39:03 +0200
Date: Tue, 26 Sep 2017 18:38:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] er...@anholt.net, stefan...@i2se.com,
 outreach...@googlegroups.com
In-Reply-To: <a7a1e451-c61d-44e2-a27a-72175db2c61a@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709261837530.2700@hadrien>
References: <cover.1506439214.git.keerthigd4990@gmail.com> <960f1d14d6ccc60acd7abb8e5ae9d6198031ca2b.1506439214.git.keerthigd4990@gmail.com> <alpine.DEB.2.20.1709261749200.2866@hadrien> <a7a1e451-c61d-44e2-a27a-72175db2c61a@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_11687_1871424047.1506443447948"

------=_Part_11687_1871424047.1506443447948
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 26 Sep 2017, Keerthi Reddy wrote:

>
> > Something is wrong with the subject line here.Sorry, after writing the
> send recipients, I have accidentally pasted same the recipients in
> the subject line too.
>
> �I guess the commit messages didn't change. To avoid confusion, should I
> resend the
> patches?�

A patch needs a proper subject line.  So you need to send a v2 (or vn+1).
When I responded to your mail, I got a lot of bounces as well, so check
that the email addresses are correct.

julia

>
> --Keerthi
>
> On Tuesday, September 26, 2017 at 9:19:48 PM UTC+5:30, Julia Lawall wrote:
>       Something is wrong with the subject line here.
>
>       julia
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/a7a1e451-c61d-44e2-a27a-
> 72175db2c61a%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_11687_1871424047.1506443447948--

