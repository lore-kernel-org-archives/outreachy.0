X-GM-THRID: 6477098943281889280
X-Received: by 10.223.166.39 with SMTP id k36mr1018608wrc.8.1508241644860;
        Tue, 17 Oct 2017 05:00:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.130 with SMTP id r124ls266262wmb.12.gmail; Tue, 17 Oct
 2017 05:00:44 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+S6e4hwX6e8fUeBNE+vh5JfpY8HTYKsv2rsmdJEhJmYgQGFG2d8Ax4uS+ainzPA4e+TusK3
X-Received: by 10.28.71.131 with SMTP id m3mr462616wmi.19.1508241644270;
        Tue, 17 Oct 2017 05:00:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508241644; cv=none;
        d=google.com; s=arc-20160816;
        b=ra9WUyLdXxTEY/iGwv4UjHduBIGum5HWyunzIfvGs7l2D0WFAbsHRm3tSRnfKFkhRD
         4+/nBHYPDsOkMpwHhKZzTl0qn9kkoQPxpEhDi304Aokp9n3oPp9PyahOg73QAOnqGBF3
         gqZKNWQKfPJ3Gg5UVSjAui0QZDp6AEPrUZslFG3A6q/ATnP9BILX4GJwFKKq5H0Dn7/h
         QE6Y+JQY2NeTn9RO+mgC/EvQBfHJxnpe0Xya/VbuZfTnWyanLzTfYP+pcLS9ZOztIivJ
         ZCbP9PFx1vlcnqzg4iPWWNzW3JTGWNOgfEFd8rieVBPZpHudt6Ykkios3hIYjI+GY1Xr
         ifwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=HeE86z6xDNMVQNf1l0zinxJ0khrZc+jeCVHELFMOO9U=;
        b=pCRPuN9x9LPo9ge48o14o6YUTf5wiFf4P6ZoCa3xZz7UtqhB07m3t45AaSzk16+UYp
         vHjWTWpzf2Xg+pHemQrdvxm6i0N41AEiah3zdPPmMIjlXwkSV1TfQkErG1SyX2/QLmsm
         vFKBPSCFUOTGLQf9DcKc3fEUc+aaKb52DQggb6dPzLnQ3RgKk2yZzMfvVTO8fVIFP1cn
         jj50hIdq8Dns4OBcWpQs6Sxxw00f0WZCXwtuLQeV/KM+eed/pf9/AyShBZJUG3tmGh1O
         l2AUNtaq4x9s1VsNGugpP2lkqufYJVSNjh8cHwwsiQiRJ2UU7hLxsJOLeqtRDbREWIyS
         KUEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id m62si59981wmi.1.2017.10.17.05.00.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:00:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id AFECF4D652
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:00:43 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id A1B82DA861
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:00:43 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 97690DA86E; Tue, 17 Oct 2017 14:00:43 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 4DAE3DA391;
	Tue, 17 Oct 2017 14:00:38 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 14:00:38 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 132E240584D8;
	Tue, 17 Oct 2017 14:00:38 +0200 (CEST)
Date: Tue, 17 Oct 2017 14:00:37 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, netfilter-devel@vger.kernel.org
Subject: Re: [PATCH v2] iptables: iptables-compat translation for TCPMSS
Message-ID: <20171017120037.GA13186@salvia>
References: <1508068939-17220-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1508068939-17220-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Oct 15, 2017 at 05:32:19PM +0530, Aastha Gupta wrote:
> Since path mtu support was added, we can now add
> iptables-compat translation for TCPMSS extension.

Applied, thanks.

