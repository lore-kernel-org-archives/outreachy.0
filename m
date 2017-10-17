X-GM-THRID: 6476716620752355328
X-Received: by 10.223.134.175 with SMTP id 44mr1124182wrx.11.1508241728342;
        Tue, 17 Oct 2017 05:02:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.186.15 with SMTP id o15ls394227wrg.13.gmail; Tue, 17 Oct
 2017 05:02:07 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QDICQZOCAXhbZ068GLptkWkppBqTKJl3js/EuFjCCZLSMXDijF0Kl4QzDvIL8JpIcnYIS6
X-Received: by 10.28.215.195 with SMTP id o186mr452641wmg.9.1508241727755;
        Tue, 17 Oct 2017 05:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508241727; cv=none;
        d=google.com; s=arc-20160816;
        b=XVxtmKxWyjWB0Zqt+8AYmvtbwcp/L7DXMm2vdIX6l+7g5xdCtJuAaeG4fNZ11lyF0t
         W6pRY7lmtWE33DXSKfqU0FEQqeT3eWvECdLocOFWZ3jCpQg0K9Vl+ENtu89ytTvzRktS
         9HlIOecZoQOgwAIasWObYswuPMOyg8F889qY74EOJH+5b7+i4th0lC7vNUvsp5hjLQ8K
         GV+56gbvd9zZoU8zEAIDSBVIbdYNpK64l0ompa/6wpGRV0IqMcWvAus3Ylv2oDkuYabU
         QTNQQGjJp/eI3mtKEqZw6Ohp8clw2Dwnhub+qUmWpB86UepGA5g0AJvVHyLrJIYhf8vq
         wJSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=UYPScb10Awjy7PO1eivc8KOhLHX7zYYLwh5Z5jIuZ6g=;
        b=QNLnYshp8ZkGSLDynKpifYJUyZtBZeGq0+jD/86quyS6cB4ZgoOrbR6TKvEjmIfjGe
         tlLEkphl0Ada4V0G7ZYt4ar4sFOQvPv1b2TdMdgKsOe6oX2D3FnkLBJnSSgLnrW7B/CR
         2hHHY2CW+yqb/2ATbqFZdHbXIQ5GGMlwh/+mStnlOlE9f0ifpBEjwH+nJ5qDrMcaMXEB
         UWYy/x9igSweju1j2jwkOF9EO8tvhS4xs99OyS7fxcdUp2ZWinFjvWcmybqIvxAVBBJy
         i86CcuxVAqKJ6WCppQED7p8HzJlZXpH5sSSGnBfbIpH8U3t9h576jd3RTRmGkZT81bhM
         SJFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id r15si569027wrc.1.2017.10.17.05.02.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id DC0A04D654
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:02:05 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id CBA55DA87D
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:02:05 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id CAA6DDA87C; Tue, 17 Oct 2017 14:02:05 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id CAF32BAAC5;
	Tue, 17 Oct 2017 14:02:02 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 14:02:02 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 8A7B940584D3;
	Tue, 17 Oct 2017 14:02:02 +0200 (CEST)
Date: Tue, 17 Oct 2017 14:02:01 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] tests: shell: add testcases for named limits
Message-ID: <20171017120201.GA13929@salvia>
References: <20171014104603.16365-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171014104603.16365-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sat, Oct 14, 2017 at 04:16:03PM +0530, Harsha Sharma wrote:
> Add testcases for creating named limits and referencing them
> from rule

Applied, thanks Harsha.

