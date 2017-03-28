X-GM-THRID: 6402542021433622528
X-Received: by 10.99.254.5 with SMTP id p5mr1552904pgh.13.1490713214037;
        Tue, 28 Mar 2017 08:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls15969737otn.25.gmail; Tue, 28 Mar
 2017 08:00:13 -0700 (PDT)
X-Received: by 10.129.80.11 with SMTP id e11mr9886771ywb.133.1490713213590;
        Tue, 28 Mar 2017 08:00:13 -0700 (PDT)
Received: by 10.202.44.70 with SMTP id s67msois;
        Tue, 28 Mar 2017 07:03:11 -0700 (PDT)
X-Received: by 10.99.98.194 with SMTP id w185mr9878273pgb.108.1490709791223;
        Tue, 28 Mar 2017 07:03:11 -0700 (PDT)
Return-Path: <jengelh@inai.de>
Received: from a3.inai.de (a3.inai.de. [2a01:4f8:162:73ab::58c6:b4a1])
        by gmr-mx.google.com with ESMTPS id u134si575107ywg.2.2017.03.28.07.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 07:03:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) client-ip=2a01:4f8:162:73ab::58c6:b4a1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:162:73ab::58c6:b4a1 as permitted sender) smtp.mailfrom=jengelh@inai.de
Received: by a3.inai.de (Postfix, from userid 25121)
	id 0EB2E193F387A; Tue, 28 Mar 2017 16:03:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by a3.inai.de (Postfix) with ESMTP id 0DE171C57EA3;
	Tue, 28 Mar 2017 16:03:10 +0200 (CEST)
Date: Tue, 28 Mar 2017 16:03:09 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: simran singhal <singhalsimran0@gmail.com>
cc: pablo@netfilter.org, outreachy-kernel@googlegroups.com, 
    Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
    "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org, 
    coreteam@netfilter.org, netdev@vger.kernel.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [PATCH] netfilter: ipset: Use max macro instead of ternary
 operator
In-Reply-To: <20170328133256.GA24590@singhal-Inspiron-5558>
Message-ID: <alpine.LSU.2.20.1703281555450.21255@n3.vanv.qr>
References: <20170328133256.GA24590@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (LSU 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tuesday 2017-03-28 15:32, simran singhal wrote:

>This patch replaces ternary operator with macro max as it shorter and
>thus increases code readability.
>
>-	return (ret < 0 ? 0 : ret);
>+	return max(0, ret);

While the two are functionally equivalent, "max" conveys a meaning of 
"upper bound" (think ceil(3)), i.e. a _count of something_, but the 
function still returns a logical "error or bool".

Such a change may be usable in an IOCCC or a codegolf contest,
but it destroys rather than improves readability IMHO.

