X-GM-THRID: 6665593199816343552
X-Received: by 2002:a2e:5c88:: with SMTP id q130mr591482ljb.2.1551954355966;
        Thu, 07 Mar 2019 02:25:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:800a:: with SMTP id j10ls630830ljg.8.gmail; Thu, 07 Mar
 2019 02:25:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqzT8G0dW846P0V5uzQsACq1r8hvrlg27nIn2VkP0yzDgMQrBGF+kEeT2E4qzXxhR8993C8i
X-Received: by 2002:a2e:9194:: with SMTP id f20mr611812ljg.21.1551954354747;
        Thu, 07 Mar 2019 02:25:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551954354; cv=none;
        d=google.com; s=arc-20160816;
        b=oRdvZwPGm+X67RhCaDkNtLJJlf6fzshzpoRmA6CZzS6lkmAPaXsGGuHA8XZIQ0GrGJ
         j7koEY5bkas25qUHZrEG19Ld0vA/Tj4rx18n29XbzK7d7nS8rJPC20uVCgX2xsWwkKvh
         tQ+tKsW19L2JI6gkOl+EWWQZUD0pFi1MO6+qcRY9EBY7gKeE2zz+742IU6OjaZyIuufB
         soAs4V3fZEhI/00bSrZTeifFI6PMfFQvVL8KdhbK2EhUvfPjXTb71+k7v6z27s0JQ4DQ
         s3SkBVHXXC6X+qSiTC/6yUBdY4UwDA0rpY0/ChB0kYl9O1mwOr13MYgLgAvdJASch+A/
         xldA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=9fV7cP0nLxOK3935hQ5igF/D1bU2wXofmSGEPnjg2hM=;
        b=uMyBI/rWCxYN0p2uH3ONPqspgamRzgRunvZBbXndqVRGbCYWDkgjzjACr73nNiIqfm
         KRLJYO/e5LxIArcqbdtIMdflImi7NS8JoL4pd8E6BL6sdZn1Vvv0qcve8/4SSM/p441S
         suBXUv6v+0YsOnqf8DFe3lTCW6Ady2TW3eV+Qi2hU1istIeq1AZiFktu3SCD5pCk+BPJ
         9Bhld5Zmwzd+Odo6UMlwikwypsBNuEYDrGioKmigPOuHNetskfwZ3r0Lnx0VQi6GzGps
         hjm8+mDd+nad5BtwjQOzhwkgcGwbDwZyt5nJKHDXanM+5Oew6WqDOXkzKoLfgYWGkGgc
         4OLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J2EFi+Jx;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id v27si178256lje.0.2019.03.07.02.25.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 02:25:54 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J2EFi+Jx;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id q187so8774116wme.5
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 02:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9fV7cP0nLxOK3935hQ5igF/D1bU2wXofmSGEPnjg2hM=;
        b=J2EFi+JxMM9t6hAtpSQgyrcumyBOjSCNH9rxYpQ8d8WsFulU7SO521h4BOewl3DHJe
         AryKc8X7H1/exn57CYUSjdTmHdXZae6ZaO5yXPsubcuWWn28S3obKaJGpw09svUn9Vqh
         jnmFNG8xZrC0XBrE5OQUqOHI6AraXDa7JFxq55AYdZSeucmnSe9CvQ9sZPbSz6hVkE3+
         M4A4VzFdPkapU3HmmLT3Vrgvx4/8RRWJo99MTHb4veNBhxwZGaP1SKrGn7Esy7zfM30y
         RNh5w8GFSDBwMEwbcV2KhU4+CRx4RbLmF3wVgXGRbiK5Nhn9kV/cfjKEwf+Zw/0sPsaz
         upSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9fV7cP0nLxOK3935hQ5igF/D1bU2wXofmSGEPnjg2hM=;
        b=qNIMvrv3FoSy4aNN53dMHn4XYBP7ZsZ9nAgIDdd7sCQ1IYGjwB7NKULws4otCHxu2O
         cRMoMQnZdOWsYHdnzoJfzwypKcVYbQpht/7CnZqt3JyrNZhCcKigSdJ2JX2L3zJZEjg6
         ANMp5aMeBHhrSMm0FJWe42Le4nZrqsWjjhyiheb7GPJmArzZ7rE0/ecTg5rhNfW6qNQH
         H1Fi/8m7HsJ+OLqezOlm+4FsDk3lkfcOsMtm0kco2qrLPi3SgBDgx4Aq8DXmrviXUSRk
         V52nggTbjWJQAoyAJh+PAwUpujtrWhnY2QiBXzBMpRCWj7wP3pcFDoHj6mLa3OXXuiQi
         Cg3Q==
X-Gm-Message-State: APjAAAVMfaEdUtVm7GrMrjD2Bv1Fhx0Moby0h82SD6NvkTzSDmAyPpgX
	60Ku7MUa7/HbZJ9RJneoqyqy7YghE4c=
X-Received: by 2002:a1c:d147:: with SMTP id i68mr5408241wmg.41.1551954354087;
        Thu, 07 Mar 2019 02:25:54 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.104])
        by smtp.gmail.com with ESMTPSA id u13sm9705833wmf.3.2019.03.07.02.25.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 02:25:53 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH] staging: speakup: Add spaces around operators
Date: Thu,  7 Mar 2019 12:25:48 +0200
Message-Id: <1551954348-7410-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Add spaces around math operators to get rid of checkpatch warning

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/speakup/speakup_keypc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/speakup_keypc.c b/drivers/staging/speakup/speakup_keypc.c
index b788272..414827e 100644
--- a/drivers/staging/speakup/speakup_keypc.c
+++ b/drivers/staging/speakup/speakup_keypc.c
@@ -233,7 +233,7 @@ static void do_catch_up(struct spk_synth *synth)
 			delay_time_val = delay_time->u.n.value;
 			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 			schedule_timeout(msecs_to_jiffies(delay_time_val));
-			jiff_max = jiffies+jiffy_delta_val;
+			jiff_max = jiffies + jiffy_delta_val;
 		}
 	}
 	timeout = 1000;
@@ -261,7 +261,7 @@ static int synth_probe(struct spk_synth *synth)
 		synth_port = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
 			synth_port);
-		if (synth_request_region(synth_port-1, SYNTH_IO_EXTENT)) {
+		if (synth_request_region(synth_port - 1, SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -289,7 +289,7 @@ static int synth_probe(struct spk_synth *synth)
 		return -ENODEV;
 	}
 	pr_info("%s: %03x-%03x, driver version %s,\n", synth->long_name,
-		synth_port, synth_port+SYNTH_IO_EXTENT-1,
+		synth_port, synth_port + SYNTH_IO_EXTENT - 1,
 		synth->version);
 	synth->alive = 1;
 	return 0;
-- 
2.7.4


