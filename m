X-GM-THRID: 6806789560169660416
X-Received: by 2002:a37:9407:: with SMTP id w7mr14342041qkd.55.1584829283058;
        Sat, 21 Mar 2020 15:21:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:56a:: with SMTP id p10ls5666229qkp.2.gmail; Sat, 21
 Mar 2020 15:21:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuDfRMFOX5rh97D9CMLWhhi57c4LS56EQ5hJif+/sLY2mhxiNYOp2LrCQT8HjXDi4IrFqnS
X-Received: by 2002:a37:5cc2:: with SMTP id q185mr13886144qkb.488.1584829281919;
        Sat, 21 Mar 2020 15:21:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829281; cv=none;
        d=google.com; s=arc-20160816;
        b=GR35ZLwGYbppZX9AKxvQzrjouFbu00kwTCb9qQ8UJsC5Pur/tXEnGMRI8NQdElDz5U
         4P27q7/G2BiNqg0up3ArPd3hQxB7jLeQAxW1bExNFx6GCFiQxiIjLYs61FRTYM/LKk4j
         DsvWLZ6gyvPUkmshmsh//6x9QreKchlbKd7aV8WbD2ZpgT3WYfTZX+91vEfRw1BNFi/P
         tZH7gcPIQnzrl1gF8dpPqKkedGnzy8o/qpyeucNSKr9uRkqBzYTP2uUhCuAx2VxU3X8C
         +oin4b9V+Nibs3wmHzkh2bp7gGEAXfqQ+xe9Yamxrc6hfM2ImrNwiNX5CUnSJKQHeVsb
         c/yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=YDt1O5yGZ6i7riNKjtcBfBSe+BjizbdVsG1m7rWg6PY=;
        b=Tsomf8j2jZ+Cg80G/Vd4HkSriBTSYxufzbbpWjeDYTWKj2sv0/5/dG5VlnVi4mXd2a
         dV87lrxu51r/HaqZcGzoLViPq3ei6NncowTf1tnJxa1mcFkmTUzaccj5mGfc7g3jrCTH
         OTzve9+6WQg9VbXNdZuSM8Z4S/06Y+EiNucAnt72RgVBaBE4SqesUWQwnGEp2aNmppj5
         5T3ERRcCkWNymOjgSAuQLOLmvBvsmo9i1UHsYk2NquXfrD0071/Z28HLo6/xqyDpt78i
         KmkTAbKWrDu7Rm4IKaHRp5kXhqX+LDHsrbj4NQVPNUX1HiIivUF8WY/9ro9pBNsS0CCc
         Uw4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lWH71JTF;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id x11si582553qka.4.2020.03.21.15.21.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lWH71JTF;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id g6so4146003plt.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YDt1O5yGZ6i7riNKjtcBfBSe+BjizbdVsG1m7rWg6PY=;
        b=lWH71JTFjmKdK1+WU7n32xi2rrAA3ia70j/TFYjfkM7i3bGTNvL5LQDvKn7kGc/Loj
         raS1GoaViYA5+yZFdhoeL5mpeVH/8Td6a+JiKqg98w8eESkAwGxlij3Bd2CXFcKRvKH/
         D5f4f3J5N9c4bC8Qf6H7y68oLs/tBUxblHULQWksmeWcX55QexQs4TNYOJKXDhZS19Fz
         4N5/ZnPOEyoeGsq+oDXw058zvqlyIde0mJpkWnPa+1JyFIZcvzxa7SZWW3f7csjlWdQh
         s2K+EtHEsdQEkicgWCRb/HkssUG7tGtuUf7pGl+PkrPoDHBdrKCzVMMRGXn5aV0p9uAX
         8v+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YDt1O5yGZ6i7riNKjtcBfBSe+BjizbdVsG1m7rWg6PY=;
        b=gtO3opr2RD0G0jlQZDDNQ9hEUJf9o2z80dxPOSsfL5KC852w2mSyiLQNcvfqO6eKtt
         zDGEErAl2+ITDuQAP/WkT128n3ysK3vZlzqK+iTS1OTUN5Dm0JJ3Adqn4EYMbIynPDlF
         39LTdM0Oob2Vzlr3cf3lG7F+TWOAJTU4hdtFP/4UFwBZrDC7zNhiur3fDz99zGWgM8sm
         qPk4Pv4OSBtPXtC5Fm49o/326iXOOwjs7M7i2wQnRbawycT3MezvBnSgKz2yazPOMg+1
         i4gAQ1ZhOnTzHjfsX+DgkHqTPiS33yM6UDaYcZvArVM2ZeIURNL7zTVTBzOPiIJQBACd
         I0FQ==
