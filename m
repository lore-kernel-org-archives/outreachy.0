X-GM-THRID: 6616182090813669376
X-Received: by 2002:a17:906:c9c2:: with SMTP id hk2-v6mr101629ejb.15.1540449934853;
        Wed, 24 Oct 2018 23:45:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:69c5:: with SMTP id g5-v6ls1534622ejs.0.gmail; Wed,
 24 Oct 2018 23:45:34 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dBuDPl0jL6kDyyacS/ikw/t8GEeCPMi7/JTivGo5aCL+uba+gOmRh1P6Yzm/j59Y+D471h
X-Received: by 2002:a17:906:25c1:: with SMTP id n1-v6mr103486ejb.12.1540449934106;
        Wed, 24 Oct 2018 23:45:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540449934; cv=none;
        d=google.com; s=arc-20160816;
        b=j+Bg9efuQdlQwJLNBxbc7C2nOUhmNt/wp9OPC46iRIzkczv7/EEeex5eH6sURbOGbJ
         j1EZvcK6YddGu+aowaDDr4Xyixwv6J2uUMzlw5tSUPvojphE7IXf99NDX/dE/DFRB0uc
         J86uHkgTlmZVCkEquRqN8aw4zLfEJlWP52jCg81Hng9iDAxgnmszyDmdg74gzT4/mCUV
         h6slWU5IrvOqgAKc39ErFg/u2C5brJODgV4u2nGv7jgTgK1fOT90BBKMDzdajmYjfEQ5
         Y8MELliTwpForX1+47NrFUmV2xLZwedMhAIkRdWt4GbqZZu/M3+s5iB7SlXMwToS+nnN
         Y/gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=M72HlY+576YsFO5V8Pbr0wXWSsNiXk4ZuR0R5AmN1xs=;
        b=EfMd4fJSK0M2iQithWwQijguRU+LqEosu953pqPxRp2fZoOhPHC3o8deIh66vMBlwd
         uD8MU0kUBNd3Rmas0yIb7F+Cm57iruZoZyihzQa8pMANLtPd6uvAtNFV3RENPe9XPCQb
         xNMn8+yZMPN1LTWBRVTDrxRExwm8yHxHwKI4i7ljs82VctmkO/j/lIhSSVB6Atr71DMD
         ikkVqhIDs6AD/ECmPK+SV8PEOw8TPpB2aULfc8Mc89NTS+JQyXMXZs0xKl043FButI/F
         68EiJd9tq4JTB5XQl69YOuDwVR0HPT6QePHfjhg1hLTmbdqFp5OHA7qipf0eSzJ24Mhx
         YAgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DWxDo4uL;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id m25-v6si158426ejb.1.2018.10.24.23.45.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 23:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DWxDo4uL;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x331.google.com with SMTP id y144-v6so277468wmd.4
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 23:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=M72HlY+576YsFO5V8Pbr0wXWSsNiXk4ZuR0R5AmN1xs=;
        b=DWxDo4uLH0gOi+2L89CMcDxhheNzjCgYlCgtAFJ55YISMOHb65vEVVS6OfC5UsP2cb
         pRlMHDG7MzdCy+5cQgseWlkwiGJ/pGUpCW/2iuqjzPzkn4y5oS1rSZR63VZ/J6xtnJz4
         m87mSJedxzbl+6M/kFh3D6e71W2rbTr1FB8rlWda59ZRsH0B+RPCGfnPz5HLk6wQucHa
         lE3rJvsuEen0buzzS2oeRkuGgPJnLk97q6hPGTHGb5OhW4vkPviUi3XVlyeEMz8ySIAU
         3+jzFuX62xVoz09xg5KEHvyM8Ul7IM228m52GEI99wGA1ccQ4eOdMyoQPwOBKG93rztb
         eOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=M72HlY+576YsFO5V8Pbr0wXWSsNiXk4ZuR0R5AmN1xs=;
        b=MpECZLSsv51XqEEtjPPq3YMX2w8sIpe8vmX+3bvuqikFbOpZ31h9XdHhK7agujLZqi
         7mzjYl1XMtiKHJ3s/70d0deVd77Q4uP/KhgDLYKeSCLcszsDmVMlyK1hDHAHKv2gQEyG
         Wyj8msVeAwfCiLNwsUdc2+Ab19dLEch1DjzIHQBXu2gsTXQPBNR0gWhWwPdYVfTs5uWb
         g7VupD9YMmOBpehPGKUDGhCu1JnDf2iNf9XJxpcvudMlbl5g2enhsMVMVoBCJJ+Kc16L
         YI6bycSS65AIM7g6WOMjM0iI45gY9wfn9G3h0jVzGHX5cq6iScmv1i7TqeVm4p3mdEaG
         1f1Q==
X-Gm-Message-State: AGRZ1gKx25aHLtHAEsPrqKrGTFdvm8Pbsm43WiKFYR8HyMA3G8R1dJz8
	kd7aO24wHbBrQFL9flrWfVo6fgJdseo=
X-Received: by 2002:a1c:af07:: with SMTP id y7-v6mr486384wme.12.1540449933454;
        Wed, 24 Oct 2018 23:45:33 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id 74-v6sm478461wmi.23.2018.10.24.23.45.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Oct 2018 23:45:33 -0700 (PDT)
Date: Thu, 25 Oct 2018 07:45:30 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rts5208: Fix checkpatch camel-case warning in goto
 statement
Message-ID: <20181025064527.GA2018@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix use of camel-case in goto statement and all subsequent uses to
remove checkpatch warning.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/ms.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index a0fcbb83ee8a..9f846e53abec 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -4151,7 +4151,7 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		} else {
 			set_sense_type(chip, lun, SENSE_TYPE_MG_WRITE_ERR);
 		}
-		goto SetICVFinish;
+		goto set_ICV_finish;
 	}
 
 #ifdef MG_SET_ICV_SLOW
@@ -4192,7 +4192,7 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 					       SENSE_TYPE_MG_WRITE_ERR);
 			}
 			retval = STATUS_FAIL;
-			goto SetICVFinish;
+			goto set_ICV_finish;
 		}
 	}
 #else
@@ -4211,11 +4211,11 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		} else {
 			set_sense_type(chip, lun, SENSE_TYPE_MG_WRITE_ERR);
 		}
-		goto SetICVFinish;
+		goto set_ICV_finish;
 	}
 #endif
 
-SetICVFinish:
+set_ICV_finish:
 	kfree(buf);
 	return retval;
 }
-- 
2.19.1


