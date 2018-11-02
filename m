X-GM-THRID: 6619380955766325248
X-Received: by 2002:a1c:84cd:: with SMTP id g196-v6mr33665wmd.3.1541194728605;
        Fri, 02 Nov 2018 14:38:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:cc0f:: with SMTP id h15-v6ls17704wmb.25.canary-gmail;
 Fri, 02 Nov 2018 14:38:47 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ej6M0VZ7HHNZuKp4GUX9gso2/Kgcg2ZPaKlWYEm12hpQTLFAIM051GU2F3dzT4YFIy9son
X-Received: by 2002:a1c:f609:: with SMTP id w9-v6mr32022wmc.5.1541194727678;
        Fri, 02 Nov 2018 14:38:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541194727; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQqfxiSGw1To7WzVBilb7lEwPH4Z7lHAH5WnyLo3zQmMtDfGerf8uEKB079jMj9SKv
         fvPy+I67LoT/D6itxZl7BoRs88eIXaQfeLKbkNro2DcRSE5YFTWHqzlEFN8B/DylBjAC
         IKY4L1EEaJalTUpAm+O3gBoSZvq77IcULMS73RTA2jTox18mmRuK844okxOPSpHwWXEa
         PtMJUiQaWlx4jSVPsQsL1iGycvNWGCvX2pjcLO2xWZlKh3AIjnxMbNQ49RnSK74T9ctO
         vHeQaYBGWn8uud8MqnJv07KWn1RqbaqsVWf57AWAy/k1IFCESwe3OAjbX7dNjM6KpsN+
         Q22w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=YonxytrBvrJrUGqjq3l2rCHCy/FLFI2FfWAaC2Xds9U=;
        b=WUJNHEf9/IyvAGXcHWJCoND6C6GHGIEms1U5YLE7+OedlXnvSybV2As/aW0vQRcNTw
         tEnxjZqi+ftExw5PUk1phGjs8R/kScE+DQvP+Ffihzz1dDYiHDI9sYXYxdTuPLt6se0C
         U0+lo80ML/5mYG8P1VtFbpZG1Bb0JtJVTACUO1F+RHGq+C71D7BrQk3hXeSI/pXCIHN3
         Z6uvRu46pTexapm31R7lRZYXwZAzIUpNd6zPsHFbb+JeqjDI68bYqW1aD9IHkQubRU0T
         xXrvlFryeRMrqGGKJQ9+mhxqH+mu01Xy9vmtOaYEHEH8jE8N2JdDTzryBrvRY4KJ12d2
         VtUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=I5bMjKP6;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 18-v6si88917wrb.2.2018.11.02.14.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 14:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=I5bMjKP6;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541194723; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=hGgRyqvJEOvSfZ9ZNl8N16ja9884YbSc+MPz7e6NqKPw6BAv+lipgR4nIPO7lMSNUlP9MdIKnr3t9r1hvqcrToEHtSyP6KGkxqWZY5gJIHpFyIfL1kQXHkQ431Nz78JaC8uZVE449DiVPzYlv7uOhRh6kPIOjD7o4Pl5scHht0Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541194723; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=YonxytrBvrJrUGqjq3l2rCHCy/FLFI2FfWAaC2Xds9U=; 
	b=X+wcUONOUW7/XCZu21wbK1W+B1WWsxhILr1AsKJM7U2vhDLc7cr+oCWYo2UHHZ597qhB4/iaqBpn8QD0HQRw8NWNVxMcN+anTzNTGUfxtNKlj96sL2G/+kn1N0xYhvRsojRdR2/hPy9DsmuwOAWNhYM0fEm18SU5bwiIdaHyk3Q=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541194723;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=506; bh=YonxytrBvrJrUGqjq3l2rCHCy/FLFI2FfWAaC2Xds9U=;
	b=I5bMjKP6/nKPXM1+frrZLySfj1B+v7mn2HzwL4JB383O/rvn0GTFdRIgMkPAHtQh
	OcVyEoTv4oSi//tLI8RmrUtzhfetplpH8LC5DVUOtZJ7TCEI9bAJ7lO2+gO0i6TCrVj
	ptEakQ8x4mYcwb7aSV88/iHl82/UCc4YIEat05WQ=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541194722735424.35074284878544; Fri, 2 Nov 2018 22:38:42 +0100 (CET)
Date: Fri, 2 Nov 2018 21:38:41 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 0/5] staging: greybus Address minor styling issues
Message-ID: <cover.1541194567.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Changes to v3:
	- Pointer comparison to NULL is corrected

Ioannis Valasakis (5):
  staging: greybus Align parameters to parentheses
  staging: greybus Add a blank line after declaration
  staging: greybus Fix SPDX identifier
  staging: greybus Align arguments with parentheses
  staging: greybus Shorten comparison to NULL

 drivers/staging/greybus/control.h | 5 +++--
 drivers/staging/greybus/core.c    | 6 +++---
 2 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.19.1


-- 
ta
ioannis


