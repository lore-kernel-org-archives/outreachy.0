X-GM-THRID: 6620547167797903360
X-Received: by 2002:a9d:2ed1:: with SMTP id w75mr19026693ota.14.1541466288961;
        Mon, 05 Nov 2018 17:04:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:a8d6:: with SMTP id r205-v6ls3433079oie.13.gmail; Mon,
 05 Nov 2018 17:04:48 -0800 (PST)
X-Google-Smtp-Source: AJdET5eJE/5u1IuyXajrglXvLwd3BgrI4fsFaiPnmZTt+Ws+qKhYLr8a4arMws3Ko8upBfdqXoSZ
X-Received: by 2002:aca:4bd2:: with SMTP id y201-v6mr14525067oia.22.1541466288465;
        Mon, 05 Nov 2018 17:04:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466288; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2fBc9OB5pb+rJurGOOL3uLzGihnsMK8EDJfSR+5KLBjykMTrCKML1w02X1iTNbXp+
         9u+kuEkvvNjtC/KU8aL2eAYZ4tWRvSBW8VLsGCQocFvPA9zE77STD6jp6ylP/l+KvLRl
         Ju3k0RrA6fLmu1YtoQrl26HfDLYCCLug1TgxjKX/bwMiBReS9oO8DnAEXkuD0mNyDtxz
         YmUPgsnxOVaTxPEvzHpnpY8izabArOesyITjRnYsDmgJk6JKpN61EtIO8Pe1B6BzVkIM
         meRD6z+znMylTPedcpvqjwbTBmHnZsIQcSwfrBcEJwJkWXSY2rtzB36136PWIWCu3LeK
         Cl4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=;
        b=UqS6cAJM73dyzsKnPk+K9en3sN/5PFYO/9JXHrvO7OHjcyj3xh0bXBqDvpDcd57ecM
         e5cYW8IgGsqFbb87JdHIl6KO9uaPtDWRo65x3QZdd8UsnxH4boJjxp3GR2S9ofpimNBn
         5i0m0YWCXvHPqUcLnpm+JgS1SqEa/hr/ZJTTXSZQOcvmLGGNlbgoJpWl3A1ZwwC+1Bt1
         RiUePrv+MMqf9DYCIF1FY33FHt5ZSS+3JBWpuHveRPmVbz7NMoBijmcgAQ0NvXGy9sbl
         vvRLBlTp1UPwNK+TU7keZsZGjKjTBEFQ/wxtVIAG01N8FNJA//T0aqPOEu78W6vJss0C
         LhCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=GR+WJVpc;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 25-v6si1455451oij.4.2018.11.05.17.04.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:04:48 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=GR+WJVpc;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466284; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=RYliMfHvIUv00xEfn7GsIC6moBh2OI49/RECcIxWwRvWl8ShsaRF7792gYx7GPxNFvl3W31Z1/U3YKU3UCoteR9Dg/3QwE/TG4QPcE6auX/Pt66ohLrJ5BM2IMdK2KLyUFljwXxuqMJYR1HC4hqX2quJqIUwz/UYp0Fe9vMZKBk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466284; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=; 
	b=dFVi0F3XqQdIWLwUaAX4vdZLqhqFzhQBhF1CLcWHqWJt5Gd699FIeSeqhEKwX1WkUm8gYbhPbU2C5oK0i4w1mp8/b5gXB4WCusoo6w59YUaA2QuU3vwSRPfbXQqArFAL5s+HcOx0Pr0j+Qn1DrVfKrC1Kzj+khorxP2exb2YJqs=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466284;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=589; bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=;
	b=GR+WJVpc6tcOakRgHHCW64hRBFHmcJ+k/R9zwsqLK6qacVaZipvYdAFyu8KCODrh
	RaUJyEU0er0c5MhqFstx3ZbCbsUCMYToeXVgonF8MSElADQZ5l/vYpOqfkxrFkY5cVd
	5YYAv11766VqoQDL8is7cZYkH+Baqp2A4nscNiW8=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466283628285.7436258960238; Tue, 6 Nov 2018 02:04:43 +0100 (CET)
Date: Tue, 6 Nov 2018 01:04:42 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 04/15] staging: greybus: fix SPDX License Identifier
Message-ID: <cec768a03414f21b413282b521cbbe781bfd8e12.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Replace the SPDX identifier with standard C comment.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 9c453e0b1b33..ebb7a2ee17dc 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus CPort control protocol
  *
-- 
2.19.1



