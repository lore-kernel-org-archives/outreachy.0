X-GM-THRID: 6402496770620784640
X-Received: by 10.129.18.130 with SMTP id 124mr1445157yws.56.1490944511099;
        Fri, 31 Mar 2017 00:15:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.197 with SMTP id o188ls7007960ioe.53.gmail; Fri, 31
 Mar 2017 00:15:10 -0700 (PDT)
X-Received: by 10.99.122.65 with SMTP id j1mr1391367pgn.89.1490944510222;
        Fri, 31 Mar 2017 00:15:10 -0700 (PDT)
Received: by 10.202.96.85 with SMTP id u82msoib;
        Thu, 30 Mar 2017 05:44:38 -0700 (PDT)
X-Received: by 10.13.227.65 with SMTP id m62mr903454ywe.27.1490877878749;
        Thu, 30 Mar 2017 05:44:38 -0700 (PDT)
Return-Path: <horms@verge.net.au>
Received: from kirsty.vergenet.net (kirsty.vergenet.net. [202.4.237.240])
        by gmr-mx.google.com with ESMTP id g82si293988pfb.5.2017.03.30.05.44.38
        for <outreachy-kernel@googlegroups.com>;
        Thu, 30 Mar 2017 05:44:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) client-ip=202.4.237.240;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@verge.net.au;
       spf=pass (google.com: domain of horms@verge.net.au designates 202.4.237.240 as permitted sender) smtp.mailfrom=horms@verge.net.au
Received: from penelope.horms.nl (unknown [217.111.208.18])
	by kirsty.vergenet.net (Postfix) with ESMTPSA id 9BD6125AD84;
	Thu, 30 Mar 2017 23:44:35 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=verge.net.au; s=mail;
	t=1490877875; bh=uJk/GqWlc/LOPUhnOXoHWaN2P3K/OOV/pboa3q1KyLE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qHTlEm+HSLwPxF4M5t34o3HvfOtQtmzQ8wLjBXmWR421xwKuS0R/+0FhVH99ALiB9
	 jBpzMBVXECAt/LzJGNlLnZZ8V4E7sPQvkdZI4FktSxZ95kpGPyLgr5OmtGHBjJ5iBr
	 gQ6bEroFEkvJY6ZW1n1R/ixh9T70JPg/mGE8E+dE=
Received: by penelope.horms.nl (Postfix, from userid 7100)
	id 2662F6063E; Thu, 30 Mar 2017 14:44:29 +0200 (CEST)
Date: Thu, 30 Mar 2017 14:44:29 +0200
From: Simon Horman <horms@verge.net.au>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: Wensong Zhang <wensong@linux-vs.org>, Julian Anastasov <ja@ssi.bg>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] netfilter: ipvs: Replace kzalloc with kcalloc.
Message-ID: <20170330124429.GB2980@verge.net.au>
References: <58da3ce3.4233620a.6a513.0dff@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58da3ce3.4233620a.6a513.0dff@mx.google.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 28, 2017 at 04:06:49PM +0530, Varsha Rao wrote:
> Replace kzalloc with kcalloc. As kcalloc is preferred for allocating an
> array instead of kzalloc. This patch fixes the checkpatch issue.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Thanks, applied.

