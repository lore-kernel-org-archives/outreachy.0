X-GM-THRID: 6619601914535346176
X-Received: by 2002:a24:2f03:: with SMTP id j3-v6mr473190itj.15.1541246174948;
        Sat, 03 Nov 2018 04:56:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f80a:: with SMTP id o10-v6ls3427902ioh.2.gmail; Sat, 03
 Nov 2018 04:56:13 -0700 (PDT)
X-Google-Smtp-Source: AJdET5efylK3ZK3B+cZZj96S+b5gq60gRm3k48JikjUsAz3I85NhbJMMeS3o27M9pjAqi1lwF1Sn
X-Received: by 2002:a6b:5311:: with SMTP id h17-v6mr7229433iob.11.1541246173794;
        Sat, 03 Nov 2018 04:56:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541246173; cv=pass;
        d=google.com; s=arc-20160816;
        b=s3vsDtNTKekD2GrvDfehYVPHf+Ur5WQQi14HY9RsquYHI7G1EJeOgWBJ9JUI2CT7gk
         5hVJkfl+NEKYfMnVIBRer1ObXMKyawq310Do1Bn1AfnaJTnFBC4bJVGU9SAt0Ff3tsAS
         +MaEDrH2y0pnt9e4kKZfiogz1I+z0aFIVN5YJOxe8bR8/C9eQA+GZ/rCKeI99ybAha3u
         KBMAQHgPXntbToMVy3i647fXyGwun670irf8IvqfhIjxUjvPGOGQX5zAdkOYZig140gC
         TcLIBErqBfSiVSQ7PRgDpryKjCnllopdR0kgPBe80qHtji32+74Sa+Un8wh7C0x1j/x4
         XLDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=vKkPMu6JQGGNx4ejwX72O/J789qREPBc3BI9D82chYA=;
        b=KZvykXxrGRGtqwYLSFm4ydBQHkQAJOMuzjuG7XTp/G6xz5m1VPiUwlNOFvUmx41N0/
         j8VN2Wdrb4J9CT7x/rUD7TCCHjkS6uPzxMpo7Afe0k+xhcMNotXas0pNWWf21mAXCl3H
         ZeRpZOJPsuKELb1cyPxUfldhtdB3wJ+wSuKobq/jwmGoZstCg/PTV2igAn1E+Wf7DYXm
         uiVo9/6W9Nd6ECmEUCHuZgcQl6fhgl0yADnyOCHAtwb8S2m7vGyScpZavvacp2SgJqm1
         4cBtX3Cho2G+G+KcZfS1So9wH9Pi5BWesEFjhOhiT/BQ/5IswYEdRtfo9qCEsPDDcASu
         +yMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=MqAbohKx;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z137-v6si1088639iof.2.2018.11.03.04.56.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 04:56:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=MqAbohKx;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541246167; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=N3JbxWCNntFuxQccOR9aVkRi9kYT8CRZJPxWIDHSVCmTODADYOz5nMTkCHEOyh9tBEFV5jJ7RcawA+JfGel/69jK+nHZ2KUX1QSfGjq+e7ACzJKkVh6FLmYpbnK4Xv+uy0uJftOjY9EWD6bAX8qRkX8QbXcmGM5GYp19KeMfvmY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541246167; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=vKkPMu6JQGGNx4ejwX72O/J789qREPBc3BI9D82chYA=; 
	b=G3ncRETKfeYcslrp4/ez6v4wCuZcC/XZgRDCLtPJq/2Z9QTosOljSitpLVTTRGTLHrYukuu+ZJpr0OOa+olI49tsaspb+uUE4ojkLS3Sh2v8MG8+lQb8jM/nsovOMOHJS7Dc8CTNhtBihST97BG+d/eHr4NfQrYxDIL6H1ZE6kQ=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541246167;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=588; bh=vKkPMu6JQGGNx4ejwX72O/J789qREPBc3BI9D82chYA=;
	b=MqAbohKx1xPaYlr9HSQO3cB2VXpZePXLuv7WDKMSiYpYoER80Imbe0gB6LuN1WXm
	E9YaCGbsVa/gxMN1CrZ1B0NCYBPuf6tikVAGk4fAGZo7Ou90yPvGQdVCSnxmWV23EYM
	U4r3ux6iav0XqjhB+AyFPKl9B8jA8FpEAa/WshWk=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 154124616695758.8182163066524; Sat, 3 Nov 2018 12:56:06 +0100 (CET)
Date: Sat, 3 Nov 2018 11:56:05 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v4 0/5] staging: greybus: address minor styling issues
Message-ID: <cover.1541246060.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Changed in v5:
	- Rebase the patchset onto gregkh's staging source tree
	- Decouple unrelevant patches to two separate commits

Ioannis Valasakis (5):
  staging: greybus: align parameters to parentheses
  staging: greybus: shorten comparison to NULL
  staging: greybus: insert blank line after struct
  staging: greybus correct SPDX License Identifier
  staging: greybus: align arguments with parentheses

 drivers/staging/greybus/control.h | 5 +++--
 drivers/staging/greybus/core.c    | 6 +++---
 2 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.19.1


-- 
ta
ioannis


