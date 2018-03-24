X-GM-THRID: 6536501456103538688
X-Received: by 10.107.46.153 with SMTP id u25mr5616384iou.131.1521897843067;
        Sat, 24 Mar 2018 06:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.193 with SMTP id j184ls2455709ioe.7.gmail; Sat, 24 Mar
 2018 06:24:02 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt5D6TjInUQOqUaFsCqjE6yEVdyVHOR1KbvkPzt99nsgi9AqPHZ8vHJ/lioMXZPI5D6vH8f
X-Received: by 10.107.136.77 with SMTP id k74mr12949395iod.50.1521897842194;
        Sat, 24 Mar 2018 06:24:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521897842; cv=none;
        d=google.com; s=arc-20160816;
        b=LhthrWYsQEjFQYxM9Em8tknXRcOG+7vPJv45U+V3dXosty8LHYtQPdjQEyHS4enGTh
         z9JZJ1ASUMny6B3CsVJy7alBFcVeOeVradN8JVgq4V1Abn7LoDjXNuTMamcUMxqNXbRg
         Ynce1QDnnomCku7xiD0Z+KUNBL9FDERIBpcB3XY+vmcJAVCM9WH4Qvd983O7ig/FAfsG
         ppOUeUpkJDh9E5Fd3c4K/hc+HRmOytqjcxSX1bIknQ7ZKAk+jiP6BPQFmPAODSyaijO9
         qIY92JaclLx3bPEi+EKDdfG67swwyZWhN8/Ex05364uL5ZMR4Usvqtd4InHjEUSsXz+Q
         8lnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=z0jQbeSwsGzFwyGEdYfPwVXbAPWxCoUVR3AnoSc8rQw=;
        b=oA0IYiW6RgipCxKx9J57VAIWgo/Urftx6I0wo+kV5ikkGjN32ua7G5JdFn6aA3BqQH
         GLuFC/Zr+3zyh/VArSgKtYnaj6D0d7S/RwEXQeONb69Ju/mv42AIk3HsVox+qnUqyF1/
         pjBHAqd7c/vtgL2oXhZQMwMzpRiIgrTnLKq0V+SGZASHVaXJbrdmTXR0AISIk4Gjy6YO
         B9Y1Kk5qOFh5hsHvi0D4IlfSZLS0H4MhUIAjUQkam1TUTxSUay2VGrf1TsdqxO3T/1NV
         3X0j2Txh2hqZvk/++dP5fzM8sqCGam0yxhQi8LHU/Z2aqHcJCzzN2DU+V8FsgTZXp90D
         kNtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=UKPeEciM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id p78-v6si748758itc.3.2018.03.24.06.24.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:24:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=UKPeEciM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x243.google.com with SMTP id w12-v6so9115686plp.4
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=z0jQbeSwsGzFwyGEdYfPwVXbAPWxCoUVR3AnoSc8rQw=;
        b=UKPeEciMsst1Nz1SSQ59WSqxOm1B0QkpLQG12pei3c6HE5lHuH2nPUEDDjQkX84TR9
         qGS7JtRKF33G+2Vx0zq1IOToxfPpOge+fK99AAKEt98pUPehwJOgFPwMfdHk7igRH/I6
         mAbYmRmRTkRnEfM9VuVv0Wbm2apUl5kTo9kT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=z0jQbeSwsGzFwyGEdYfPwVXbAPWxCoUVR3AnoSc8rQw=;
        b=HUikH+K9zb+P/Yv+xOouzNlgQcROQxfpv47wccjwTRe5ICKaCiX6gc4FsDjI/mTCZ6
         tvTgEX1vcP8ySbvhRksX3hq5x2JKuEymZpvzgZ4F+qjgjGBN8MBhn+S/UteNtE2Er1sQ
         RVRWQ4fJT/KPMx8wty/FDJgb4V+E2nKbZKNh9NzkQeDqw1bN2HcvRB2bDC2AsA/hwQcA
         k8U33btvb5ygFW7hpfKfHkj3Dbe1mUTEKIzjXKPynWaGa18vyyRhBXpDkBeAiMKRjD+p
         yZLge+HjEaFGztF9Lhix2h99B3lGgR2sBVqfXBbjwot1UyPzq2Qf0I2mVdtmNO+TZ3L9
         9cUw==
X-Gm-Message-State: AElRT7HSXqWxf8Of1TEQ7uZ0DpXVgjG7GTd81wpdwRw0d5Je6xxAdt1N
	vRlSJ3hRPlNzzDXeaq4fOlw/7Q==
X-Received: by 2002:a17:902:aa48:: with SMTP id c8-v6mr32689724plr.361.1521897841609;
        Sat, 24 Mar 2018 06:24:01 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id k78sm22474303pfk.111.2018.03.24.06.23.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:24:01 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 2/5] staging: media: Remove explicit use of function name
Date: Sat, 24 Mar 2018 13:23:43 +0000
Message-Id: <1521897826-28871-2-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace explicit use of function in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Declutter subject line.

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 0f94b8e..65d7242 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -710,7 +710,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_b && !gamma_param->table_b) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
+		dev_err(dev, "%s: table ptr empty for B\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_b, gamma->table_b,
-- 
2.7.4


