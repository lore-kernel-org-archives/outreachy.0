X-GM-THRID: 6258660898055913472
X-Received: by 10.25.210.201 with SMTP id j192mr2242527lfg.6.1457295066839;
        Sun, 06 Mar 2016 12:11:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.200 with SMTP id s191ls554188wmb.53.canary; Sun, 06 Mar
 2016 12:11:06 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr940874wmg.6.1457295066357;
        Sun, 06 Mar 2016 12:11:06 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id z75si339346wmz.2.2016.03.06.12.11.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 12:11:06 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id l68so83750875wml.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 12:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=y7k1TKzGwrojJOr30dlr27I3Y2SrU9pSRlEh7WYpnb8=;
        b=fWm5gJAdxPNSiUasi3PA3APCOP2bve0x1bkuZLT7YAhwdX62NzeHmuv9bFiz9WjE3j
         JacXTAIu0AaspCv/lzpqylKVnkY8Xfu4oTI9QBGLM1iQhxzHZGjmNP0a5nnkG1d2Xt53
         yJWx1nh0XjKW53/cFnxeuEorkfyiEAcWQUhQvdXPwdjB61AzsnCyvNBXwY8gwLakYvE+
         qePN5q2tGUbvre5ng52Vh2brl8Ann4SvMWCPPrO1UvTeQlfGl5Lde/UIUu17JCAS6HQ1
         InWutQtAxXB44XFKmaiat2NVg24uicMRTUqPZ5LumQA+R6qlGNfoR0CIrJgQFsLzHpD3
         vHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=y7k1TKzGwrojJOr30dlr27I3Y2SrU9pSRlEh7WYpnb8=;
        b=m2Mhm/TeUFZnKYjsiwzElFcMBJGBeSGxaOVJP+roVfpMDdF1R6ageW9ZQPwcZkZ/n7
         hRejYVMOXELKWibb/Ns0oS9dm0G2gpfRH4cJ4mOyrELpkvBqVVXifLcVWYicBkUfV/hG
         cgR4TnUWi2JqjNOR1t1E509PLON06Fk7AlPY3vozjoTASP+BPyDR2w0/YvM9PVJHwDR+
         aMNgo6H5aSYuRzXuzMYJpxCiNvuTEMKji5h+Pw9zV+EiT/Q8irHCcYNv7AnO/KX6QqTc
         rqndOi9PweBeCo/duYCZqZC3Aigi/2LuPLgscPVy3kndQJZ5wzss/IEXJj7G3eK64SFU
         0M9g==
X-Gm-Message-State: AD7BkJLTWeepjjs174WIhm9p8p2eznqVvs51VoD5jj7ZU7eBl6iqhZb6uvXygmkoTlm2qw==
X-Received: by 10.28.49.3 with SMTP id x3mr8916553wmx.4.1457295066140;
        Sun, 06 Mar 2016 12:11:06 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id ys9sm14374085wjc.35.2016.03.06.12.11.04
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 12:11:05 -0800 (PST)
Date: Sun, 6 Mar 2016 21:11:03 +0100
From: Laura Garcia <nevola@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160306201101.GA9308@sonyv>
References: <20160305200039.GA14269@sonyv>
 <CAKHNQQE7S-x63bez0qdhwujESbwqPHSftc_aMXHkHh=Y5amrZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQE7S-x63bez0qdhwujESbwqPHSftc_aMXHkHh=Y5amrZA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Mar 06, 2016 at 03:31:15PM +0530, Shivani Bhardwaj wrote:
> There are some icmp types that nftables does not support, have you

And these types (and subtypes) are not supported yet or will never be supported?

> tried adding up rules corresponding to all the packet types?
> 

Yes, but not all of them.

> $ sudo nft add table filter
> $ sudo nft add chain filter INPUT { type filter hook input priority 0\;}
> $ sudo <your generated rule goes here>
> 
> Please consider finding out such packet types and mention about them
> in commit message.

Ok.

> Also, here you are using the array icmp_codes, this will give out the
> same packet names as iptables. But, some packet names are different in
> nftables. May be not in case of icmp but in case of icmp6. Please have
> a look at this.
> 

Ok, as there isn't a direct translation I'll provide a v2 with a list
of supported types.

Thanks!


