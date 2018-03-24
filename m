X-GM-THRID: 6536488278592323584
X-Received: by 10.31.226.132 with SMTP id z126mr14169538vkg.26.1521894775105;
        Sat, 24 Mar 2018 05:32:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.30.132 with SMTP id o4ls17820uak.21.gmail; Sat, 24 Mar
 2018 05:32:54 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt085pC6pddt9kazLZ8wX/1dzfN8EFt86D1/0L5AuJSrmQX5vLCNX7gU0Hncf3pNnmqcfXy
X-Received: by 10.176.79.42 with SMTP id n42mr7587793uah.92.1521894774593;
        Sat, 24 Mar 2018 05:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521894774; cv=none;
        d=google.com; s=arc-20160816;
        b=KdJoCIKitoABX2kgO2bKuDyLLcGGf1M6eh3lsP932N2iFsDGGMzcEZNtABdWRzs1os
         CDHg2GkMnJoB6QEvM4BDhDhV0z0fNLKhTkmgClre+7mz6ekhiR0vLInm6u5mGnAO9j75
         aUsMl0AgiMdJpAnvsqRu1l7JvtesA2PeSlyfDSHGBeeX81XKHc3N6aBUmHISO5OWGDbu
         hfz7AZKfRjq7nVFKep/vDRJ8RR7uaCcAqoHG/xvV3Vei+WbRp6LMUMyuF/4gFo82ZYAP
         qDe1pnBWfOE8/ObkoCCQfNMqwk5gopioxvymS0cfm2CmF3vUy4nGYNlDruQU1fYYGVbL
         nx+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=7BScUgNC32eoPfR98XDk/JO0zCyfd+FzEf+mqzKl0k8=;
        b=kIlXrxbaiRipTS4Knm5waXOe486Ky4nuLzPjjewhItSDfHD898ppfX5/LEACVfbMTy
         zBIrWuvLkspR4esJIkZ9N4B/M3n1ZoG9OvWyq8q9BSpkU7/Mm2hOXiNem9eAe/qKb4su
         uFxNH/LQEu7Xn7YbSy7iTBHfFG9E3NeNTJfJjwMkGoz1PUP57X0abeEKw7z5WQ09KWjv
         5fn9Wzc23An9Qrgs7ZUiqGQ4Qc7WJrVfRZgOhM77xD4b+PcWpmcjtyQqXtLkj4kw6UlW
         DKcmx8jZ4TpuKi2nmwrLtJ977jqh1SYlwVfGKGD/Nz2c/Ggs46QIr6xDM+UttLCxfB2j
         WwCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=LlNPv1Ow;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id 1si818983uag.2.2018.03.24.05.32.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 05:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=LlNPv1Ow;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id k22-v6so9065661pls.6
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 05:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7BScUgNC32eoPfR98XDk/JO0zCyfd+FzEf+mqzKl0k8=;
        b=LlNPv1Owjyudiw62XQ7trmON0GvXPZi7a6DMPaNwD3iKF/dgSpswhTByFUKmqGpfDo
         auIBmjWn4AkIt1hgujU+mj4fEd1Z20gJMZGX1g4T7yStazPegaODzDLfJQ7oTJQn5PLx
         wNwSwmaBizwGCv7gaCZwmcyaQ8NoFEg9NH+fI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7BScUgNC32eoPfR98XDk/JO0zCyfd+FzEf+mqzKl0k8=;
        b=HY0Z47fZE/cfxMweBvKNdqO8jE0/Pv/NavODJLf0aWUfnMywC9pnwoUHgTqTKIF9hN
         HVdc2K3EfDa2YidDQUgdP5CNScUR88cPEjn6X7xvWsjMvGmZDvzpe47rsuSvi34Jg8Iv
         gj2d/hPAc/NCZbfDAhaFcuucO7cYyWvaneh/xVJwL+35+Ow1gY0mt/a2kibSmQh+vHlT
         710UvwpJ1TOu+40bfh+iQpqtKmdV3xCCV0o6mmmy68mkHG9k2go9GrhYP+cGBueHc/Gy
         3YGjSo7w1mqIA1en2T1Biy66AoPL7YAWwOiNLlHI3CptAtq73EN7Aser381J93+grmjb
         gToA==
X-Gm-Message-State: AElRT7F58bTECdqzI/aPhsT9xU5ncz74UqZM+RdAaO6MhDFBAeKvOsW/
	eQRFgUX1tiHMBVbVF8z61CQCVw==
X-Received: by 2002:a17:902:bf43:: with SMTP id u3-v6mr32547477pls.227.1521894773711;
        Sat, 24 Mar 2018 05:32:53 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id n13sm26128092pfg.45.2018.03.24.05.32.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 05:32:53 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 2/5] staging: media: davinci_vpfe: Remove explicit use of function name
Date: Sat, 24 Mar 2018 12:32:36 +0000
Message-Id: <1521894759-28450-2-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace explicit use of function in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
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


