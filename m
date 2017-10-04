X-GM-THRID: 6470423342765572096
X-Received: by 10.223.142.227 with SMTP id q90mr1389935wrb.32.1507126114372;
        Wed, 04 Oct 2017 07:08:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.182.5 with SMTP id f5ls1619152wre.8.gmail; Wed, 04 Oct
 2017 07:08:33 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCEPvfLVxzYTm6/ZksAXnH4EiQbeosLngo1CCiP27SAAjmZc1YncJekSDOhzS1EuXKPCcG/
X-Received: by 10.28.29.8 with SMTP id d8mr2352753wmd.27.1507126113257;
        Wed, 04 Oct 2017 07:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507126113; cv=none;
        d=google.com; s=arc-20160816;
        b=ecp7wzjNg5ei0WhXvEtwBPDeqGi2WZG1utjIGdMWfzW03299W81mPWeMDihjeIbQeY
         P3WlK1KuZlK/nxEWoGT+h4Xr5gCm9e+Gkhi5JcGkvARi65A2Mv8ncFH1oxEm9Mio/rts
         IbkGX1aRwaKBR9I1zUM6S3pDJCfnzDSZZxuDNmBHXqX/L4t6awXtaageR32EGOvHGm4I
         q/1/l19qN8+YEJ555xfJypJ5c8sEv4tILhkLDxdZBC+rAN0e7A6a3c9YhyGW5ZvvnFEG
         bCRBnst5dof1slDUZbKGiY8rSyRTNvdJLx2QvsTSzxI5zm1cZzf662VziNwas1ksqwgo
         7LEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=gOaytW2HOHLh3LE4YdwlzP9JgyU9c/IosIKGRXjkIBU=;
        b=ACj3uNPzAu6ALHQn3IwIff3ehyzVa4xar6I9PgAlj7KT6yZIlV0CLcVEtgMzLxEEYA
         cjAcFqvKc4/ol7gpfdaqdSPokSqI1PiK3rT2ITNPX37DxLKLPefsyo9BHt+6l5BQ8mLN
         wn2OTwweg0AlyCRmxSadUWh9nZ3ae7aiuCuBAedxqCSNeuCkpQcoTPCbd6ffJ4vD02Lu
         0vwPY9ZxUI8nhkXZDYKk9P0OoREWeoe4puKBV2o6Vu5uWMkRo6fa/gwnWNbWyzuc/Pwn
         XB+dyW1VibFckc/JEkH9pjdi2rzH1ryfA2i8oBV4UFUgnhmgMFSCkb6vHGPfvzaSigai
         jwuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id p200si1988480wmg.4.2017.10.04.07.08.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 07:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1dzkLb-0003XN-Sm; Wed, 04 Oct 2017 16:08:32 +0200
Date: Wed, 4 Oct 2017 16:08:26 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] iptables: Constify option struct
Message-ID: <20171004140826.GA8450@salvia>
References: <1506512692-7872-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1506512692-7872-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Wed, Sep 27, 2017 at 05:14:52PM +0530, Harsha Sharma wrote:
> The struct of type option is only used to initialise a field inside
> the xtables_globals struct and is not modified anywhere.
> Done using following coccinelle semantic patch

Applied, thanks.

