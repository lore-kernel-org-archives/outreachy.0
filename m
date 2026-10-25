Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.42
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792922003;
	b=nJH37DTCHwH37BtaZ0ZkmdRAueXwITL6KAERcPRCM3WuUNnmS7urHuhkoG00WF7shbQW
	 6VkcolYkG6RTGgRpicNkh6vEOpaD6LSY+mu4gX3QEZ19Ktl8/sZDyjhCUOvb8ev2ODGzw
	 IHYsNtPcah9Vz7wbdaBPynP18ot/G5YJ907wUxKfuT9UU3/iIPkyU/blR/wtGlmrVTmj7
	 /sB5KAvABe08/0FWOcm/aFPTxnbJNtEU9+jr9EDN42b4Vq7hZRWG26JKdkeP+OxC7boDX
	 Nv8ebwf8zaJTc0r7pOdYCCrOIKwSPVZ1v7Vr4Ztb7DzjOzcZkWN9wYpYhU5mT79EmiQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792922003;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type;
	bh=6PtEA2UtMTqcqVdkWoMV++OnOcpG82BOix7xLgA714w=;
	b=oJmciRVICej5WjzRbx6jmhDRM44rO69o+IM1QBWMZaIrlhqcZs5LqVXoWPDkYwBtlsqD
	 o+J1k6OltSfJRtI9MFWpMwvTfaoXLnvFw7WsS58+N+368dSpQwddfuDKRptmqUCPLUC5/
	 p2JeILdTVeidj4bRvy6bXHQsfGdDycP7cjVrjzo6sfovFGJPjp86HoXjNZRqWXTBQxq6h
	 C96YOdDlwCJ7f4Qcv77g7LMXTTZ6Bayx5bTKVhF7reMnzfajw0n40Zvz70nxtmnf8WD/L
	 0NFWL8tVmaAhCHGJHTCbJxEcnhREXcZfZ5A/TNENDuSVysU2zAdMmgl7+TlcClheVXw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=q1QAVOsx;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.42
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7A4606A31E
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 09:53:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 0E7A4606A31E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=q1QAVOsx
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c315869241fso253060366b.0
        for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 02:53:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792922001; cv=none;
        d=google.com; s=arc-20260327;
        b=XljXSWc3+7kDcInXXgtHXlfO6oiIbVLJ1m2KPWdrUr91ZQjqCBlPtFai1qWk7I4ajR
         vMguGLgNZSIcGNDFDToPDzbsU+CMCXyZXie9ZVh3fL+wR4XpUb5YfaVLOEQwyhNHd9tU
         E19zrgNFShiOJXG5Zvk0GSwSiq24Ua6Jrr8ZNTCPzGr995meHLQG2rWhsvZjgKmvZYKO
         ZimbnVezo3G+ZM7EBMc3T+US9akFuujif8VWZtL/ffkvR2lEzSsUYSk3QTb7eooLqZTR
         PQNYOTUxW5eSFaq+fH7wEQictq+mpprQCKcKh9VD9UonXII4YT1CyEaey6etlwpO2iko
         GBGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=6PtEA2UtMTqcqVdkWoMV++OnOcpG82BOix7xLgA714w=;
        fh=e6Yn7CsB9KQfV9WOO3XS9Uf84rVkfQKO9tpsDhOXCnk=;
        b=PGXuu7Tz/9ate/qviqlDoOhVSE6JdvvfQFwQIWIWbgxW9MCHRDd1cVhm65UyhsmWrn
         +lnXDOhIToGoTUQVd5BEUb4fKwZOY0iNonCHPajUuUL5Cq6+FjscH8lRKAxD8rMLFQ5j
         kJYu0iOuMniKWmxmGGjHB+FRQmw5KuVa5TDYbk+CPcUouMPt3EHWnvoPj9sUV40IR/wf
         6xuoKeg6l3aSUq/dyYQs8FcdG+BvKbGW9BB0PM3NHP0z+NFePIhTJ/o7G6pXcwrTHjXB
         TlUj3U5NlrLcKePjF8xBguYU5T8xYisWjuu+QYGF3U7lFBkJAaup3krValo7EdkYpPb4
         /+YQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792922001; x=1793526801; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6PtEA2UtMTqcqVdkWoMV++OnOcpG82BOix7xLgA714w=;
        b=q1QAVOsxJI2rkuJ1BWMjyxePsP7YBS4jBxUbuNDzYcfR1wPNoyBOedgyA+GpXOIQBz
         tyQ91Q+8m4ZjDR8czFtTzgXl3ZUnnKkq7qCSU956+bKqFLoPS1MWY1Q1/BkC3NBN40sc
         79oQfrLt1L2nsIvDDGoFNa/3LQ5ko/i7LVZ2KBUshn0P4hDhogwZB4mt1O+HZd33NUm7
         0Sy3S0DUicLr9R7u1CYSlqBFk2XeTYv/31TCm3T2jmK/DDZ20IeCiCugIBQXPKpSoMut
         dLtRumvJdbbMTdEdkxVGXbSuIz/lTjT5wOYqP3ezcdLSYeOzzt4jMw4eUi1209ZLNbNB
         zxYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792922001; x=1793526801;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=6PtEA2UtMTqcqVdkWoMV++OnOcpG82BOix7xLgA714w=;
        b=xh72EvJtcGde6oaclE8p6x10hLN40SXzmyxQ+5RU0LIscpOXGVN2Hpv/QD+kNcxRy/
         cJbYUDISeHmjdN54el61UasU02bM7ejrVLKnHPCg8mL+GF/mOB7OiMXVRKwmnm8rEfzw
         /Y9hMpbAPMj3FohFKBjKhHSwYDHoxThPooCkG8yRmKPPKzCzAYV88nryGsujELyNQ1w7
         aPFnniK6PdkOkw0DVragYv4LQJVMz8iN0KyFVvZ7Bww3l6Mw0aylykLnXK2LlJCnYPZS
         JMKlvHgZscfnMtjlCmDGsZUejpv1kIBy44s7kKCLE1+vGm64Zaaf0ugxD8UJ6Gtz/zLh
         qC1Q==
