X-GM-THRID: 6402671483300085760
X-Received: by 10.200.50.174 with SMTP id z43mr8923160qta.32.1491328795817;
        Tue, 04 Apr 2017 10:59:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.197 with SMTP id t66ls9489357ioi.25.gmail; Tue, 04 Apr
 2017 10:59:54 -0700 (PDT)
X-Received: by 10.99.134.193 with SMTP id x184mr7067518pgd.150.1491328794890;
        Tue, 04 Apr 2017 10:59:54 -0700 (PDT)
Return-Path: <horms@verge.net.au>
Received: from kirsty.vergenet.net (kirsty.vergenet.net. [202.4.237.240])
        by gmr-mx.google.com with ESMTP id g82si2614000pfb.5.2017.04.04.10.59.54
        for <outreachy-kernel@googlegroups.com>;
        Tue, 04 Apr 2017 10:59:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) client-ip=202.4.237.240;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@verge.net.au;
       spf=pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) smtp.mailfrom=horms@verge.net.au
Received: from penelope.horms.nl (unknown [173.243.43.210])
	by kirsty.vergenet.net (Postfix) with ESMTPSA id ACFC925BE33;
	Wed,  5 Apr 2017 03:59:51 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=verge.net.au; s=mail;
	t=1491328792; bh=41bNXdofg3KvWg9sXtMhnTONfudYGlaUtLLbGy1yWwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g/B8BUm+gN5gIiXDwWzjSzftKK0KlZHUak9iXnyUZTvny0qDhSZeWNqGtCO1qR2ft
	 Ie/f/yOs96P5uKT4+pEbDUymSsQNjPSd20/hN5HQk2IGYJEArD4Jo9vVDn8qaYgwJs
	 pAaKw6frOAo6kmSnPThdeulS1jgcrGMevuuqjZkU=
Received: by penelope.horms.nl (Postfix, from userid 7100)
	id 00C5960774; Tue,  4 Apr 2017 19:59:48 +0200 (CEST)
Date: Tue, 4 Apr 2017 13:59:48 -0400
From: Simon Horman <horms@verge.net.au>
To: simran singhal <singhalsimran0@gmail.com>
Cc: wensong@linux-vs.org, Julian Anastasov <ja@ssi.bg>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] net: netfilter: Use seq_puts()/seq_putc() where possible
Message-ID: <20170404175948.GD7257@verge.net.au>
References: <20170328215517.GA18237@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170328215517.GA18237@singhal-Inspiron-5558>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 29, 2017 at 03:25:17AM +0530, simran singhal wrote:
> For string without format specifiers, use seq_puts(). For
> seq_printf("\n"), use seq_putc('\n').
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  net/netfilter/ipvs/ip_vs_ctl.c          | 8 ++++----

Simran, I would be happy to pick up the IPVS version if it was posted as a
separate patch.

Alternative, Pablo, if you would like to take this patch feel free to add:

Acked-by: Simon Horman <horms+renesas@verge.net.au>

