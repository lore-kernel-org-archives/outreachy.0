X-GM-THRID: 6666820090157072384
X-Received: by 2002:a02:3d7:: with SMTP id e84mr18972242jae.20.1552302987274;
        Mon, 11 Mar 2019 04:16:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a783:: with SMTP id e3ls1120347jaj.1.gmail; Mon, 11 Mar
 2019 04:16:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8p4TZByQ02XwmXxzBmELL198NE+Z/QNtmxA+oUQ0qUy/8i4rKV+wmT9QFlgAaXYXjEDet
X-Received: by 2002:a02:31d:: with SMTP id y29mr18878748jad.18.1552302986364;
        Mon, 11 Mar 2019 04:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552302986; cv=none;
        d=google.com; s=arc-20160816;
        b=yrLMG9PNdwpO0qX0oEMCeIFr12TaF9T2I2zsweUM9I8cnLByQYcOtzeXFyoyQE/X31
         Ymz/T56+4w/ClKxX768JQXGvWtdAep+g6bEQtSvoBrVpM5UMMmMRZanB3+FOqOQN2/GQ
         WW3yE7HUP/W64sCZeNt0x2GPsk/wzPwQzCjhW0mJCuLCSD1TDwOKkZXZTj8Yn+URMhRM
         xwbDv1GQfbjYyC7erkxwzUTs1yigX86sDaTlLkv59eoslBIaQSwaULs/GzvDgvkcWQva
         6w+i1VRWBmuFjpsaQmSCXjNzQ83Egdhyl3oEvY4KpQvl7aBbz2TFeGBWO4igD4fPTDBP
         Wpow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8nkHElTqDtnvuOfvspVuuEWOLpA6ux03jZaOnyoI6A4=;
        b=YRMaJbU3fWD9+HUP0s5fWUKVV/oKMIhO+Sc++J7WaiBpTxSoe4lzBTr+xLpQrMiCMl
         512GbBXRfWATVu627L5TKz0U84wPfSYtS2vu3QfLbe1po9LmvIcWoe+3LM1TTw7mT3fl
         DWoyhfQbeQUjzXDKaICFJtjk8qLaP3mq8aqVFzaLl132H0KJQVrslruBdi4fe+T9wMiD
         TsFWimz3Dx9l6aQldUIpKMHm1S1XAZ56Jt2nv+Fi6v73sztnIxXkxLgCx4YGXEXC7hmZ
         1yygDX8VTH9jkrOWgSUiiXXNWE/PCbGXjRk6X67o5PfyDrqprhSOIv4QnQ4FbIBjyazP
         brDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V2gq1F2n;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 77si1054543ita.2.2019.03.11.04.16.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V2gq1F2n;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id l11so3764487pgq.10
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 04:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8nkHElTqDtnvuOfvspVuuEWOLpA6ux03jZaOnyoI6A4=;
        b=V2gq1F2nB6Wc1i47Pje2zgM17bUsQL8FVgoirKZiN/FhQjhm+TJfyB26ECxe51rkNv
         vopJ/KGLv2MJ4rB3uy/zkP2WTnZm3i+3GUcgo3cQeGbO/zkP9WZnPhePPzuKpMhSGxe1
         ft7+IigwCNg74yc9UYk4RmGzYlpKUobTq/HfTzcOJaULKZ1gV0mKADNZlREDa1N/z2S9
         ZxB/ZcsBavTp5s2aNtRRbsLt2EcIJM2Y1OEkzGWhVp0Q/LHf/djhdopL5nbP6yasvbGA
         auIdH6R1akwPG0i/QuGYILOaxDrlsNf4J23w3rcnbID+ALOqUx7VyBtTC+4E7o+fjYIB
         og/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8nkHElTqDtnvuOfvspVuuEWOLpA6ux03jZaOnyoI6A4=;
        b=Nxsv4H1uWwz8DkRn6yUlCU++Lwf4P4enPeyPKeOcJ79pknSx4xN/Al+G8Ozg67VfXa
         aRa9fRYDcC5frs4A5BHoomqWLY86aweK/Yib16jEgPeX52hjfZxAklsp5nQ8iqGqL03A
         XO1UkBNNfa3vGSX84g8FYfvGQX9UFuYNyzl8yaU3y3/NdJ3pJUKg+nfNSZ6qufLoaruZ
         FEz4ww/cjGW16hHekzUrXE29llqM6r2fVBryZ6bBGMcoQBVO5XG36P/wM0DUYTuNZROJ
         Qaki9bMks2XDwvALoN4pDu5SzbQe1+ZYnqZhibpw1PKlEO0aKb8fD7vecNrDmbxUQNxu
         Y56A==
X-Gm-Message-State: APjAAAVo8J5byGZJAYNrKiLG914QGXBbVfbSlu3RLSpgUcoWuPdvUD7H
	vHW2u22/ljel2aSmuM/wc/TjEVNcbMg=
X-Received: by 2002:a17:902:be09:: with SMTP id r9mr19969062pls.189.1552302985553;
        Mon, 11 Mar 2019 04:16:25 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p11sm23586700pfi.10.2019.03.11.04.16.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:25 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/7] Staging: rtl8192u: Remove typedef for struct _bandwidth_autoswitch
Date: Mon, 11 Mar 2019 16:46:01 +0530
Message-Id: <20190311111607.28766-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs bandwidth_autoswitch and *pbandwidth_autoswitch of
struct _bandwidth_autoswitch.
-Change Structure name _bandwidth_autoswitch to bandwidth_autoswitch to
maintain Linux kernel Coding Style.
-Replace occurence of bandwidth_autoswitch to struct bandwidth_autoswitch.

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


