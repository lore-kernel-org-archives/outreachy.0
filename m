X-GM-THRID: 6745885278091608064
X-Received: by 2002:a2e:81cf:: with SMTP id s15mr6548429ljg.99.1570743627965;
        Thu, 10 Oct 2019 14:40:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:1285:: with SMTP id 5ls701591ljs.11.gmail; Thu, 10 Oct
 2019 14:40:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUOQc+oY9rFTVz7MhvcAblvyu8ki5H/eYRsd8+DOCqWWrbOPzD9SwhKEgl7n7Dsp5iZOaz
X-Received: by 2002:a2e:9890:: with SMTP id b16mr7475461ljj.181.1570743627108;
        Thu, 10 Oct 2019 14:40:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570743627; cv=none;
        d=google.com; s=arc-20160816;
        b=iqihyeJhOFuw+CU7ZAu7/jRPsrBk08oSUgMFWN97qus7gMk9npcdfH7NSxGooLOX31
         DGyKn1FnVOdPpn0PFanHGkLhZ0q+w8v1G85aCsh2USKNW0OcvktfVm9AXwzaHMCoMCYG
         ATtuzxFiucEU7xd71CrsXLa6DI5E0mXNDOzavLzr9Kgp9s7m72c/Gmfnl8V/Wr4IbpoT
         9OABhpphchsoWVI6e4ZiQpoTzUZbwyrpYdcpZ2dGBeEkNbkCd/iGTBrD+y6NLCj/UqYz
         ABhBT/vBFwjHKfToj6clEobqF09ieUP2hvvpng222LjRvEjigblV/2cjgJUWM6peh6JL
         s7VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5YEeIOaPo1JGlJWQewk3M0wcqwSy5upFgX2fmJpZCaw=;
        b=C/7mkfUhBLBXfszN2m7H2JqqGhmeQzKvc1/SfmzlW+djeuTtZKCP2ftpkKDuSvYfyG
         mfFxpVvbKO/VUUumxWbQUrHlZLoajIpIjn7QaIw2C8fcn9UpHq/0HnXipJA5athC6QiO
         GCu2uS5rjv0jMlrN4rSSuIAwx/WLxA4xOvKekz+o4tYt6V8pUPuMi+WPb4ns/OEauAeY
         g7gWliPtYiy3B1iJ4HP6unY7FbiYUqbcgK0TaVwMXiRrOYSBrHSPAvRi9JpT7yJT/FPK
         jRgGimkgk0kcepp0XUjjDh5SOumASaSAQxWC2UKDTf0+CTkpdeQLH2RTu2JnpxEsbd1y
         /Xaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jxQgazH0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id d3si38481lfq.1.2019.10.10.14.40.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 14:40:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jxQgazH0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id b24so8203823wmj.5
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 14:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5YEeIOaPo1JGlJWQewk3M0wcqwSy5upFgX2fmJpZCaw=;
        b=jxQgazH0gRz9X53R/oxw4eLM8Sv2X6SQnLG0qkR/c3GAuSNs8/ydl0EpB1UL2iy46g
         A7dDD44p6whsuGf9dstCb+WTukxybSNKDNqFemc4SRGa2j+a63aYNb+00dUNXLBcnsHI
         mzplDcZdnWrOErdsLXDgo71WJ0Fyh7BQyaXx37R+NXr47uYb7s532YAO+Taecllp6E56
         8ZUvt1N6Elw9wB2Eo5zYgDeYTb4vCAbkUb6lrtJLGD97K7TWnfdDzgDiqMIqLK9Bk7j1
         NMErXMErfjEdRCYJ65Edjqk9ZK6t9Pb1doEpjlw8uRJDJ4mWvSGXqJb1QpyV1f2VUZ12
         78sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5YEeIOaPo1JGlJWQewk3M0wcqwSy5upFgX2fmJpZCaw=;
        b=eycXBQN7xqSY+ZZvo4tps9p6vJSnMy+xwV3m4PxFvIjAL/hZuBAdVcSluD5L3lzgxG
         Z1Vf5evfw+aGtB0SGDu/SbNEmE35W+JGGkJg5dqw793uZGe8VZpAWcohHiqsc9BQcxoG
         CCMsOxljjKCBbeI77oumg5P/LW7yjrzh9T7wyvOyJZTB+FsBwPRKiPeKZx1+kSZeLcPe
         1AvUGuI8CsphnUIjHVeGLHyM8GBdEDuVNqM/74lBPJGTekDM27rfifHHL54z+VzKst/5
         MbyQ61wkYetujjBxfS17ep8UQ7XUYjxtibEvTJgRhvhhnNI2rUB0DWAwjscaU3fWSNUy
         I3uw==
X-Gm-Message-State: APjAAAXcJWDlDOW0hEAJDPyvRvb4qyFgxQ8V1ZyryUoPABLN7cp2UHDA
	TqTQYIf33PBs4d970d7c05b5ajdB33qs
X-Received: by 2002:a1c:7dce:: with SMTP id y197mr426404wmc.171.1570743626164;
        Thu, 10 Oct 2019 14:40:26 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id h63sm11455423wmf.15.2019.10.10.14.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 14:40:25 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	dan.carpenter@oracle.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH v1 5/5] staging: qlge: fix comparison to NULL warning
Date: Thu, 10 Oct 2019 22:40:06 +0100
Message-Id: <20191010214006.23677-4-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010214006.23677-1-jbi.octave@gmail.com>
References: <20191010214006.23677-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix comparison to NULL by replacing with !ptr instead.
 Issue detected by checkpatch.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index eb993207d224..12a62a6fbb69 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1804,7 +1804,7 @@ void ql_dump_hw_cb(struct ql_adapter *qdev, int size, u32 bit, u16 q_id)
 	pr_err("%s: Enter\n", __func__);
 
 	ptr = kmalloc(size, GFP_ATOMIC);
-	if (ptr == NULL)
+	if (!ptr)
 		return;
 
 	if (ql_write_cfg(qdev, ptr, size, bit, q_id)) {
-- 
2.21.0


