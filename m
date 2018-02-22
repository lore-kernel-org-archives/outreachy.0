X-GM-THRID: 6525478094169440256
X-Received: by 10.107.134.26 with SMTP id i26mr5556246iod.91.1519331264155;
        Thu, 22 Feb 2018 12:27:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.80 with SMTP id x77ls1019712ioe.16.gmail; Thu, 22 Feb
 2018 12:27:43 -0800 (PST)
X-Google-Smtp-Source: AH8x226XPqqEvwSWWnx4SDulr9jx0wSc0vKsGt9z1u8aU3a5Gulud08mjO4MkmNFlVLO8wNWH0aP
X-Received: by 10.107.133.31 with SMTP id h31mr5702155iod.83.1519331263094;
        Thu, 22 Feb 2018 12:27:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519331263; cv=none;
        d=google.com; s=arc-20160816;
        b=KF3m3p6txfR9tH8/K0kVVrkRcGHW1WS6YJ0wA6B5+IowYTb0XOYJdsGe++ypN2ubb0
         oktHhiQNRFY+QC3o2hRIw1C6VVxWRxyFUMh38qqP8wl97jjyMwaPjTwV5BRbcr7ZNrsL
         lf4UlMtcCjipNge3+D/CXNq95wEa2p7zol8I/weJMqWj5VgXfl+KLur5SoOMjsSRN8aT
         xYELZBOQ/xbyB75DKsHvbUdZeCVC62mj98aL9uHjtkvI2c4zOa+gCPifFx33jWHFrPPb
         n84qQ9hGeQn9zacYFsbi0Wwcq0Skbk2sHslly3dPV2Y9kK0f97rzd6ux1JoM8s6UgRyw
         EWJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=W8WxbFAhoTdUfWuW/oECQEtTrWWuD9sEInIBF8s8O3o=;
        b=fs2TYenyGgPqsvNoGemIJpAaNAppaFAv4Ogd3pqQWz98AISNKwalHacuyPxifsu6Vh
         dhlOAE7LU0eAZWehUjjGCDCEJ++UbRPZjt8Du0amE6g5WxrB/oc8bxWfKtqjqW8VlJmt
         wveYgSUdpvVARBF9xRZxdwaZzNjoDBeSjuiaFEyzzfjERZ7hvjy1VZvbnouUQ3yk/j7u
         AI4U2SOey8rGCE3/3zeMS7yp6wepmI57dP8ZmaG3AArHRo82s/2kvH+CBTfT5uB/nBNT
         30qk2+5HqFYldQY7a5DxX6yYpKpO3C47xodzfOGvMFVVKH7yWm91/0k6JpXKGFUR6gdx
         L0Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=KtX67hbt;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22a.google.com (mail-pl0-x22a.google.com. [2607:f8b0:400e:c01::22a])
        by gmr-mx.google.com with ESMTPS id w89si92680ioe.5.2018.02.22.12.27.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 12:27:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22a as permitted sender) client-ip=2607:f8b0:400e:c01::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=KtX67hbt;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22a.google.com with SMTP id 31so3526882ple.9
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Feb 2018 12:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=W8WxbFAhoTdUfWuW/oECQEtTrWWuD9sEInIBF8s8O3o=;
        b=KtX67hbtwprobJfwlb2a/cKqAr9Ua9cBaKo2VI4uPs9uZlYU6b8wFoW68Np9BDERTD
         5K85Fa4yfzvOSkVdd17fB8InwkAkxItqkDKDCCC0jk+d4DsZ0a1zf1Ud7ydlbzDU/xPq
         jPwZthDedaDwbuyF+FR8JNYp/BiuY82VZsjRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=W8WxbFAhoTdUfWuW/oECQEtTrWWuD9sEInIBF8s8O3o=;
        b=HkmVQvxtzulmsTgVivh+VxeJ3AiMPdak/NyhQ16BQSyufyvi0F/mHawZlGD9AsnKeE
         hzXedgjGJ3rinE4yc3QRU+mawXJKXSixX0hmBa7staXJQqGpK/9DH7b4Jgj3E2PpbWt5
         S/GWkjNEM8NZeverFLsrYSFez2PPTS9iUIM5Y56jRXzgwGx0II3/+uAjBzldiJSnUiiG
         dSzfSzmC/r5l9kZQDTanmgZtI1x/wBiAC9LtYPAWEImLdpQc9n5fL2kcclmgXcTpKjqv
         2asncFhoCVX453uP5x13bDE83OIaHvyXgQ99ATMtMJVkd512ExIlYwKphnIzjgVee5Hr
         Yl2Q==
X-Gm-Message-State: APf1xPDwep7smFpa+DLw5yAqDasrDb/wCGqVeNYyw2E975upt5C8Y422
	AJdcbuCJ/qQvkINbRWLbr9zuEHXF
X-Received: by 2002:a17:902:bb81:: with SMTP id m1-v6mr7637942pls.71.1519331262489;
        Thu, 22 Feb 2018 12:27:42 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from DESKTOP-3NPFG8T.localdomain ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id t8sm1129746pgn.93.2018.02.22.12.27.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Feb 2018 12:27:41 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Cc: nishka.dasgupta_ug18@ashoka.edu.in
Subject: [ERROR] Make won't run
Date: Fri, 23 Feb 2018 01:57:13 +0530
Message-Id: <1519331234-14582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

From: nishka.dasgupta_ug18@ashoka.edu.in

I can't run make because the process exits with error messages at various files. I reset all my changes, manually undid them, and fetched and rebased the origin again for good measure, but even now files that I haven't touched (from init to android to other files in the same directory) are causing the make process to exit with errors (usually an "Input/Output Error" in some .o file). I don't know what to do and would appreciate any assistance. (In case it helps, I was removing braces in a single line if statement on line 290 of drivers/staging/wilc1000/wilc_wfi_cfgoperations.c. Before that, Mr Kroah-Hartman had replied to an earlier commit pointing out that I had committed files that had no business being in this kernel, so I tried to roll back the commit with a git reset and then fetch the origin again.)

Thank you for your time.

Regards,
Nishka Dasgupta

