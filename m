X-GM-THRID: 6809913191851622400
X-Received: by 2002:a63:7d43:: with SMTP id m3mr20722702pgn.193.1586171985548;
        Mon, 06 Apr 2020 04:19:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:46c8:: with SMTP id jx8ls3527306pjb.1.canary-gmail;
 Mon, 06 Apr 2020 04:19:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypLJVldSi78uKXvXAhYWOhpP7THZYfPaL1aqn0rAbvG/ToNwgBM9pivyHEH7aAfhzXztnRvw
X-Received: by 2002:a17:90a:9742:: with SMTP id i2mr26621408pjw.194.1586171984152;
        Mon, 06 Apr 2020 04:19:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586171984; cv=none;
        d=google.com; s=arc-20160816;
        b=MySI34hDlauro6ARbxWiqDd4fSF/S9IWofJEgRraQeWYORwf+AbbkhUN12oVopwTK/
         h//0YOr6TEZVQP4K8ibIm8j3DMxc0tWPtnu+K7Kr4dHhRs6A0Sr3g7ELUM6CeMcWT3zl
         CBDc2zjAamGQhl3OzzIU2IO3cgI5Ysiu2/c+OIvRZqhoj2D8vyLqREgqVgTCG+p60nw1
         uRGI44sIguRkZuYNPUPaYNzX1uQMiqnm3JrgZeCKtteEl+kRzJ1qCYREmGuebmNWkGUW
         YJImyJcjrxhFsI92pf1YMl9QWM0JC4n6/1I9T0yJceOQ6Cj2c7aIpXi1f+7kChgvi5Zp
         lg/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=jmdwPX0xyI04zhmRbReduiJKbMoZFVq0Seh+/xBI+do=;
        b=due7EZyEYUiXETRyDlxY1DsA+k9SV3sYNjjD6gaKnv62AjoVKP+bBsEtZvjsjYqoip
         iLcxH0AhE5mnL6a2UwibcATOdTqrO75vmLU4AZxhLJJvU7IoTY3Hx9xIbGc4GPnmqZ0a
         s3vEck41C23Kkh/0IQ7RerIlM2Tut7qSvco8rG7ua9FqGSMqdRp+UTcdfbdSr9DdBWl2
         1n+SIWtEFOo1nyKvuAittlS8hjZXq6oFKq1meG/0fZbbm8IwvyFNmUKeIfXAG2aRCTPD
         E1+D39bZUvP+NHGIyzE2CrlYm3tcd5DqGTLgp+yzf9nqaEEF75l3Dt8xE9n8SpF0UT+N
         JG/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bDAOR85W;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c207si1037965pfc.3.2020.04.06.04.19.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 04:19:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bDAOR85W;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id s23so5757560plq.13
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 04:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jmdwPX0xyI04zhmRbReduiJKbMoZFVq0Seh+/xBI+do=;
        b=bDAOR85W5Hj/1gBrBoMER83h/cmDx6QBBrkfv9Y0q0jcBGGlzLrkcljHLK4MzJ5kEQ
         bH+QC76Na8/Q2R0neKX4p//au2KmztdZgC/9fsztloIK6xH8cY0OtzH+nZKKtHgxlqs+
         oiUO34mMNLp8qV57wcU4RsG5x3cEIl4RMOODO3koomcVqKfclMK9Vsbgo9WfNjeuhEj4
         YPw1WXNeN1tArhAFaOiFepIgU+U+SyazlSObuNs9kLJVQcdtLH7sFrH0GgdE28BIDJ4c
         AfZJNAUTPH3Xps6o7tHYyxa+kbeE3znIw8b/aLXz7U4VlRKVKDFa//Jfxu9llzgmfCU0
         WEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jmdwPX0xyI04zhmRbReduiJKbMoZFVq0Seh+/xBI+do=;
        b=uMRvHWSwBodx1dNsmAJZeaNq/egvXEzR158C4ffH6YuCm8cHf77+jonKkg/Hp9bes6
         5URwkGlXvUVtFerra8br3t2Qr4+T6uj+LsTj+y0HZwVYn9rhkGOJwCk7k4r4QOVgeZHl
         wfBA0NvXYYRR8G5BzV/TFtEtSRqkMr8cKZTuQ1byyk2gCrus/xCA8b1+lKCW9ODOz2RS
         X7Og8CVdiAILRoBAw8reRCZA2yVeMbdufFNMo87VC8/7DU3LxgV8PNXayTZ4PwAsCZ/2
         dilmzFdxswCafQU9E9Hu9HDCn1FYAUHV6KXCnB0XaM4Yt9BHOlV2flibrrYzDvXmsNt5
         1aEg==
X-Gm-Message-State: AGi0PubHj9Q9Pa9gRqUbNRKo6URGvISOMi/Aq9oGtDGPHHGY4o2MOTyM
	h5gi96OAH1pf2v7e3ubRrA8=
X-Received: by 2002:a17:90b:3752:: with SMTP id ne18mr27190103pjb.143.1586171983802;
        Mon, 06 Apr 2020 04:19:43 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([2409:4065:11f:6885:99b6:8ae:3f27:d6e4])
        by smtp.googlemail.com with ESMTPSA id t85sm10512845pgb.1.2020.04.06.04.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 04:19:43 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	julia.lawall@inria.fr,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v4 1/3] staging: rtl8188eu: Properly structure the multiline comment
Date: Mon,  6 Apr 2020 16:47:04 +0530
Message-Id: <20200406111706.25957-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200406111706.25957-1-debsoumyajit100@gmail.com>
References: <20200406111706.25957-1-debsoumyajit100@gmail.com>

Add "*" at the start of each line of the multiline comment to improve
code readability and to adhere to the uniform Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 93283c7deec4..eb48095b9de2 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -1226,17 +1226,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 }
 
 /*
-op_mode
-Set to 0 (HT pure) under the following conditions
-	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
-	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
-Set to 1 (HT non-member protection) if there may be non-HT STAs
-	in both the primary and the secondary channel
-Set to 2 if only HT STAs are associated in BSS,
-	however and at least one 20 MHz HT STA is associated
-Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
-	(currently non-GF HT station is considered as non-HT STA also)
-*/
+ * op_mode
+ * Set to 0 (HT pure) under the following conditions
+ *	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
+ *	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
+ * Set to 1 (HT non-member protection) if there may be non-HT STAs
+ *	  in both the primary and the secondary channel
+ * Set to 2 if only HT STAs are associated in BSS,
+ *	  however and at least one 20 MHz HT STA is associated
+ * Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
+ *	  (currently non-GF HT station is considered as non-HT STA also)
+ */
 static int rtw_ht_operation_update(struct adapter *padapter)
 {
 	u16 cur_op_mode, new_op_mode;
-- 
2.17.1


