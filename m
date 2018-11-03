X-GM-THRID: 6619601914535346176
X-Received: by 2002:a9d:27c7:: with SMTP id c65mr7836087otb.34.1541246217458;
        Sat, 03 Nov 2018 04:56:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5e8e:: with SMTP id f14ls2052866otl.2.gmail; Sat, 03 Nov
 2018 04:56:57 -0700 (PDT)
X-Google-Smtp-Source: AJdET5etI2Zk5VSZgz7fg5FYZiTe9qUPLH9F6zjoybm02Jungtzv6pVV+xER6sPENGhvdYzbQ/3Z
X-Received: by 2002:a9d:529b:: with SMTP id f27mr934979oth.52.1541246217011;
        Sat, 03 Nov 2018 04:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541246216; cv=pass;
        d=google.com; s=arc-20160816;
        b=zwYyNI+99+BrknfQpVIDHdL6vAdXJ6BemlTUIgI5cA6TCk/Ukmx7gD4rDg1DveEfSc
         YdQeFOdunwAM6VIQlplDzVtVgm3LNOP3nvw3enVfgUWZY6YhIBarrrm7vDXkpTvRXCpJ
         aHaAamRBtv8GvOyFJamgEaSlUP5c52ZFyCh62XOpRrhFKbk6akGGYhgdUF1jiIeQR8SD
         IGHB78oiyEJdc7OKSl9kspztVs4vb3CyFHVEOOvZLxcKL2rP2rFBQtmDLmH9jvSa1aLR
         RhpZXI2lPQLLq2+DUF2gAuWr0yIm7Rgp932/4PvMuMd3qU8zN013w95k3J+M7PcQUWtq
         6Sig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sgT7c2RQNmm5tmoNMj2kzh2aS7AA6KbIMlml9D3ySxc=;
        b=eiCS7s4aNnPH3A7sRy3+V+MX1fvk0ScEkEOnzFJ8hxLLyeA+RB2iZAivPPzL/T0bnu
         +9rnzD0jsI7aGHJc8jA1NnR3aGSl4CVD1RCbZFjyxi5EMcWKntceVpJDVomy7rm6gbBu
         ooh4/5j4T9TrExg6MUcyQfohhnfwOdlQ8c9v/IH2l5ZagdijdHx0H8YuV1VdEJcA2Yr9
         kANYEZeX0xJMXGQ5WxcIASHEUI8K9zhjlT2nmG3e+xnhepdMsLDxMpLBoivM3OOTzxKD
         OigtdNflwyqez64+n07TEUytt+3+SMysNop2bRrY+TNm660JLvyv1RAzZ32Lf5rzmHEk
         M7lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Qq7lbckq;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id s8si639638otb.2.2018.11.03.04.56.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 04:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Qq7lbckq;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541246214; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=OSJl/rrIogHjQwLx3YsLIx4C+q3OFjrsIIZ7MiY0HC5sIm6rGn9QFFXP2CHzV5PbVfKPQTw/7smx4qUkDHuz7MjApF0a+HkwRP8ZWD5Qwg25/ja7FPm1D9FtQlwxJ1WzWPSDSdq582AEBSSlQicLtMFvwksEdWlcIe4zL2ip3NU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541246214; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=sgT7c2RQNmm5tmoNMj2kzh2aS7AA6KbIMlml9D3ySxc=; 
	b=Vi1cGNXIg+XZwPyl4+ZZKn3nY2CEfiicszclalDryntdPBlobVArOlcncE6e7Ub4BIyMTzK5/L4uYK+uQ5vnors1PL3VWDiKQ+8MJvh2SrR84eB5ZJnS8zRow7QAf0YgqdVopK2RCk7VSRyjdwVNivn71lMiXOfKoc1OVKBy59A=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541246214;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=639; bh=sgT7c2RQNmm5tmoNMj2kzh2aS7AA6KbIMlml9D3ySxc=;
	b=Qq7lbckqkw7m1OZsqaQkRTItFnnd9oPfc6VoyWEa3AcuHYbFwflxepokSTs9PNFI
	db0VbFDPOXFPjmMXr7X1zyjYbyWCBo07nADmlRffANa1udfD3YySlsd5u4wNN3sGNL/
	Ua+d6jb9hR7Wx7L4kyAjK5Y6log5T5pCQSLQKpXs=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541246213127215.31858039637336; Sat, 3 Nov 2018 12:56:53 +0100 (CET)
Date: Sat, 3 Nov 2018 11:56:51 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v4 4/5] staging: greybus correct SPDX License Identifier
Message-ID: <9e96d53e8d34fa9f8eddbc5af996be71297627a4.1541246060.git.code@wizofe.uk>
References: <cover.1541246060.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541246060.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Correct the SPDX License Identifiers by replacing the comment to C-style
comment. Reported by checkpatch.

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


-- 
ta
ioannis


