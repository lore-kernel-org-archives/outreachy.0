X-GM-THRID: 6949457058068430848
X-Received: by 2002:a1c:4c0c:: with SMTP id z12mr17676037wmf.38.1618054652680;
        Sat, 10 Apr 2021 04:37:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5348:: with SMTP id t8ls243909wrv.2.gmail; Sat, 10 Apr
 2021 04:37:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwezhQ3LvNQJWjbghHbyeh8Zq1/F5h/lrILgFZbuvaAQUo7hP/r9/J2wpUVfuYb1gaDK+tk
X-Received: by 2002:a5d:4707:: with SMTP id y7mr474444wrq.396.1618054651156;
        Sat, 10 Apr 2021 04:37:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618054651; cv=none;
        d=google.com; s=arc-20160816;
        b=P4LE/S7KVsM7kOPTwDrIGKSpcbQPsqkRliZ9OdPqaPfuLtxJ3RT6LWVQNswolRrWYz
         GxltY0kHMKMXkaPP9+PjEAnA2h66cG7lbzcqqiilNGgmcLTpa5vjdDgcEbDwRYcoRwu4
         2kk9BiDShxr0Mh/qR1VPsyGpYm53XsorpEwQTo518Vvb23ViTJaEnWPRrFIdgm0aif3Z
         x1y+zF3dadfrhbjRHeSCBWhxgjLH1ngf5qw/ecu4zEZii1C2EnTVHmUSi5N4k28XdYMz
         jf8Knd2ZiVpXyp4jrK7ntYuFA+j7xiMZjmdLj5QFy+Zw8H+qFGI0nmjVsyGMfQFGE3O8
         nMqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=omJB6a9sO56RyDd0Gh00e8kroWnuy5LWC3L7u9Yb78Y=;
        b=fI00OEZo9JQRX2rsPbtfIiuEEfhfH9mGGhSS+PCh0zGjCiqdlCp77/0w/HE+McRRgl
         HFWT+Du2mie8+2WcMV5skJjmleZFXf5OOkWOf3u0Xj7lm/26sLBjKzdEs5QtbXe9gmix
         ilSY62afCvd/thG9lhfVyKGQ9sD2QrCp6D69WTz2TK/zEMSi20P9MaNdISc//ncfzLHS
         7Yw9O9QorIvBlJd9TaOiSbYxhV/jjl5Knuu+cEZGppoHhIuzUY11dI0VSadKT7EbkIWK
         x5yJWAeCpxwygrjTspIztwPFxJxWLwHwnd1pokBriz8zcfCabS8ly9S1kBNlDwjx15A+
         3emQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l4si627770wru.4.2021.04.10.04.37.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 04:37:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A8EyCK6A21whjpfXlHegZsceALOonbusQ8zAX?=
 =?us-ascii?q?/mp2TgFYddHdusC1hfIA1QL1jjF5YgBQpfmrPq6cTXTAsaNv6Y4KMru4GCXgsm?=
 =?us-ascii?q?2kLIZthLGSigHIMSv46+JbyONcY7FzYeeARWRSoOTbxE2DE9gmyMSa66zAv5a7?=
 =?us-ascii?q?815BRRxnApsQlTtRJwqfElJ7XwVKQac+faDw2uNqvCGnYm5SU8LTPAhPY8HtvN?=
 =?us-ascii?q?vO/aiWFiIuIz4CxE2wgSiz6Lj8eiLooCs2dz9U278t/SzkvmXCl9iemsihxhXR?=
 =?us-ascii?q?2mPV5Zg+oqqU9vJ5CMaBitcYJ1zX427CCOsROczmzVdFxpDXmS5a6+XkmBsrM8?=
 =?us-ascii?q?Rt536URFibyCGduDXI6zo27m+n9FnwuwqUneXCSDU2B9Epv/MSTjLi90EisNtg?=
 =?us-ascii?q?uZg7rF6xipw/N2K9oA3A/dTSEzllmk2oyEBS7tI7vjh1XYcYVb5ctoB3xjImLL?=
 =?us-ascii?q?4wWAbz6IUiGO4rJNjE//BIfV7fR22xhBge/PWcGlA6HhKDSk9HhcCPyThRmxlC?=
 =?us-ascii?q?vj4l7f1auGwB+pI7Q5wB2uKsCM5VvYALceMsUIJWLMJEYfLyMnDEWhrKLWKULR?=
 =?us-ascii?q?DGOcg8VU7lmtrJzI4JxMuDXdgp9d8Jsrznd3903FRSR2veTfKj56Bq2DjpBEWF?=
 =?us-ascii?q?GQ71wsUb3ZJ+obGUftrWDRE=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="502547776"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 13:37:30 +0200
Date: Sat, 10 Apr 2021 13:37:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
In-Reply-To: <10115279.QsZogQpAqX@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104101334190.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <4547533.LBOHeWh67L@localhost.localdomain> <YHGGBpSLj+W8ikXz@kroah.com> <10115279.QsZogQpAqX@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> That variable has global scope and is assigned at least in:

What do you mean by global scope?  None of the following look like
references to global variables.

julia

>
> drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:368:
> pwrpriv->fw_current_in_ps_mode = false;
>
> drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:380:
> pwrpriv->fw_current_in_ps_mode = true;
>
> drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:433:
> adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
>
> drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:981:
> pwrctrlpriv->fw_current_in_ps_mode = false;

