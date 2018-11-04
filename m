X-GM-THRID: 6620100063939002368
X-Received: by 2002:a17:906:1603:: with SMTP id m3-v6mr446601ejd.16.1541362158714;
        Sun, 04 Nov 2018 12:09:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a93:: with SMTP id l19-v6ls752683eje.8.gmail; Sun,
 04 Nov 2018 12:09:17 -0800 (PST)
X-Google-Smtp-Source: AJdET5fSQWtnm1iEufoZscghzKTZptSHZvrR96q3jC2KKdfZ3wrZo2/VVmqT5piCdEYdRF3bciKh
X-Received: by 2002:a17:906:29c1:: with SMTP id y1-v6mr320214eje.12.1541362157795;
        Sun, 04 Nov 2018 12:09:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541362157; cv=pass;
        d=google.com; s=arc-20160816;
        b=g6nCNWF3nk54e5XXwbR5kTXqD18xDJalRM0l+1UsMIdWiRXUMfdwe46/nmi+vJrXu0
         3sHrvw/GaeRISPGgb1FIJ5uGIRQVVOGoHNspqL9TOyuKOXrlJxMm8QfXlDLd/SCRqnc9
         23b8LvlHfodPHmYTj8KI6W2q8hoqMz6zWgFrmJbwx1wFhZd/XzAGIbUkS4jVhubbK9DH
         kUeM0zI+rkLbWjVNqYVApY4vPaclfvS5YWjSoLmWclZ3lH6NDAnDJ2N0DHhCgC8hktkr
         wrj0n+9jE9vzKDY/+HMZJWfM662QlUGH5r7CSHWMsPBWPLebQCxdZi6s3JKca2dMXEkB
         N95Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=WCGb4bSplYMw4cGqX2x2qW3Gqg4tLljcwC6yn/a7k+8=;
        b=NTxRX4/A7R/mpX1s9ebCdUiVOhMwpECBicbY1OhqWK2I58gmRNRyjUTETkTk7/nySg
         AfN2szFvrg22o3rs3vLAJckMiCGAp2IrQGKd0FVV/ew5GZlo02upxy8x9JgW0+Kdp5UO
         P2edYvqYNEfI2DR7XULedpkBNx/levkm7RdGZpxcuUa/UiGc+pC7xmYUuslCuMPgt0ci
         XNo0z7lApdjWqL5YjKvp3cndVH3YX6rT4kMuFX7No7VvyhvbYGz9VXyZaDuzVBUROQ6z
         wx2GHjNi51VKnuUYOAB8b3ThpTq2ryCBBvnpPN37WupNUf4rQ2caHSUdjh/JRGNqPvYw
         zmVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=aDJ5CdtQ;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a35-v6si185528edd.1.2018.11.04.12.09.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 12:09:17 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=aDJ5CdtQ;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541362156; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=iZPNybcPCYGKcnEAYOrfIDXTwB4HlIKxhyfMuwtC6BRdrVB1nGKXaPzCR7hA2vStxyZgKfCAY8c9uTWLbqta6itKg+d5IIWci+L+ClqWRfu3fkGIcL8WKN7i/k0dLMo1HFrJwkUFjVFWwGinB8Gh6zdtbLUZ2cCqm/lSMTu9YrI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541362156; h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=WCGb4bSplYMw4cGqX2x2qW3Gqg4tLljcwC6yn/a7k+8=; 
	b=ZGTvOc+Rh16utuGapXzBXWR1czbMmdxjimIqQHFqjHb0LnoHDWcwpxt3ccIoihGrYLW69gBtqrICIVZgJBHGgOqJqdB27xJrPlOfzeEBdF/fYDlAIOTZZvtL1hmZA7pxBTK/MC7vA28ducWEwI1k1DeYxvZHvBaokPzEiQwNdq4=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541362156;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; l=218;
	bh=WCGb4bSplYMw4cGqX2x2qW3Gqg4tLljcwC6yn/a7k+8=;
	b=aDJ5CdtQsnWkfMdwJq5Cvon9CtKuIC77Jo2tbGlqeBd2IBS7p0RhqU5JvQkR5C3k
	FWt41InJy59C2mFgXJ7hF+IQInlwLQIYZ8l6WYMTS4HDD7dtmfChX5Tskt82OlCQENu
	xM3rBDBz3sogzhhLVKiMhhCaiu0CkTbscrrZWheU=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541362154804664.408911411227; Sun, 4 Nov 2018 21:09:14 +0100 (CET)
Date: Sun, 4 Nov 2018 20:09:08 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Subject: Coccinelle fails
Message-ID: <20181104200908.GA26807@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Any idea why if I try to run coccinelle in report mode it fails? E.g.:
make coccicheck MODE=report M=drivers/staging/speakup/

coccicheck failed
make: *** [Makefile:1650: coccicheck] Error 2

Thank you
ioannis


