X-GM-THRID: 6661092310784147456
X-Received: by 2002:a5d:9b95:: with SMTP id r21mr9147603iom.38.1551105069767;
        Mon, 25 Feb 2019 06:31:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls3468076ita.0.canary-gmail; Mon,
 25 Feb 2019 06:31:08 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZLcOloFUmqvIZv/pWljd5lWJ8RbefMzJnzRlXPYQkBs35l2ZZ5BlYc2gb5MZRy6y0Wm5HW
X-Received: by 2002:a24:75d6:: with SMTP id y205mr7948023itc.36.1551105068747;
        Mon, 25 Feb 2019 06:31:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551105068; cv=none;
        d=google.com; s=arc-20160816;
        b=FVdQqMHU+FqzAqhdM0j9D0R8XxPVL3G+Ne3WI24dGjHl2w+4EVj4J4NspM5tyoU/73
         vrxHKvM18LDVYDs66J3XkJn5LE//i9vAPUa28idogiaz17Z1xte9Sr2kr2H7lrZkcbuw
         3+qnubNYc//ZoLtrdZEQSl2O7oGSJss9RBC4z1a8im8filkaTdWD2sQlo/xMFrznV7N8
         4erF55wObKXj+KPKwRRHJXJI5L8bo2e2S3E61GFKP4ViGtATBohzCfWsJRx3VCum+b8r
         MA2uz5C5nvy1REOilaj/C6D4ly6+4hzM7oybMJ7bubt2Ouv90QM88ywfeg7pz/BkXzEx
         bpbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JzYFYJCg0W9gaL5qSjIrcspoZhGq839Ez/sIIB8DFCE=;
        b=d5wzzhpN65+FP7poBnAH86zd5QQI99Aul8IFcvYKNCb1QEcYIYu+Ahtjx1DxkTGXd8
         dbbHDLdr8mlJS7sfxoP28FQ2x7KE9KnocoEIyIWb78l+BDiftYCH+PPTcvInxKKuMchh
         6n7FsZ2i3BoiSXSObfxEMI0PCU/3R8G1jJvt4zpaOWCeugVkJmYvIhsX+J6bFosyjjhJ
         rDYGB3uNURhBgylFy60bQiiCa9rB4vO1w1DkcfkhDxzuQs3JkE/f9P1oOY5jjkmSjcOG
         zCyZc+j9T40SxHgY3YwBEwukXPqe2rBRjfOr8IJFHNFUx/W8a3t++3KFwxdZscG8lQOb
         2sYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G4XJQEvV;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x76si509367itb.1.2019.02.25.06.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:31:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G4XJQEvV;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id i19so4603647pfd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JzYFYJCg0W9gaL5qSjIrcspoZhGq839Ez/sIIB8DFCE=;
        b=G4XJQEvVnnbaR7GlZB6hoF4QFosCzxEv/htZL3sK+pIL0YQcQ/suKlrcKQTOMk9Ork
         tQ5cOdGXvEg90mu0/uU4x1/A+20qD1FXhlpTVxVGgSuWaA+TGnDnQhb2SecENGUv/y7d
         NS4U8gdPyqOkSH7fyJOEjR/1PTsEDc+Dt+FPi72otydpWG6/YlthORDsmrbY4Ytenf2W
         dbJGNzoOfAhCuwxRdcRp9y2/cw5cW0kMVg1pM5oScCUoOc1sJgv+QfqK9QaNfrev+X9p
         KgSFzb0wLnl5w60RN6qMkNT17tf2OvEC4lISScoua803uOtiYmrooHEbzVFUKJQGvSb0
         ZMFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JzYFYJCg0W9gaL5qSjIrcspoZhGq839Ez/sIIB8DFCE=;
        b=lYZByeEjMnUTFii+yHRB1I359NZmVXOc+VBfKVsAw0AzE7WVQyxq9SHRMwXihSq/6a
         f69/zlbq2evwZuHzp7bnogfsygbFm6YdFIyqClzm2/kxtnPSXSXRyCEZU5x8r5dKVRIB
         n6aHO99lwyDQz0Y+EkldZqXr4l2Uo4GpqwAJ3xhCrYFmKV/oo35IVC2cqmGjs2SvwSDq
         gTqhQ6cxm+zOLvexCmdzY6pNChDg82SS4n2TQAC4vWivjn7iWpvrNxU/uBB9WwFieoFU
         NG7h6jDmmHmdnP7QU0AV7NM3158SBBJFWr3osCC7Aiq2h8I2OEQDjlcVMr6eHj//VzZ2
         pTRA==
X-Gm-Message-State: AHQUAubGH1PSa/0od8iyld1zDvAo56ssDJHan3+bmNw+irxPigrBIuqr
	xTbviYmt5wpuE0cEtVJ6hT/T8+B39dE=
X-Received: by 2002:a63:b447:: with SMTP id n7mr19420605pgu.401.1551105067740;
        Mon, 25 Feb 2019 06:31:07 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id r3sm22528654pgn.48.2019.02.25.06.31.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:31:07 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] Staging: ks7010: Match alignments with open paranthesis
Date: Mon, 25 Feb 2019 20:00:52 +0530
Message-Id: <20190225143052.8331-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Parameters of "netdev_dbg" are adjusted to match alignment with open
paranthesis.
Issue found using checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2: commit log modified to be imperative

 drivers/staging/ks7010/ks_hostif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index d938b0997a53..e48fc36b6ebd 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -730,7 +730,7 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
 	priv->scan_ind_count++;
 	if (priv->scan_ind_count < LOCAL_APLIST_MAX + 1) {
 		netdev_dbg(priv->net_dev, " scan_ind_count=%d :: aplist.size=%d\n",
-			priv->scan_ind_count, priv->aplist.size);
+			   priv->scan_ind_count, priv->aplist.size);
 		get_ap_information(priv, (struct ap_info *)(priv->rxp),
 				   &priv->aplist.ap[priv->scan_ind_count - 1]);
 		priv->aplist.size = priv->scan_ind_count;
-- 
2.17.1


