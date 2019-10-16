X-GM-THRID: 6748514042587906048
X-Received: by 2002:a81:70ce:: with SMTP id l197mr302307ywc.131.1571260888416;
        Wed, 16 Oct 2019 14:21:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5f51:: with SMTP id h17ls2353ybm.15.gmail; Wed, 16 Oct
 2019 14:21:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwAFTiOcPPZeZpz0VUcdcv4YvdMgO8DRzM+UmPDakd+iDHaW4+cUZHzvXPn/b3F3htferd
X-Received: by 2002:a25:abc7:: with SMTP id v65mr515414ybi.59.1571260886988;
        Wed, 16 Oct 2019 14:21:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571260886; cv=none;
        d=google.com; s=arc-20160816;
        b=WGGjCjGIeHGQKiixAz8iUGtSPOpfJTmEnTiDoetDobRUu5biBukkI8gvVnV0NWO5n2
         k/Kacho/x7aRO/cTbYG6c4EorcQydtpdtdqdgJlhikMPi7Z8PaT/vtpwiXEdR/FZDsus
         WjczzImPTHyZFosSXMJEB3xrHVUbnBaKZkBzLFW4lHDElr9QkW2iyjpXwxvjMfb5Y0tE
         pBvYK9M+b8CdofcJT1UjGYqAm8q047Q3epcTVn0H9GH0OXsOAgJ+LFbzLvpXTyjFeY4h
         KSpmDTDM1FL2FYNSORSL+N1iuSxrggFhvayOrybPEKHVJEXUzDK1JsFHi+c7il82MBBz
         Woeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=/px/zEDUeDtCjyQjYLGOm2llWgGa/2Xcfgv3HV4J6LY=;
        b=DE12VdgzN1enc9A95MOV6cwu8b2TRGSuw9uta0rnvqmBCd1Bgr50BDZsqAERtPGB3I
         Y0vpZUma2PuIX9yR6W23EU0L1a6m6OOyF6W5tWubBtzz5PHwyppXIdliSu2xigXZcSgO
         b87YJ8XUeieF4vKP7CDn2qTuT46+qQHWTsyPrxrJxocYQksMy2IpSPgv+pK7VYdNJK3e
         jpOjjWB9WHo9Ce4Bq6I7Gh5R2tAZZhB234u/rVGTesTmCYveKfwDuDZjhP3y0fAWHS3v
         wFxDATS6VltWzQXvzk9SnQ8Qwiqy3EY92aYrsYhvPcDm2iR3caDv3SJxZVrxL7HMd3vt
         eBbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AR/mZL+5";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y7si6776ybg.5.2019.10.16.14.21.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 14:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AR/mZL+5";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id e13so6831314pga.7
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 14:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=/px/zEDUeDtCjyQjYLGOm2llWgGa/2Xcfgv3HV4J6LY=;
        b=AR/mZL+5y+hYghEmmkVPzYTJ08xth6aCeHUYIn5Ki3JRhGVV9aThX05vzLN5Ns3994
         6abI8KkHLflHUOzL8yAwKjBWWfWEUCqdhIe91L2l79+KnOXANpKwTij1nYjintxEpjVC
         NeTIeOgPt/cF4qmKaE7vzoh/d1FP+X78QT1yUwj1D/EeKu2cQPTQyTwu1aKOq5RzZPnc
         R6bzo8cxCOVRTpDS1AoP7GZdKTALxnX8rNwg73cPgki2V/viS1E7Km5syKmtWPDzWWEP
         PgEMO63duyEWxnxmQ04opmbUD0Fvmtiwbzfsa5TImzuGXg7GZCP7pnz2eJs5YKQul2hb
         z8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=/px/zEDUeDtCjyQjYLGOm2llWgGa/2Xcfgv3HV4J6LY=;
        b=Nk+X9zTHvXMxbPIk7DT3Bfa+D5ZX94x0La+mxGnZjTf84KxT95SE3IJzEA2h5mEAHW
         +wqEOvZKDN5ErRLZIXDgrSMlyVclM6POIH6exw3p+9xacEH+FaLWnStDvLRi1arb3hX+
         apniFpx0lE0+JKu1oH/3xaKtOp63qwRbfil0dhtnEuyKwwrjP163Pqw0f8FBmeExb/lQ
         TUs4af1Le9C7OJhTnnQPDOEzc6mRf5TsNHTMyUwTZsvxEudryYOchPanUP2aN58bd27G
         UBiuV/CilmgbHsFYxdUlDQJ0NOt+cWu6M46MOlIK5YdnvM3BzosGfVRnpYLcif7qOxGo
         eQ+g==
