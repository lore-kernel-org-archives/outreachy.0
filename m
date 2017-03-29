X-GM-THRID: 6399870143121326080
X-Received: by 10.157.60.14 with SMTP id q14mr10549446otc.112.1490780036452;
        Wed, 29 Mar 2017 02:33:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.192.3 with SMTP id q3ls5507591iof.29.gmail; Wed, 29 Mar
 2017 02:33:55 -0700 (PDT)
X-Received: by 10.36.17.209 with SMTP id 200mr41393itf.28.1490780035654;
        Wed, 29 Mar 2017 02:33:55 -0700 (PDT)
Return-Path: <jengelh@inai.de>
Received: from a3.inai.de (a3.inai.de. [2a01:4f8:162:73ab::58c6:b4a1])
        by gmr-mx.google.com with ESMTPS id f9si935133ywh.6.2017.03.29.02.33.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 02:33:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) client-ip=2a01:4f8:162:73ab::58c6:b4a1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) smtp.mailfrom=jengelh@inai.de
Received: by a3.inai.de (Postfix, from userid 25121)
	id 192B019244BB8; Wed, 29 Mar 2017 11:33:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by a3.inai.de (Postfix) with ESMTP id 1801E17282BA;
	Wed, 29 Mar 2017 11:33:54 +0200 (CEST)
Date: Wed, 29 Mar 2017 11:33:54 +0200 (CEST)
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
In-Reply-To: <CALrZqyOMPfvt1OyH_LrNwj-a316gt=ZU2O0h+s+_NWH49dj_sw@mail.gmail.com>
Message-ID: <alpine.LSU.2.20.1703291133190.27467@n3.vanv.qr>
References: <20170328131340.GA19688@singhal-Inspiron-5558> <alpine.LSU.2.20.1703281552040.21255@n3.vanv.qr> <CALrZqyPeR6X1RrqOsGfLbbZ2rPQgOf=50Rs+ot0kxkkA464V5w@mail.gmail.com> <alpine.LSU.2.20.1703290854390.26906@n3.vanv.qr>
 <CALrZqyN2Vh0J219tY_zj5u-4bUVmD+T=q6yMH9WZN2Y3O7yzpA@mail.gmail.com> <CALrZqyOMPfvt1OyH_LrNwj-a316gt=ZU2O0h+s+_NWH49dj_sw@mail.gmail.com>
User-Agent: Alpine 2.20 (LSU 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


On Wednesday 2017-03-29 11:15, SIMRAN SINGHAL wrote:
>>>>>>       dest = kzalloc(sizeof(struct ip_vs_dest), GFP_KERNEL);
>>>>>>-      if (dest == NULL)
>>>>>>+      if (!dest)
>>>>>>               return -ENOMEM;
>
>But, according to me we should prefer !var over ( var ==NULL ) according to the
>coding style

Where does it say that?

