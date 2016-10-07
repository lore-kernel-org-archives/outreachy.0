X-GM-THRID: 6338844661403090944
X-Received: by 10.194.172.131 with SMTP id bc3mr1434112wjc.19.1475877282032;
        Fri, 07 Oct 2016 14:54:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.81 with SMTP id m78ls133758lfm.9.gmail; Fri, 07 Oct 2016
 14:54:41 -0700 (PDT)
X-Received: by 10.46.1.161 with SMTP id f33mr427536lji.8.1475877280828;
        Fri, 07 Oct 2016 14:54:40 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id c74si235086wmd.3.2016.10.07.14.54.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 14:54:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id i130so4753383wmg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 14:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QASLsvZ6Wr9W9Siyh8ImDH4TspkIo9ruMeYXkLTmnaI=;
        b=kE2tIkKdfnIFhlu5BuZim+YAscbzuNLv31KXogoIUoMoQN86hJLHykedlrSn1y5AMV
         MUJ1YrHbV6u3A5op06DaBMeRIREox52izGVuXvSPl6PZYNOFtV0cmYJqgL+JS1u+pMn0
         tKBWVpRR7dRPhVkUwCN4Sa5rKBSJyWfmJW+6b+n++Xmb9ADytCIClBoLozjn2fjsnThs
         EYgd/qljyZTKsWm03oqMmPkoMAu8yMx828IZlcBafmtoAesBGND1/hfY40MkvgHEiPtE
         YnO/oIdDKRvitQnOVhCYmDRppfd3wGO/xV0dg1UXCdJaP/fCndY8pdEKodtcvM8/BOv1
         +Lzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QASLsvZ6Wr9W9Siyh8ImDH4TspkIo9ruMeYXkLTmnaI=;
        b=AnY1vgC41Lez23d5c4tH3O/KDhdyX+g75ZniAX8dF5r1m3F2IcyEYPCQXALRbDpPfn
         GWoTq1J3sh2/iTedVAoR2q2BvuDdSUYWekH5Mn9zdzbJ741zK603ZOVM5SzMWBFtxJnQ
         6koP1me6MPu3CMqXYnuG/nEUL06KTHJl8D+DBXBdOV7Cv8Sk8PNRwXEEbrjBqc4vq+pt
         x6jjKjTGFMrIJyPD1VJZG0rm3s9R7mWaW3mu0/wBriIqmMO4cm71vfcYRrex/lGicFbT
         kMMFkIqTzN5428rpeyHWW9gBd9eOQ7RJLdq8BV10e6janWSsifvhh2B6pdTbcUwzxqp4
         LNxQ==
X-Gm-Message-State: AA6/9RlCBCKyAiMM9ZpalpBguab9cupnp+F924Fbod03L2AytFfdk6qTameoxIsfDfXCEQ==
X-Received: by 10.194.58.175 with SMTP id s15mr18204355wjq.97.1475877280600;
        Fri, 07 Oct 2016 14:54:40 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id z12sm4937858wmz.11.2016.10.07.14.54.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 07 Oct 2016 14:54:40 -0700 (PDT)
Date: Sat, 8 Oct 2016 00:54:39 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ks7010: Delete unnecessary return statement
Message-ID: <20161007215439.GA15407@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to ks_hostif.c file that fixes up a checkpatch.pl

WARNING: void function return statements are not generally useful.

The 'return' statement is not useful here, because it is not necessary to be
forced the exit of the function.

Like in this example:

void funct() {

	if(condition) return;

	//do something;

}

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 8798b63..5ae013b 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1933,7 +1933,6 @@ void hostif_sme_set_wep(struct ks_wlan_private *priv, int type)
 		break;
 	}
 
-	return;
 }
 
 struct wpa_suite_t {
@@ -2122,7 +2121,6 @@ void hostif_sme_set_rsn(struct ks_wlan_private *priv, int type)
 		break;
 
 	}
-	return;
 }
 
 static
@@ -2236,7 +2234,6 @@ void hostif_sme_mode_setup(struct ks_wlan_private *priv)
 		break;
 	}
 
-	return;
 }
 
 static
@@ -2337,7 +2334,6 @@ void hostif_sme_powermgt_set(struct ks_wlan_private *priv)
 	}
 	hostif_power_mngmt_request(priv, mode, wake_up, receiveDTIMs);
 
-	return;
 }
 
 static
@@ -2355,7 +2351,6 @@ void hostif_sme_sleep_set(struct ks_wlan_private *priv)
 		break;
 	}
 
-	return;
 }
 
 static
@@ -2413,7 +2408,6 @@ void hostif_sme_set_key(struct ks_wlan_private *priv, int type)
 				       &priv->wpa.key[2].rx_seq[0]);
 		break;
 	}
-	return;
 }
 
 static
@@ -2649,7 +2643,6 @@ void hostif_sme_task(unsigned long dev)
 				tasklet_schedule(&priv->sme_task);
 		}
 	}
-	return;
 }
 
 /* send to Station Management Entity module */
@@ -2733,5 +2726,4 @@ int hostif_init(struct ks_wlan_private *priv)
 void hostif_exit(struct ks_wlan_private *priv)
 {
 	tasklet_kill(&priv->sme_task);
-	return;
 }
-- 
2.7.4


