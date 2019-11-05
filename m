X-GM-THRID: 6755642568101330944
X-Received: by 2002:a62:3602:: with SMTP id d2mr35408799pfa.177.1572929998786;
        Mon, 04 Nov 2019 20:59:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7783:: with SMTP id o3ls3895952pll.4.gmail; Mon, 04
 Nov 2019 20:59:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqxTaEmaG/5AKRXSSYJGA0hp1qBvyd4WCiiScthavRW3xe1J98V3gSSIpCt9VJh1vG1J/8sY
X-Received: by 2002:a17:90a:8592:: with SMTP id m18mr3910381pjn.118.1572929997584;
        Mon, 04 Nov 2019 20:59:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572929997; cv=none;
        d=google.com; s=arc-20160816;
        b=NGq3pMh/lGPxR3S0X/zKA9MCYgpQAPkzN9t9Mom9m3jauxC+gmZKIv6uRyvAtRxfMJ
         pSMeCHyYHsXJwj+bAeecIvaJA7auvkJH2zxKG+NDuEjBuOca/Hr8+RPKYKlGgV+wVTZe
         bQnFkM6KUgn+aLLcxnTsW2aOPrKQ++a+j4tjlUO6nZKBcK9udpt3BLzP3cRLSjknbDw+
         YL35LqydfZ8jfiey7R+OmiZvdzwo7RxM32GIR6EDNrv3KKSma5TiS7hVMRvtfHCSA7vh
         3u3IlV6sCVwS886/TxGnabgFuJa2rRBUo+6UJH8bxPz3w3wH3sioqjwcJv1xVAkHuSjb
         3z7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=STaCJzIb1RV7UYQ7WATazPSxTWKlrIXl97F4AEpT8NA=;
        b=jjJ8cbBxmtVMkY/GHRrfw5OWYBWmKAD6/DTtELloZeFby59+u1JL6wIUYWrKtXD0+n
         q5ApjX9jtRIWh7uihu/GB3drrMjalS1GAhvrzUYBZ2uOQaN2hAzL1crSREbFAemRqHn7
         YCQy6nA8LKcHvxNOOH49upWBmD5npb438kQ21pjuVNmmNStIW0wCGc5X9dA5n++GNxtk
         R1wC4qqh1hujQrfmExB6OZeNFWh0LqdJNsERqX2Jta7hRFpP/YozetCU+cnj7FAjtN2M
         XbIriJn+Y0tHcm4ns2UCot7thzgTkC4g3vMj+s0pcUbRIMsDIAI+jD8+kUGQ/cGK7wXk
         Gkrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.212 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0212.hostedemail.com. [216.40.44.212])
        by gmr-mx.google.com with ESMTPS id c11si1055578pjn.3.2019.11.04.20.59.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 20:59:57 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.212 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.212;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.212 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 412FF1801A991;
	Tue,  5 Nov 2019 04:59:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::,RULES_HIT:41:152:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:3138:3139:3140:3141:3142:3622:3867:3872:3874:4043:4321:5007:7903:10004:10400:10848:11232:11658:11914:12297:12740:12895:13069:13311:13357:13894:14659:21080:21451:21627:21939:30012:30054:30090:30091,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: tiger32_90babfc2ae605
X-Filterd-Recvd-Size: 1412
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Tue,  5 Nov 2019 04:59:54 +0000 (UTC)
Message-ID: <4df246124153bcece639fdd026c4eee629b4bb7a.camel@perches.com>
Subject: Re: [PATCH 0/3] drm/tegra: Remove space after parenthesis
From: Joe Perches <joe@perches.com>
To: =?UTF-8?Q?Micha=C5=82_Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>, Jamal
	Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, thierry.reding@gmail.com, 
	airlied@linux.ie, daniel@ffwll.ch, jonathanh@nvidia.com, 
	dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 04 Nov 2019 20:59:43 -0800
In-Reply-To: <20191105045337.GB1764@qmqm.qmqm.pl>
References: <cover.1572920482.git.jamal.k.shareef@gmail.com>
	 <20191105045337.GB1764@qmqm.qmqm.pl>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 2019-11-05 at 05:53 +0100, Michał Mirosław wrote:
> On Mon, Nov 04, 2019 at 06:23:19PM -0800, Jamal Shareef wrote:
> > This patchset removes spaces after left open parenthesis.
> > Issue found by checkpatch.
> 
> I'd say that those spaces make code easier to look at, so it would
> be better to teach checkpatch to ignore cases like these.

Good luck with that.



