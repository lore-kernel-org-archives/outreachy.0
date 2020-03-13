X-GM-THRID: 6803718215281147904
X-Received: by 2002:a1c:a5c2:: with SMTP id o185mr11126556wme.173.1584114489916;
        Fri, 13 Mar 2020 08:48:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls5099561wrc.7.gmail; Fri, 13 Mar
 2020 08:48:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv8AhdffIjfsVU7e8VC7MmrbgwhUVk7hU7lKW/a/tu0OGFYNiZlIF61bRmDF6QTpjDNNegN
X-Received: by 2002:adf:83c4:: with SMTP id 62mr1524068wre.105.1584114488576;
        Fri, 13 Mar 2020 08:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114488; cv=none;
        d=google.com; s=arc-20160816;
        b=Ex6+547/4KPC4WtzV2+S+RFR108K8HO3VBYNmr+/2zBluSPaiIf//MogUXg/SRU8XZ
         g0tiIs+ECkjELKUXqP3yFF6UuOIzhHwscVJipciSpTajpDeCc+LBOTIJHBiz2DCyBgH3
         cict+LY2USDC9StT16+9eYy5q8QaT4mmJo2RE94e1jRR8eUu49a1/JpxnCMLkQxVkxGZ
         2WGewqBW3IDxli0mW83rtpK9C8AM7xXrKAUJbQGUKuZHPuiY6wQ04NDLtQ3XQzqFGN28
         o/8fZa9EVzMF0O6mnXgXTzrPSnvEzO1Ob5PXSva4j1mIjPCWecsE9Y8s9Dh6RnUF+DV4
         BROg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=hz1DjkXs8VzlMpBGtURdgxOKpFWm9iCeKsTw6QON5sI=;
        b=OCvq0yww9s4W982pcedawB5tqmVejtzvbO7TztGT999clY//XTjQGaW9tZMWHxCoFh
         8oH7R6+U+/n2xotU74gJItONPPti+a29DhRn/K+Erxr+k4bm6gk7f0DZOhelvhbTbpUC
         CDuY53MeV+hvpBBMn7AeQjvPA7miyyrUO/E2/mrCu8gL9mMR7t574HI2BCrJYqCXzbYT
         5XixUvh1p3J6HNuSFMgUSJbS0QBkTBhJkreFj/o3p2nSdZC0zAImV7cqRv10zai1CIdM
         5+2Q4LLeVia3CArroWEhyT+hjMEnlZbgDlp6Cd5QjXZXVcq7q9yw+lOI1sKQUkSJnQ3i
         NKPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f1si309964wme.1.2020.03.13.08.48.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 08:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,549,1574118000"; 
   d="scan'208";a="440232753"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 16:48:08 +0100
Date: Fri, 13 Mar 2020 16:48:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] need advise on patch subject line for ipu3
 css driver
In-Reply-To: <de37f8e4-b633-4469-b719-39176c931c87@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003131647570.2355@hadrien>
References: <de37f8e4-b633-4469-b719-39176c931c87@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Mar 2020, Deepak Varma wrote:

> Hello,
> Could you please advise if I can continue to use the patch subject format
> for the ipu3:css driver as it appears in the log history:
>
> media: staging/intel-ipu3: css:<<my commit message >>
>
> I have used staging: subsystem: driver_name: <<my commit message>> so far.

Do what others have done.

julia

