X-GM-THRID: 6477617002737303552
X-Received: by 10.223.169.144 with SMTP id b16mr1083747wrd.26.1508241618274;
        Tue, 17 Oct 2017 05:00:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.208 with SMTP id q74ls368337wrb.8.gmail; Tue, 17 Oct
 2017 05:00:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDbZ0uFixK7tn1IqsoZPe4swkJNFuyGduykadRXLGY00Am5W9OMYXZ9y8BBzOOEVJa5sGcM
X-Received: by 10.223.178.210 with SMTP id g76mr1023555wrd.7.1508241617399;
        Tue, 17 Oct 2017 05:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508241617; cv=none;
        d=google.com; s=arc-20160816;
        b=xnDo0g6KBbPnbh7CdJuCRx0nEXEj10ee336eXJlLI1GGrueSGCDD1GQCOKKWQZa91M
         h5UnXnfECUZVhRJh77hudMBA+qugHSBBFeWsaOOlR4vUUKMGyD4menK6G/0fpr+5iOXd
         5OvGfQaqSe14yZdt+5FMdrHkZ9og0yfwiMk+ynj/55Cn8q/agVD/U9QiLmm1PVnbTtag
         53CNRaK3dXgxKeR4W9pXmh7SHtPkBv/Dzsd2RDDrL9U6MAiaJSfgT73FyamdJgIJymKd
         hAPexZ4QWWQcyf/SDF/runMDQ3N0P7kpbBhLz1rcgZ5KpCgoQyOw8nLDo5fDbbPU2lqq
         Qeww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=h4WZuQVjda6aH+zms/rDOZLTX0prQFKjGE6iKwLNnuk=;
        b=sH8bp8fddtvxRrmmhBymq/IYcvGEmzpeDeqjZKLv972TAyB09+RLoCxiHpyjb9t5dk
         c9vcUoEQ/gTJU921bh+43Ztn/V8Yofu48mcY5piMTtUZRCP5vwtYbuosqTLXt0QJvlzm
         hAY9BhGLy/YPjDeteKjJbXJ0LipJ7h5KJoPQHCqNDoCg7HYY1GiQret8WuHHnLWgGEUz
         XWMAh3zL62ds7CDen3vH3jboh9UPeYhwYD07lM9MLco2lowbLsKG1nNWm3abIFA/rDbt
         QxvaaG4rQKRg2qS7o5fdWVVym7x5KomWwOavHGPKX068ztauhQbotwy8AeDBefERIDMa
         82Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id m74si464338wma.0.2017.10.17.05.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id EACC84D658
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:00:16 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id DB2C3DA38B
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:00:16 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id D9F3FDA388; Tue, 17 Oct 2017 14:00:16 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D23E2DA86F;
	Tue, 17 Oct 2017 14:00:14 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 14:00:14 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 90B4D40584D8;
	Tue, 17 Oct 2017 14:00:14 +0200 (CEST)
Date: Tue, 17 Oct 2017 14:00:13 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, netfilter-devel@vger.kernel.org
Subject: Re: [PATCH] iptables: add test file for TCPMSS extension
Message-ID: <20171017120013.GB11588@salvia>
References: <1508187729-3926-1-git-send-email-aastha.gupta4104@gmail.com>
 <20171017115628.GA11588@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017115628.GA11588@salvia>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 17, 2017 at 01:56:28PM +0200, Pablo Neira Ayuso wrote:
> On Tue, Oct 17, 2017 at 02:32:09AM +0530, Aastha Gupta wrote:
> > This adds test file for the recently added TCPMSS extension.
> 
> I'm taking this last version, it doesn't say v4 but looking at timing,
> it is the last one you have submitted.
> 
> Applied, thanks. If there is anything you need to fix, send me a
> follow up patch.

Oh, I understand, this is the test file. Other patches add the
translation.

