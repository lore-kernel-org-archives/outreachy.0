X-GM-THRID: 6667148493451165696
X-Received: by 2002:aca:41c6:: with SMTP id o189mr25092117oia.12.1552316495545;
        Mon, 11 Mar 2019 08:01:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5dc1:: with SMTP id r184ls4782832oib.5.gmail; Mon, 11
 Mar 2019 08:01:34 -0700 (PDT)
X-Google-Smtp-Source: AHgI3Ia0WEo3laEluWuJr36QiiES9Vj9mTxQElEV3oh5Q+blyyX0kSZxLqDtNdJ94Y08Xwwsnxwn
X-Received: by 2002:aca:62c3:: with SMTP id w186mr32784584oib.33.1552316494315;
        Mon, 11 Mar 2019 08:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552316494; cv=none;
        d=google.com; s=arc-20160816;
        b=cGXggwMEr4LzPZf1tgKXKu8pUgKFnDj7MkptIrHnqd2yISTB0GL3gcM+du+aRr3v1D
         VbnQyD5PsdzJLA3kuhhgNPuhMqoQS1JVpyBVl9Dk5mRcbi8jOo8f6DE6eS7EuW+cNb9u
         LRupOKcPQ5UZ+8mseIKW//pJ5puf+ky8t0FLnmhWvGXf1QsW2Oq9DmJXUp02Wn9o0Xm9
         XhlXuk2FTFxPK8IcGEoQgtCYKrzcYkgYmsHp7j/cWoNzFa3EY5bD/Zm15lUSVh2Jwq8w
         VwG6lXC57jsAePZE9cuy9GpPy2ARYOEsaeSD+ZX2wAmIPGHKnED4fNPYGfjveifary5t
         VAYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=1CU4zZxvYxpyuu4GxwcM77AigpmLkE3OBo4Z/EjWn8c=;
        b=IE5VGz71A52b2MrMOWyTSy26UA60c+5DWfd14CuFs4+UdGgZALbYeGhu+bhEHWEgse
         hF4Q8SnqBWGgEXw5ROwoid75gDyycIP4Az0oKHF2OvrsR0nIouatBLRLAE65oq6S2x7V
         ZoIvthBiaKQXkxFIMVRJ6KMpjjLdNMAOow/VFumJTpPYaSAoBEa8qP+1e3z1sGwA4IVt
         RxYIt2KCmwuJie7edXtdyPSjIPnEJhh2JyMEgCie9NY6FKfCgTRhajoWZHN9O8d5m2Jc
         lDB5MeK+aAWiswl8zGx8OQNGmAP9sU3CxnbjylOYxd0xqPiGeLSOsVqQIf1mjAFvuSO+
         GjFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EjxoTSH2;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v129si351866oib.0.2019.03.11.08.01.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:01:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EjxoTSH2;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id s23so1781994pfe.13
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1CU4zZxvYxpyuu4GxwcM77AigpmLkE3OBo4Z/EjWn8c=;
        b=EjxoTSH2KgZl9NxpJf+pJWQQx762NMOXzshmeh8Yuijmfz8iXo6ALQ9Ut8mWMueV1A
         QwtlYhjXqDKUeTYC5qvcdilVg63AMMaUXBJbwPBofjIo6Asb5fUWO3xQpe2E0b78VpAU
         imsAgmhcumaE9Lj72d1LOlbwa6mPTw9EepHNgBCunKKkoFk2KUeWIn4mcS6TiNXlm5D5
         Cj5JRbTF+P3e3VELPJX7BgbBZvubKhyFOu/K18C71ZRmPQsOkfEtM969ZvMqkC4lBqIK
         rLbHL95rHe7aV63ClYEfQi4/nxCDfqx6GCXW4I+s9v5oyZppIgKbbdSI0e5NAz6SoBua
         m+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1CU4zZxvYxpyuu4GxwcM77AigpmLkE3OBo4Z/EjWn8c=;
        b=pu/XN3EdI6skOzEQ3Ubg1FT5m+50O5porcDxuwJg0yWUWXLGg/0H6aryIBOox7SGFo
         B5E+7/hcaQmcxcR5BA642ID9aBq6KGU9JkQp68hrQaC07XllW5jhNBVf/xBaFOW8QFxa
         LRDSuKfGJN0WnWV1EuT/+ATJA1jiLQ1s5GbzLO+hmDMQ0Gn6ZapO2gb2MUrngh6CcLLF
         e5O84V4Z5D2Lu50xkz5nmkrwFZx2uLT14TOlYzFHONSoDr+g2klSfV2bXbqR40i/AWi4
         Eph+FozYCOazNh64k9c5kEPNbewrDgm6h/uM4uRemAm0hL32EGlNvo6r2Ob2+5jTuZfM
         UufA==
X-Gm-Message-State: APjAAAWGeWgFBt952QBPkIRj/b0g60NfBYUVjzBVlGmVdQrSx72lhqrd
	w4sobE6LFW4XbukRuELQxc8=
X-Received: by 2002:a62:ed08:: with SMTP id u8mr33434930pfh.200.1552316493664;
        Mon, 11 Mar 2019 08:01:33 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id l84sm9821845pfb.113.2019.03.11.08.01.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 08:01:33 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 3/5] Staging: most: net: Replace '--help--' in Kconfig
Date: Mon, 11 Mar 2019 08:01:06 -0700
Message-Id: <20190311150108.4717-4-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190311150108.4717-1-etsai042@gmail.com>
References: <20190311150108.4717-1-etsai042@gmail.com>

Replace '--help--' with 'help' to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/net/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/net/Kconfig b/drivers/staging/most/net/Kconfig
index 795330ba94ef..28040931f7e7 100644
--- a/drivers/staging/most/net/Kconfig
+++ b/drivers/staging/most/net/Kconfig
@@ -6,7 +6,7 @@ config MOST_NET
 	tristate "Net"
 	depends on NET
 
-	---help---
+	help
 	  Say Y here if you want to commumicate via a networking device.
 
 	  To compile this driver as a module, choose M here: the
-- 
2.11.0