X-Gm-Message-State: ANhLgQ0fp4gSF53S4i/SlSdz5PTeN1PXi5v938NmRgwUdhcXVphHrZ3O
	zCgv7iD/fp5xIjVd8f+7JPcsD5GeiPI=
X-Received: by 2002:a17:90a:21ac:: with SMTP id q41mr17311989pjc.41.1584829280895;
        Sat, 21 Mar 2020 15:21:20 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id w19sm8744669pgm.27.2020.03.21.15.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:21:20 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com: Add space around operators
Date: Sun, 22 Mar 2020 03:51:13 +0530
Message-Id: <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/hal_com.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff hal_com_old.o hal_com.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$


 drivers/staging/rtl8188eu/hal/hal_com.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/hal_com.c b/drivers/staging/rtl8188eu/hal/hal_com.c
index 95f1b1431373..ebe19e076ff2 100644
--- a/drivers/staging/rtl8188eu/hal/hal_com.c
+++ b/drivers/staging/rtl8188eu/hal/hal_com.c
@@ -18,26 +18,26 @@ void dump_chip_info(struct HAL_VERSION	chip_vers)
 	uint cnt = 0;
 	char buf[128];
 
-	cnt += sprintf((buf+cnt), "Chip Version Info: CHIP_8188E_");
-	cnt += sprintf((buf+cnt), "%s_", chip_vers.ChipType == NORMAL_CHIP ?
+	cnt += sprintf((buf + cnt), "Chip Version Info: CHIP_8188E_");
+	cnt += sprintf((buf + cnt), "%s_", chip_vers.ChipType == NORMAL_CHIP ?
 		       "Normal_Chip" : "Test_Chip");
-	cnt += sprintf((buf+cnt), "%s_", chip_vers.VendorType == CHIP_VENDOR_TSMC ?
+	cnt += sprintf((buf + cnt), "%s_", chip_vers.VendorType == CHIP_VENDOR_TSMC ?
 		       "TSMC" : "UMC");
 	if (chip_vers.CUTVersion == A_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "A_CUT_");
+		cnt += sprintf((buf + cnt), "A_CUT_");
 	else if (chip_vers.CUTVersion == B_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "B_CUT_");
+		cnt += sprintf((buf + cnt), "B_CUT_");
 	else if (chip_vers.CUTVersion == C_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "C_CUT_");
+		cnt += sprintf((buf + cnt), "C_CUT_");
 	else if (chip_vers.CUTVersion == D_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "D_CUT_");
+		cnt += sprintf((buf + cnt), "D_CUT_");
 	else if (chip_vers.CUTVersion == E_CUT_VERSION)
-		cnt += sprintf((buf+cnt), "E_CUT_");
+		cnt += sprintf((buf + cnt), "E_CUT_");
 	else
-		cnt += sprintf((buf+cnt), "UNKNOWN_CUT(%d)_",
+		cnt += sprintf((buf + cnt), "UNKNOWN_CUT(%d)_",
 			       chip_vers.CUTVersion);
-	cnt += sprintf((buf+cnt), "1T1R_");
-	cnt += sprintf((buf+cnt), "RomVer(0)\n");
+	cnt += sprintf((buf + cnt), "1T1R_");
+	cnt += sprintf((buf + cnt), "RomVer(0)\n");
 
 	pr_info("%s", buf);
 }
-- 
2.17.1


