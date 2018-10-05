X-GM-THRID: 6608897994052861952
X-Received: by 2002:a81:ad1e:: with SMTP id l30-v6mr6561929ywh.8.1538754047971;
        Fri, 05 Oct 2018 08:40:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:15c6:: with SMTP id 189-v6ls2290775ybv.20.gmail; Fri, 05
 Oct 2018 08:40:47 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62vGydgGjLFq9wylqNy1AIsGXeS2X7KTMomveuUYalC5lIgmVL2Lui9mP/9KsZdAMYVvjFz
X-Received: by 2002:a5b:642:: with SMTP id o2-v6mr6561268ybq.89.1538754047124;
        Fri, 05 Oct 2018 08:40:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538754047; cv=none;
        d=google.com; s=arc-20160816;
        b=hQAaWjfqsO5Egxj0Mb2+zZQa1S6IQZHabB7dRFRjHw9GUgh6FFvxetVhcW4e4BRy4f
         G3Koc29KXevTJfFDgHInir30ZDPZ1UenPPjI8VyZ6u+Zb8KC7nIeq7wHy/egeTmbNQ4t
         XvpaEQ0r1rr6T3OipzwOYg3xP9lEqx/j/nIuYRAV72V5HfozrFMuAnsO2Pn1ooqV1v/c
         b+IOwW/qzYxi2SYb0MU1bWpC9/zoUSdEkMTPy0U4SKNaXCFg7/FIWAucZQj6PwKr+2AQ
         9hPIzUrUJTJc1tLDwr41z4/dTCGhORQjYB9+VHtPB6V2kePvrDwHJLvUaiGaI2Dn9wKz
         PPvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5mq2foRMWROkf/t5yAefEMFSxs10yKBndapQgke5gi8=;
        b=tZK6WRiJRY91JSzHTf4FALyH5VoRc6upoQCjC/DNEfvMYdTncSODIUSMBcHr1jF/hc
         /2R+EBM+sZBhtAePLabsXZew4dWw7h3bbJUgUlpEFK1cvyNKjZcl9Wlufn8evj2LbnnV
         TaFFyqpml1eWFtyvYZo1BPLTSoDJGXKYWWg/uwxWHSjaI5KZ5nq4394+ymJ2nJ2TMlbn
         X+XHczO9b0ZKLUqjX4+8xFXdM98TxBVo1A6PwFtNEeAylm3p8QdkDocNlqqlaIinNMvX
         WJoE6i8YAU0UjQT9VwkNvWhaHPJbvHPy44yfuIxM8dm9/obeIoizqpoeP2abOgeqmVkG
         L/gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b6uUXuAO;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id l21-v6si283031ywb.5.2018.10.05.08.40.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 08:40:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b6uUXuAO;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id d4-v6so5273580pfn.0
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 08:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5mq2foRMWROkf/t5yAefEMFSxs10yKBndapQgke5gi8=;
        b=b6uUXuAO9HIq3Ttw1SPw6Kfqsq8t/wlBu3xMCfWm2dmvlCDn72CEngoZUBKi9a5elS
         FSdKuDwThhGPr/4xmYY3cPswlsrSio4cmDE5k1CE/R531hKMjkTeUcWzVsL6yxZfVdJn
         611BTcMBA+1wxcAd+HbSQx0Ohc9c6eyn269nHD/661JVebNm/TsU7Ce9KUlHIDlATtuC
         8cSCzOPqNaPQWeVhTup6ntIwOyflQMp8aMYIqQIOorGFOkd69bKkm12CyRQEBGuTm0LP
         4j2JONDvsIDHP5vqsrIGcDO8JvisTBadKHoeqrTiyqJ8j6lTN+5U1WhnruGDei7bc0Ra
         iILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5mq2foRMWROkf/t5yAefEMFSxs10yKBndapQgke5gi8=;
        b=CQL8zwqBFgGZIprJihQ13Sx8mHQTbes+2I75XpkztDKKwtOQh+FtZxqhtlMybT+IWS
         meMZ1355s0Nr4Ajwb0jAck1Ez8y3oUpnvgPQSmbH5u8px+6eD7BZ4Ohn1/Vxs/x87mt0
         UKKRnVNxoAgRlYngQOeW4/nC+ug7AgrLIt/75I2hfJ/KqfakZdA6WfPurDVjrsBPJHcr
         xTj6v54pwaIGl4RJh3jG6ZC9jehR2Ib8dCluUDY/ZAc6R/E7CR1mdZApBKXzj0l6TZfo
         MUssIb1btRBw/lcA7GzcFsQmBqOmGbg2Vh5DIBMbDtJNuo+7pMVluhfpKcN4oy+2qjcQ
         iUjw==
X-Gm-Message-State: ABuFfogKkVMKf/OAQxbv87BxQqwCt6YCSYZZYLzjRktDjdNbYD5Rr82G
	7J9kVyxSq9PpyhFY8TriQ50=
X-Received: by 2002:a62:1e83:: with SMTP id e125-v6mr12443325pfe.231.1538754046703;
        Fri, 05 Oct 2018 08:40:46 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.105.99])
        by smtp.gmail.com with ESMTPSA id r73-v6sm18347623pfk.157.2018.10.05.08.40.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 08:40:45 -0700 (PDT)
Date: Fri, 5 Oct 2018 21:10:42 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: vt6655: Add blank line after
 function/struct/union/enum declarations
Message-ID: <ff2e07eedb4220c53ff681ec6fefb5aa637ae9cb.1538752705.git.mamtashukla555@gmail.com>
References: <cover.1538752705.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538752705.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add blank line after function/struct/union/enum declarations to fix
checkpatch issue.
CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 9c4a532..8ae9c68 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -65,6 +65,7 @@
 	{RATE_12M, RATE_18M, RATE_24M, RATE_36M, RATE_48M}, /* fallback_rate0 */
 	{RATE_12M, RATE_12M, RATE_18M, RATE_24M, RATE_36M}, /* fallback_rate1 */
 };
+
 static const unsigned short wFB_Opt1[2][5] = {
 	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
 	{RATE_6M,  RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
-- 
1.9.1