X-Gm-Message-State: APjAAAXNK8+nFQNCxfCo944xYtNMMRGCT31+/p6sCHqqvASpe3PKzsBW
	6Qgpxa7NMl6OZE1fp4omn8bLXoquvx0=
X-Received: by 2002:a62:3602:: with SMTP id d2mr7049280pfa.177.1571260886219;
        Wed, 16 Oct 2019 14:21:26 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id l62sm387pfl.167.2019.10.16.14.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 14:21:25 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jamal.k.shareef@gmail.com
Subject: [PATCH 4/4] staging: sm750fb: Edit CamelCase in ddk750_sii164.h
Date: Wed, 16 Oct 2019 14:20:48 -0700
Message-Id: <81d16b11a27fb85bfc41746f1ea721beaf769bc3.1571260724.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571260724.git.jamal.k.shareef@gmail.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571260724.git.jamal.k.shareef@gmail.com>
References: <cover.1571260724.git.jamal.k.shareef@gmail.com>

Edit CamelCase naming in ddk750_sii164.h file.
Issue found by checkpatch.

Edit depends on related files which are also being patched
as part of the patchset.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/ddk750_sii164.h | 40 ++++++++++++-------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
index d940cb729066..737b0e4869ff 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.h
+++ b/drivers/staging/sm750fb/ddk750_sii164.h
@@ -16,28 +16,28 @@ enum sii164_hot_plug_mode {
 };
 
 /* Silicon Image SiI164 chip prototype */
-long sii164InitChip(unsigned char edgeSelect,
-		    unsigned char busSelect,
-		    unsigned char dualEdgeClkSelect,
-		    unsigned char hsyncEnable,
-		    unsigned char vsyncEnable,
-		    unsigned char deskewEnable,
-		    unsigned char deskewSetting,
-		    unsigned char continuousSyncEnable,
-		    unsigned char pllFilterEnable,
-		    unsigned char pllFilterValue);
-
-unsigned short sii164GetVendorID(void);
-unsigned short sii164GetDeviceID(void);
+long sii164_init_chip(unsigned char edge_select,
+		      unsigned char bus_select,
+		      unsigned char dual_edge_clk_select,
+		      unsigned char hsync_enable,
+		      unsigned char vsync_enable,
+		      unsigned char deskew_enable,
+		      unsigned char deskew_setting,
+		      unsigned char continuous_sync_enable,
+		      unsigned char pll_filter_enable,
+		      unsigned char pll_filter_value);
+
+unsigned short sii164_get_vendor_id(void);
+unsigned short sii164_get_device_id(void);
 
 #ifdef SII164_FULL_FUNCTIONS
-void sii164ResetChip(void);
-char *sii164GetChipString(void);
-void sii164SetPower(unsigned char powerUp);
-void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
-unsigned char sii164IsConnected(void);
-unsigned char sii164CheckInterrupt(void);
-void sii164ClearInterrupt(void);
+void sii164_reset_chip(void);
+char *sii164_get_chip_string(void);
+void sii164_set_power(unsigned char power_up);
+void sii164_enable_hot_plug_detection(unsigned char enable_hot_plug);
+unsigned char sii164_is_connected(void);
+unsigned char sii164_check_interrupt(void);
+void sii164_clear_interrupt(void);
 #endif
 /*
  * below register definition is used for
-- 
2.17.1


