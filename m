X-GM-THRID: 6668261535001870336
X-Received: by 2002:a0d:f205:: with SMTP id b5mr23120588ywf.6.1552577324767;
        Thu, 14 Mar 2019 08:28:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cdc7:: with SMTP id d190ls473893ybf.8.gmail; Thu, 14 Mar
 2019 08:28:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/342yqkUdKDJi/7oHGLLJfmAXeJ0VNBIvqxj0TgT0IQm4UosfN6MECipESAomvD5v8gB+
X-Received: by 2002:a25:2f44:: with SMTP id v65mr21111398ybv.2.1552577323981;
        Thu, 14 Mar 2019 08:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552577323; cv=none;
        d=google.com; s=arc-20160816;
        b=yC+X0gHr7sOFdjTUlH9aeudt/K1zHSeQ3IOskN+LUtv0j7DiTaGS0Ovcd0Csmhhtri
         tT5meRjTC6Nt8VkISefNl5BWgyfr6jzGrswFsQ2gcyKhEzm634Of1TpkIvRfkv5+w0ji
         vkZJXKC2xtMa/akwg7iE1U4ecYbQ6mBlMDKjzD5qc6crpeXucfsfUM8xAe6Ame6o89CB
         7ivR2HhkqZlm7GI1g7geMC/QRixeFkbsn25KNA1WJxy7hYv+/Jz8gdJH7M/a3ym681bz
         49+ine/12cju4y6nXhuqFVefHxM7j+J0UQ0u45fZAyuRGTlt7bSrEX4uJ834d3RCP2tT
         6paA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=OSTJrdtk0DkVmm6k7jgwlnU16IPnpjBk3/1tPXGYlvI=;
        b=w5l6kk0YhstfjWkhNlZEn6GZ0g+ZHDY7wlp8ls0OsfPHEjoz9jBQb1267t9EzUDGGu
         27XA6o9x8vNqoZ3131RmRW/IP/srU5Vb/ByRzfsSVixpb9uHktDDjOnbgfh3ORc4hJ9v
         ui0XVbG7quqLDUtdsh4rGRWAXFyif8JDhWpIZBAfmEnDJd5Ca62k0ua2cxqZDcqWo59l
         Ea0qJuCMUvLCBUmMdyASme7hTW+pN4KL9NupuJfDTvcZDUHVzGBB61bEWHa3QImh9APT
         93045Wa7U2eJE8AT6MGiIRIxRmVWsncJ5s8rcpdneyKQ/cLO3CVcW9tCgrtXQYW9FLks
         Dftw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HuGbhMjo;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x130.google.com (mail-it1-x130.google.com. [2607:f8b0:4864:20::130])
        by gmr-mx.google.com with ESMTPS id r128si1062286ywd.0.2019.03.14.08.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 08:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) client-ip=2607:f8b0:4864:20::130;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HuGbhMjo;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x130.google.com with SMTP id g17so5320692ita.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 08:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OSTJrdtk0DkVmm6k7jgwlnU16IPnpjBk3/1tPXGYlvI=;
        b=HuGbhMjoJAcCLmiydQM1MrFP3V2JavtdpwIPPgEAdys+T6S+gITjS27LI/Nx8afsmZ
         AoIyIbEjUyXynzvQNQJcEthHIK0LIcZF0xgF5nctNUhHvP9i0aeQFjU1u7cPhfDoI0nc
         f+CYvdWN7WnZcPejAeowa6ucm4ORi6SpvAbK9cdBXl2zylCR4eEE66xOA/XiUClsCNnX
         GfVRtxRQ7563WldB5tej//uEKAqjO2fYEZ+bSBAKm7yNR01FazC+yZ0xMxfkxnVCBpLn
         fuxs7mIsWsDz1d9Stm4vFkFKJXb+2BWNYMfW7V1cElP+Nti6j+berat7pJ6piuAh0Tlj
         b05A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OSTJrdtk0DkVmm6k7jgwlnU16IPnpjBk3/1tPXGYlvI=;
        b=Mtp2LL5QrujHCQepVMrFHJ236dMEFPPfFnGgWPCTfP7KSCJvQr/o0miAyvLXtnvA7O
         GdcdDzjgQ2/VlqAQbj+yXvu2qVyejxw+JEdayafV9mVk0u4RKRinzTIuiY0uueZizJux
         lz+bTWWK3vqFxO3isQSiGidfXSTDD+7zXSuALDeCSHxdlpE6dT2N/VJ42vproNBKMcWs
         yxIzRdp+ZzomS6+bX6CuEZzOBfU/0y5c9n8cN8QOBV8tuc4qJ25UoovvHqIW+B/c3tVW
         ICwTKE9o6ALtHarGSJsH+FkLsZYI7rlMGicERKiD9dCH5gz9SZkPW0Qj8KdylGPZWtcC
         MWHg==
X-Gm-Message-State: APjAAAVyLCfm/VxRyKMZA5jCzTRqumrruSt0gltloaGMHxVLrx07aQUG
	YKzazlDxHRcKW8/p3AthnuCJMK+Ccso8
X-Received: by 2002:a24:74c9:: with SMTP id o192mr2290896itc.19.1552577323574;
        Thu, 14 Mar 2019 08:28:43 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:6d23:9f8:4c46:2f5f])
        by smtp.gmail.com with ESMTPSA id i14sm1517439itc.34.2019.03.14.08.28.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 08:28:43 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rts5208: Lines should not end with a '('
Date: Thu, 14 Mar 2019 11:28:28 -0400
Message-Id: <20190314152828.25859-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190314150017.25470-1-brandonbonaby94@gmail.com>
References: <20190314150017.25470-1-brandonbonaby94@gmail.com>

Start function arguments after initial bracket so that the
line does not end with a opening bracket.
CHECK: Lines should not end with a '('

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
Changes in v2:
	Moved function arguments that do not go over the
	80 character a line limit, to the same line as the
	function name.

 drivers/staging/rts5208/rtsx_transport.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d7895608..a476e22767e9 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -257,8 +257,9 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 	spin_unlock_irq(&rtsx->reg_lock);
 
 	/* Wait for TRANS_OK_INT */
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
+	timeleft =
+	   wait_for_completion_interruptible_timeout(&trans_done,
+						     msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
 			chip->int_reg);
@@ -284,8 +285,8 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 	return err;
 }
 
-static inline void rtsx_add_sg_tbl(
-	struct rtsx_chip *chip, u32 addr, u32 len, u8 option)
+static inline void rtsx_add_sg_tbl(struct rtsx_chip *chip, u32 addr, u32 len,
+				    u8 option)
 {
 	__le64 *sgb = (__le64 *)(chip->host_sg_tbl_ptr);
 	u64 val = 0;
@@ -420,8 +421,9 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 
 	spin_unlock_irq(&rtsx->reg_lock);
 
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
+	timeleft =
+	   wait_for_completion_interruptible_timeout(&trans_done,
+						     msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 			__func__, __LINE__);
-- 
2.17.1


