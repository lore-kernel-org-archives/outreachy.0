X-GM-THRID: 6666820090157072384
X-Received: by 2002:a81:b184:: with SMTP id p126mr12782258ywh.14.1552240014032;
        Sun, 10 Mar 2019 10:46:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cdc7:: with SMTP id d190ls149032ybf.8.gmail; Sun, 10 Mar
 2019 10:46:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxnAkJD9EomfzdnhynLR05iOQdB6GA0EayBnvgIMrWUyLUHk71EbbKwrAn2ueJyxgW9B542
X-Received: by 2002:a25:4c4:: with SMTP id 187mr12976660ybe.81.1552240013207;
        Sun, 10 Mar 2019 10:46:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552240013; cv=none;
        d=google.com; s=arc-20160816;
        b=U1XKcUXF1Kr0FBpZFm7+O6NSUiXgY/5s+lCDzU6B6lqfWcSXKcF7uos7viiqIUeGBt
         Pp/pa0dxbQ4wYTmc8CWiZLf9J8DTJdX9U95UrlUSdvcGswquQuNJBkNolNa/P1dBzUb2
         vk7CUWYLWwyLa6ukzRJL8+UcOI1y0e60ku25TXlwcffw9WVm6EpXCCKfLrt7t2zyn62g
         IuaJqNlmZccu7Z0MI1GVX7pP7JXxKpanZ7kd8Fa0IDmYZRexK1xbX1i++eUoUJYT8Vyw
         Lgc9hfJloYtB3tKaH1cueSVVmZbIrJRmINhB2e4fDMVruTGL9JsoXqliSl0TGMXlhtC2
         49xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=2NgR1q25rpA3+vuTYvIEM05sPHzvCyYFb6Nx7Yin7Zw=;
        b=rAjI7xeLAoAuvaMMZZ99ljhExWK4sihcfwHPhSwmqkYHeZ/oAE9nrsQl+o4K3qoI8j
         mRmEnaBIiS5lsqoiAVk1C2/fVrtvP61l0f08gCWEsBVFR4g38klMXGFP0xV+z6yQCg3x
         EOX8B/zJgk156Rnhd8giun7PdfFFvDG2wFmWHk2NEgRfwnQLolhTsedj9Q9KK11LCiz2
         Arj9iI8k+lXsaaFPfZZpEO7Skj4N6nu1dxxNSIr/9J21YEUS2PgaEWVl49aItg9Mak/8
         LZGA6R3o6wmSXMjxkCw9BswXebOZiEAHQf4WfzZrjP1GExL2jRZSJZU6FRwh+5Wtb35h
         2FCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WjBULhSs;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id k62si149625ybb.4.2019.03.10.10.46.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WjBULhSs;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id a3so1941421pff.11
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 10:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2NgR1q25rpA3+vuTYvIEM05sPHzvCyYFb6Nx7Yin7Zw=;
        b=WjBULhSsOrIxeGMHX97zPyAxVnPfAtCLX8WrkBmn67C+l9oi87f+v4wCY0YyPbJ45U
         Usnp35HspDsEgcIzdo4GSiUTnTANkno7jmLFed6ZWLJ5axZ1GpOamvRZHcQ6p8ecYlLy
         hmGqzZlsVP1V0hZYFTwhfs3bJgAlp9RX1Bj8DhjfZvhhV+VP6nkYQtcIkI0hIECFWdRt
         CgydjXjHQOQwjcIE2mvy0gbh3Y8e0Xq8v41x4ZRerfjqqZhcanAY14mygk3BgnCDMXKO
         DCJyTOwMpFC08aEW2sq9fzYlPy9dys5eMXxstbK0FLS1FXZHM3MukTkxb6Ai7XnI6CFM
         8Rbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2NgR1q25rpA3+vuTYvIEM05sPHzvCyYFb6Nx7Yin7Zw=;
        b=mMSgexlRfyG8xzvW9zk0PBobJDKF3tqbuQQyOz4Uh2cuIFSRFPvCtLN9vbm71Nu4Ml
         eVungJ4xUhE8p4BhEL7jzyvmYB/YzwFt6C2XYdOxayH8xFR254GLnInRabfLZIPyCqxT
         C7omqiBgixSj/39POKCOafFOsA2AiWkJaLvDAa3/BtVfrf6FIYqvxcw3L0nYkbUm1QbY
         0Z15yG54ncm+BUQAbLSnqs2htpYmw8f3xJwjPv1o5Kso7Q8QEadOy0uGW+KBr8fgO5Q7
         9vF9HKc/ikaFPmEc2HivVcIAGQdIUCTcDLtXQqeaKI/4i4m4+QEOP/ifU4T25S/iu661
         Jcww==
X-Gm-Message-State: APjAAAWHRo7gXtwNfVVIMVjRMoKKRxFa9QiAU3t9WikQu+cBy4uVE0ft
	cT+/HVOtKsvKBUMK+ewBRQOdwQV178c=
X-Received: by 2002:a62:1b03:: with SMTP id b3mr29439710pfb.218.1552240012241;
        Sun, 10 Mar 2019 10:46:52 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id h184sm7340275pfc.78.2019.03.10.10.46.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:51 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/5] Staging: rtl8192u: Remove typedef for struct _bandwidth_autoswitch
Date: Sun, 10 Mar 2019 23:16:31 +0530
Message-Id: <20190310174635.16923-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190310174635.16923-1-bhanusreemahesh@gmail.com>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs bandwidth_autoswitch and *pbandwidth_autoswitch of
struct _bandwidth_autoswitch.
-Change Structure name _bandwidth_autoswitch to bandwidth_autoswitch to
maintain Linux kernel Coding Style.
-Replace occurences of bandwidth_autoswitch to struct bandwidth_autoswitch.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 8aa536d79900..ce79b8321961 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1462,12 +1462,12 @@ struct tx_pending {
 	struct ieee80211_txb *txb;
 };
 
-typedef struct _bandwidth_autoswitch {
+struct bandwidth_autoswitch {
 	long threshold_20Mhzto40Mhz;
 	long	threshold_40Mhzto20Mhz;
 	bool bforced_tx20Mhz;
 	bool bautoswitch_enable;
-} bandwidth_autoswitch, *pbandwidth_autoswitch;
+};
 
 
 //added by amy for order
@@ -1871,7 +1871,7 @@ struct ieee80211_device {
 	Fsync_State			fsync_state;
 	bool		bis_any_nonbepkts;
 	//20Mhz 40Mhz AutoSwitch Threshold
-	bandwidth_autoswitch bandwidth_auto_switch;
+	struct bandwidth_autoswitch bandwidth_auto_switch;
 	//for txpower tracking
 	bool FwRWRF;
 
-- 
2.17.1


