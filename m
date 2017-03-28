X-GM-THRID: 6399870143121326080
X-Received: by 10.200.57.65 with SMTP id t1mr8880496qtb.62.1490713214104;
        Tue, 28 Mar 2017 08:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.38 with SMTP id 35ls262519ott.19.gmail; Tue, 28 Mar
 2017 08:00:13 -0700 (PDT)
X-Received: by 10.157.42.5 with SMTP id t5mr9305246ota.149.1490713213584;
        Tue, 28 Mar 2017 08:00:13 -0700 (PDT)
Received: by 10.202.206.72 with SMTP id e69msoig;
        Tue, 28 Mar 2017 06:54:42 -0700 (PDT)
X-Received: by 10.13.249.4 with SMTP id j4mr9959893ywf.17.1490709282025;
        Tue, 28 Mar 2017 06:54:42 -0700 (PDT)
Return-Path: <jengelh@inai.de>
Received: from a3.inai.de (a3.inai.de. [2a01:4f8:162:73ab::58c6:b4a1])
        by gmr-mx.google.com with ESMTPS id o185si169868ywb.5.2017.03.28.06.54.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 06:54:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) client-ip=2a01:4f8:162:73ab::58c6:b4a1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) smtp.mailfrom=jengelh@inai.de
Received: by a3.inai.de (Postfix, from userid 25121)
	id DD71C193F387D; Tue, 28 Mar 2017 15:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by a3.inai.de (Postfix) with ESMTP id CBB041C57EA2;
	Tue, 28 Mar 2017 15:54:40 +0200 (CEST)
Date: Tue, 28 Mar 2017 15:54:40 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: simran singhal <singhalsimran0@gmail.com>
cc: wensong@linux-vs.org, Simon Horman <horms@verge.net.au>, 
    Julian Anastasov <ja@ssi.bg>, Pablo Neira Ayuso <pablo@netfilter.org>, 
    Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
    "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, 
    lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org, 
    coreteam@netfilter.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] netfilter: Clean up tests if NULL returned on
 failure
In-Reply-To: <20170328131340.GA19688@singhal-Inspiron-5558>
Message-ID: <alpine.LSU.2.20.1703281552040.21255@n3.vanv.qr>
References: <20170328131340.GA19688@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (LSU 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tuesday 2017-03-28 15:13, simran singhal wrote:

>Some functions like kmalloc/kzalloc return NULL on failure. When NULL
>represents failure, !x is commonly used.
>
>@@ -910,7 +910,7 @@ ip_vs_new_dest(struct ip_vs_service *svc, struct ip_vs_dest_user_kern *udest,
> 	}
> 
> 	dest = kzalloc(sizeof(struct ip_vs_dest), GFP_KERNEL);
>-	if (dest == NULL)
>+	if (!dest)
> 		return -ENOMEM;

This kind of transformation however is not cleanup anymore, it's really 
bikeshedding and should be avoided. There are pro and cons for both 
variants, and there is not really an overwhelming number of arguments 
for either variant to justify the change.

