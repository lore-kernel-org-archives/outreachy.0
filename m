X-GM-THRID: 6618414504788099072
X-Received: by 2002:aca:dd55:: with SMTP id u82-v6mr3351224oig.58.1541020283799;
        Wed, 31 Oct 2018 14:11:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c20b:: with SMTP id s11-v6ls5130713oif.8.gmail; Wed, 31
 Oct 2018 14:11:23 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dmpA628AmqQ1IKMNPcsLDaMpsoSA/aU+4YiTZCLEd7hd0WspAwUJgPOsZg1n5TaIH/FPkn
X-Received: by 2002:a54:400c:: with SMTP id x12-v6mr3355124oie.56.1541020283225;
        Wed, 31 Oct 2018 14:11:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541020283; cv=none;
        d=google.com; s=arc-20160816;
        b=TeZsviNRmCP+4SXFhrT3Kyl8fE/zY4Mz1yD/Gvuw9Z71LhI53+fPgD7M3/9a2ol31T
         wd0Op9+dP4QgEe7np2rjdxCR7BLOuuDSXKnZFx+3K/9lbACbLfgz1o87RXxdpeQ5LZ2J
         a6vKpoNQQHJzxo10kuPhMBEYc/WUQs8XReV7XQB8cjjGQ+WPNtaK18piQYU/3yJpjRxx
         bQeWLK2H0SbBXbzxsZFOiP9ldbvJldVnTer54Gw3DOCiknQR/m/ujuqe/u5ZLvOKgTPy
         1s25vqk31qeFKSX5EMtiWDLbfBJfWoP6O8rn2d9b4uNn7o/rtegmvGRtPjbNvW34mqq+
         xg3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=xcSy+CnUFwJR2itxdouPuDh5QAan1FUiWrm693DINTc=;
        b=fX4sQd7U01ZYdaa4S/92xgXME9S1ERvfHakjgk8M7FMBFDppb6KLLYQBrVFoZPSUCn
         XKj7P0xXn6UR4VjdnNE9wYk2NKjB7+Ijmg98J133BwocrXKF8lQlPPtZZLXLKKhZtS6H
         tY/ivKU4zyS1HCstEZVhTGATMozkAz25pQc27pfs+3jYCPZGm4RyKltgFu103ngqV9/X
         hGFAAbbDBQTtrM+B5jUu4QzyR8bL0ttyZLT2FZhuhbA/ntHT1ZXLn69tqS+oom9jgoE7
         W2cAoA0OFlTm/IZ+CFRm3s77fM3yCNkeDzNro/fownJ6HA2wujNa3saztn3BR8VVrQnm
         WTNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UEkHC28L;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q14si113350otg.1.2018.10.31.14.11.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:11:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UEkHC28L;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id s3-v6so7949864pga.12
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 14:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xcSy+CnUFwJR2itxdouPuDh5QAan1FUiWrm693DINTc=;
        b=UEkHC28LaVGZjMKs25rnnp0oJ0kADTznH+7zM6f9+0vV4ZOlF1gQ0gPoGm7cWZ6u6J
         Xm03NHncWWehDrafASx8ZGPWrmPBh3S3fEN5t9bw1kyaAG+91BMSJKJtzRwEjosLh4kQ
         R/7mnXth5unybRm+D25u1zo6qmn65TVdEQtVRwpenQOsJh7kcXizw87N5Oua+wmjg/wr
         WAT7Q1ic7tdLvk9KwmreAUwOEjTngJwAoujzJJJahRmv0JoDZC1wqHko7ZOamwy07DHf
         0wq/uOzakbw6HcHDw1UGqAuoMxTWHav69jjPMtMwjz7GZavUotfVh1MgxrK8OnCCwxVm
         1qkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xcSy+CnUFwJR2itxdouPuDh5QAan1FUiWrm693DINTc=;
        b=KzKOgmZdakwGXovcUXWmRudOR3XGGZKzGdpeuqSd398xFb+96q9l2gErQLsRhYi0RA
         lzSsUhVhtrGviJJlxih85A6iTxcA/0AmHXq1RCtVG8S4DjFDEZqzNkJSdmHnuWb3Lr2C
         t2Qvoi9vvqN1OrkH0EjGlNV1RYzUYgE6IW5KoPpLs1wp/mHs5hrWcEuf86u/2MfZz6np
         DijEFTC5Icvl8rNDdZ5RZZbr0I1P467VEENZc6tx79RL7gqwKLwLu3s4HhG8T+HTX6Ou
         X1lOHjTOc1gXh9LlBkeF9Y89Wts5c4sW0U1NPSGXMvaCJVkkaVf41GyjEnDv6F2DPvPw
         EdzA==
X-Gm-Message-State: AGRZ1gIXp5GhLIWNvVrP2g9GXF/4GCDMnp916P9BmcR3Wf288elyOnDK
	vRHDi4MymJiOFEhQ805rCxPwEO+diNE=
X-Received: by 2002:a63:2643:: with SMTP id m64mr4524877pgm.35.1541020282575;
        Wed, 31 Oct 2018 14:11:22 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id z11-v6sm5119030pfi.4.2018.10.31.14.11.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 14:11:22 -0700 (PDT)
Date: Wed, 31 Oct 2018 14:11:20 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: rtlwifi: Keep expressions on one line
Message-ID: <22520d46b79f474e488e876d6b537dd8c7c352b3.1541019721.git.m.maya.nakamura@gmail.com>
References: <cover.1541019721.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541019721.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Edit two statements to keep expressions on one line--one from Julia's
feedback.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
Change since v1:
 - Add a space to the end of a comment.

 drivers/staging/rtlwifi/phydm/phydm_debug.c    | 4 +---
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 4 ++--
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index 1c7faa5840f2..91f2c054d83b 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -159,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
 	dm->debug_level = ODM_DBG_TRACE;
 
 	dm->fw_debug_components = 0;
-	dm->debug_components =
-
-		0;
+	dm->debug_components = 0;
 
 	dm->fw_buff_is_enpty = true;
 	dm->pre_c2h_seq = 0;
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index e7dcb5b02ad4..a4ad39ab3ddf 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -45,8 +45,8 @@ static u32 phydm_process_rssi_pwdb(struct phy_dm_struct *dm,
 	u32 weighting = 0, undecorated_smoothed_pwdb;
 	/* 2011.07.28 LukeLee: modified to prevent unstable CCK RSSI */
 
-	if (entry->rssi_stat.ofdm_pkt ==
-	    64) { /* speed up when all packets are OFDM*/
+	if (entry->rssi_stat.ofdm_pkt == 64) {
+		/* speed up when all packets are OFDM */
 		undecorated_smoothed_pwdb = undecorated_smoothed_ofdm;
 		ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
 			     "PWDB_0[%d] = (( %d ))\n", pktinfo->station_id,
-- 
2.17.1


