X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.29.66 with SMTP id ju2mr3018466wid.1.1425393078045;
        Tue, 03 Mar 2015 06:31:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.9 with SMTP id l9ls816711wic.11.canary; Tue, 03 Mar
 2015 06:31:15 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr309816wid.1.1425393075583;
        Tue, 03 Mar 2015 06:31:15 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com. [209.85.212.171])
        by gmr-mx.google.com with ESMTPS id i8si121685wif.1.2015.03.03.06.31.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:31:15 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 209.85.212.171 as permitted sender) client-ip=209.85.212.171;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 209.85.212.171 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-f171.google.com with SMTP id hm9so48wib.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=Oi8tuKmITA+oCj9tF1VSK8FJ9DO9D2tfSegvvwUzPDs=;
        b=MgTWFe3DWsPDbU2g6s8mXjTdp8di7iuosG4MD8w5Ffq9rsDGliciFlRFUeG/JJMDDr
         spB9iiBUrYmOeKHiF2Tt49etZ+m9Dkv3UXPltpflLFG8jAz3W3SMLNqSQ1zMVwSNfLUM
         xhGrZErsleDZ1HXaT6LvJfh9s+nb6wL0yJNTQe/6UT7V3kQyzpO3hK6ng0soUkdPcJdo
         V/RYHZ8TPxhN33W7/NeW3QXllH+uPqm3REN8RYrtyIAGGb3+m80Rhq9VUiWYKKfNGnMC
         /rBtSovtRgMoGZdgFyoCEyzvsFkv9+67uqsSIpLKEstt7NgAvYwKrOUAkC1mVg8KiMP5
         vK9A==
MIME-Version: 1.0
X-Received: by 10.180.80.34 with SMTP id o2mr46313225wix.75.1425393075400;
 Tue, 03 Mar 2015 06:31:15 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.28.3.68 with HTTP; Tue, 3 Mar 2015 06:31:15 -0800 (PST)
In-Reply-To: <20150303142737.GA27100@waves>
References: <20150303142737.GA27100@waves>
Date: Tue, 3 Mar 2015 16:31:15 +0200
X-Google-Sender-Auth: R4RXi8RRcSMlGFCfN5mXsY5pVaA
Message-ID: <CAEnQRZAwLjBYaVF-wy53Ja0mMT=Si9UK6qTYyBPiysnE76k2Pg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: iio: meter: add check on
 return variables
From: Daniel Baluta <daniel.baluta@intel.com>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 3, 2015 at 4:27 PM, Aya Mahfouz
<mahfouz.saif.elyazal@gmail.com> wrote:
> adds checks on variables that are used to return values. If
> the value is less than zero, this indicates that an error
> occurred and hence a message is printed through dev_err.
> Checks are made on negative values only since spi_* functions
> return negative error codes.
>
> The functions were found using the following script but the
> aforementioned modification was what was carried out in the end:
> @@
> identifier len,f;
> @@
>
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

