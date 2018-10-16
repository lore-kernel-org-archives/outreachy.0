X-GM-THRID: 6612859760937009152
X-Received: by 2002:a62:d284:: with SMTP id c126-v6mr10047340pfg.21.1539676394343;
        Tue, 16 Oct 2018 00:53:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:46e:: with SMTP id 101-v6ls10970346ple.6.gmail; Tue,
 16 Oct 2018 00:53:13 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62/aSN/Dr4SfMG8qLER+OO7kNz1pR4UmeXlWmqpT8ufo5p75D7ZReGJa0IhmYEJh72UEoku
X-Received: by 2002:a17:902:7d84:: with SMTP id a4-v6mr8433918plm.48.1539676393635;
        Tue, 16 Oct 2018 00:53:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539676393; cv=none;
        d=google.com; s=arc-20160816;
        b=RLSDUntJir3SuhktM7expadlhNvgsEyVsk0o7NeodzPzao2x8ekMRWDSGbsQxKA3YV
         zNW+Sai0kMqz33CPS1Fxcb9Vasm/GTlRUF5SeIm/mNT8Dmbt6dvW24A2LbBGpUrff4rt
         Wf0gP/nYDGCeZz1XXIIzSETgV0PK31imk5k3v8a4pNKBFOPdEDqQi6BwehWIzIQOWLWa
         QjAuXKXctSW6rCOaDIh21YGs+Vwfz2/DHL8AHQzyiuUA6ne7NBRMApYbk3HKh2f7tAOl
         juIlhgE2ydWtZNBLRBsCAR3AYK+dq4U7QhP+iHDOkEnOalOdZjg1QB5rxX+HrhnHn1Pb
         bxFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=rRpLPsA6PKb3+jd98D0wUcepysA8IW3nxIVg1H5h0AQ=;
        b=cBk48R3rarLyJbd8TVWX2DVArnpnl3qq+OzMvH6W1xsJMk1uISlgnkyIEjEJYPFEaM
         NFYEMIgYAoDB/Z2Ho0hqbnjzEA6QvCWzuliAXwimj+GU9yHYfWvEIpoiiiXdzRPHy15B
         28ZLitTLAMgglBrtDpTLwJujcDyqiX7wku6QgfHZTfjtSoyYWSPPsyY4ccLdHVJTkYuu
         a5K+/0QeiH8UiH1s/XxUFJmGUlNydX4PXpxtdqt1m2t/ivWok37q+as71+0RUXccT7WZ
         wp0KLsrk4KLyC7z9TV5whq5vTWAO5zcSzKfPoJ9ZP2gJ9aXDcbfsMpo3gzr2G8BtCXvG
         I7Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ViOZ9mNh;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id f87-v6si621662pfe.4.2018.10.16.00.53.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 00:53:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ViOZ9mNh;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id v133-v6so10452791pgb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Oct 2018 00:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rRpLPsA6PKb3+jd98D0wUcepysA8IW3nxIVg1H5h0AQ=;
        b=ViOZ9mNhsezt2n0Nf5JZLvXVRYJm36Lj+JN9vF2eGbsYPqCHK4QzvCCeV2la6P0l+F
         Rs830b/ozmhMZmKmZuVf6pxeeqjZ7SFgf4+sK+Lq20ooFE1Z8wjXle+3y1gsUx2hITuF
         OHIzfKZ/tYyJnW4HuAI3PvsygdSD7puBhsFYgV6O2278adqGjgEBviJSKBqqmh2pMUqq
         FqE3gTSPgwbJajpZymlx7r8MDW6wmIot31Kowom6Qc+mDQ2XnZw1jEmVgRNo42eHLKae
         wVru+ZD2ssAP8ya+xPKUGWvrUKRmx3nfG/ey72Dw1N2QFV41rRSMfYF4RCf7WL3uzIOT
         optg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rRpLPsA6PKb3+jd98D0wUcepysA8IW3nxIVg1H5h0AQ=;
        b=UlXxPXOtGhBg9fJ5+VGmP2H7/rmfB8v2Ck95mHwwZM9pf1aD0DsNK/OtdLN1wPUYXG
         vIjFYmzXF+gN/kgZyq+BLxG8JdQM1K8hecDfz6hS9Sttd5UPKPtH800KN7AV0M/EQWI7
         tfohxLH7Rd8An7EO4OGkNaNCuzotqiZSvStSKy/65mG90ntw0Epe3SbyZ0PYXF8VdczE
         jf+P74GjLlTltcQfIXInoXWul9jmzhDHqQUgNz1kgky4JhXWYgYA1VYmEfhbPRLfHFHH
         sj+B+liw+vuS7/HRytvRjdIQHZieutVaZHmWZHRE2VmJ5F25Pwj9rmMXwmnnNk3KV6Yr
         pU8w==
X-Gm-Message-State: ABuFfognTDKVpxxdLSg5kZvV8yXfLw5kfhaVt7D56j4q/I8fUp6bAbPc
	tRokACw2uoK4OlHYUvIxmbye8oPs
X-Received: by 2002:a63:b305:: with SMTP id i5-v6mr18894798pgf.46.1539676393294;
        Tue, 16 Oct 2018 00:53:13 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id j3-v6sm12123393pfn.175.2018.10.16.00.53.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 16 Oct 2018 00:53:12 -0700 (PDT)
Date: Tue, 16 Oct 2018 00:53:09 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: Remove extra blank line
Message-ID: <20181016075309.GA10445@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove extra blank line. Issue found by checkpatch.pl.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index ca030d3f609f..065bce193fac 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -191,7 +191,6 @@ static u8 read_ie(unsigned char *bp, u8 max, u8 *body)
 	return size;
 }
 
-
 static
 int get_ap_information(struct ks_wlan_private *priv, struct ap_info *ap_info,
 		       struct local_ap *ap)
-- 
2.17.1


