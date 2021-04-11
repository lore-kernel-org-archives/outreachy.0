X-GM-THRID: 6949973907804782592
X-Received: by 2002:aa7:d445:: with SMTP id q5mr26943385edr.318.1618166898497;
        Sun, 11 Apr 2021 11:48:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls438555edw.2.gmail; Sun, 11
 Apr 2021 11:48:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxkDpxSs42Fx5bnK3EY5McyXiGLRN1G80TxVYOq3gdTujhtKwD54RLKb4D/nV1n2JbBEsLm
X-Received: by 2002:a05:6402:34c8:: with SMTP id w8mr27346075edc.235.1618166896964;
        Sun, 11 Apr 2021 11:48:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618166896; cv=none;
        d=google.com; s=arc-20160816;
        b=jJpVcII4KuHRKt2YOpRHapeujAjzzoo8hn/JUf54TeAg5sSU5GMERxr6P5u6myG9M6
         U1DQvM/AZBVK0waW3wMKL61L29yqZQ5NdFJLltd4oPGLqsLOAW8oWj6Py7KueJFuzlFM
         LHj/CBZyy3YQTJqri/wxFiEDmZMUzIee+0b3eAWwz73M0uEgEhSON/b6O4LCrBzDARWO
         p6QuaYxtQeq6eUNFlspS+HN/CIIHUcHOS/wPevi7HYk88uyMsM7SBEhjd21b2lA8ijn9
         b06Se+fSudDV6LUaVYty53FaKgleMLOZeU8jlbK/xf0nOvfDDBzPFZoKuUn5jF6QMRYw
         AWbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=CLWRaO5ZqKnnKAniIlo1Keihq6ioiH5Ebgdd1JLKcuU=;
        b=g/KTo/ojK9+6xzFGm7JyRJ3aPhVQ2o37f65/L9SHjR3GBhKBEw/HkXgLqklmg6HvQn
         yZ0HDQYH7DMfFDdhrvTeIkFYSpQ/siyeRHbi0ZcYhOvlUwHtdfObRGxGEqwpyOTDPdss
         zEACfmIJTSITyM4ys69rnaHnBP4q1sPblXwq5pTw/qyWdLhwmt1XT5nbfDZnQpqRlIvJ
         9p/9hZikYBNFjZ5Q7CAM0wur6Bp42qoXjRlEV2R91wluJGnVcIw47GDw9eHtDFmL6Mdt
         zjnhnWbdWnl5mzV0UwWzUlXwX7Fl1mmMqF/e7ylxc3dmDXw9Y8O3vyBSXBH93IlBdOK9
         BlvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tbw7JlML;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id r21si776081ejo.0.2021.04.11.11.48.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 11:48:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tbw7JlML;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id m3so12425575edv.5
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 11:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CLWRaO5ZqKnnKAniIlo1Keihq6ioiH5Ebgdd1JLKcuU=;
        b=Tbw7JlMLqgWsGYOF21ZRyS0bymgqTuwt4PVr2F6MnnlmvSonJJyx3KJmHrKSIJgy0e
         0VSGrJeeZjQA8UFi9AJujw+qgIrazKf+HQJvj9gdTo/sxOmRGA4hnTuES41GB5bRgLKe
         Y0O8FTDiUJsJ/b/zTD/YbrElyMWoFnw/kcSRp3gusC0i7IfEvYfU5uz7FFz0TdW480+U
         2r6wKpDhZDEVdqx1r9xSCZH9cS2vvR6ZTpbdALxJNFCcdBDCZKwKNM9kFZ6tECRO0y/8
         OeYIRheFAKCmu5bHEr2MgkYjkf1Hfydp22y9uXpwRvJrLGK12O615ivS8iSfyFIm+RIr
         gHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CLWRaO5ZqKnnKAniIlo1Keihq6ioiH5Ebgdd1JLKcuU=;
        b=bEs79QjWrHiyX9amP0oAkj+mkXOHfXHCYW/kjUD0tNYGxL+UL4iBrXkxH0tC4kjZyL
         Uat8uuIjJ133gXTfcYOZ/VZhMmJrj3Rr22wxxhTEBZ8Bg+z6rsEXBGIyuow9UZOb1RUs
         JzEM9WUhQfZl+feY9E0YXJ2oVJdg1hgWlP6O3z4TL6jFmXo5hdFoIpSVT6BW+x1SFait
         L3Lexi/1jgd97ejSyxAcj+UgTLoc9l5ntXwfe1EbbBsYj13xnhsB95Egm+rrOx0UuCmM
         cHLEH9V0LhdIRRobJG3eLIfUs0DlNiLX8u+LawoWtSmihzZVA2ykZ0WG9XqOcuZVfzpy
         P6tw==
X-Gm-Message-State: AOAM5329ec5Z38rdo1aFGr0dhHk+W6LIishwhoh9HjZZQotFyEgatiJE
	FVvayoPKecT5GLdwPv7wgjE=
X-Received: by 2002:aa7:cb89:: with SMTP id r9mr26607291edt.245.1618166896788;
        Sun, 11 Apr 2021 11:48:16 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id q18sm5069171edr.26.2021.04.11.11.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 11:48:16 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove function
Date: Sun, 11 Apr 2021 20:48:13 +0200
Message-Id: <20210411184813.22836-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove cmpk_handle_query_config_rx() because it just initializes a local
variable and then returns "void".

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 40 ------------------------
 1 file changed, 40 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index 4cece40a92f6..d5a54c2d3086 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -249,46 +249,6 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
 	DMESG("<---- cmpk_handle_interrupt_status()\n");
 }
 
-/*-----------------------------------------------------------------------------
- * Function:    cmpk_handle_query_config_rx()
- *
- * Overview:    The function is responsible for extract the message from
- *		firmware. It will contain dedicated info in
- *		ws-06-0063-rtl8190-command-packet-specification. Please
- *		refer to chapter "Beacon State Element".
- *
- * Input:       u8    *pmsg	-	Message Pointer of the command packet.
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- *  When		Who	Remark
- *  05/12/2008		amy	Create Version 0 porting from windows code.
- *
- *---------------------------------------------------------------------------
- */
-static void cmpk_handle_query_config_rx(struct net_device *dev, u8 *pmsg)
-{
-	struct cmpk_query_cfg	rx_query_cfg;
-
-	/* 1. Extract TX feedback info from RFD to temp structure buffer. */
-	/* It seems that FW use big endian(MIPS) and DRV use little endian in
-	 * windows OS. So we have to read the content byte by byte or transfer
-	 * endian type before copy the message copy.
-	 */
-	rx_query_cfg.cfg_action		= (pmsg[4] & 0x80) >> 7;
-	rx_query_cfg.cfg_type		= (pmsg[4] & 0x60) >> 5;
-	rx_query_cfg.cfg_size		= (pmsg[4] & 0x18) >> 3;
-	rx_query_cfg.cfg_page		= (pmsg[6] & 0x0F) >> 0;
-	rx_query_cfg.cfg_offset		= pmsg[7];
-	rx_query_cfg.value		= (pmsg[8]  << 24) | (pmsg[9]  << 16) |
-					  (pmsg[10] <<  8) | (pmsg[11] <<  0);
-	rx_query_cfg.mask		= (pmsg[12] << 24) | (pmsg[13] << 16) |
-					  (pmsg[14] <<  8) | (pmsg[15] <<  0);
-}
-
 /*-----------------------------------------------------------------------------
  * Function:	cmpk_count_tx_status()
  *
-- 
2.31.1


