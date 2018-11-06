X-GM-THRID: 6620547167797903360
X-Received: by 2002:a2e:3e11:: with SMTP id l17-v6mr2150717lja.7.1541466346219;
        Mon, 05 Nov 2018 17:05:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9e54:: with SMTP id g20-v6ls988889ljk.9.gmail; Mon, 05
 Nov 2018 17:05:45 -0800 (PST)
X-Google-Smtp-Source: AJdET5dFzxIORJ43RDFg3pQ2rvEYrkxlSYGGbRmSgxBs1JSK3b9B1Tl++t8OUZ+Cioq74U8FVMU5
X-Received: by 2002:a2e:165c:: with SMTP id 28-v6mr504175ljw.25.1541466345485;
        Mon, 05 Nov 2018 17:05:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466345; cv=pass;
        d=google.com; s=arc-20160816;
        b=zAeuB5U5amZ2rKouSfOcLglQgHb2e5myikDx+IXg4blWYfU8lRlkXnl6XbDHeJeaUX
         /M9ZhArxm0WT2Fu1Kx6VDBpZTe0/OTcuXm47NaN9Z1tl/rwVW50NCJdO9Ci7DL6vbxiI
         7pV0/ImGnTOt0JF4jMd4vCxMMWwzju2jDoBrdVZqQHKl4OsYI8LJMO8plKz/RathJxib
         Y/5DsSLhf2atn7w4HHEp0Nj6Svs4EtvjuIICOcvJ+jKxQpz6vlE339lGtAS8Cd9Rduhx
         43yzipN/Qw82RdVa6yt6sXCyoZqAxfN8tN4rRpR5kc9o1Ih+/3TaaAIKx8rLYzzOOgeD
         bQGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=;
        b=jegWFi3hnllVPmmJNFFXz+t8qXS87atHFVSjVKxcvWXWz0cudSuWoxRJtbkASc3NyG
         cLPgHuezRmf2y3IMMoC+952GFuc2xPzR/iXxgAddN2tcCM9rVt3+wueYTTzgdeTx9djy
         6GBZSgXhOTUYwvNo7xC3e4wAOleUJZ1yAa4lgy5bo2+bnk82VoIepUAtVPRAjh71XPx3
         fWlg0utfk6S/gYOjHRm7ss+clwKM9xje+G5VpLks7cmSEf5Xk/U2YTPld2fCD40iaJp5
         tqqflWKZ/5sFryZ+m6ce1vmNfIq/c53cveZglv66otV8qYn3x26QhERXmnyaxXf4lFcO
         9fgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="Wu/pjehq";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id l5-v6si507391ljh.4.2018.11.05.17.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:05:45 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="Wu/pjehq";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466343; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Q5jpTDqbXjkLZHePiwNkQ+19v84YjRqpVnQq4Yu43Tp2CA1+9/UDALvWu9O+b4jyNh6aqd4Du0i0p4sODIQNb3rnuMif2cc90Rb5ZDLWKob8oQeKlz/LLFSSUP7xn3B/6yGyDeORuBm1E5ybx3UNkOmr2oUJ4mxL+DEyLt9/uIw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466342; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=; 
	b=D2meiUGEJmDpwsKSNj2fNtsx+tJBJAOMwyrEhs8ABt+pPI7FtjrqaHCmbXzDekcSzIgH3EZ6ecaI70UCjrpYj38kamtG53ijqaxuZmHCxn9E1tGucP6gG7eMQ+CwcITD0j/oTMemN0kbVkeCost9brGHt/u4QrxGqG0bHZgkub0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466342;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1101; bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=;
	b=Wu/pjehqXg2UfK5DKaceO0A8io/0/V5wCMWMkHXG3tWsLffcorLdsj9KZQ42AAW9
	cVVDpSkVNwojtstbn0JHwKPEhJLsX1NeG5GfQ/SMVNKWDcmHYFpLked5qMA9DATaWyN
	3+aDHG/A1A7Zn8zfKRyZeh/IrtxVcNHoRcNICLvM=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466341889467.30754004181097; Tue, 6 Nov 2018 02:05:41 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:40 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 12/15] staging: greybus: remove extra space before tab
Message-ID: <9cbaef5c06e4a668e7a98ea14d4e6f0addb0388e.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra spaces before the tab character inside a comment section.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/greybus_protocols.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 5783f715bdc2..a0eb72cb225b 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -914,8 +914,8 @@ struct gb_spi_device_config_response {
 
 /**
  * struct gb_spi_transfer - a read/write buffer pair
- * @speed_hz: Select a speed other than the device default for this transfer. If
- *	0 the default (from @spi_device) is used.
+ * @speed_hz: Select a speed other than the device default for this transfer.
+ * If 0 the default (from @spi_device) is used.
  * @len: size of rx and tx buffers (in bytes)
  * @delay_usecs: microseconds to delay after this transfer before (optionally)
  * 	changing the chipselect status, then starting the next transfer or
-- 
2.19.1



