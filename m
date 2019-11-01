X-GM-THRID: 6754482318874771456
X-Received: by 2002:a9d:7e94:: with SMTP id m20mr3254927otp.198.1572650633021;
        Fri, 01 Nov 2019 16:23:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4f0b:: with SMTP id d11ls1583225otl.0.gmail; Fri, 01 Nov
 2019 16:23:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxHcXkPBLtg0Ej+92EFjVOStmqZIifiIKsYYutRnwwahYJ8v6cBNiG4Clx1AG4325vFAjql
X-Received: by 2002:a05:6830:606:: with SMTP id w6mr10621522oti.339.1572650632154;
        Fri, 01 Nov 2019 16:23:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572650632; cv=none;
        d=google.com; s=arc-20160816;
        b=rlE1luf/VzW23Fi263zk6TYdDOCwS77m79l7iMeV8HY5tJhfnjugCQQ0VwEtVmXVET
         xCQHiwDvGXNK37K8swbMV1jWRiGYkjo4o2xmDx4/I7QW2AWSGKFEn0eSYoPlgPvS2fqb
         qXl3OiP6yWIvXCd4pAuQaAWGobSeWU+h7Ux1Uy7atP5qZ2mfyUW1foTH6NIUIaO3XOKZ
         o4Yllqdmy3hKjS6DNItt3kiXSPAl/Hx5PIuMrlWPhpvzuhIZXebK5fxtcD4++bhvp0cP
         lTkZTOmOiYD+a67Ij5VNrKlAa1QvdnO1nQpX0EDl1AWEUJH2HvFX6yDgx9GjBK/XgBkf
         XaEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sMrJPnsJn9iyYh+E9BdQVY5vQraYFUAa7bEWoAkmk5Y=;
        b=UnaBxyna7HJoXf8RlGYXJxK5YYpTVgZ7k4g4NquRDoLZMQfBhMHwIN3c2bGianeaca
         eMpb/PU96Df0voah7HAm9ob/PqYwPBZW+527kebCHBwoZ2yRV1Toentifa30kPnHq83E
         rd10CRJfYW9TJks8DSSMq+p6gZhmCcmJLUbZr9Im/P2BJiAAoU1HKu0Z8XeISpk9okWE
         51V77HH6wiRPi/CJs2JdXbGTcYSAaTclLY3WWc/go1Xuwb2CEJX+LJZdYVJlXZhsjjXG
         p7OPDgvgzQcb2LJaNVqLwStXsMaYJXCSCYn8jUWPTzt2Slxb9UqVyPaQ7KHuZUFiA5lT
         jAWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=wcfDwHUh;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id 144si520532oii.2.2019.11.01.16.23.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 16:23:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=wcfDwHUh;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa44.google.com with SMTP id r4so2577817vkf.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 16:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sMrJPnsJn9iyYh+E9BdQVY5vQraYFUAa7bEWoAkmk5Y=;
        b=wcfDwHUhKZFK93054Ep/uYLBxECIDZP4uSipU10w6bxWu02vUdIqtEPGJxKNpGCx1C
         zy23OLqvfbrikG1HsOgdy1mjpZ1rtsjZE8CrlL9MrSvC8QEl3mecyv1hFVwQdqNcRLhR
         C0Hx7Cm12D18KCKGOBNpUR+Odx9z4iKSKxGoig+c7hMd6bA9kiqEi67zTGTuCZqoGaKL
         H5sepePJgdBIiyJ1SsbusvgCjjQkKNG9U7DrXPpwL1T9w1ktFj0ltnW27wNhA4G2iBa4
         D4Zf6vdJWFJ7IhWTc85QoK0687QtddhpHOiJ7zQwBP0q4cFfxIFwOnzIlQg10tMvGkRE
         qECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sMrJPnsJn9iyYh+E9BdQVY5vQraYFUAa7bEWoAkmk5Y=;
        b=NgCnAKmOvWA7aSbcw5YBvaMgf5KXTWOeVleOYPA7JEvYuYaWz0yhQYDfECZYcnTs5O
         JMS06k5OfBYzK8EwmurN/UahDGbItrnz8E/Cf/oeLtacF4qvlZ7/AiOBw1xGmfV2uPco
         tivQIlU56D5xIrQ5Eg/pOkL3XElNB8PARdTxs1snSsppUQLwUYcEZe/bSfbvZu9f2DSU
         Xi7rvGRi+9k/toavWwHpaU2wJml6jAe6li0fRuNExWaoaiqnZG41jm/JGsxVKRItru4e
         cn5Mnax9M8hQMWmhMMAWS9o1YnJQj8hhug91fMYZjPqSmdSRLv5e8Wpb50xbirePpOIP
         4mBQ==
X-Gm-Message-State: APjAAAVZP7B/USLT0KHjPRktxIuF1RkpNxZ5sn7Byv/e7CXz3aNTGBsn
	/W1PoctGl58/21Rd7/ef/kfOzA==
X-Received: by 2002:a1f:d3c1:: with SMTP id k184mr2599473vkg.46.1572650631382;
        Fri, 01 Nov 2019 16:23:51 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id f4sm2011951vsa.16.2019.11.01.16.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 16:23:50 -0700 (PDT)
Date: Fri, 1 Nov 2019 23:23:49 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH v2 3/4] staging: vt6655: Fix open ended lines
Message-ID: <bdbc1d472a8d90487d691e82ab8154a5733e6a0f.1572649242.git.frank@generalsoftwareinc.com>
References: <cover.1572649242.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572649242.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

This commit arrange function declaration in one line to avoid lines
ending with '(' and comply in that way with the preferred coding
style for the linux kernel.

Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/vt6655/power.c | 10 ++--------
 drivers/staging/vt6655/rf.h    | 19 +++++--------------
 2 files changed, 7 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index 9725de3bca6a..bfd598a93b04 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -97,10 +97,7 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
  *
  */
 
-void
-PSvDisablePowerSaving(
-	struct vnt_private *priv
-)
+void PSvDisablePowerSaving(struct vnt_private *priv)
 {
 	/* disable power saving hw function */
 	MACbPSWakeup(priv);
@@ -126,10 +123,7 @@ PSvDisablePowerSaving(
  *
  */
 
-bool
-PSbIsNextTBTTWakeUp(
-	struct vnt_private *priv
-)
+bool PSbIsNextTBTTWakeUp(struct vnt_private *priv)
 {
 	struct ieee80211_hw *hw = priv->hw;
 	struct ieee80211_conf *conf = &hw->conf;
diff --git a/drivers/staging/vt6655/rf.h b/drivers/staging/vt6655/rf.h
index 042ac67a9709..affb70eba10f 100644
--- a/drivers/staging/vt6655/rf.h
+++ b/drivers/staging/vt6655/rf.h
@@ -61,23 +61,14 @@
 
 bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData);
 bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType, u16 byChannel);
-bool RFbInit(
-	struct vnt_private *priv
-);
+bool RFbInit(struct vnt_private *priv);
 bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType, u16 uChannel);
 bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH);
-bool RFbRawSetPower(
-	struct vnt_private *priv,
-	unsigned char byPwr,
-	unsigned int rate
-);
+bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
+		    unsigned int rate);
 
-void
-RFvRSSITodBm(
-	struct vnt_private *priv,
-	unsigned char byCurrRSSI,
-	long    *pldBm
-);
+void RFvRSSITodBm(struct vnt_private *priv, unsigned char byCurrRSSI,
+		  long *pldBm);
 
 /* {{ RobertYu: 20050104 */
 bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv, u16 byOldChannel, u16 byNewChannel);
-- 
2.17.1


