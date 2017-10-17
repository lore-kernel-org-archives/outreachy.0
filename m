X-GM-THRID: 6476749000015872000
X-Received: by 10.223.139.198 with SMTP id w6mr1141204wra.4.1508245651338;
        Tue, 17 Oct 2017 06:07:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.218.73 with SMTP id r70ls304215wmg.2.gmail; Tue, 17 Oct
 2017 06:07:30 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAbM42A73ytK09r7j3OTWa2f1hcpo2RbySNPchUrC0Z2k3esngrB8GyTo5WUUOJKkNRWwWM
X-Received: by 10.223.154.112 with SMTP id z103mr1160156wrb.0.1508245650537;
        Tue, 17 Oct 2017 06:07:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508245650; cv=none;
        d=google.com; s=arc-20160816;
        b=YPxi4Ck0p3IH5w/z90xmDYOYEqk38qmVvnfX9rthvtvH/jOcAFqF2BbIy+Z8fKavdh
         P6ltUs16eN7CpI+65cwWLZU2IVWBYzQbfbISo2JrrjGZ7ZpGf+9Yf1qqyJrUOnaCx6bT
         5JYD0g78tczzYzVnLOaL6LUdXApuhVRKufkKJd+S8EfKXlPa7cJnIyLBILwt3R1xpNIl
         zqiDkgrlS3ICW4bEZ22D9tuPkxi/Vncp8l3hFqChceaYeiH0ELuOjfpQsN3/1kI2feO6
         qhuyHiIi6QmrCu18tHoacBqmdCYNZqkciX+Xq12ZQtYJbJnBB2Bb78vl4qf/fSSS3pot
         Qs8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=N0FPd3MF2e0fddmhRYMl+4ZQBO0XMrOsQLjsC1Y0Cw8=;
        b=pNw2isExOa0efl3hNW5EYxd0jt5Bq8q6nAlwsl5y+Q0RKCKrdvsc15wv2W6V3brqPv
         kHA/Tc4xqQsTIZiQeclp/YGlFlGsGjDXQDhp8N3KN3euY7ufunqMo7zaQryw10UBSYU3
         RM2Msc+FlCf8x+T7ulRa699u67Kcxi2Y9EoKmHPH0uA2K+tXLYTm0hz+PpjKttbTHfl0
         MPKneXB90QBYqr+UUm8KBHLW2eRYrZ8sOxJBRoZrh23zi0zBgIkP05taWWU4hYXfi22U
         HiMZAikUHhIJjCnHb1j/LW4QlxQgpk/dUtV9VU377Y9xZrZbrgvI6zgXJLfddTEFSGyv
         Yj/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id p70si452693wma.1.2017.10.17.06.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 06:07:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id E71CCDA73F
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 15:07:29 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D8225BAAC2
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 15:07:29 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id CA981BAABF; Tue, 17 Oct 2017 15:07:29 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 44E57BAAA6;
	Tue, 17 Oct 2017 15:07:22 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 15:07:22 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 148BE40584D3;
	Tue, 17 Oct 2017 15:07:22 +0200 (CEST)
Date: Tue, 17 Oct 2017 15:07:21 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] update INSTALL to add library
 libnfnetlink
Message-ID: <20171017130721.GA21026@salvia>
References: <20171014125145.8336-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171014125145.8336-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sat, Oct 14, 2017 at 06:21:45PM +0530, Harsha Sharma wrote:
> configure.ac checks for libnfnetlink(>=1.0) library
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  INSTALL | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/INSTALL b/INSTALL
> index d62b428c..d28ea5c1 100644
> --- a/INSTALL
> +++ b/INSTALL
> @@ -11,6 +11,7 @@ iptables uses the well-known configure(autotools) infrastructure.
>  Prerequisites
>  =============
>  
> +	* libnfnetlink

OK, but this is optional, please try to compile this without
libnfnetlink and see what it happens. IIRC, this is only needed by
nfnl_osf.

