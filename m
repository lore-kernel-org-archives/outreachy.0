X-GM-THRID: 6619380955766325248
X-Received: by 2002:a37:4cd0:: with SMTP id z199mr2944684qka.44.1541194766061;
        Fri, 02 Nov 2018 14:39:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aee3:: with SMTP id n35-v6ls9492237qvd.11.gmail; Fri, 02
 Nov 2018 14:39:25 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f2xcN7v0Z9bL3f+2SI8puRK9X9AUHeia/dTKLEB1EcBv3ImdSPl2l6Vm+jxRzsxuRcKt2H
X-Received: by 2002:a0c:d5ed:: with SMTP id h42mr6451829qvi.2.1541194765295;
        Fri, 02 Nov 2018 14:39:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541194765; cv=pass;
        d=google.com; s=arc-20160816;
        b=A7xUth3sOTlBQka5CVRSCLqMDxfrLI/XJ4ZoL0FDp4GUOPQkcivy/6dyYOXWoaeY3e
         KGJX4GHb3lne8a3tC3qRjFn5rIsj3WWeYqtyaXvRh9b8GU2G0px3+nArEOOpqT0S+VZu
         VXEXgnXENYjqsuSiGRvTna/aIpXfgpkN05T3iomxyup3EWVgpjfEs+lGpD4Us9CyEKGl
         RXAPYSfCewKZZPCaRtB8Ew+nptGuutQmqjvL7HOwv6MeULQKSVqKT4J7iPbO4GCZjv/0
         RyKI+4G0sdqrgNkuVFRwY28nrxhsFUYhPcY/6OkNP1dxcSRZeuPYbvNrPGBAoPTC4i3t
         uDUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cLE2ciapiHvRY3jCRzThgd/yg+K5JkU9rxfD79+IZOQ=;
        b=x+ebIE8XG0oA9I09Hn75mEcylADQv8cAREirLR1E4jVxrFcaVYBlb0EB5LL3HndQeR
         LE31jrD9JG7yqt52ruBFNoku92ZLmP81CBUHfolcLByc6mJHPvROBkNmsZpDHeMZoPKG
         yck9eGXxGPMjppLnMwr98TxAfMgOWTEgw1dc4HCbTtinDa6bRliq0XR8Y1HaeAH3W1a2
         eHSaqnFHGatW+jVGU7KmbNygK9j+pYj4dfdqINLMnFAqgP1xFZnajVl3Tx2YTV3yHkUP
         Bn9o7lyB+HMLNJ+QiJOtFR149D8aAcLBKiZalMESS3dTx2HORAja5uAgR+mze5ujRefG
         8xpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="KZZ/P591";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id h125-v6si590094qkd.4.2018.11.02.14.39.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 14:39:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="KZZ/P591";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541194761; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=XgGHXnN977kMWVy7URLaNQfLNyHvV4EQJWYuSgOFKoEAVBHuzuoQuovwkHmNr218yv14i+1N5OhBlAEIjBiRyuRmgG/fynZg+8204GqQAgH64PtSHE00mP+MqeqGlCJ5Tbs5vk9dUakSN008Plq5Gb/Sd6e84jRmkIPXQotsM6M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541194761; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=cLE2ciapiHvRY3jCRzThgd/yg+K5JkU9rxfD79+IZOQ=; 
	b=D3HwAFtZkMrua+dy5b6NMcsFLy4AABne/leb0hdFjWHREV1FOGkPZ9VQBY/7orV8RtROVsxFPZyxvDiQ6t3SPEEIRkqZ0yEmmSTFIyHOGiZ0vksI8KmuQ1u26kxpwOKd0c3RPrXoTNHD/zfSo8Pz+Z4hjDxg71bOY5TcslswoVw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541194761;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=630; bh=cLE2ciapiHvRY3jCRzThgd/yg+K5JkU9rxfD79+IZOQ=;
	b=KZZ/P591iPgUC1sCdEbNVRrNvgdLopC3vCG9LduaVNZhv0VHcTahGIMXGO4EVoih
	2uiOnmDUOmHPBH6uBjUgqRud142D8c007DEhEWUzTR7QHrkqnuaPgiH3w66r/pnNiMi
	Rd/PoslQ4aIsNWlYdU+9RU6OI/ScCSBmPO+5fwmo=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541194759476613.4037173308177; Fri, 2 Nov 2018 22:39:19 +0100 (CET)
Date: Fri, 2 Nov 2018 21:39:18 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 3/5] staging: greybus Fix SPDX identifier
Message-ID: <918c3e8120eb5cbf3839a9f28544d9a3488f6016.1541194567.git.code@wizofe.uk>
References: <cover.1541194567.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541194567.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix the SPDX identifier as by replacing with standard C comment the
file
Reported by checkpatch

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


