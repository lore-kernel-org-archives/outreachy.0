X-GM-THRID: 6671532188671934464
X-Received: by 2002:a65:64c4:: with SMTP id t4mr13484821pgv.152.1553337133202;
        Sat, 23 Mar 2019 03:32:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:164d:: with SMTP id 74ls4864254pfw.7.gmail; Sat, 23 Mar
 2019 03:32:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwkrdIwfb/rFlozcbcXK1GbtK4tlxiYuRPUNewSp9treGmtsxzrxQFyo7eelNWI+dyikhS3
X-Received: by 2002:a65:4bce:: with SMTP id p14mr13685843pgr.68.1553337132508;
        Sat, 23 Mar 2019 03:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553337132; cv=none;
        d=google.com; s=arc-20160816;
        b=s40gi2Zv45Pf8H2O+ZW3+hSZJ0UlunTy1/awIieW6PuZttKT9VTEm81CY/xfd6LEhD
         AeX/6KkKXIpwCL51MV8i25yhsYxlynqqgb8H0PBOhk2soS+KeHaO+OUN0fkzdCCzK84g
         lpYKdaF+YrAAqwi18Lp3JfD5FGexSBNRwanXLXveld0KCt7yh6LoPJMzVeyjzDer3Kt8
         IybCS7/1aU2i35gB2+tB3y2voUQ0dyF27AKu1PYQ4gwcHJW2sC45Z1O6yOjxGZqBfsMs
         zVXfh/ZSzZBYoXViczWNm/UVzKpanTY0BZo35w5Lngfn+TCEbZFTW2ogWuO4q7nNXGqd
         r7fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=J6NUSOOzlVEtJra5rc/yLL6CQlvzeCNXZaEA8e8721w=;
        b=voly4r/MiJCSn440Pym2kqQs/GG3XONHa94HYl6BFxYEf6Vj6RlU6V0665OkYZdwz9
         XwY1Tuf17guFgYZ3rwnY72JZ+UfXVBfUSe3ZpSNWaOTyO+65iVES/9HNnyFyE7qW2leX
         1IWlpleye+YELDExjiVy6FJ7LSHhKxTjOEbYi+dlhXJEQJV4iY/g0VV7y3YgwUqiE9qn
         K/vwZTw8ZjGgmeNxbrYy2L/wjjarzDl0dBg8ExiMyVOq8u22d+tPtNsgk/fuvhGyEOGL
         In57dMd4z+h8L6kkMR1znyuuTmoZeQDUpNRjZ9AN3Cp75ZBgx1Xgj4ve7kbPVYvfc8xQ
         8MyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lyMVX5IY;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b38si476023plb.1.2019.03.23.03.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 03:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lyMVX5IY;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c207so3192608pfc.7
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 03:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=J6NUSOOzlVEtJra5rc/yLL6CQlvzeCNXZaEA8e8721w=;
        b=lyMVX5IYPS/wvrmcOBy+y8Px6BQLj4C1A8IMbHEiJ+JRB12BpzDHE71Ao4xia8/1vl
         Xt2BA/B96XTkzxWWSjC2MqR8y8xrLTqbYwAV1Pb/2EnabRjhaoRAbGy+qJrFa24p5Hvl
         F5oci3yGP7JXEeMpEoO5QEObvXok9AsxFZtYo0UUTn4teHsaUONZ3ridr8PkUIZEKpig
         0+XEzjKJ6Y6TF1mzV3snLWkTO4RdTN37Ra2FlDQme6zt/N7EoImX7LkVqAExCMVcVDvl
         3okLcGitxyQN9E/F3iGFQhM54XICmDxbJp1cv83UNXgi5/6bIkbQ2/QMjyfjGSkCqUOt
         AsLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=J6NUSOOzlVEtJra5rc/yLL6CQlvzeCNXZaEA8e8721w=;
        b=hcCzpDaE7OLGASzH73Ze8DuPej+fcS852FZ3EP1On3+zUxsHyQAFSAKKLrEATABj5S
         SjoShgYzCz7XgrYVzVZax9NCEb5zUMQbf1BrwftR5MkQAQmkz+Jg2hQYnfWOnhc4x+wo
         F2rJzlmWiJjAHFYMokpNqk1rPBF0pnRBHuH1Xsyhu9vGRxzttKeBnS/Dmebm4eN/FAPF
         WPd9iYkaUKr3YlTse4O/DRAhkKT1b6MmajsXHA1XML3UKe5Khikw4x7xD9T73mUAmlCm
         wYXPwuUsmj/TPSktYSxUZX1sH8IjbSQW5dA9bMQWIcBXxEkeyDURY8NkkR3Un4qHPvmW
         8vTg==
X-Gm-Message-State: APjAAAUKPUIMHigvmLDEeF++KgKcCh4BdlIC6+Ang0D3cx9u+B4gIKL8
	HqsKxRqpUAbEyM5pZ/JouxA=
X-Received: by 2002:a17:902:e486:: with SMTP id cj6mr14352413plb.86.1553337132111;
        Sat, 23 Mar 2019 03:32:12 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.231.40])
        by smtp.gmail.com with ESMTPSA id m79sm22285361pfi.60.2019.03.23.03.32.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 03:32:11 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] Staging: greybus: arche-platform.c: fix line over 80 characters
Date: Sat, 23 Mar 2019 16:02:01 +0530
Message-Id: <20190323103201.4626-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

Fix line over 80 charcters by shifting the comment

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index 6eb842040c22..1e8fd48bedf9 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -47,7 +47,8 @@ struct arche_platform_drvdata {
 	struct gpio_desc *svc_reset;
 	bool is_reset_act_hi;
 	struct gpio_desc *svc_sysboot;
-	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
+	/* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
+	struct gpio_desc *wake_detect; 
 
 	enum arche_platform_state state;
 
-- 
2.17.1


