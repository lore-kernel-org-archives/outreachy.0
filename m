X-GM-THRID: 6338844661403090944
X-Received: by 10.28.61.214 with SMTP id k205mr101996wma.15.1475911339471;
        Sat, 08 Oct 2016 00:22:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.161.139 with SMTP id k133ls135273lfe.17.gmail; Sat, 08 Oct
 2016 00:22:18 -0700 (PDT)
X-Received: by 10.25.203.193 with SMTP id b184mr1488740lfg.5.1475911338837;
        Sat, 08 Oct 2016 00:22:18 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p199si455674wmd.1.2016.10.08.00.22.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 00:22:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 123so5958183wmb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 00:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oqssIBnX9/VhCaD923qaHqxN/iODX3V+ansFPM2IKuQ=;
        b=J2n95/OQveN6Ta4ZpQSLpBZpp2XRs0HUQuxgDauqKbnOfclyYLLWWAvFtVVKbz02gX
         YAU3/LGpcXryLZ33Oxvt6vMjDTyNe1zrJyDDQagyfwO69TN6/VBkezjYnoxnjBXW6tys
         7FKVTRd1ePlNsEi9NjAddkFRT+UJgv1cDjT8RwYLdfYvZACqb69mmZshTcDEuimqISxI
         UPJ9T6FjO6/bwTaWywbyHcUc4cYCXZanY2RU3X/jibJPEmGl9iVqzcomk+tiZgwaw5Px
         R7was0lph0SaiQNUAMaMUZFdH+u7Bn8BGYiHq3+OYvu4JyuxfJJbOky2vCERMwTt419s
         PPNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oqssIBnX9/VhCaD923qaHqxN/iODX3V+ansFPM2IKuQ=;
        b=E2+frs+RNdaAeyVy2tAwINLznmyVGXdiXH5gx0IRIgQraLeeqmJwb79aAuGSHP+hqC
         9glE0cSkcfdAylBilc1E2RyGb84T/XpLIwbFdUuV+qy9KFXhDXT0LO+4wr1s/NxBfQoW
         ktJk+oXazhQ0VTPLazPpMSVeck1gxrp8PLAc0+xdz2RTRtsnVeAwgO41NPgNkwGTmBJF
         3E/S6rcVfI8Aih5vFFEG2+oHPCr+xDymW9htVmsVs6IfIyqMzbnBFVALnrDBHFSorrZY
         My6gUFXl89E5O1F4MzuBsaKlyLjxmFnosWBnwf2FC6wZGXRfhqC0x17EZaYMMRwIxuMx
         x3Ew==
X-Gm-Message-State: AA6/9RnPEs5tbb4DksjNI6/hVcj49E3ssANMLgjDKSB/j1InXc4D6CODQZFRUS/M2xh5Tw==
X-Received: by 10.194.89.71 with SMTP id bm7mr19092440wjb.207.1475911338425;
        Sat, 08 Oct 2016 00:22:18 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id uw3sm23612305wjb.21.2016.10.08.00.22.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 00:22:18 -0700 (PDT)
Date: Sat, 8 Oct 2016 10:22:17 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: ks7010: Delete unnecessary return statement
Message-ID: <20161008072217.GA3480@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to ks_hostif.c file that fixes up a checkpatch.pl

WARNING: void function return statements are not generally useful.

The 'return' statement is not useful here, because it is not necessary to be
forced the exit of the function.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- delete unnecessary information from description.
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


