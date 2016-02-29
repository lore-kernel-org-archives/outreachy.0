X-GM-THRID: 6256710913912471552
X-Received: by 10.66.101.4 with SMTP id fc4mr12712605pab.48.1456754029046;
        Mon, 29 Feb 2016 05:53:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.200 with SMTP id 191ls1450567ioz.19.gmail; Mon, 29 Feb
 2016 05:53:48 -0800 (PST)
X-Received: by 10.66.216.100 with SMTP id op4mr13455814pac.9.1456754028600;
        Mon, 29 Feb 2016 05:53:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id yd9si3613376pab.1.2016.02.29.05.53.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 05:53:48 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fl4so92584336pad.0
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 05:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6UuLKngYNtNfXldyuln6KbrtmXucZJJS0n+HErjctK0=;
        b=ELT+cZDpfVQ9SClsoEG05wChHSBfWBpFiOr/C0s5zBNusJSBK96dGsApPn1Np3ICMb
         mRikY+lJJTWOMu65bsk/Xzdn15t5ZDl6aKerzUj2cakmJ10PCUxjiSnfiOL3JaNKWzHz
         vJei9Hy0G7sct0YLFxA5olcTKq27dmKP5m9JMNU6G2N82or1xmET20pPCToKxncGA4ap
         CciUTCDdEceV56qFKXVI3rythDvP1oetwOLPUh3H45oi+7q3qtHdA4R6Z040envfViZS
         FwZH9TAqur56GwcLZQBjBdI90l0TeX7TV0Mob6cOlEDPcm9EPpbO9Re3RtA4mEbJw/xm
         HCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6UuLKngYNtNfXldyuln6KbrtmXucZJJS0n+HErjctK0=;
        b=QHtIrf43z3toEDgAGuovR2ATHvxf0CCCopS0cy42BbAkWEgW1YtAoy4/19/Xdc8Shq
         /JoPkhgR4qCClrQzGPBJ9UIm6hmvca1VAxce+3VoaT4+BgV6oQAtWD/2nRZqTH/47jSW
         g4d6lJG8LSg1bb7RZZSHOpov17ksnyO/hrllcwQKibbLLX8TzP+RsTUBuLs4nueFevze
         VIVR+hHdREdssnRYH3sbm6nFAOT2uEM9egTBmwCohxqJdjd8r8yvFR7GGHuaK41ph+Mk
         Rz2hVwmriUR32O6cdjpRWoeJr03Br96BQZNduFmDC/44dNHjBjWgJKNi+OQ1RtMqfe8H
         fAEg==
X-Gm-Message-State: AD7BkJLXxEr1ooQZentlTS1zAImhVhz1zprEFIvF2RZnyHCZBhIjTPcuwIARy5OElnx67w==
X-Received: by 10.66.220.7 with SMTP id ps7mr22806861pac.58.1456754028389;
        Mon, 29 Feb 2016 05:53:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id xu1sm38487964pab.31.2016.02.29.05.53.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 05:53:47 -0800 (PST)
Date: Mon, 29 Feb 2016 19:23:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: wilc_wlan: Remove wrapper function
Message-ID: <20160229135343.GA26076@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove is_tcp_ack_filter() which only returns the value of boolean 
variable `enabled` by replacing the only call site with the variable
`enabled` itself.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 0020620..45e5e46 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -306,11 +306,6 @@ void wilc_enable_tcp_ack_filter(bool value)
 	enabled = value;
 }
 
-static bool is_tcp_ack_filter_enabled(void)
-{
-	return enabled;
-}
-
 static int wilc_wlan_txq_add_cfg_pkt(struct wilc_vif *vif, u8 *buffer,
 				     u32 buffer_size)
 {
@@ -365,7 +360,7 @@ int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
 	tqe->priv = priv;
 
 	tqe->tcp_pending_ack_idx = NOT_TCP_ACK;
-	if (is_tcp_ack_filter_enabled())
+	if (enabled)
 		tcp_process(dev, tqe);
 	wilc_wlan_txq_add_to_tail(dev, tqe);
 	return wilc->txq_entries;
-- 
1.9.1


