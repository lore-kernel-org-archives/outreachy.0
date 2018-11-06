X-GM-THRID: 6620569066519134208
X-Received: by 2002:a2e:3c08:: with SMTP id j8-v6mr2275389lja.10.1541471357505;
        Mon, 05 Nov 2018 18:29:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6e05:: with SMTP id j5-v6ls920816ljc.8.gmail; Mon, 05
 Nov 2018 18:29:16 -0800 (PST)
X-Google-Smtp-Source: AJdET5eeRQ8lT5TFIg9ya2Spa+mumanxcIOv4flGWYbq5u8YzV0jreVcf8Wt7ix+uwerjsBbdHRF
X-Received: by 2002:a2e:8199:: with SMTP id e25-v6mr101750ljg.15.1541471356401;
        Mon, 05 Nov 2018 18:29:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541471356; cv=pass;
        d=google.com; s=arc-20160816;
        b=k5Sz7DsaagTCK3LOaq3SdxEdEj6jCqAgx5kbDtpP7Fy8xgZLt6a0RbxFtbx8sem/eT
         Bff0aaNzKW6F0O0xYSiItEtqz52TDeepRHLMrpwQG/3jPeXlWk+7RVIbqPEWzAw3GHZ4
         tgf1TA4W19NhuhBP5wa3WxB8FlGIOgdFsD4Y1yRozVZpBs6mse72xyAw42ucPCeyLTcv
         0EvKLe3zJkQvSEYJdkjgjjHd530dmbFORRbJ6fZpWuL/rRfsFED11ZRbiPlFTaPCE804
         Cc4+y/1f1/VK5XvC/HzRM9OzLXZ7AhuYMvUbKDYectO02YU/hsXkpY/1CMzBjfw5YngR
         xycw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=o2lZlh3hon011i10bwycA/6OHWx/cdNZg+V1eHhplhE=;
        b=jDvQUfCbTih94jNtdV/twZ/n9PRhuDxPQl0cC7j5z1XkvX6ViK+uU6jp0Tkz277ddv
         WUVg7gtiFVfv6AIiLY45Jt/u7h37kCCmyc0MCMwAXok1WDz/+EijZ7L3cNDPwBRfld/X
         hJiFhSmL6qaYDr0gjBYvSTNZ0j9as8kSZzBKMu4PnMklYWGYiK245O2rUxqcVIDyX67a
         ZDjMPLlAFoIvQbwN5++hrEcPEtWthnGvVMrMupbXqndHNmgqfUfw/Sie8BEjRWHtU2sH
         mtFKQaX3xBFifmh9NfqLa/5/l83KaTPD9pN2TbfscyfseeGT5Xm+67EGQMqaQv/AnuRU
         L6fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=AR9Xb4Z1;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id w13-v6si1620202lfe.3.2018.11.05.18.29.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 18:29:16 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=AR9Xb4Z1;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541471352; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=bR+qYq7Ho3QMbu/ifZK3ms4XfFHlAt56hqBOqaqzdQRMWbkAOn4FNF0Zo6+98ASaOnN07EQS/CXwiqSEIPaiMzgMysDHXNX4f9KQ2RmloIpnSqZp10DTniSEYVAR5UbWcG1tEB/5OZA1FvxfblnV6gwKZXxTe34WOkaeuHda8XQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541471352; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=o2lZlh3hon011i10bwycA/6OHWx/cdNZg+V1eHhplhE=; 
	b=C5hiXNGQHTnhImMbPJKtOjutxj8E1a8100tFTkdRUgF1wbcMb1kxAiI6fcIlt/rxdG/9M4oq67bcu1Kju/+kmficjZ4zsOpKJsFw9svJPf7FAF8prhXexuaXj7ewPYjD88FSpuvTC35CRBJyVCF94JsL2RtG1FNMG+T10Wu9s6w=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541471352;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1240; bh=o2lZlh3hon011i10bwycA/6OHWx/cdNZg+V1eHhplhE=;
	b=AR9Xb4Z1Lyf81gxaFAJ6l378RA5vEE+UbxTqrIcDsnRKhcDOr4BlNnX31jieMSD2
	TtX0HNSmq+BahjkSUe54AdMbHbpycbrVFVPtPn4nCu0XdLurs6QAzLi2itNwyUDId8M
	4oX1iuMx94MgJmsApBfvw6do8PMSjbhU0dwqdjoQ=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541471351330936.1158621017156; Tue, 6 Nov 2018 03:29:11 +0100 (CET)
Date: Tue, 6 Nov 2018 02:29:10 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: speakup: move arguments to adhere to 80 chars
Message-ID: <20181106022910.GA14219@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Move the arguments of spk_serial_synth_immediate and the
spk_ttyio_synth_immediate to adhere to 80 chars limit coding standards.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/speakup/spk_priv.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/spk_priv.h b/drivers/staging/speakup/spk_priv.h
index 7b3a16e1fa23..c8e688878fc7 100644
--- a/drivers/staging/speakup/spk_priv.h
+++ b/drivers/staging/speakup/spk_priv.h
@@ -54,8 +54,10 @@ ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
 
 int spk_serial_synth_probe(struct spk_synth *synth);
 int spk_ttyio_synth_probe(struct spk_synth *synth);
-const char *spk_serial_synth_immediate(struct spk_synth *synth, const char *buff);
-const char *spk_ttyio_synth_immediate(struct spk_synth *synth, const char *buff);
+const char *spk_serial_synth_immediate(struct spk_synth *synth,
+				       const char *buff);
+const char *spk_ttyio_synth_immediate(struct spk_synth *synth,
+				      const char *buff);
 void spk_do_catch_up(struct spk_synth *synth);
 void spk_do_catch_up_unicode(struct spk_synth *synth);
 void spk_synth_flush(struct spk_synth *synth);
-- 
2.19.1



