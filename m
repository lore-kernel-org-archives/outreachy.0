X-GM-THRID: 6402914629157126144
X-Received: by 10.129.138.132 with SMTP id a126mr1509555ywg.156.1490944511100;
        Fri, 31 Mar 2017 00:15:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls6947460iof.24.gmail; Fri, 31 Mar
 2017 00:15:10 -0700 (PDT)
X-Received: by 10.36.57.15 with SMTP id l15mr555590ita.9.1490944510023;
        Fri, 31 Mar 2017 00:15:10 -0700 (PDT)
Received: by 10.202.107.131 with SMTP id g125msoic;
        Thu, 30 Mar 2017 05:55:15 -0700 (PDT)
X-Received: by 10.157.9.175 with SMTP id q44mr1956969otd.21.1490878515580;
        Thu, 30 Mar 2017 05:55:15 -0700 (PDT)
Return-Path: <horms@verge.net.au>
Received: from kirsty.vergenet.net (kirsty.vergenet.net. [202.4.237.240])
        by gmr-mx.google.com with ESMTP id s67si290452pfs.4.2017.03.30.05.55.15
        for <outreachy-kernel@googlegroups.com>;
        Thu, 30 Mar 2017 05:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) client-ip=202.4.237.240;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@verge.net.au;
       spf=pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) smtp.mailfrom=horms@verge.net.au
Received: from penelope.horms.nl (unknown [217.111.208.18])
	by kirsty.vergenet.net (Postfix) with ESMTPSA id BE89525B82D;
	Thu, 30 Mar 2017 23:55:12 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=verge.net.au; s=mail;
	t=1490878513; bh=sVL3/hu2EPv1rSFNKzCr2TF4U5DMrJHopkrGKknH8C4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ux7WP1itEw3ziPN77Q5T6GjMCPcgluG8uprezsYCYOMnA2yeBHNo78LK59uDrqVqx
	 aqgcw1TckgCCbGUGrEHz4oQ1QZDexTz4Kfa1Vy2CFl5lzqYO8okp4JUpsJxicctAMQ
	 6X3XT3lEKKfMQ7r/Bi7D8YrNQi1hfgkhl85Pa5Yo=
Received: by penelope.horms.nl (Postfix, from userid 7100)
	id 4F1F2607A0; Thu, 30 Mar 2017 14:55:09 +0200 (CEST)
Date: Thu, 30 Mar 2017 14:55:09 +0200
From: Simon Horman <horms@verge.net.au>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Wensong Zhang <wensong@linux-vs.org>,
	Julian Anastasov <ja@ssi.bg>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] net: netfilter: remove unused variable
Message-ID: <20170330125509.GD2980@verge.net.au>
References: <20170329145752.GA2756@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170329145752.GA2756@arushi-HP-Pavilion-Notebook>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 29, 2017 at 08:27:52PM +0530, Arushi Singhal wrote:
> This patch uses the following coccinelle script to remove
> a variable that was simply used to store the return
> value of a function call before returning it:
> 
> @@
> identifier len,f;
> @@
> 
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Applied with patch prefix updated to "ipvs:".

