X-GM-THRID: 6399870143121326080
X-Received: by 10.13.213.142 with SMTP id x136mr11369637ywd.113.1490770517386;
        Tue, 28 Mar 2017 23:55:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls18854725otj.6.gmail; Tue, 28 Mar
 2017 23:55:16 -0700 (PDT)
X-Received: by 10.31.3.99 with SMTP id 96mr7955793vkd.30.1490770516704;
        Tue, 28 Mar 2017 23:55:16 -0700 (PDT)
Return-Path: <jengelh@inai.de>
Received: from a3.inai.de (a3.inai.de. [2a01:4f8:162:73ab::58c6:b4a1])
        by gmr-mx.google.com with ESMTPS id u134si932856ywg.2.2017.03.28.23.55.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 23:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) client-ip=2a01:4f8:162:73ab::58c6:b4a1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) smtp.mailfrom=jengelh@inai.de
Received: by a3.inai.de (Postfix, from userid 25121)
	id 4AE2E191A81DF; Wed, 29 Mar 2017 08:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by a3.inai.de (Postfix) with ESMTP id 4A0B4176C898;
	Wed, 29 Mar 2017 08:55:15 +0200 (CEST)
Date: Wed, 29 Mar 2017 08:55:15 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: wensong@linux-vs.org, Simon Horman <horms@verge.net.au>, 
    Julian Anastasov <ja@ssi.bg>, Pablo Neira Ayuso <pablo@netfilter.org>, 
    Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
    "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, 
    lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org, 
    coreteam@netfilter.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] netfilter: Clean up tests if NULL returned on
 failure
In-Reply-To: <CALrZqyPeR6X1RrqOsGfLbbZ2rPQgOf=50Rs+ot0kxkkA464V5w@mail.gmail.com>
Message-ID: <alpine.LSU.2.20.1703290854390.26906@n3.vanv.qr>
References: <20170328131340.GA19688@singhal-Inspiron-5558> <alpine.LSU.2.20.1703281552040.21255@n3.vanv.qr> <CALrZqyPeR6X1RrqOsGfLbbZ2rPQgOf=50Rs+ot0kxkkA464V5w@mail.gmail.com>
User-Agent: Alpine 2.20 (LSU 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


On Tuesday 2017-03-28 18:23, SIMRAN SINGHAL wrote:
>On Tue, Mar 28, 2017 at 7:24 PM, Jan Engelhardt <jengelh@inai.de> wrote:
>> On Tuesday 2017-03-28 15:13, simran singhal wrote:
>>
>>>Some functions like kmalloc/kzalloc return NULL on failure. When NULL
>>>represents failure, !x is commonly used.
>>>
>>>@@ -910,7 +910,7 @@ ip_vs_new_dest(struct ip_vs_service *svc, struct ip_vs_dest_user_kern *udest,
>>>       }
>>>
>>>       dest = kzalloc(sizeof(struct ip_vs_dest), GFP_KERNEL);
>>>-      if (dest == NULL)
>>>+      if (!dest)
>>>               return -ENOMEM;
>>
>> This kind of transformation however is not cleanup anymore, it's really
>> bikeshedding and should be avoided. There are pro and cons for both
>> variants, and there is not really an overwhelming number of arguments
>> for either variant to justify the change.
>
>Sorry, but I didn't get what you are trying to convey. And particularly pros and
>cons of both variants.

The ==NULL/!=NULL part sort of ensures that the left side is a pointer, which
is lost when just using the variable and have it implicitly convert to bool.

