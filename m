X-GM-THRID: 6664861839759769600
X-Received: by 2002:a2e:8852:: with SMTP id z18mr1397038ljj.18.1551790642635;
        Tue, 05 Mar 2019 04:57:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3e16:: with SMTP id l22ls2395531lja.2.gmail; Tue, 05 Mar
 2019 04:57:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqxEqLpqrq+EVQnKFHGJmAKat23G4eesE43nZUMbLEQ8feMw5qByXo6C5NAyrBlf7erV5dl/
X-Received: by 2002:a2e:800a:: with SMTP id j10mr1410994ljg.11.1551790641844;
        Tue, 05 Mar 2019 04:57:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551790641; cv=none;
        d=google.com; s=arc-20160816;
        b=rWsznTBunO+dyiHBYfeIXEXN23AiVKiwBY5N99yeY6lccJXexx7+pU3xDzApe6Y1qr
         bcArwNyxNqcwRbsHrXgcLd/9rJfE2wh/p40WcMiYBKPPvv2OmBcZSOxuzrKnlUnx6rIL
         2GAIsFSvyJ+P22SLEahwFLKnvqaggPizc87oUfpPdjr1pt5pGYSanlOmH1d7731IiwgC
         11lrUUzAEYxIEhECtwCX1XJYbZFXEl2Tr9TMeyaBBoxYlKQ7kHUwnmppWZIxpOjx/itm
         hJIGe0eWF7bkcFpnBRjSkjKiIA7pYZ8++VXEYMYCKyA6Z15H3GaMGYcqyVViyt03xGoz
         PeKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=NZD2mlR70VJsKPXdtp/Hnycrswyyo1lYI9e5w/T22w8=;
        b=s7i5Z3R9lZNrdtUXULTBx/9bW6A2M8LSKTZr5OiC/f7CB1ov6AV6WUGRuN88WjRwrt
         0z2guurQuGM0PHaLEn+cgD7mJC490NcXBPohGKBisPtVj+VaUXj0SjR+ZDbfunVnUxNY
         eA/7F/r+nXQedlWMjE7eVOzMn9+ZxGBxylYOmoiQumwO3CObpTfyo0jbTFKwfVDdpanK
         HhIWybxzH8nvjvNdI5pJdmcetlAG2q5YroYweMSZ6D2Qyp1bYEJvVaQ9HCCITAnWsiGg
         uLxnTH1HJUlPFeQEf3aWGAbhm+Hk1GJnPscJYIuKZX8Ujo5v8hMcFZ/DuC0JkBJYhNvD
         6Fkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aegESrM9;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id n21si279677lfl.2.2019.03.05.04.57.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 04:57:21 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aegESrM9;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x435.google.com with SMTP id g12so9343639wrm.5
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 04:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NZD2mlR70VJsKPXdtp/Hnycrswyyo1lYI9e5w/T22w8=;
        b=aegESrM9zWCGUi5ZaYlw95QPqEubFaSJ1ICPJ/t13jXd05A69+0MCAe2AouAGWFx18
         /PGHu0vsVXgkSR1X9uFtUQ+B1RCuy4GCGGCEonebYku+2BosOuSirV9jNUDm6vk30ZQg
         2SiRC3JaT0TNI58HuB0PQ3D9D7/Cw+43yK0A9xEIxm3+5hiA/mTg6Pm9rSXxJ53GQoyS
         S63vkNZAMmR1ZjcweK+sYbWJUmv5i/9kaeXEer6I3chQdVGJYyc7n24Hltee5QnNqAkZ
         CL5jXepIIq0HTX/1MSlcEBya1LxXm7YY9qdCmqt8pLyFhCmhKcmQNSXsJWW/CrEOEDuQ
         qMlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NZD2mlR70VJsKPXdtp/Hnycrswyyo1lYI9e5w/T22w8=;
        b=dyn0GqroLUG44mCJmBAl0iKhrQIDXOUcaiLlxxvkancFZ++GFb1IqPCU/qQyyj6Yi5
         WObjVoR840eEmeNjfSgoPix7a/IJA4a6yTky3r8THo44xd4XEDF+XxjLRSBD9Cdlzzx+
         Ckk0yft6PP+esD6+Hp3HpEzRN3dDr/cuwteATgmb1ezOWhpvYWpdhyECC7nM/JjEo9u6
         6aIGfjrVnkTPDu5tf/YgdlFfImW627VTjapTizPxdeu2kYspuBe6LdmbTLQideEjK7nE
         KDZP27DD1KE6cFxnPYLE7fHNZL9XlDQuxNW13F4rOhzyLuQNPLsGko0MiP28qcD2o5wD
         aEqg==
X-Gm-Message-State: APjAAAXL+vwI1mBtqiqNiNW09ksEZfm/dDWlqTzZ3BLjfvEmaPQ+xvVl
	wFY+64pPWLUcLUUeSWhK5Qw=
X-Received: by 2002:adf:8273:: with SMTP id 106mr16977666wrb.34.1551790641235;
        Tue, 05 Mar 2019 04:57:21 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id x11sm20703788wrt.27.2019.03.05.04.57.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 04:57:20 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v2 4/4] staging: ralink-gdma: Remove whitespace and add blank line
Date: Tue,  5 Mar 2019 14:57:18 +0200
Message-Id: <1551790638-19664-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>

Delete unnecessary whitespace after cast, and
add blank line after declarations to avoid warnings.

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
Changes in v2:
-make these a patch series

 drivers/staging/ralink-gdma/ralink-gdma.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 44a65e2..012213f 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -127,6 +127,7 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 	atomic_t cnt;
 
@@ -818,7 +819,7 @@ static int gdma_dma_probe(struct platform_device *pdev)
 	match = of_match_device(gdma_of_match_table, &pdev->dev);
 	if (!match)
 		return -EINVAL;
-	data = (struct gdma_data *) match->data;
+	data = (struct gdma_data *)match->data;
 
 	dma_dev = devm_kzalloc(&pdev->dev,
 			       struct_size(dma_dev, chan, data->chancnt),
-- 
2.7.4


