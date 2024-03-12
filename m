Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBDE143728
	for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 21:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710278535; cv=none; b=fqtLEteJ1t4sJUDxhE1/X6w8pGwH5soskPY4WTichKwp2DHdf5JvvH6xGav4o8UVY1dhTzsiQqwPwHCdhbXDV/RBxGcWO5E13l0SHf1WHVMsVJUf7Xt/8RNS1qZYByQKqEeHZcwHqXV72fuuvgKxg8YK1CzIKBWOVOwLdDWKp5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710278535; c=relaxed/simple;
	bh=7rBwd+sfmuDr30CU4/B+mYYhJgxmsGnIEOcFymakRRM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=AyqTX5tUvp4yKMymrPBrXlXZUebY9b2DrOYyq4POR9tP/FrRJDdA5wkGAeYnsxG+FyJkxhxg7uVISrpQEhh4EAUViTPPOGbBG87s1vXhJMIV0eePGpMNOvMUAQIZH4m19oXmW2629MqFAYebWgaRmiwXwgvAFQlKL54wbYa4lfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SNUsghrL; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SNUsghrL"
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6e6adc557b6so890341b3a.2
        for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 14:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710278534; x=1710883334; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oQmSvRDNaW580jwRE07lbPsAM7eCOP1OTVaOovGOOXM=;
        b=SNUsghrLiEhGcPFXZRlsC4is8riWBxIspUGhF4oQ/SR4HDZKc0SSYJIKHBHVYSHsW0
         38phxHeUc0HqxW11YcvB7Lh872wNYt7HxU+4WvJxgM9NqaPCmFWrtiXAyVPKcgRJPJ/o
         G2x1OR+xleW1USsZIBC8I7oKvv3gybEtyRTIgfW/uyxqBIHutNuGWuz8tW69KAep0QSl
         k9pftoS1Bx8jO8M9pGq3nRcFqVhMk8hj18augyXmLVcy/a2smH0UjX8CkXYF1c4Zqo6q
         MgWktcrx5GwEZCy4q1P9VI2UNuqC5h7nCqzGLFfYzxr7kP0P2Y4PdsT5AejeL0kl03Fj
         fl/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710278534; x=1710883334;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oQmSvRDNaW580jwRE07lbPsAM7eCOP1OTVaOovGOOXM=;
        b=u0mlY3JT4u+L+1ueouc1oK5Pc1oSZAC3+0QwguKNo1YqzUiV3/UyZPXnzV/z9AO4WE
         oReIdgRDCeeQ2PIPAIgFwghtNU7tkvokrPzmYrgz/vAg94XCZvpxlU6su+j7x89HntgT
         yb/u71YvHFNhexjlOFlecniPPlZ4QnMhv2nwqgXxg65kuCiAnqo2WP+zgd849clOH7cQ
         TmoQfx7FwOBVMa01GMSewfKde6qEb167XFjQSC9i82KS0ZB+cwgcKRVLva5Lx3rmATjo
         JwwnKOw4s11htj9jDplsP12hXX9hy2h9p61IphB0QG73OE0Q4lFly6AIYVCM4AxeOWBj
         qr4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVEwethOyYPHDegxYK9nziswzG1M9mJe0+Gyz+eWIJxJUniV+6VKtSAio6jjQTv9U0SXW9N2NAnIWmFdaR36hx37vfnOQSvy98t
X-Gm-Message-State: AOJu0YzDgpc5hckhGex/2E3SPvnY/kDxqQbE426KRua+YAAuTzl3oC9L
	TT68wh24bUmcZY+FWUOgrTahVOd6fAgDHThKeTUjHsGTltUDKYtgeBYMtRFs
X-Google-Smtp-Source: AGHT+IGQrJYQvdI1GmiAWvgwiQgG/mIAkgaSSuLTqpOuVI61HALO3hzUWcy4Vqo7R3RdXY3u9BydvQ==
X-Received: by 2002:a05:6a20:938d:b0:1a3:13a4:eaf6 with SMTP id x13-20020a056a20938d00b001a313a4eaf6mr1801041pzh.18.1710278533520;
        Tue, 12 Mar 2024 14:22:13 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id sl13-20020a17090b2e0d00b0029c19285192sm36683pjb.44.2024.03.12.14.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 14:22:13 -0700 (PDT)
Date: Tue, 12 Mar 2024 15:22:11 -0600
From: TaheraFahimi <fahimitahera@gmail.com>
To: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: [PATCH] staging: ks7010: fix spinlock_t definition without comment
Message-ID: <ZfDHg49k0Og3z9Lw@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This change ensures adherence to coding style guidelines.

Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
---
 drivers/staging/ks7010/ks_wlan.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
index 3e9a91b5131c..94322e2ea304 100644
--- a/drivers/staging/ks7010/ks_wlan.h
+++ b/drivers/staging/ks7010/ks_wlan.h
@@ -468,7 +468,7 @@ struct ks_wlan_private {
 	char nick[IW_ESSID_MAX_SIZE + 1];
 
 	spinlock_t multicast_spin;
-
+	/* lock for synchronize access to device read operation */
 	spinlock_t dev_read_lock;
 	wait_queue_head_t devread_wait;
 
-- 
2.34.1

