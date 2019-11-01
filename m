X-GM-THRID: 6754188364413403136
X-Received: by 2002:a05:620a:1346:: with SMTP id c6mr5052532qkl.236.1572582135500;
        Thu, 31 Oct 2019 21:22:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:ee02:: with SMTP id i2ls1702291qkg.8.gmail; Thu, 31 Oct
 2019 21:22:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwk3jawa8MErOkG7jaj72bffKCe+0fgd5SAw2HhMNDdbYkDzHxCm6Ksq/lhg+MuRX6MGfd0
X-Received: by 2002:a05:620a:20d2:: with SMTP id f18mr1316162qka.474.1572582134298;
        Thu, 31 Oct 2019 21:22:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572582134; cv=none;
        d=google.com; s=arc-20160816;
        b=D20DzZkq3PW9rQpGTCS0Z8ob8BwAP+xM/hDvMHwRhh2Vrw01/qgmBNZsaEHF+JpRhZ
         yv8IUZ1FhKGz1O+sMAh8WJIl8Z0GIXB6z2migLO+AsIn/o9LON3YLSTixvZdWetEjxnM
         7+MWDG/wzZOKjJT8TXwYnjiey1jaD2rkKaCSe1vY9YkiNWWkGNrFt4atvS2BNhT81cWb
         C1YX+CE9T3GxbZMwQ6gE/3r65ADQgyI6ZwT88l1fd3352N1KSY3YuHN3IEIVSKbAMfaA
         6RcQaCSrEToSvN4ZpbLbpJrTgB2PfXigdJZmtXmYMLZpY4M7u3vFTMchMJI3l3xKiOOn
         rUXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ogoDgA9T8tBDwueoLj8X8XsBkM5YdSQ1V625NJKi9dM=;
        b=VtfnE8+W9a+dndo8Jm4+3S9NaI7CuQoKlX2eOH/EQGVP90tk3avyT0quJ+o7vFV3la
         7sYuo8jPWWcAA/xIav8C4ypwOoAkASxEV6MLrdWw/vIN9S5UP/heD2R8v4aG4bNouZEj
         inLFsoLxPC/BV1XC0PfOjJfGaO53lztX9laAxVgk/SpwBYGNNn3dvMiQ7P9DiRGg5BAO
         kxJYi56GhMUN7vqzQ8p7TdTn5RO41MXAv8xgBjoosV83GiOuzN5h1ZDPHbY+haPKcSIZ
         YvT8tcZYOrxFOpcCkzkSHQVSn34vdSg4IoJMje+hxc84tIm9M1eVqv8ZVhuo3VkTcZkV
         dQ1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Ynv1t1mP;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id z41si467845qtj.1.2019.10.31.21.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Ynv1t1mP;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe43.google.com with SMTP id j85so5578561vsd.11
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 21:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ogoDgA9T8tBDwueoLj8X8XsBkM5YdSQ1V625NJKi9dM=;
        b=Ynv1t1mP5w+HRltI8MpBH/rhMTlm0rTJ9vZS4nbP0mfwbmmnE6GkUlNNDSPy8bRPtu
         m4F1GEzeuZVkoqQgdHh3ks4Cu/CTbt7brDTHYbXIRAMqAH2AIWZRR//9LGGqIc37+OhH
         FbgIqRoPFYaVKejLXYM+JkWG3qntsxlD6vboNfYbmE42KZ79kZI4UxKWT8Ysb2l6XPuB
         WyJ2OvMnU1YOuKtsbZRws5NJqJXccqdhwyZTJoW/TMr7t2foG0M75U2QEcoMNH6qaF0u
         8cgpkGUxgILdD2IRZai6Ac616m2voWgHDpp2XiLDYR6509noOjwK+B+i7Kq0GHgQw0i+
         vMLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ogoDgA9T8tBDwueoLj8X8XsBkM5YdSQ1V625NJKi9dM=;
        b=eI0o9pgZm/Hh/7Md3uXTEh1Ho7G/yZBG+hN4FTSHWJg4orz68kbNRb1Qyj85gaAowi
         6o4hI0UEcBoKQRX9rML7NlqTZTbgu0sbpqWowmy2Uax8E0ifeZzY9oWeJvWXIqCe9sEC
         HcF89vAJETMIbmRXJ7KpqS+s2BJ3puPmS+3hADT3JyOpVMMetQWzigyvEd+4HE4Q2vrk
         KcfzHIXdoQ7wnmjxjMUMpIAR+9o3NqwmTQjMUU7b9PYGp0y+vOIx9wty0J62kWXozjMm
         wUKkJqeZjpszgSDGLIjFdOEwqm7ldxyLaFY7yJVkxO629kju4ZRlir60ScDlZq0m+7iF
         V61A==
X-Gm-Message-State: APjAAAXcDfkepnJyAURHLwMMtQEjXd7LZYIKUOIZXOfjmaZMnnwr9G9Y
	GBs1R7n26jLt8YlS1amC9e9biw==
X-Received: by 2002:a67:7ac5:: with SMTP id v188mr4847285vsc.191.1572582133773;
        Thu, 31 Oct 2019 21:22:13 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.12])
        by smtp.gmail.com with ESMTPSA id i10sm1769986vsk.8.2019.10.31.21.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 21:22:13 -0700 (PDT)
Date: Fri, 1 Nov 2019 04:22:10 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH 3/3] staging: vt6655: Fix open ended lines
Message-ID: <58998c223442e324c405292e1b0d5a734c1dd1e7.1572581578.git.frank@generalsoftwareinc.com>
References: <cover.1572581578.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572581578.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

checkpatch message:
CHECK:OPEN_ENDED_LINE: Lines should not end with a '('

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


