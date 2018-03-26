X-GM-THRID: 6537294064154312704
X-Received: by 10.28.208.7 with SMTP id h7mr2228666wmg.0.1522083628482;
        Mon, 26 Mar 2018 10:00:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.226.135 with SMTP id v7ls832122wri.9.gmail; Mon, 26 Mar
 2018 10:00:27 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/aq0mbhoRoyq16pJ/qYMSwePF9+n2Akz0S6xHX7PBeunbbO76rPA2RooG6zsOoyrG/aAWd
X-Received: by 10.223.208.139 with SMTP id y11mr236460wrh.14.1522083627464;
        Mon, 26 Mar 2018 10:00:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522083627; cv=none;
        d=google.com; s=arc-20160816;
        b=YFDTiYijRX/o/rbvolUTyZvH0w00r0iIEfHyAFnKwtNnLCnCbdnYB/h64Y8VSrMKWG
         T/ZNrWnK82Yktrhs4zZv2ZRes5fiDaF5PdOdp3AOUQs3mc2z7rdxs6REq3TLu5JJhu+O
         TfgfSu5D6TKAxVRbTkf7UCI/63pE43uCbSCwd/I81whfUhLz1ezshna2Es/sWiPxoGjW
         KDu8VR0H+BE2pz1cGE+IrIgE4qHv96K9JxN/BLk+KQXLnExU29Hd+wqB8feQr4oR1p7K
         mlPGnz5PGWGYTVlzXlMLNiz51rvPU3CiVUl9OyFNMHIIvoqreI0dVi9g7+owmGMJXVJV
         pA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=vT3fQI3rVF361IAptF6DdbVtaKvtdVgwaP4AQ8R4clU=;
        b=n73XXJJk7M+XbEQgwvIlNtaPfzP73+EtM/Bv7KdqqzolOCbuwjI0DLxEI2ieQDvCYz
         XN2pF5U6wsQAr6UtfSUzbXOSs+oTEbKdMDcg4Qg77Eg14IY6iUUdzKygOiw5EJDu4iAT
         8cKzwk87i5CRRBMh0AXWJMNb6x7IAkRST/SRPI2KqB/3IQBR0w3tNxbuJri5Ou0cMPo3
         yDKjsGRlIa7yHRvkg9E3LBOksxTpta1Rp9DQ6ZNGdxxNreK1KK8wWCfxXnICERAN2JvF
         K1eEEOUV9DHpF60Eo21V8qz7MFSs9PWoeE4P2Go2zKmGjDgRtCHL585t00FSEIY7GbK2
         QlJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g7si368516wrb.2.2018.03.26.10.00.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Mar 2018 10:00:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,365,1517871600"; 
   d="scan'208";a="259865714"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2018 19:00:26 +0200
Date: Mon, 26 Mar 2018 19:00:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] dri-devel IRC channel
In-Reply-To: <c7a71e8e-89f1-442c-a3d8-65661c2fa9d0@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1803261859440.5291@hadrien>
References: <c7a71e8e-89f1-442c-a3d8-65661c2fa9d0@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 26 Mar 2018, Nishka Dasgupta wrote:

> I joined the IRC channel for my selected project (dri-devel aka kernel GPU
> subsystem) on Saturday and asked there how I should go about formulating a
> timeline as required in my Outreachy application. However, I have not yet
> received any replies to my question. I am also not sure how to proceed since
> I have never used IRC before, and the Outreachy website specifically says
> not to email the mentors for specific projects directly, and to stick to
> public channels instead. What should I do, since the deadline is this
> Thursday?

Please contact the mentors directly by email for any project-specific
questions, unless the mentors have explicitly told you do to otherwise.

julia

>
> Thank you for your time!
>
> Regards,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c7a71e8e-89f1-442c-a3d8-
> 65661c2fa9d0%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

