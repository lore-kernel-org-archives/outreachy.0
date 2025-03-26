Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427D71B3950
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 09:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742983161; cv=none; b=asEjgWjsnSee3yMEPDuLkdRDlLTQLd0R8X6DJZaD535dioby2zqpf27hgSFCIwZM9TGOT2AMb8oD3Oqn918Kq7Wjp/RoFRKA9zQ6tXrbosT+llVzm/2vJiN5S9X1EurLu0LV2L6vah/+jOMtg1zrVaVmGPyuIddZlLLizh1Q+sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742983161; c=relaxed/simple;
	bh=Do401Dto4eRSvtWazEdu6e192DKWa4YpzeqwJ406zZk=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=M18jMLazT6QNbUYHVoZYp8RaIb0/wIKsxN4DtonzN9JmhM+46Z5vM2eC8CzmUs0YI+R0DLVAZoYt55eggfzRNiC9yGn7rO9WPYOTz/xdgJyAm4kiTZ6GMmLtLvWmlOKf+MUi0cFZLQUVAcwiwUOWK4hkNTMGeRoeEmlaAMqqlFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yhd0HFuL; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yhd0HFuL"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac34257295dso1356103266b.2
        for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 02:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742983158; x=1743587958; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjXPiRIp8YYDhIIaTUKI9YmEVChKDwNiiPGSatLAKIA=;
        b=Yhd0HFuLsrAovKoFUV1m+Y5MDs2vPtyzVp0bxzCQVvIfVx5dR74Fd8s65lADxkFp2e
         9zGuJKWdQC5v9Wcdy2vXhxraBamLL4DDj6LeW3izaLoEYiAyPUu3qojxnFLVoGbHpYdv
         HTTBgbLOSNgnK5J+LN9+NcvilIu2hcbpFA0igTXRMqSRxlO8nGrQ7eQeZZUzhE3VOSOq
         e/ApHhXZUTbL004/F3hloDKw/gdzmtQLlTuvbv2eiLGIdhkkXfoaV3VArSY2KK6jsllJ
         Bpqw1xgvL8DLfNgM/wOI1sJ1CDtSnUXkytasLaCxgkrTUeenILXR94THt92O71TyWGT5
         qKKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742983158; x=1743587958;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yjXPiRIp8YYDhIIaTUKI9YmEVChKDwNiiPGSatLAKIA=;
        b=Vkm8m9p8EOyG/+PJukv/htUefy3+RFO89s/UMcDakuUvZfdS26E03Od8XTsaPajNYF
         GwhTFdfMnjXHpJMYWbTcuTkM+e77G3/FlPbfiRqCTVixkTYuuM82q8anRqz5IrJkoXVf
         3dU7G3zHeGHyX1OOr1gO9RucBW9KlbaFsIx6dBIODxdi+omfT2/I5WkyHB7tNAC7K23r
         BqpeTvgwJjNmoJuZbXpeuYdIqYU00IAgknhuyc6NplhrrG3FY1tg7c7zJiBXpOoTRL21
         oE5/iWDSih9UfRL/CT4BXpt4J5GMNK7mIUihoTrHAhtN4K8g6UcMpgIdGhNilqE9w0R3
         NC4w==
X-Gm-Message-State: AOJu0YzlVNayUQ/u2A3jH4GgNsuQCDg/VzRGhWv+D3tVkq4/na60sKBQ
	x5YIBVinJdIp6lMTcoOJVf1iIutHFGGui1v/0HXOdCQZgDotEult/ZEqtArw
X-Gm-Gg: ASbGncvkVVslgdfvwialMhfx/eJdW7njUXsHK/lTHFBGfAs4JKp5dee2HPYYsVBKcTk
	xZ6nMu5TCTOGUXOcjkXxXYgc96OP0zGlC2jawh33aNiU4NqAUkjALaV7y9TumeYWsnA/8CBb7oj
	ne/4sLsfLURjjyV9gesTbphndwnxeT8IozXW5WwE2JYpcUM/ze0ByyR7mTswPNIxrD5IBw6f64Q
	3oakPOCYvKAamPt4H6GhtWW/EmOjGYu5HgW391cqwD9NAqXlp8Fc5fx+Ec2QI5yowndHgVKNbAi
	1dbgzQkKOyc9CA2/c3efe/ZRyAXP8rVnfc0k4qTXHos13XLXvw==
X-Google-Smtp-Source: AGHT+IEk3YjoeCM/OPuL8Bbj/DpPrsRttLpj0aBc5Qjrf/u30T1cUao5umBSFIPgSskIp8EqG4FzTg==
X-Received: by 2002:a17:907:2d93:b0:ac2:7d72:c2ab with SMTP id a640c23a62f3a-ac3f2566b9emr1828057866b.47.1742983158049;
        Wed, 26 Mar 2025 02:59:18 -0700 (PDT)
Received: from HP-650 ([105.112.122.183])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efb64911sm1016262266b.93.2025.03.26.02.59.14
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 02:59:17 -0700 (PDT)
Date: Wed, 26 Mar 2025 10:59:03 +0100
From: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
To: outreachy@lists.linux.dev
Subject: [PATCH v2] staging: rtl8723bs: remove braces around single statements
Message-ID: <Z+PP5xLvTltjFKF2@HP-650>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The code contains braces around single statements in the if blocks
which are unnecessary according to the Linux kernel coding style.

Remove the braces to improve readability and maintain consistency.

Reported by checkpatch:

WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
---
Changes in v2:
	- Remove extra blank line

 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index c60e179bb2e1..74a8fcf18e84 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -56,9 +56,8 @@ int _ips_leave(struct adapter *padapter)
 		pwrpriv->ips_leave_cnts++;

 		result = rtw_ips_pwr_up(padapter);
-		if (result == _SUCCESS) {
+		if (result == _SUCCESS)
 			pwrpriv->rf_pwrstate = rf_on;
-		}
 		pwrpriv->bips_processing = false;

 		pwrpriv->bkeepfwalive = false;
@@ -549,9 +548,8 @@ void LeaveAllPowerSaveMode(struct adapter *Adapter)

 		LPS_Leave_check(Adapter);
 	} else {
-		if (adapter_to_pwrctl(Adapter)->rf_pwrstate == rf_off) {
+		if (adapter_to_pwrctl(Adapter)->rf_pwrstate == rf_off)
 			ips_leave(Adapter);
-		}
 	}
 }

--
2.34.1

