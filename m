X-GM-THRID: 6477617002737303552
X-Received: by 10.46.68.213 with SMTP id b82mr65430ljf.24.1508241393698;
        Tue, 17 Oct 2017 04:56:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.85.202 with SMTP id g71ls194183lje.5.gmail; Tue, 17 Oct
 2017 04:56:32 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QA07i7tAKPVhPmjIVRNkvvst78oV34rRNRHbQWwavOlz9WdWWXtVnvOyzO7zgUYpK9Y4rg
X-Received: by 10.25.150.132 with SMTP id y126mr369989lfd.33.1508241392870;
        Tue, 17 Oct 2017 04:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508241392; cv=none;
        d=google.com; s=arc-20160816;
        b=DQcd4jxafdL9aRFmJuDMQJBCEb0sqcjray6frQ/YsHsrhXAK21ELD8rCHQ0zJb+QV9
         ule/FWcKxHv9hQMbgdQryk1uZHB4yzEdmes9GrynIoAh96ItY68B6S4LZWgwxrMTMAxf
         rVW7cvbw8dUdG1cRB2TGlMIrrRuH+bsdGjviK1QTktG4JdmOjUxPCuqQZc7flsomVyqz
         /ULGroGx5OjqN0lpl3kWnZfM572ACC0mVa/RvBgB9ZyVN/yBl5t5lq+BbfEcuU2I6ZWF
         8cisn+MsmW3PfT+o77G/25nDL2q7yJhL6zP94q8eTOKE2xsXl5d2a/fptZ1WPha5JmuH
         6HOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=84NrZAADWPPWmexqDAQegHodBuZ/qhw8pe5U3rIj+RA=;
        b=hK5BD6BPIkmUkI6zTdWyrnF/aHOJ7Z3GjnssKHIv5EOCf/ZcoLohfNhwxmn4P+nK8B
         mcCuGpJlFFF3WMC5POYki9yXbyDzg8tDq9vIcl1Jcb4Jxg0oZPbwYvuMGes6TLntLFGS
         VM4cSZGvur2hxPkq57eBGokIyDWlyC5o6hgCHY80D1RapkxVp2E45JCUppdyzPaNXrw6
         y49dHDdknwCJSlGtn4K8E0QQkroWhPM192NXSagWMBvkxU7m3HqWdOzQDnqtKDg8aAxk
         hw/d6bmHOo89IDNGgbPj1bd5CNvCEXzy9Vqo3VdjdCXkG/7/VXG2HuuOnIejOucPTHkT
         Wvjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id l14si483763lje.1.2017.10.17.04.56.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 04:56:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 316D44B0E9
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:56:32 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 228E8DA874
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:56:32 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 1820FDA872; Tue, 17 Oct 2017 13:56:32 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 054CDDA807;
	Tue, 17 Oct 2017 13:56:29 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 13:56:29 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id C262440584D9;
	Tue, 17 Oct 2017 13:56:28 +0200 (CEST)
Date: Tue, 17 Oct 2017 13:56:28 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, netfilter-devel@vger.kernel.org
Subject: Re: [PATCH] iptables: add test file for TCPMSS extension
Message-ID: <20171017115628.GA11588@salvia>
References: <1508187729-3926-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1508187729-3926-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 17, 2017 at 02:32:09AM +0530, Aastha Gupta wrote:
> This adds test file for the recently added TCPMSS extension.

I'm taking this last version, it doesn't say v4 but looking at timing,
it is the last one you have submitted.

Applied, thanks. If there is anything you need to fix, send me a
follow up patch.

