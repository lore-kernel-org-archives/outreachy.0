X-GM-THRID: 6751409971660849152
X-Received: by 2002:a81:8282:: with SMTP id s124mr7583401ywf.498.1571935161071;
        Thu, 24 Oct 2019 09:39:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:db4d:: with SMTP id b13ls995291ywn.4.gmail; Thu, 24 Oct
 2019 09:39:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUbdotYQCb+1MI58l2b3MwN35rZcMzcqCC8Y+Y3KIYbMHfv1CmjSl/BikISlaqmHo0/DVV
X-Received: by 2002:a81:55cb:: with SMTP id j194mr7771211ywb.381.1571935159610;
        Thu, 24 Oct 2019 09:39:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571935159; cv=none;
        d=google.com; s=arc-20160816;
        b=Q7t51aOu78IGkroVs2CrfqIKuteBXbaTdLjDqNxXyI4tFLNGlHZ53XOhuf4mpaBfNZ
         05ut+Mnp80wxYDxQUXttfkpjLxwV/QQRX7YnQvQ95mI5ljgvA6sy4tF10FIGTNG6/cFb
         cdWFfFDFJpH2yycsnU8t3tkHdyRWKk5nXooj6LrNEwxG/fokxafbgRv9Gyk+uQisxdiv
         haREKusOq57gEHdQcfuNfi4cSKZSDizMzASKFLLUSRqRsRdyWnwVJ+Kbii4NKKLZ8AQ3
         UcQMXuFbHrZBbDPIQAWEmWm1BMD6fLzAFpJUJBbFmd+3iJ8m5fMjYVEZLeciQnaN8rH8
         dGHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1qxEej9ZhTTEroEC+KQyp8Bt7h8gyIv3VgjtcTdAbGc=;
        b=MsWvpAQ0sQQgSnjEqkg7M0QKkqqtTIiVRU/MytPwzhKS3SwL29Up8RurnHnNeYwAQF
         x5iKRY5Ckotd4QdlBR10+aG44ioV/TG8y8ri8iNzJtl1UXcWOU8E8oAZB7MMCDb9/C49
         HVrpDNCyGLByoAH1DIXsyg9iKUnx1F+1EGeLRSpZ4ty3gN0dm/ayS4KdM69hayF+H6m5
         8x4lbvZ1XRRDmHbsdINvnVliDQVx3kdnWAsi1wJYMDAzPlvZNtXNlkrBH0ez5/fsz68/
         NdqkpzYHIaZ6fvQOZX9VDC0ajY6Kj8k7vUYyzqKcDPRX4HuvkblQkeMjXGrVKsAS8WNI
         VBcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cChmRdzX;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id j136si1365720ybj.3.2019.10.24.09.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 09:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cChmRdzX;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id g50so24637161qtb.4
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 09:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1qxEej9ZhTTEroEC+KQyp8Bt7h8gyIv3VgjtcTdAbGc=;
        b=cChmRdzX28Kw1sZcn+RGsEflTdu+W0jowQ985PnjZ9JMREt9BwXphzbCAZw7enPVRO
         FK3gUvfSYrD5tWP9/Xzr9PX7cpuu7ymqz6odOX8F4rK1198PnxVJ0rnX+6/UdzGP/sms
         VXbz+zNUgnuMB11mVCofXcA3L1BGMVeXGx41c1C9ItAgdMzJ/jZbmyVj6+081eI4A8PW
         ySnhjBu1TgDfl2QSn9S1KjUnMcbRvi9x6QpHUORPLiWZBgtnqTS8mwyZDCznUiEDFJdW
         PDRnNI2VZ3f2RR0CqGFo2bCFtka+FIkrrKZine4AAuMzOqykTtuqDrYKTLrCDuuqnBgh
         9J4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1qxEej9ZhTTEroEC+KQyp8Bt7h8gyIv3VgjtcTdAbGc=;
        b=p5JToRbTS1QVtnc4+YgPzZcl/xwOJyh+60ohAydFoVogcZ1I3jwlCYtojnNnETsw93
         nF/ja5nLeAU8xa+Jd3afG8k2ILqRfDZ4K9xv44BHB/y20CDKO9Ys/gc8EEBk6VcFcvoz
         z57cwd7ILURV+ROhYCHpQJtxSjz9/IhCUSIZ0upduFc103GgK3vbvQ0C5oJIDg3nb5wr
         tJnAoJOPDvZbc79BiXCU9TSNjbLrI0RODaXogE98q1RAHnhMy/IFjeb8hc5lRj+V0Qw+
         6bRmpvx9ZXNn8aM9DKoVXqWat9caTjx25yGNBn36eAfguX62lDHKLECPIR0IeLSCyD1M
         IP/A==
X-Gm-Message-State: APjAAAWaeCJxZNtIMORmPfNpfL1nnA8hw61Msw58N4C4nnZQldYPjAsp
	iqyKi+DsIVs5owUvrs2jeeH9M2W91Tw=
X-Received: by 2002:a0c:fe45:: with SMTP id u5mr15592957qvs.17.1571935157520;
        Thu, 24 Oct 2019 09:39:17 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id l15sm14660121qkj.16.2019.10.24.09.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 09:39:16 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 3/3] staging: sm750fb: align arguments with open parenthesis in file sm750_cursor.h
Date: Thu, 24 Oct 2019 13:38:22 -0300
Message-Id: <20191024163822.7157-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
References: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis"
in file sm750_cursor.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.h | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.h b/drivers/staging/sm750fb/sm750_cursor.h
index 16ac07eb58d6..b59643dd61ed 100644
--- a/drivers/staging/sm750fb/sm750_cursor.h
+++ b/drivers/staging/sm750fb/sm750_cursor.h
@@ -5,14 +5,11 @@
 /* hw_cursor_xxx works for voyager,718 and 750 */
 void sm750_hw_cursor_enable(struct lynx_cursor *cursor);
 void sm750_hw_cursor_disable(struct lynx_cursor *cursor);
-void sm750_hw_cursor_setSize(struct lynx_cursor *cursor,
-						int w, int h);
-void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
-						int x, int y);
-void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
-						u32 fg, u32 bg);
-void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
-			u16 rop, const u8 *data, const u8 *mask);
-void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
-			u16 rop, const u8 *data, const u8 *mask);
+void sm750_hw_cursor_setSize(struct lynx_cursor *cursor, int w, int h);
+void sm750_hw_cursor_setPos(struct lynx_cursor *cursor, int x, int y);
+void sm750_hw_cursor_setColor(struct lynx_cursor *cursor, u32 fg, u32 bg);
+void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
+			     const u8 *data, const u8 *mask);
+void sm750_hw_cursor_setData2(struct lynx_cursor *cursor, u16 rop,
+			      const u8 *data, const u8 *mask);
 #endif
-- 
2.20.1


