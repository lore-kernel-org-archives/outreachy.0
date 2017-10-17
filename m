X-GM-THRID: 6477856577977057280
X-Received: by 10.46.42.66 with SMTP id q63mr75157ljq.39.1508243928543;
        Tue, 17 Oct 2017 05:38:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.148 with SMTP id u142ls206454lja.16.gmail; Tue, 17 Oct
 2017 05:38:48 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QnbfsR6bw8F24NPkwa84zdOeVM6px1TPAqrz47edI9UjfJGY8cVqnaeIYTzmyzf1Uvp7+Q
X-Received: by 10.25.208.15 with SMTP id h15mr359753lfg.14.1508243928042;
        Tue, 17 Oct 2017 05:38:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508243928; cv=none;
        d=google.com; s=arc-20160816;
        b=GwrnVVZCJw+TG6obuxEMdvTCp1CMx5wPABEsyHSdJwXQu+7aQNUXHrkryCXAqrK3Zm
         13FIgnuqKq5Pr+/ftmn3pSXmGl/Jr/6/+6JF7i9VRiMs1orTo0AtiNZjCH4TFVW2j97M
         +g3cMg82zXgaLm4TjzQnqKI/TSDrBfq8VMvqOS9Fl53E1YmFm52Fftu9cjnqsD06pURl
         9btnF+qpIc0Mey3rM2ItiCyqgr6hn9xZ5TdiVpENrbVoWKDT2Vtere6e4q+2Z7UyQs4T
         k4z1Qx1Xzvf2h21jGOX2hKsRK+6XVTRvLQM42LTcENg5L+veIKCEwXdUniH7pp96Hwzy
         +Y1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=4jM3xuwlSFfF/lIqmjxE96dBfIJAYl0RM/fG6zMZKck=;
        b=CYf+7QIv0fcdS7J9uUjJXx/k5Uew91O0LPqJa53UbzKoUvEf+mDaCHNnBFXGqVV7Ih
         6Bu0eDITBJFrXYhUeyJGpfn7yALViCknV7I4RWITpAkFhTS46E9qt63OuqDMJHVGA9XJ
         3CuTEy7zsy3fy3rPd14WbmOJrbn+MHfjYt8VB11Ve3XnHnjhaAgUqtVn1Zn7+WxdRiTl
         ZSm8wEtC/ZFE7siQn6FhdGGV/ILtGE5HsYNUeg6E8lJNdDokD/ep29LglYhW9Jc/XyZ8
         ppeYfRtWvDpBdKZ1NhrphjjiyWa+8GvzgUIXh8ImNb0uGYcF0IEf+YXfevntnGctZxx0
         uMUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id g84si339642lfl.3.2017.10.17.05.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:38:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id EB35052305
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:38:45 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id DD047DA86D
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:38:45 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id DC780DA86E; Tue, 17 Oct 2017 14:38:45 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D0CC6DA86D;
	Tue, 17 Oct 2017 14:38:43 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 14:38:43 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 8DAF440584D3;
	Tue, 17 Oct 2017 14:38:43 +0200 (CEST)
Date: Tue, 17 Oct 2017 14:38:42 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] libxt_TOS: add tests for translation infrastructure
Message-ID: <20171017123842.GA20455@salvia>
References: <20171017122937.20617-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017122937.20617-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 17, 2017 at 05:59:37PM +0530, Harsha Sharma wrote:
> This patch checks that the iptables TOS to nftables translation works fine.

Applied, thanks Harsha.

