X-GM-THRID: 6802607426621145088
X-Received: by 2002:a2e:9f11:: with SMTP id u17mr2074042ljk.240.1583862800308;
        Tue, 10 Mar 2020 10:53:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:9141:: with SMTP id y1ls1279238lfj.8.gmail; Tue, 10 Mar
 2020 10:53:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuyhLKz4mgGrOmtIzp3vGzcSdo4npiS9Vt7tWEYeK14Wi/0LaypvMt2aOkyyiy//e67hHFT
X-Received: by 2002:a19:80e:: with SMTP id 14mr12967780lfi.206.1583862798737;
        Tue, 10 Mar 2020 10:53:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583862798; cv=none;
        d=google.com; s=arc-20160816;
        b=nDPSEMoiGYl09JpQ7dcNdaZDcAnw+MH/AB8gAOEZ/XQ8MijMLRiKJBxlTNLNBooFOc
         RjZe6fttseOieI136gIcMwKMTH7fkWUZWtByHyt6/SjWkZo9dT0pX3t6eJE6Xc3puKx/
         bsLkWn6XIWdmf/QvONyYVD/+kZzoLI1dJBN7YOFmnUOkDH+J0FeYEaHeBq3baVfavJcX
         xt7+FNy3ReserV5iaXoRyyvI+r4IH75hqvIc3z+R/AugouUBNKUPRL1I2jrXxY8tqEDU
         qlgWM9kghesbnnttVlKp+OIcIElSDdF2O8soHpkfJCO3q/GMfNLAsDl214V08Mmvp35k
         Cqgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=CA41yYE7c11QYVAm7Zte56j/O6luOIDV8BrKm88Yv+M=;
        b=ITz1gtBmBO9c6c2x5pKbT4QrOeV8aB+x7EsxL7adg3jaxdqOA8iwXUwBFbYc5VIqQN
         sa94emHRzlertBNZm++y9wHWkWeQ9XpYkosGGOKPfCl6DmqhxZjF99oziDMupShHcxxR
         dIaCJJgPKA+pP6Dg1zS8OQcydT1U9CJOW/LF6dG4ZREokMVNaS2XTmZ+8fTxpT5PAMuo
         Xe2DCrVzpcf/TmSxCASO78/5TJzqXzd+dGCJ+1FbfeNZH1N8G+YFQaOTK6cCm/KqQsEV
         j3XYVf8jD79BCUAa7+w2tGRGdLRdeROzCmJLGEg+8Gs0K0FAuTlJmwmbj8x7dX7ass4u
         zTQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o24si738039lji.4.2020.03.10.10.53.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 10:53:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,537,1574118000"; 
   d="scan'208";a="341921898"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 18:53:17 +0100
Date: Tue, 10 Mar 2020 18:53:17 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging : comedi : dt2801 : remove
 old unused code
In-Reply-To: <63066886-84cf-4915-8def-1528f403a20f@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003101852350.26409@hadrien>
References: <20200310155053.GA27759@deeUbuntu> <63066886-84cf-4915-8def-1528f403a20f@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 10 Mar 2020, Deepak Varma wrote:

> Thank you Julia. I will update the subject line and resubmit the patch.

Please don't top post.  You seem to have removed my comment completely (I
put it at the top because it was referring to the subject line, which was
just above).

julia

