X-GM-THRID: 6522213287288897536
X-Received: by 10.80.243.144 with SMTP id g16mr30781edm.11.1518636279310;
        Wed, 14 Feb 2018 11:24:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.171.6 with SMTP id s6ls9368710edc.2.gmail; Wed, 14 Feb 2018
 11:24:37 -0800 (PST)
X-Google-Smtp-Source: AH8x226M+jXiIyRMZLb8ozgE5EzDAy9Taka0I8XsxWIq2/K2vj/oOrTI5Dl3gDP4delEECsTPL9P
X-Received: by 10.80.243.144 with SMTP id g16mr30772edm.11.1518636277726;
        Wed, 14 Feb 2018 11:24:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518636277; cv=none;
        d=google.com; s=arc-20160816;
        b=Xxh8JIN7Apd7ztf1Dr5sswAGGZRmF1pV2N2bmWU6va3WAk1fOvXgLrooiDfbkBCUBf
         co966U55CHW7di7nAZsjrX4OtSt5xFvMBgIyz5pWySzUdoYMAOQJdQlRQFhmsckUUqaG
         RmNVCBROeJsWvpVZE7LjTE60tgR9RAncg9ScdlkLhDBW7r2EH6aBeL39WxzKXwbKRtJY
         GMGCjaSZlY2TtOl+WV6xkUsoeugJ2jwMaQKeoS4hGTcv5Pq7Kh/ys8NjewDICTZ8kGRk
         9EE97fHEgGO7CwI2nYp2u8numb8AS8zWT5huRATGNPhH1UkdtZFcQL2ryCDKg/UzZJ+E
         lvKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=6gT9KtsMXTGkjDR8C9HUILwDC8S8pvjxiJVoQiX1VCg=;
        b=fTvFWNW7B9ID98EjB4YJI17ljnYAGlztSjsWSebixOfmDmW9F99UMixTQ+JCVQFJHO
         rg5s0+jsgfPN5NfspPzV1ylovWMcuizAbKA7tU8HbkNdlCqICIyTPb1Ua193bvXnSG/l
         4myfw0idhU4w6nnKwnZtKhTVAtiW13nke4WNHDXeb0rjYVw/3vReP3c/+XBYQ+D7k/z1
         iO2dwNPH3DLAQJLRtmB+FKTWxVSSap0lg+NNloEhp8rsAAfcFWkJGk1ZSw1AZ6BgMDJj
         nZ++5MEG4sTA4nD+bCHhkoOVCK4aAKolKlUVNzYMjZeI9ShwfUmr5kPltytrQvqU6iqH
         eyjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t4si871060edt.2.2018.02.14.11.24.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Feb 2018 11:24:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,513,1511823600"; 
   d="scan'208";a="254815838"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2018 20:24:37 +0100
Date: Wed, 14 Feb 2018 20:24:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kedunne@ucsc.edu>
cc: Vaishali Thakkar <vthakkar1994@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Initial Application
In-Reply-To: <20180214164825.maasspl575rl7343@kdunne-Inspiron-5566>
Message-ID: <alpine.DEB.2.20.1802142023150.2178@hadrien>
References: <20180214011834.4t7ltqv632mspyy7@kdunne-Inspiron-5566> <alpine.DEB.2.20.1802140843210.3874@hadrien> <CAK-LDbJHmSzXW+n3HXGYke0_siubjruTrPD4n0dNA26VtrTGuA@mail.gmail.com> <20180214164825.maasspl575rl7343@kdunne-Inspiron-5566>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Thanks Vaishali and Julia for the updates. In case it is still needed, I
> have attached a pdf of the pages that are restricted until verifying
> eligibility.

To my understanding you should be able to check eligibility without making
a contribution, then see the projects, then work on the tutorial and then
the project small tasks, and the update your application accordingly with
the information for the specific projects you are interested in.

julia

