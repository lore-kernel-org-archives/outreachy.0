X-GM-THRID: 6619407131964604416
X-Received: by 2002:a24:2c91:: with SMTP id i139-v6mr161428iti.40.1541200823500;
        Fri, 02 Nov 2018 16:20:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:b007:: with SMTP id z7-v6ls6517476ioe.6.gmail; Fri, 02
 Nov 2018 16:20:22 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dhARW4ohz41MvSnWd+tpi+NZPjDna+xulUpq+e0+RjWIJ2VfC0jABR/OYKr+bf7JGqmqWZ
X-Received: by 2002:a6b:cf17:: with SMTP id o23-v6mr6250625ioa.30.1541200822316;
        Fri, 02 Nov 2018 16:20:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541200822; cv=pass;
        d=google.com; s=arc-20160816;
        b=k7Vh4lf2Uxhdxde2LmAH3ELSuuOZ3KrqNFd4Zuv5rc1YcRnjaKDU/i0qnUPAbXkaiE
         r6NytfKkJZKWCLviXw+b5d8GUJZZu3ojPBmVqlAKBo0g2Ha9phDy+Nu+d9vf7MUwi/05
         fJMnxnk9RBmTUt/EV34ww8ZXaAeHcnwV2AxoDA7V/UzAcZlt+V9VKA3WobNB1APYK+zu
         hNC1UlRoW9rJ51wfFsfyYrmQmqPFI0pyu5yigtj8LbQWmA9yjr38hDu5DvGeSVmRw4yw
         LthtVngNUc3wD4/GhPz5QMgifrflV/GZtNxCEsn0R4g8rr+y2SBWWj8l9Lu+jXxKyFks
         ropQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=8k3fx8qCyWTOTFVCaqwZtVX+Qsem5sGRUlvt0H0y78Y=;
        b=SFjx54jSk7gt/g+2MCG3HlJTY+IoidZ5lfqyV3aiZNMYwNq4g+If9Kf3Hw8c6XA2wB
         Umr9YgP9LlytsuwkK+MDsRa1wqKPx9mWa3krQHVMWDIrAqOFtMuTj9+NQkN/ynG8P3Dd
         THDs28p6gnLoyj39m8Ad2JbCxQ3grX79aW40kHCySV1Qe5Am7HXSeP5hiLUo2Mt5/sEz
         uV5+45NZZu7pefz8xZw4OheePdX06I08f3W0zrwCI/jfRK/nt4Ts2pQtwDDCQAJUZY8s
         x0oEXzieEaVRxZlS70iISvAhTI4Ms8c+JqVDSNVtfja9aPAHI9YLXc6Wcpf8CnKQF/3l
         MQsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QyT53wVp;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id c188-v6si1103576ite.0.2018.11.02.16.20.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 16:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QyT53wVp;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541200819; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=XhiiZsSVDp4FLdi8nl7AIex4aGB7l7SP2SZVwjkgKqXkRmfKHPHYjZ46WarFpVvJSJxTfNn+39YU5pQUtxzcM6pW0+vjPGNKCCO9AMcP8gwhA7JEZPZIdUKRvUKXPR1yQpq70REPCHbGhCClkuf1CR/vnTFERwDagrvr814yHLU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541200819; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=8k3fx8qCyWTOTFVCaqwZtVX+Qsem5sGRUlvt0H0y78Y=; 
	b=VwXNf06iQ5vLP10GeCKUvoX7CwDLrVa/GE84OOG/R0pc8HLGx1uOn44+Wv5o+gyd9ReEP7kjs9qDHCZuQEvI8Gwregsk0QdLfI4KRLaPZA6gUb1FwZsybcWQpt9yP08CvV9tJ3rvwOdVDOb6RE/J85ejGMa6z8elTaSwU+DccZo=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541200819;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=813; bh=8k3fx8qCyWTOTFVCaqwZtVX+Qsem5sGRUlvt0H0y78Y=;
	b=QyT53wVpQzUkc/aauulnR5iaOpx04Mzbmn/Sf13X2tbS9CzcCTks8D05koTSY9Mu
	MCZ5fzvCq+fKuEtieeEDKQOzAw8Ep5DDP0S50IfsR6/o5/+fGYYxzjJllc8c+AvEUJv
	zuyzMIslXoQTi+Cc0Ve1I94DMj06Ns3crpijnlcY=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 154120081866928.41300362482184; Sat, 3 Nov 2018 00:20:18 +0100 (CET)
Date: Fri, 2 Nov 2018 23:20:17 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus Remove space before tab
Message-ID: <20181102232017.GA30267@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra space before a tab character
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/uart.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index 3313cb0b60af..b3bffe91ae99 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -805,8 +805,8 @@ static const struct tty_operations gb_ops = {
 	.tiocmget =		gb_tty_tiocmget,
 	.tiocmset =		gb_tty_tiocmset,
 	.get_icount =		gb_tty_get_icount,
-	.set_serial = 		set_serial_info,
-	.get_serial = 		get_serial_info,
+	.set_serial =		set_serial_info,
+	.get_serial =		get_serial_info,
 };
 
 static const struct tty_port_operations gb_port_ops = {
-- 
2.19.1


-- 
ta
ioannis


