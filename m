X-GM-THRID: 6536501456103538688
X-Received: by 2002:a24:1a91:: with SMTP id 139-v6mr3283003iti.24.1521897846821;
        Sat, 24 Mar 2018 06:24:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.80.10 with SMTP id e10ls2412553iob.10.gmail; Sat, 24 Mar
 2018 06:24:06 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvS2ipfxkBVSJpc29XmynKCfRals+B46slU/DM3HCK/zfZQX3kIlg5O7Mqaitu9/IL87esx
X-Received: by 10.107.188.195 with SMTP id m186mr14870592iof.57.1521897846290;
        Sat, 24 Mar 2018 06:24:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521897846; cv=none;
        d=google.com; s=arc-20160816;
        b=xWk8kyChTJjaT3Ak+MFU1viwin8WttKFfJf5hmEiJ/Djq4RGxmhh9xhYaI73UU/EmM
         iETrJU0ZRpiKaA4YDGMHkfXSNmaLBg1sxqgl1yNlzNiymh9EMZxYoIRjmSOTwL76wwV1
         ZGCL7fK/pCBp1Al9YI0KlmoPmn12QzFiDRV9iuaT2FQgN/64mzVlSuxm4HhCqg0P2KjS
         DhVjAT+06zl9WKbXb3KuSw9Yv1aGfYUjSQvWk9zcg1rKCR3LFUrbhkl+9VRWpagxLSWN
         x4JHrywaRdQmCPPR2AlVGWa/uzLnhAHM/IDT41kGk3M7N0lucjyLBeA//i2Go6O+iI7b
         xNEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=o2QGL0zFLz5I84k1JaB13TNTgPjx43OBF93ascEnAdM=;
        b=d/mw6IQKB0wYLskMauQskqFN1LMdt7oHU119lsHqcYAj/+Ywg7Nk+TqDhWk1gNyo3m
         7H1wucXzScSZhTwwI8d6X1LE51KpSFaPbyyZ+KnjC7tDKZN2rJAJ/1nIV171NQkqDmhR
         MTk2n4/1BVcyQHDfxl0bi0fwHObV3iJ+uKyNem/YxKoaS2GZqIVWaOMsg8JKTnB2k84i
         u0/IgUE6euVWusBXRSvbGWzJMojtWuc9p8QpAM5SHnAiq1CfUYrpcUpOOfIIOUbYSVt6
         r6TAZE5lMwQ2/RSbfZ+pjQMqvZiXEf91S3pU/CANwYpaXxSSVJC51c5YCKdQ7gBWwbKI
         lpHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=UpkWuRxQ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id n5si913593ioc.2.2018.03.24.06.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:24:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=UpkWuRxQ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x242.google.com with SMTP id v66so3313615pfv.7
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=o2QGL0zFLz5I84k1JaB13TNTgPjx43OBF93ascEnAdM=;
        b=UpkWuRxQ6ys/f7/fQmrlx9ccYn36nV/oVnDuB87en2d4VZ9VBlHaCJj/z3cQWMOgBR
         N5FdJXw8mwi2efovXo+Tcgyo+A0EhOuhbQfYiJRS3risSRYYmfvnapVZKPjVZ5BKoYTL
         yXS7oZO8EX/VflDeirS5pnLM7N6JbGI/EMI24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=o2QGL0zFLz5I84k1JaB13TNTgPjx43OBF93ascEnAdM=;
        b=dSPKkNAEiJ8uu96sLV2LhvHfAIDi8+U0oNt2kXHZqiT9V8w2A3xXN/3qONALtoMXYh
         o7ElM5Eo3oOcUe0GiKFI3loIFaFHkjVfYtM3c51Tar24+wx3ajoxcfWiTvd3IufDkT4A
         vn44POn2tFBsULu5RfBBP937oU9HrYvXEH7Z8zcYIZ6LexLkfEZo/GmCc1BHO3f8kRkd
         iccJK0GWWw00fAGsMA3pzgVnCy2sa6EjI0ybh24f6bLo1vFYCbvYekcKgYBVcoMJKs0f
         oloTy8ICxfBp1zqAu6JJS1L3ZsCoVKd+067ZTkGq9QfEHw6tHiwmLG6UYNg1aC6a9iUU
         nKgQ==
X-Gm-Message-State: AElRT7EiNZGjbRf5ryKhFCJMwUYcYn5TqhzHZ7YOx7rOXpMMdRH1+Ygo
	zZD+Q8kqzcJxySXOJ5aW/e3GEQ==
X-Received: by 10.98.70.199 with SMTP id o68mr21383900pfi.169.1521897845689;
        Sat, 24 Mar 2018 06:24:05 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id k78sm22474303pfk.111.2018.03.24.06.24.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:24:05 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 4/5] staging: media: Remove explicit use of function name
Date: Sat, 24 Mar 2018 13:23:45 +0000
Message-Id: <1521897826-28871-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace explicit use of function name in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Make subject line clear.

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 61fb542..a59ab6f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -924,7 +924,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 	gbce_param->en = gbce->en;
 	gbce_param->type = gbce->type;
 	if (!gbce_param->table) {
-		dev_err(dev, "ipipe_get_gbce_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.7.4


