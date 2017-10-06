X-GM-THRID: 6473346132637384704
X-Received: by 10.223.157.134 with SMTP id p6mr198839wre.14.1507296311083;
        Fri, 06 Oct 2017 06:25:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.131 with SMTP id u125ls454823wmd.0.gmail; Fri, 06 Oct
 2017 06:25:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCPMlckd03F7hRaVdL43w3kh25bJWMtWF2HYLZoCgj+plzSI8baxmZyKK+jB0I2Sq0WOJQ4
X-Received: by 10.223.151.36 with SMTP id r33mr203964wrb.10.1507296309925;
        Fri, 06 Oct 2017 06:25:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507296309; cv=none;
        d=google.com; s=arc-20160816;
        b=v6Ev4rXwRTkJZx3SxPm0UtoBi8IkBDbsVLVX8tw13jfHXhbgym9WdyeK52rtfRIov8
         7E833RRff7zVoLb3s81k/XHHodByFv78QmKI1YEAzZBdhakEz6FRF53A8n8FrqcZSVvz
         4YY25cE78nD2AbU6GZS59XN7eXRUGPeAQ1GE9UXvapV/YZNAZPW3MxO+6z82Xyvv/+RO
         2eYftabyh44X+OVh4pSdpeaygM+OxCnl0rVwLVx6oakhz61MPF1I1x8fdJvtG0Q1qA+e
         0cVuUj3kElUGgU+EhCI49x3S8g1vsqlMs+FQvIkMX8O1L9D5ocnmhPp8gLTpkgagC/pl
         /aNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=3iLu5N45lvioB1Ww8iIN4ypEtVHJFYtkKjUuB+QJUJU=;
        b=g39ezXpDexwM4hH80hqZ/JZui2XrhUkDV+Rq4u3udlA1cHYk+/6apY89egpwcrs4wL
         s/A9+suFRxbg7f6k14EvEOJDCCV8HV4QgdBBTOtbZulcwiXzYprHfk1nZYmTGnDec8Vc
         84aRE0yEpWzmUUQpnZrCejb9S4bZLpkJ5j0VdRC6RSTkUSXO/mqqAFdY55dYHFu9kKGs
         EQAWLbX/7vXM6KzYDcdL6kDF7J1VKRSt4EhHi3AjKsaOLIXCDausW04uByTKa+CEK0E3
         /EKsZVBAxj4kV+lfoau14gvo0LI6b8OrCA9JAO5xFyzL1Z9t6bpYsSvOsF1/q9DmE0vq
         efbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id q195si163281wme.4.2017.10.06.06.25.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 06:25:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1e0Sch-0007v1-GK; Fri, 06 Oct 2017 15:25:09 +0200
Date: Fri, 6 Oct 2017 15:25:02 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] nftables: make pointers in string
 arrays constant
Message-ID: <20171006132502.GA17724@salvia>
References: <20171005084647.22988-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171005084647.22988-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Thu, Oct 05, 2017 at 02:16:47PM +0530, Harsha Sharma wrote:
> static const char * array should probably be static const char *
> const array as per linux-kernel coding style

$ git am /tmp/nftables-make-pointers-in-string-arrays-constant.patch
Applying: nftables: make pointers in string arrays constant
error: patch failed: src/evaluate.c:33
error: src/evaluate.c: patch does not apply

It seems this patch doesn't apply cleanly.

Please, git pull --rebase on your tree and resend this patch.

Thanks.

