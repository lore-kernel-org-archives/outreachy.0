X-GM-THRID: 6674230099683835904
X-Received: by 2002:adf:eb01:: with SMTP id s1mr1046602wrn.5.1553965553993;
        Sat, 30 Mar 2019 10:05:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7e86:: with SMTP id z128ls723218wmc.4.canary-gmail; Sat,
 30 Mar 2019 10:05:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybbZBGKOd0ObnwsQmqh8SSgtKIW67ecAqNKqCJsFT90qPs3owRPyAtCgMje9eCo9ZsZOjt
X-Received: by 2002:a1c:48c4:: with SMTP id v187mr768193wma.2.1553965553210;
        Sat, 30 Mar 2019 10:05:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965553; cv=none;
        d=google.com; s=arc-20160816;
        b=VSjAP6GaKhOJMZg5j6UKrRBWNsffY1nrtXbHoSOsInsn55x//vA4gWilRQkGxVnsOj
         XAt+qoPylCQ9qfzEVX5G4kuScqkD3CNRuHOaIPPKu/bEGZ0oHnSvFm/BVeBVfDPPI2Oo
         MMtWLLtIC8aWTvBE80dmDb7VZf80GITXiDTnrLicB/ANs7/vAYi4voo/hwF8l3K/gRul
         hMVmBrkQAqh9/AYxketRWILqcE0M0zZuUSvZCK/4FKcYEXU8P1dpfjuUWLOjGp9uqCWp
         7rJUY6MsTv0Y2bqCTE36nC42WwL7FSi5NxOLN09QGfGoUe0mN7/p8SrKCVZfOM4uWM81
         QDBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OTMIKOa1e/H83OT9InJC6NP7CsN5fTw02VuTMgtLlvU=;
        b=G7W78VJ34zBM1FJcHAn17uco37eni9nrHJxE3eug5TTL7Hv+BDI1oH2F+PKFTsUwp9
         tUH/q4bQS2QIpooSAXUNaVXTNA5YeW68FC9OZmfEc0qOH8LkYPjfbQoQbu8mZp5JoZl5
         N8142Gb0nUdZl9UXJxyMx9Fh8l7amI/d9w/yOFpWUpWktMRcVB6yfsx1ewXYxqnME3JS
         e9Osvj7dg7x1mYpA+RF7BYCKD+HkJKDIEgVj5cMSDP0V2QIadPS8UAuHWWM6q1lTKJVi
         ktVFWHZhx5Yqb06vlkMPAsPbDNd592chc08CubtjTgr3AMVW1ZfdCoD+o66SpjWsJKYz
         +pIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si289712wmf.0.2019.03.30.10.05.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:05:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376472362"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 18:05:52 +0100
Date: Sat, 30 Mar 2019 18:05:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: wilc1000: Modify return
 statement
In-Reply-To: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903301805410.2608@hadrien>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The cover letter should also be v3.

julia

On Sat, 30 Mar 2019, Sanjana Sanikommu wrote:

> This patchset does the following things.
> 1.Modify return statement in wilc_spi.c
> 2.Modify return statement in host_interface.c
>
> Changes in v3:
> Make a patch series.
>
> Changes in v2:
> Adjust spaces for last argument in return statement host_interface.c.
> Adjust space for last argument in return statement in wilc_spi.c.
>
> Sanjana Sanikommu (2):
>   staging: wilc1000: wilc_spi.c: Modify return statement.
>   staging: wilc1000: host_interface.c: Modify return statement.
>
>  drivers/staging/wilc1000/host_interface.c | 31 +++++++----------------
>  drivers/staging/wilc1000/wilc_spi.c       | 10 +++-----
>  2 files changed, 13 insertions(+), 28 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190330170116.4761-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

