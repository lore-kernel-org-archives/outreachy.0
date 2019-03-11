X-GM-THRID: 6666820090157072384
X-Received: by 2002:a81:7cb:: with SMTP id 194mr5101058ywh.9.1552318924020;
        Mon, 11 Mar 2019 08:42:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:85c1:: with SMTP id v184ls1424797ywf.1.gmail; Mon, 11
 Mar 2019 08:42:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx0jJzmrBWjE/kM+GG2zxPCu7XD2PeA/gRxHM/L7TtZ6OzdDjj7AYMo8A0VH3X18K3CyOD7
X-Received: by 2002:a81:9896:: with SMTP id p144mr8646341ywg.0.1552318923616;
        Mon, 11 Mar 2019 08:42:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318923; cv=none;
        d=google.com; s=arc-20160816;
        b=t8yiBS8+z1VEyQBfDqxBKeVVDrqJhRYEIeKZB2FJoOFDWA3nJ9/INMx7zyi3hniw5w
         4WwMeyLzvj+/e4P3Fr94bbToUdJl5gJcsIm6BMYxzOllXjZ4UqypKWsns+reLYPJS+ml
         yXhC28BCDPWpPGvnFzZt/Gpp0IEGnfg8gds4WgdQ7kBQOm04RcObbIcb65ELd7DAZNHZ
         UPvznfOgN1b9Hh1T3S7C543w/QUBvTaENYJs9D5Kh51aZwqmeDLELwnEDizZAlKKfUdE
         b7LSPSDcz9K7wnX5MR+m2w1YTeOdK03QycjAr8m1NAafgYfNnhjiAQg3N71yuGw0YrMx
         hhhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8LpNvkvTSx7GN3/FIENN1iY0OSa29W74JYdyp6gC2gA=;
        b=VsE2Lr6cikpAiI1qw9JvlFk+82tqEOQbXOakQw3tv0wOj3df/qROpHatG8sB9y1JsV
         2K3B+sm4h+sZ3Vj/3NX4EvTDc+iyvOCkuJ7yxON/Sfh2GjH+ayk0hWgegJ/BZrm5/eML
         1Tu19sOKPRxI7jdbGDqgkwbwJuyiBErLUbroYNvp4X0b+p7nDu9njpXAtCxYR0zhI3OZ
         nt1q6uABP+bYbPr+8ytZcW+Dv5HLtb5ktaHB7JzAEsUovt6GBoWuPI3BLnSKB+SxaTWM
         uJPCPwgLv0sJstApx16PpV/hR/W++bS9zQ3ahlJIaO9KMMRQUcmhz5Jw0ZIF1EsASFaU
         u/MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=su0U1Tsa;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id s11si228679ywg.3.2019.03.11.08.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=su0U1Tsa;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id h11so4336805pgl.0
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8LpNvkvTSx7GN3/FIENN1iY0OSa29W74JYdyp6gC2gA=;
        b=su0U1Tsaa1YBSp0NOpkz+8RjrHukifMM8Wt91Kdjud12U4Ux0lsh4t+5ZccXmVmoag
         jTp1Sg6ROU5nC1aCbSuAp+z7SkOOB6i2vqcLILKous5LkUipN93JHm1wRwxxPCSsAnRQ
         48UV5uojNkUU1TDPZUexFeGcwW/pkOZsNxGnSrEyPhkLur2J4DJIpEcdVanpc4B5SETP
         /cQsDmiQ21rhom4cCmQXFSOOwDKt/jkvOVx1EgCV3z7dtjXXBJjFzgq+oGu/KIw630aU
         M6M29/nKOwKoVoOF2rdOfdYbEaCZldugnAbLXH4/qnYfr05a7kgzbyW14x+r9bhNp+A9
         6HUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8LpNvkvTSx7GN3/FIENN1iY0OSa29W74JYdyp6gC2gA=;
        b=irsl5UUzG65/Ysq5fSORz4vhGKGnjC58hOuifTeGs4EhOvpFwbhOtrqxtptoC8s5jp
         35gWtNpr2OeNkZ7qAtTcKwiZ4iQts+SMMLycKUkHuOlIpe3B20vnXQt8MWTbQAC84tCs
         WIvM04fEDLtl+x17cYxJ04qr6SeuOYRexGx3053MCwV8s2FdV0uBS+UcYi9QaOUQiqep
         nxxqV8Mb1E/BcJ9P5fmw6qerVO8yt2knOrqc5nbMixaDQFoVoZALXHFsIhDRMFajjwXs
         R5ui9DLqXAqTRYcj7heSVJzmPfOvMZncb/tkQIpsLWtiW2RWCubac2PfJ039jqgPEQL8
         PL6A==
X-Gm-Message-State: APjAAAWrW8RZC1+XEuphvLFM95gkKKcH24/6rIxZPSJgHg3hzTxDmMhh
	TiBJCFU05PdVPT2u0lDmj1/d/OtpH8w=
X-Received: by 2002:a17:902:728a:: with SMTP id d10mr7356686pll.293.1552318922621;
        Mon, 11 Mar 2019 08:42:02 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id u184sm8798080pgd.13.2019.03.11.08.42.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:02 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 3/7] Staging: rtl8192u: Remove typedef for struct _RT_POWER_SAVE_CONTROL
Date: Mon, 11 Mar 2019 21:11:37 +0530
Message-Id: <20190311154141.31401-4-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311154141.31401-1-bhanusreemahesh@gmail.com>
References: <20190311154141.31401-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs RT_POWER_SAVE_CONTROL and *PRT_POWER_SAVE_CONTROL of struct _RT_POWER_SAVE_CONTROL.
-Change Structure name _RT_POWER_SAVE_CONTROL to rt_power_save_control to maintain Linux kernel Coding Style.
-Replace occurence of _RT_POWER_SAVE_CONTROL to struct rt_power_save_control.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index d78bc976cc69..c8c0e4282fea 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1518,7 +1518,7 @@ typedef	enum _RT_RF_POWER_STATE {
 	eRfOff
 } RT_RF_POWER_STATE;
 
-typedef struct _RT_POWER_SAVE_CONTROL {
+struct rt_power_save_control {
 
 	//
 	// Inactive Power Save(IPS) : Disable RF when disconnected
@@ -1562,7 +1562,7 @@ typedef struct _RT_POWER_SAVE_CONTROL {
 	//
 	bool				bLeisurePs;
 
-} RT_POWER_SAVE_CONTROL, *PRT_POWER_SAVE_CONTROL;
+};
 
 typedef u32 RT_RF_CHANGE_SOURCE;
 #define RF_CHANGE_BY_SW		BIT(31)
@@ -1876,9 +1876,9 @@ struct ieee80211_device {
 	bool FwRWRF;
 
 	//added by amy for AP roaming
-	RT_LINK_DETECT_T	LinkDetectInfo;
+	RT_LINK_DETECT_T       	LinkDetectInfo;
 	//added by amy for ps
-	RT_POWER_SAVE_CONTROL	PowerSaveControl;
+	struct rt_power_save_control PowerSaveControl;
 //}
 	/* used if IEEE_SOFTMAC_TX_QUEUE is set */
 	struct  tx_pending tx_pending;
-- 
2.17.1


