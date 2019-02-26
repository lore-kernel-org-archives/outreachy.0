X-GM-THRID: 6662098979271999488
X-Received: by 2002:a5b:d04:: with SMTP id y4mr7575971ybp.13.1551140793271;
        Mon, 25 Feb 2019 16:26:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4c4:: with SMTP id 187ls3632413ybe.11.gmail; Mon, 25 Feb
 2019 16:26:32 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZpmmHivKCBgfLDJGuNx+ZuxL0KdyZpTOspzJ4GUSFcS2LjAadBRo4m4oUmUY2Aa4JbBlgW
X-Received: by 2002:a25:810b:: with SMTP id o11mr7297416ybk.43.1551140792394;
        Mon, 25 Feb 2019 16:26:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551140792; cv=none;
        d=google.com; s=arc-20160816;
        b=JStStvjxp1EGeMnRkDUg5KmfG/MW96jBPzEprrDbfg/ebSGlQpHVW/RCeu3SLRzv6A
         XTELSP+gAZryaj4QyucSD16qYXBNck99fk2TaehBOQgLwPISCU/YufsBBkHZJvn8fndf
         px5glyTuAIjh5x5F7nT5q84x11ivb7kNPvcveHKpHDqRrhI7emZAeu78vKgHPUNqYqII
         /oSfW/Ef7uv24L4TAY++rVhgI1xfRIkqVYTDJV8Ry2wDHNAG5uX9tOSOG77zQ+I9lL3P
         OrRz6UWIvEBaqNFgTDIEznCUfhGZIGY+OoKUOTBUI92kLSfGosYB1MSsUzjTIgAwypFg
         np7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=LDPqnRhywRF7Wqjj7jwRJ4+cefCxsPk1gmCz/57i6xU=;
        b=1KsF+zLutIF+uPDLLXCxhzAou/o3wVwHPvVtn+tRd431p8M9k7KEMedHcPyq5XlaSW
         KA9UPzAbWbSDMT1nMnOxPQzAhB89Z38G7zbxm1Bw5KCg1j4rTRR0hZSDWVXBe34p8JSM
         s80DHs1iC8FA9JBSfwY0y5TPoRyjsCzhNhHo5P3bWN/Xh4OGgwFYVdi7HEiXd10C1Xcd
         sGH/McvGlbHGe8RR/ogC0B/UMiPzl2NifMbi8DVg7RJ8FWNDM+NgOMgrJ0SyFW9bW7Z9
         CapJ350cFKwqUuYCL4MQxCIn0nmO7ocCgfVXvVIpKxYPE4Jf18tqQ6R0okYX7A6duLJB
         VWzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkmgDQGT;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id l39si776964ywh.5.2019.02.25.16.26.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:26:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkmgDQGT;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id a3so5278518pff.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LDPqnRhywRF7Wqjj7jwRJ4+cefCxsPk1gmCz/57i6xU=;
        b=qkmgDQGT+ZJaqZDPQIddXAdERFCUcBHWTUxWG9d/9+OcaW/1yTx0YVonjzWQx7yEUR
         Hgm2ODqHHBUnVDWlX7Gf5JdmdcPjbqeOgyWsQlR0TjSIv8MdejhYwuVDWT8oE/YneP6L
         iyUk0rb6LX4v0jMWNwroFz78ytsXtPCEShG6hg4flxcWWyZ5OQBJB3b3/1TDDDn5XPah
         Ejwp9Id3NX1R2BCAoqXKclcns+pTunKdNa5I/5zdojIfdFysXKvILx0R3Yu51nVhQAAK
         UyrP6husoTcIEpm/0IH8ifbwOctDHyoJdOpm8awJaNaLcsJyZnoSbORB3wdrQ0xhl4RS
         WtRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LDPqnRhywRF7Wqjj7jwRJ4+cefCxsPk1gmCz/57i6xU=;
        b=rMMnV6BJWlDgIrWT4J+EBJI9jwktRhqY2NQmxrDvzbg82oQFtnZ2VuDwuz9MBlVF2Q
         oAbiErTAwIN+TdmmbfRuXTOUoOTxwkTUx5kp2QYB4qx1xTFJx7ZUJJ7bueqzOEjtc/lH
         iZSl/KV2qomLQ7apj/Qeoey4mRqAFAnkdiBaYqgqRINAvJvC77QrqrlgGLFEPTdqYSMs
         20+3cwLxR3DjcON6/Hok1hbxGrcsRXHTUm9HWwSUapmxLS/qFZbjobMnwI6+MOH7i578
         zbF4sJ9bjUu16PvFJUOtNfc57DTAZSE9xyEjDqTckkzdbdFcTdOF/B9OauYp1o3/RN0y
         oMpQ==
X-Gm-Message-State: AHQUAuajbZA1YGXvyCxvIhaeBGA6f6pA9gSWDGFz50tfAjGGl17cfxuw
	XCxYEgq1SZcJgHrAbdWtKsWk6RvHlsY=
X-Received: by 2002:a63:516:: with SMTP id 22mr20933866pgf.353.1551140791663;
        Mon, 25 Feb 2019 16:26:31 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id l12sm13267131pgk.40.2019.02.25.16.26.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:26:30 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v5] Staging: fbtft: Alignment should match open parenthesis
Date: Tue, 26 Feb 2019 05:56:16 +0530
Message-Id: <20190226002616.15394-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Clear the warning found by checkpatch.pl
WARNING:Alignment should match open parenthesis

Adjust paremeters in fbtft_par_dbg and write_reg.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2:The capitalization in the subject line is corrected.
v3: Commitlog modified to make it imperative
v4: Commit log modified
v5: Commit log and subject line corrected
	
 drivers/staging/fbtft/fb_ssd1351.c | 2 +-
 drivers/staging/fbtft/fb_tinylcd.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index a8980d9f7557..9ac78ce30619 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -164,7 +164,7 @@ static int set_gamma(struct fbtft_par *par, u32 *curves)
 static int blank(struct fbtft_par *par, bool on)
 {
 	fbtft_par_dbg(DEBUG_BLANK, par, "(%s=%s)\n",
-		__func__, on ? "true" : "false");
+		      __func__, on ? "true" : "false");
 	if (on)
 		write_reg(par, 0xAE);
 	else
diff --git a/drivers/staging/fbtft/fb_tinylcd.c b/drivers/staging/fbtft/fb_tinylcd.c
index e463b0ddf16d..9469248f2c50 100644
--- a/drivers/staging/fbtft/fb_tinylcd.c
+++ b/drivers/staging/fbtft/fb_tinylcd.c
@@ -38,7 +38,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0xE5, 0x00);
 	write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
 	write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
-			     0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
+		       0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 	udelay(250);
-- 
2.17.1


