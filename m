X-GM-THRID: 6615237556487323648
X-Received: by 2002:a5b:490:: with SMTP id n16-v6mr26249074ybp.15.1540230171617;
        Mon, 22 Oct 2018 10:42:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:487:: with SMTP id n7-v6ls527166ybp.5.gmail; Mon, 22 Oct
 2018 10:42:50 -0700 (PDT)
X-Google-Smtp-Source: AJdET5e4IKhqCw5BCB6hSGNWCfS7Ga08Dgj0TfwSPOH7PeAhhWFcef1fyAyP+OSJocKG1iEV5I6x
X-Received: by 2002:a25:500a:: with SMTP id e10-v6mr5532505ybb.12.1540230170556;
        Mon, 22 Oct 2018 10:42:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540230170; cv=none;
        d=google.com; s=arc-20160816;
        b=GPq7QvMahaexBaWB5eS+Q4h0LLox5m4aWHay7ksCwIotRgBa/6ApaIfyybREQ45XJK
         ySnPfXhLQiPyfdVjGCxai8jW0dQE0eJDZaEbXEDzcp/5J9zWMvDrg2599rgA3PKca5jl
         KJ68Vh73N1N1LfoQBghQL+PYXBNoVt/bqwHfWCSUBODrXbYFkNxAABinSKcq7IW8byqY
         SXEOLAt2nyqMHPBMHVgvZdkORwoW0WS6F+7E7z6kiSR/rvuLNpJTktExEtKYPH/cFXwZ
         9LJsPYUQmm6pYQJYMSEMzYwgymsHCnJh6TirtrOvNBTlG7hW4Jz9ic1bgBPMb8wyuVOK
         5+yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v/aSFWBVZnNFI83846xlSUISw9kB+v0GopDQ2DGCHIE=;
        b=emRzRojPmsYDbQ9OXGj9Lwjk6T1oTAivSV+Yt2p/+4Yo/Is7a8GeCeF34eLL8NrAHt
         YaGh3tgVHLK5LVNbitqbeTFA21VqSKLXOmDYMGqZWgJtKlrH8m1L9F2J4KV+POLk+uqP
         DmDQe47mbw9E3iDk1JcjwAr2XnfwEfTnfPsmObBdqQI4qW9bAOisJ1P/ZyYgShK5+bkM
         X2t8VmUzNW0fV4evMS6r+iT6I1x/TAxrfhDxn4F1Pkl1jHRO8jzrT0zHv5t3g0VUSJMY
         BXJTQeuSJa8rA7C40JtZYiA0IL2e8SLhHqWtl4nanidXm4eWsMkA7jBkxjx/0WFowvwV
         bAsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ILGxU2rh;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l21-v6si1370850ywb.5.2018.10.22.10.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 10:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ILGxU2rh;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id w67so40870631ota.7
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 10:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=v/aSFWBVZnNFI83846xlSUISw9kB+v0GopDQ2DGCHIE=;
        b=ILGxU2rhj53MsxCfBesHcQ9GB24rEjE/A84wAOaJZ2S1860+e0MrOiJRm/XHYsCjpr
         zHsYNR6PcawdNxA0laeJkJGCPXn3nL8uGqysEhp7CfzPY07y1a7INkUsKe/K2Ss8tB17
         x8XxmGq+x+fvkuK+zBCU7+XpwtXInBDiCmizm/RNKV9bo0/c6Mq3neImkJI6JkE2fnBU
         fIEs6vgsze4Bb8GDTHfK2hp23+q/gnDE2+us3VR5V+r4JogTQkoa1twL+pamugOP8rXz
         I85Wej1eMiB2YD0PQ7YOI7yltz+1WR5MEf8PA1dJAD36Y5/4GBnmHVxpmeIMJQzGW9k8
         E0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=v/aSFWBVZnNFI83846xlSUISw9kB+v0GopDQ2DGCHIE=;
        b=sviECSqErmJ3bROaTnyUa7wiCu28F6NCFbChQt324mmIpTwi7au0GvXhYjvArjFVgR
         phfVFMC/uwxvFIRsolRDY+dUWkAOsxu4pzh1+O3Ku945pJLlYaqGtPFH58FZnWoDO8L/
         N/hJXtEI3Spmzzv+uRQ5RD4boqQg/H5HVrD38CRwP9zpQDALGuJ7X0r8tNdFFR8Qv9cb
         HeAVvrTt6CNzzVwCaWe4n56/BCnT8c/jSZ+A8RLg2ty4PSjERZKRNy5HdaXozfYMuPcL
         jv+8Nka/cn/xCLA4gY0SC468O6Hz6KPzR5DWlMVwg0ArmFhozuQeGwdUJtYSq+XC5shp
         /Bcg==
X-Gm-Message-State: ABuFfohFrUnOQLSv2IjCfx676eya49J1HJ+GJss94dWrB8u1MouRcoFi
	IG0S7m6/Do4v29m+/oduxOxVZci3gRE=
X-Received: by 2002:a9d:718c:: with SMTP id o12mr30697598otj.60.1540230169859;
        Mon, 22 Oct 2018 10:42:49 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id z9sm11257676ota.44.2018.10.22.10.42.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 10:42:49 -0700 (PDT)
Date: Mon, 22 Oct 2018 13:42:46 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] staging:rtl8192u: Fix misspellings in comments - Style
Message-ID: <552e36244c1487a002b7f130d8b5ee07cb8afff7.1540229302.git.kimbrownkd@gmail.com>
References: <cover.1540229302.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540229302.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix two spelling mistakes in comments. 'informations' should be
'information', and 'imblance' should be 'imbalance'. Issues found by
checkpatch.

This is a coding style change which should have no impact on runtime
code execution.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
 drivers/staging/rtl8192u/r819xU_phyreg.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index 900f7866d381..e064f43fd8b6 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -243,7 +243,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
 			cmdpkt_beacontimerinterrupt_819xusb(dev);
 	}
 
-	/* Other informations in interrupt status we need? */
+	/* Other information in interrupt status we need? */
 
 	DMESG("<---- cmpk_handle_interrupt_status()\n");
 }
diff --git a/drivers/staging/rtl8192u/r819xU_phyreg.h b/drivers/staging/rtl8192u/r819xU_phyreg.h
index 65ee6088324c..dc9ddf100eab 100644
--- a/drivers/staging/rtl8192u/r819xU_phyreg.h
+++ b/drivers/staging/rtl8192u/r819xU_phyreg.h
@@ -53,7 +53,7 @@
 /* page c */
 #define rOFDM0_TRxPathEnable		0xc04
 #define rOFDM0_XARxAFE				0xc10  /* RxIQ DC offset, Rx digital filter, DC notch filter */
-#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imblance matrix */
+#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imbalance matrix */
 #define rOFDM0_XBRxAFE				0xc18
 #define rOFDM0_XBRxIQImbalance		0xc1c
 #define rOFDM0_XCRxAFE				0xc20
-- 
2.17.1


