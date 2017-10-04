X-GM-THRID: 6472949369841647616
X-Received: by 10.28.128.211 with SMTP id b202mr1659169wmd.5.1507115433291;
        Wed, 04 Oct 2017 04:10:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.208 with SMTP id q16ls294041wre.5.gmail; Wed, 04 Oct
 2017 04:10:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDPNl+jPCPtcfDkApVl7E4c0F2BEpUFSq3SPdhlQ7oggGFdtRNO4f/BmndiWzTOgmcKQDFy
X-Received: by 10.28.88.197 with SMTP id m188mr2587421wmb.4.1507115432498;
        Wed, 04 Oct 2017 04:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507115432; cv=none;
        d=google.com; s=arc-20160816;
        b=SYgmR38AD9xK9p7JDU3Bccrlivn1mIjicszyTIJU7Po3FsBfXPpbnDrpxXsk3IHS3s
         i9ACCmYFuZwpu53EPPdJKy5wsDjX7GRHJMCvw43WAfrSIl5/cJVQ/GL9tn4d+J5mlWq7
         E1AnQOqHFQjHHCY8rkIJJuAEQg61Bo5xsJsnk+grNgNlYH0VuNnOlFJyReL4zQ6k0lbW
         cs8WJxPeuGDNJcTQl0p5RO/+7h/N5bVvZF3VElXQYb5DoBz+Xql/u0FH8HN41ZEL7V03
         U9iG0nlsqmoxF3Qo+34rp3wFf3RMn9kte/9WzbV9ZQoyEwiOJO3CtNHkDxWGf4J974uf
         6RPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=9wlXgiNOjPE87vI93dgC2ObBaKzjKzsKXr5lwg3W9eg=;
        b=su3BzFsQjx/3WeW9SisvcxhKC/83pJGdNRNjDbGEf8JcU1sq0Q/XAMVEwnTau4apul
         PJuBe3wvOmuvg/zoXYjMaf0cNiDv3H3JFjCe4gDUhj1o1HKjuDdQOrmxgXjF2FvT1TRT
         XO+e5/AqfS0kj7odyjugOjjux5ENffdr4idnIW7h1UWO+MmalE1cIhaqQcChq0DbzedR
         fXxG79dDr+43G8xwvGXGymrlv/Q7B4WFQN+P3f9nRwcKeqlvYYHfbbvrDafN91l1SSD7
         PXPlY/8oiH8OYtA+j5Mja7wfd+pJJb96Z255h6CzkdLk3PuFMqudeAKrq+8CgdRMQpMP
         cWmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id 196si1085214wmk.4.2017.10.04.04.10.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 04:10:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1dzhZK-0006N5-Dg; Wed, 04 Oct 2017 13:10:31 +0200
Date: Wed, 4 Oct 2017 13:10:25 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: nftables: Add support for reserved header and addrs for routing
 header type 0
Message-ID: <20171004111025.GB2575@salvia>
References: <1507100846.10633.17.camel@harryPotter>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507100846.10633.17.camel@harryPotter>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Wed, Oct 04, 2017 at 12:37:26PM +0530, Harsha Sharma wrote:
> Hello,
> I'm working on task for adding support for reserved header and addrs for
> routing header type 0 in nftables. The code already uses macros like
> [RT0HDR_RESERVED], [RT0HDR_ADDR_1] in extensions/exthdr.c but they are
> not declared in parser_bison.c like other macros [RTHDR_TYPE] and
> [RTHDR_NEXTHDR].

They are indeed declared, please take the time to familiarize with
'git grep' to search for token on the git repository.

Thanks.

