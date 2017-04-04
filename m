X-GM-THRID: 6402540449537458176
X-Received: by 10.157.5.72 with SMTP id 66mr9840761otw.106.1491328102212;
        Tue, 04 Apr 2017 10:48:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.8 with SMTP id m8ls670782otm.34.gmail; Tue, 04 Apr 2017
 10:48:21 -0700 (PDT)
X-Received: by 10.129.68.35 with SMTP id r35mr10256124ywa.143.1491328101809;
        Tue, 04 Apr 2017 10:48:21 -0700 (PDT)
Return-Path: <horms@verge.net.au>
Received: from kirsty.vergenet.net (kirsty.vergenet.net. [202.4.237.240])
        by gmr-mx.google.com with ESMTP id i189si2736025pfg.3.2017.04.04.10.48.21
        for <outreachy-kernel@googlegroups.com>;
        Tue, 04 Apr 2017 10:48:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) client-ip=202.4.237.240;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@verge.net.au;
       spf=pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) smtp.mailfrom=horms@verge.net.au
Received: from penelope.horms.nl (unknown [173.243.43.210])
	by kirsty.vergenet.net (Postfix) with ESMTPSA id 0FF6525BE33;
	Wed,  5 Apr 2017 03:48:19 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=verge.net.au; s=mail;
	t=1491328099; bh=BJm4AzzoVcY+Ygg2P09JfyPROmi21e515lYTpBV1Dso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TWGfbhpHN2zuXrQ9Yf1S2C5Cs9WV7Ybw7KNj+O/e4o8wSTNbm96cC5qTy7jV63rtW
	 aeGJYsGmXYXtfiJHqp6XF9P615BciAQX384dfZUW8cgj3GzNA+VoL6lTK867aK32/L
	 ++8CkxD+H5WTq8l6yYphjfvkRhGqW7MlcRt7LKhY=
Received: by penelope.horms.nl (Postfix, from userid 7100)
	id 95C0960774; Tue,  4 Apr 2017 19:48:16 +0200 (CEST)
Date: Tue, 4 Apr 2017 13:48:16 -0400
From: Simon Horman <horms@verge.net.au>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: wensong@linux-vs.org, Julian Anastasov <ja@ssi.bg>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netdev@vger.kernel.org, lvs-devel@vger.kernel.org,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] net: netfilters: Remove unnecessary parenthesis
Message-ID: <20170404174816.GC7257@verge.net.au>
References: <20170328132648.GA6644@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170328132648.GA6644@arushi-HP-Pavilion-Notebook>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 28, 2017 at 06:56:48PM +0530, Arushi Singhal wrote:
> Rmoved parentheses on the right hand side of assignment, as they are
> not required. The following coccinelle script was used to fix this
> issue:
> 
> @@
> local idexpression id;
> expression e;
> @@
> 
> id =
> -(
> e
> -)
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  net/netfilter/ipvs/ip_vs_proto_tcp.c   | 2 +-

grep seems to find some other instances of this problem for IPVS.
I would prefer if all of them were fixed.

$ grep -n "= *(.*);" net/netfilter/ipvs/*
After some manual filtering I see

net/netfilter/ipvs/ip_vs_ctl.c:113:     nomem = (availmem < ipvs->sysctl_amemthresh);
net/netfilter/ipvs/ip_vs_ctl.c:279:     ahash ^= ((size_t) ipvs >> 8);
net/netfilter/ipvs/ip_vs_proto_tcp.c:490:       int on = (flags & 1);          /* secure_tcp */
net/netfilter/ipvs/ip_vs_proto_tcp.c:498:       pd->tcp_state_table = (on ? tcp_states_dos : tcp_states);
net/netfilter/ipvs/ip_vs_sync.c:719:    s->v4.type = (cp->af == AF_INET6 ? STYPE_F_INET6 : 0);
net/netfilter/ipvs/ip_vs_sync.c:948:                    cp->timeout = (3*60*HZ)

As mentioned elsewhere: If you would like me to pick up patches for IPVS
then please post patches that only update IPVS files. I'm also happy for
Pablo to pick up patches that include both IPVS and non-IPVS Netfilter
updates of this nature.  Pablo can offer his own guidance here.