X-Forwarded-Encrypted: i=1; AKwUvBye6eNbRyWCBVeyuQI3S0gXrQmjib3LUEDJKPHblLvZ1XRw0bGMjcDFi4T/AjykYU+BLdvhwIZmqtU=@lists.linux.dev
X-Gm-Message-State: AFq9FYJHHcAOzpW+vSSN9m5T9677WcomeA5logY/9iDTylqzbq8LUb0q
	8IB6P/YmorFqWpUk2KtlXvKCz9w16dYc49ZH6yb4xS5WD6hgOroE+mnZTRPvntc1l7Dsa316XOs
	XVmuZOVZtcI5rnDXQDyiIgKc+c6SXaKI=
X-Gm-Gg: AYBFou38XzUT+qziyO/kIrfC3hJq6fAl42d7GU63swnf9wDU+tsrLopUkeTOE7PdPGt
	GIYoLhLPJVXj66r62Gev/8tJ5ePjgOUS4NJum+3PWpJru5x7jBPF/wWWhmA5U858SL8bVwKGJ5x
	/BffJyYiLqqYdkM160aT+1HFVw57rowmImPrVGe5qnsdVPhWYk4oOe3SxCB0SFuXLM1JFiELtta
	s2udmksJ1gz6sBHXifzUc4wjUpCCnUr6/JhENQCsKwriuel9kXl2Hqp1LlVJqHDy6jdGr7KLLu9
	IY+WBo0bN87Elz9110JrkLav/0k/JOADC7y4wa3goxagwCShTtJrMyg+RaOP15J7hwwsxQ8m5Aw
	vXLwF1tM79doJEuAM473OkYCv4D6Xr5kT3+gPCGkoO6NnwrpgJhtB61HHTMogUApGxFk=
X-Received: by 2002:a17:907:9d1a:b0:c2e:2d8c:4585 with SMTP id
 a640c23a62f3a-c46bde8a1f2mr445903566b.36.1792922000889; Sun, 25 Oct 2026
 02:53:20 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
Date: Sun, 25 Oct 2026 10:53:07 +0100
X-Gm-Features: AclHuK_xZzMIUgzgDxUYS0S8n_we1GNSKAQQHoI-f2BeDz1YvWNvfoIENaxJN_0
Message-ID: <CAHxSwT_ya=kxLdQkx5iY6DdVbxDv9MP5shRUF5-yDUvM=cFpKw@mail.gmail.com>
Subject: [PATCH v2] staging: fbtft: fb_upd161704: Replace udelay() with usleep_range()
To: andy@kernel.org, gregkh@linuxfoundation.org, outreachy@lists.linux.dev, 
	julia.lawall@inria.fr
Cc: linux-staging@lists.linux.dev, linux-fbdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

From 778030aa9291e3a7d40ffb03b19e6877041cddc8 Mon Sep 17 00:00:00 2001
From: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
Date: Sat, 24 Oct 2026 12:02:25 +0100
Subject: [PATCH v2] staging: fbtft: fb_upd161704: Replace udelay() with
 usleep_range()

Signed-off-by: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
---
v2:
- Send patch inline in the email body rather than as an attachment.
- No functional changes to the code diff itself.

v1:
 drivers/staging/fbtft/fb_upd161704.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/fbtft/fb_upd161704.c
b/drivers/staging/fbtft/fb_upd161704.c
index 7288140e7..94ae5bbf0 100644
--- a/drivers/staging/fbtft/fb_upd161704.c
+++ b/drivers/staging/fbtft/fb_upd161704.c
@@ -32,27 +32,27 @@ static int init_display(struct fbtft_par *par)

        /* oscillator start */
        write_reg(par, 0x003A, 0x0001); /*Oscillator 0: stop, 1: operation */
-       udelay(100);
+       usleep_range(100, 150);

        /* y-setting */
        write_reg(par, 0x0024, 0x007B); /* amplitude setting */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0025, 0x003B); /* amplitude setting */
        write_reg(par, 0x0026, 0x0034); /* amplitude setting */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0027, 0x0004); /* amplitude setting */
        write_reg(par, 0x0052, 0x0025); /* circuit setting 1 */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0053, 0x0033); /* circuit setting 2 */
        write_reg(par, 0x0061, 0x001C); /* adjustment V10 positive polarity */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0062, 0x002C); /* adjustment V9 negative polarity */
        write_reg(par, 0x0063, 0x0022); /* adjustment V34 positive polarity */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0064, 0x0027); /* adjustment V31 negative polarity */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0065, 0x0014); /* adjustment V61 negative polarity */
-       udelay(10);
+       usleep_range(10, 20);
        write_reg(par, 0x0066, 0x0010); /* adjustment V61 negative polarity */

        /* Basical clock for 1 line (BASECOUNT[7:0]) number specified */
@@ -60,7 +60,7 @@ static int init_display(struct fbtft_par *par)

        /* Power supply setting */
        write_reg(par, 0x0019, 0x0000); /* DC/DC output setting */
-       udelay(200);
+       usleep_range(200, 250);
        write_reg(par, 0x001A, 0x1000); /* DC/DC frequency setting */
        write_reg(par, 0x001B, 0x0023); /* DC/DC rising setting */
        write_reg(par, 0x001C, 0x0C01); /* Regulator voltage setting */
-- 
2.34.1
