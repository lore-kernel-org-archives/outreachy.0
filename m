X-GM-THRID: 6661092310784147456
X-Received: by 2002:a17:902:bc49:: with SMTP id t9mr5765713plz.70.1551106706813;
        Mon, 25 Feb 2019 06:58:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6948:: with SMTP id k8ls7133881plt.7.gmail; Mon, 25
 Feb 2019 06:58:26 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY7GQIRJuOrJzz6ofjq7csutMeaTwUAUDzsyMuXo5hlooqKkZeeaz/U3/YgE1M51N0+fZWu
X-Received: by 2002:a17:902:3225:: with SMTP id y34mr5672543plb.90.1551106706308;
        Mon, 25 Feb 2019 06:58:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551106706; cv=none;
        d=google.com; s=arc-20160816;
        b=qp8HfxG6AHChW2upBYeoq7UZQtc9jzhmU+TZuibyfLFXom6ZKANJT7+Mq4r4VEbJ9t
         UtANhrYIXwDg+sNcoDtCgvnUGYzqfLmu07AAy362Wwndpbf2rUkM+RECnCWh55Rk7iHp
         yTwbh/LRv+aQQmOj1Z1R8efh0dy2baNecCX44x4Ep+kPqhSkG08L8BLaw99h4/MWCasn
         erdp7grZz9SBbr9R+0C1XTDcoyc6Nh4f/luTNuuKAzv++jDkPKEetGqTsnEqpnG1u/s2
         ULQGSBRFRZ80rpMPhr/4dr2zyHAypsBj/jjV3x1hGA4Bpcx0oeoUOwm2oNDuoLcRDdX5
         RWsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=9CNS1EByQdISyJaVKB1BHfV0c+uSrG0QJg71VXeJXCY=;
        b=a5PVcYYWyDfAChoAiO/V3UZQGXvGh+hoqpN27XVMU0cHh1ImlbYoAERctjcBoVrZQR
         J3r+b856rLmLsx7X/EdMhpYT8SmSbxJW01rytTno+vdvQ+LVh/UGvTNQ7tt0kJd9pH3T
         ROuQf6UfdsKTEsoUVjBmvo3/zukvLbQ2MW1iJnHvfetAmiVTcRTPs+y05HuG+ObbC1C0
         I7AmnWaZha9XwA6aDzTH9h96u0bYSrmDCQap/3FNHKVh8hEifLMLS/a2tnDA/ndX6xDZ
         2cXooa/2LOv5Bmv+TCw177GgGLm2SrWugseliVj6LPhI1F3FVMCLlTgMh1yE2UVEvz3M
         o93w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jyNOLqnl;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f79si590457pff.4.2019.02.25.06.58.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:58:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jyNOLqnl;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id n22so4627951pfa.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9CNS1EByQdISyJaVKB1BHfV0c+uSrG0QJg71VXeJXCY=;
        b=jyNOLqnl9bB1ButS07Obiz2iuaMVn1kITkebOiZuCvNbQcBN0ljqRSb0n4qJ6eIP/N
         efOh145lcVqrqkR5hv+ZLmjoc69FhClXISbqge3fwbq434dXvtMoVtafpPhoFC1iSvh/
         9/+p/02XHIcucyY4QpBGLOzUis9a3tNCbU9HtGU51dQBUuVFEAuMGxgbh8ypeToRjxEs
         fdUeizyhKFgFqF7IDsMX1W62HfrEkCB5BHQH6L3GuNeejp2ZSBuXKWn15hCqoOk2u6WT
         goKErV9IPxuzXXSguwxFfPtWjgiQNQFBhyN8Rreu0LeF7nvw5Aexyj5bKe9g9C5+q557
         9d7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9CNS1EByQdISyJaVKB1BHfV0c+uSrG0QJg71VXeJXCY=;
        b=M0g1H1g56kir9QVLI78arz618Rqt7ONUtbbd4naHBuXV0OT46+33NlR6WGi2bWvaDp
         7Lokz2E/h4bLUEcQqABsl9yZJtkowzQyvZwKpiTVb6Du+LRimjMbdIIPwQTlLeNXTaBb
         vrpnA/XFanT1kT/AW3hjD83FC/FLtXnM53IN9vpJ/IV0e+p/5G3uHKF5KqacmqsgFEhV
         nW5HIjRnY/O3R32uVzzIOieiO6pn086XAFHvgFo7PDpG6xJcpdrGZngVsEYw7APeX9pb
         cDqX+O3OW8QaLz1drnzIBkGFXcjHFolnPmc0vXn42SJ9DUZYGSqVeShrASSbfjkY/FQ/
         8pVg==
X-Gm-Message-State: AHQUAuaoAWuU5AUAtX4GN0HvTtgYLeGjARKf67HZA/kCUEdUpw7RI5Pr
	JplCbdJXYgcNzfXKhs48Z0yPbRJdI60=
X-Received: by 2002:a63:f412:: with SMTP id g18mr19550904pgi.444.1551106705901;
        Mon, 25 Feb 2019 06:58:25 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b1:6abd:a897:24ba:190d:c029])
        by smtp.googlemail.com with ESMTPSA id u18sm25414039pfa.176.2019.02.25.06.58.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:58:25 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] Staging: ks7010: Match alignments with open paranthesis
Date: Mon, 25 Feb 2019 20:28:07 +0530
Message-Id: <20190225145807.9255-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Adjust parameters of "netdev_dbg" to match alignment with
open paranthesis.
Issue found using checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2: commit log modified to be imperative
v3: commit log modified

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


