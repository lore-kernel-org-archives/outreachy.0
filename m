X-GM-THRID: 6664414939270086656
X-Received: by 2002:a50:944c:: with SMTP id q12mr2432006eda.0.1551700254651;
        Mon, 04 Mar 2019 03:50:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358c:: with SMTP id o12ls1449809ejb.0.gmail; Mon, 04
 Mar 2019 03:50:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqyzzBunQZF7invyphTe6c5TUU3ccHnYu6hDaLS7LPBhpnlFnaA/GOn7mK7oclIFyccbUtka
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr2054559eja.10.1551700253948;
        Mon, 04 Mar 2019 03:50:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551700253; cv=none;
        d=google.com; s=arc-20160816;
        b=l3i/2bY8vKsV7F9s48sfE5uUuUdAU5JWL6PLN+hG59ckllWLQeihaD4dq40plmoAuM
         ro0/5gRknV2rLnyG73YN5gNcJI6eUGpVHVxGB/uMucbSelyRwahHS90UvyNsiN0PUV1g
         4/79DrZR861njMDGImmhN1r3IMY4Ofjw4oM3jp686bINNBBlDiWvGx6BeLAIJ+ClkA3V
         mFp8j7eqZnvRgbd77vQR9WIsZyAQTAAQHFHBqYWMmsq2pdbHB321J3GAq1ALrdWCZou6
         fWLYXQSOc3biriQg6cGYV1ucw16hTliS//SI8F5Glcleir6/pEMC/Q5nPFCl2+fq3SHs
         eMbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kFJ1E4rToGqEsvrDQPtLJLQsgMe2Vuqr7SjrnitrI60=;
        b=K9710WGNMoQaEKCaGJN48molqcbBbMfAC7q7kORvRA8oHHt7xgKAdgFFNyFlGl9LnJ
         6ilG7rwHtQnW6HtMnyERDYD7RR9je7oH4NwuaQFq3b7KPj1ZrkJf73D28zohlBKGE+3H
         t7hiJJK77Ys57YAG0Ry1kPOpFvB9y+o/0WFSWNXzuyBBGtpwjLE88sq1z0n1O93p6Lkk
         AY5Rv9FxTr4xR9owd0Ih2zj3Nm1ypYpp8l+T9bfU4Ufc7mCPJj3A19zapLxjxkVxgl+y
         IYu1FKyr52SGVuCWxOQlMjltGUvaFMQbvAzs2Eog8woIhplTibxdJEiXcdohMs+X9WJt
         5MPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si196889ejx.1.2019.03.04.03.50.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 03:50:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,439,1544482800"; 
   d="scan'208";a="298003398"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 12:50:53 +0100
Date: Mon, 4 Mar 2019 12:50:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/1] staging: fbtft: line over 80
 characters.
In-Reply-To: <20190304111754.GA3926@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.20.1903041248180.4370@hadrien>
References: <20190304111754.GA3926@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

>  #define fbtft_init_dbg(dev, format, arg...)                  \
>  do {                                                         \
> -	if (unlikely((dev)->platform_data &&                 \
> -	    (((struct fbtft_platform_data *)(dev)->platform_data)->display.debug & DEBUG_DRIVER_INIT_FUNCTIONS))) \
> -		dev_info(dev, format, ##arg);                \
> +	if (unlikely((dev)->platform_data &&		     \
> +	    (((struct fbtft_platform_data *)                 \
> +	      (dev)->platform_data)->display.debug	     \
> +	     & DEBUG_DRIVER_INIT_FUNCTIONS)))		     \
> +		dev_info(dev, format, ##arg);
>  } while (0)

This one still doesn't look good, because you have separated the cast and
the casted thing.  One wants to be able to see easily what is going on.
Given that there are so many parentheses, it would be better to keep the
cast and the casted thing on the same line, to see what is what.

julia

