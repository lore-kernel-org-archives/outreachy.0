X-GM-THRID: 6949621312143753216
X-Received: by 2002:a9d:4f05:: with SMTP id d5mr17585315otl.88.1618084803585;
        Sat, 10 Apr 2021 13:00:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:480d:: with SMTP id v13ls997797oia.5.gmail; Sat, 10 Apr
 2021 13:00:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwoqnImkEnJ9rSNOOsp9GRfTDL1jmW5K9vSPQsLdhg06US/oH8En4MnCniDqXeNlo3OGb2/
X-Received: by 2002:a05:6808:91:: with SMTP id s17mr9600429oic.178.1618084802614;
        Sat, 10 Apr 2021 13:00:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618084802; cv=none;
        d=google.com; s=arc-20160816;
        b=qWGdYTjJFWlo20nE/Pfme8pkF5kBJgywN4/b/+yi2cWN4XDyUJKy3epGlENm9lyC90
         JM7cKFaKhszaNw8lMD9DREvLjaPTR49vA2xHDPUif8EmY/48Dw7FhjGEQL9ieIJupeqd
         wxgTtuRp/r+F/5NhPVGyx8LzKAHYeDKDzo9va0WzcaaR0kZReI+ySz4lgHo6sMOykltG
         VGcTkbtC1JvaX18+mGO5mtvnQIJx4fP3XRXMMU9K64hSOxT8NEIzlJOKoPlpn7VoZ3uU
         aHFld+2igz71FuL2KNvsxx6zGiridU3NXKdmgXmTr1jMHid9vqxj6+XbDBUpRwBhDwrM
         jUzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=8qqSBlwS3BjvcFhE+2QmiRSvqs5dG4808gdiJ8MHloc=;
        b=OfOrO9El6OQbwkbs/F8fAOa4aKwcpDvu5vjV5nLWfbCt/s4gQXs8n20+lu+mpc9Dix
         Tpqjs/O76loAT+7/n5H5GNL955NDRS+rZr8AZ1CAKQyJ0mSh+a+Z2VIesWwcyYoVhReI
         w2j3hv7QhdXM22tobkiSGZve3INdWijzMAkM5y7W48KwVMsRd+2kPIbzT0bpl6DG8mrG
         72jc1iYszRz7zOnKZwWAweTyrF53o+XTt1aZ0z6/XpyEif0SgVkYJNwhR2WztI5iU3Hj
         LqsM0huVH36Ar9BntUjJVQ7u5HSVYqKv0RcXNwwfTi31QsKlmEKUiPd6osu0RcWpfvWI
         Yy2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R9E0t8jb;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id x38si518843otr.3.2021.04.10.13.00.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 13:00:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R9E0t8jb;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id p67so1585255pfp.10
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 13:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=8qqSBlwS3BjvcFhE+2QmiRSvqs5dG4808gdiJ8MHloc=;
        b=R9E0t8jbEk8pEznmH16EJC3SE9XWeFJKEto+B3bLUgFg/KNcTYMpQmo5lVhdsvQ85B
         tYNRDvqslfA/C8KzTBPg5ppe2T100rPX/fzVtEKTTDmbluutulvnr+kYmsSM/KVg2Dqz
         WT6997QdO0bElsR1Z4dCJoDOdV/sBmL2vWy81JUG5PfaOTSETIrrNPpQxpSLB8UVe0K0
         BoXFgK2YWsYC5TwHTeo1/IW7OKbza3zuFXSXYAtRUYbgsF2fmVaLFrzb+4mUfjXWG6fx
         m5R/v+TiDuw8t7Z8HazpEI26y5iwqnXYW3gYbDOfLVljMJiPWzvSup+4cn9EVLwMSUgn
         +xlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=8qqSBlwS3BjvcFhE+2QmiRSvqs5dG4808gdiJ8MHloc=;
        b=C4VHDsgBjrq6aJC49j9HP6yLXDJNGzESkRhytYqhiEZYAuMJEkzU4zqZQivF1ifgUG
         FJr/6FyVt6I+NtjrwPZRdKaVSIgfKEU9hQ4wFB0qxceuDQ+BD0NiLYS67aNvC5w2Ax1H
         ohYVY5/0Ba4Cb1LAG3KQxjzwBV8VFDum5vaieLRRuKmMd0JAEsbsbwF6M5Nzh+IHmp7T
         Yy9qtQJEG7u102NxeNWtoBi76cNv32zppI6b4CbwZYSoZjsujB5Uu3/y7m5hCYrFSAEG
         tAlXfonDjTHxPlvyOBN5QP7kb0cR3vyzbiLqGWq98Y4/YJ9pNOSV+osERUykt6hyqbbH
         atdA==
X-Gm-Message-State: AOAM532DFoCfYuDxZ57C/3FdvLlr67teXph7hiqYknsWibbD5dEi4lTO
	+guXoRNXBthBxj2oIwqE8kI=
X-Received: by 2002:a63:c111:: with SMTP id w17mr1829524pgf.127.1618084801801;
        Sat, 10 Apr 2021 13:00:01 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id k69sm6554464pga.45.2021.04.10.12.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 13:00:01 -0700 (PDT)
Date: Sun, 11 Apr 2021 01:29:53 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in, linux-amlogic@lists.infradead.org
Subject: [PATCH v2] staging: media: meson: vdec: declare u32 as const and
 static const
Message-ID: <YHIDufKhTEeuxyl5@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Declared 32 bit unsigned int as static constant inside a function and
replaced u32[] {x,y} as canvas1, canvas2 in codec_mpeg12.c
This indicates the value of canvas indexes will remain constant throughout execution.
Replaced u32 reg_base and u32 reg_name with const u32 reg_base and const
u32 reg_name as it will contain data/registry bases to write static
const indexes declared above and will keep track of of contiguos
registers after each reg_base.
This makes code look better, neater. It improves readability.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/meson/vdec/codec_mpeg12.c | 5 +++--
 drivers/staging/media/meson/vdec/vdec_helpers.c | 2 +-
 drivers/staging/media/meson/vdec/vdec_helpers.h | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
index 21e93a13356c..861d8584f22f 100644
--- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
+++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
@@ -65,6 +65,8 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
 	struct amvdec_core *core = sess->core;
 	struct codec_mpeg12 *mpeg12;
 	int ret;
+	static const u32 canvas1[] = { AV_SCRATCH_0, 0 };
+	static const u32 canvas2[] = { 8, 0 }
 
 	mpeg12 = kzalloc(sizeof(*mpeg12), GFP_KERNEL);
 	if (!mpeg12)
@@ -80,8 +82,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
 		goto free_mpeg12;
 	}
 
-	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
-				  (u32[]){ 8, 0 });
+	ret = amvdec_set_canvases(sess, canvas1, canvas2);
 	if (ret)
 		goto free_workspace;
 
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index 7f07a9175815..df5c27266c44 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -177,7 +177,7 @@ static int set_canvas_nv12m(struct amvdec_session *sess,
 }
 
 int amvdec_set_canvases(struct amvdec_session *sess,
-			u32 reg_base[], u32 reg_num[])
+			const u32 reg_base[], const u32 reg_num[])
 {
 	struct v4l2_m2m_buffer *buf;
 	u32 pixfmt = sess->pixfmt_cap;
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h b/drivers/staging/media/meson/vdec/vdec_helpers.h
index cfaed52ab526..ace8897c34fe 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.h
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.h
@@ -17,7 +17,7 @@
  * @reg_num: number of contiguous registers after each reg_base (including it)
  */
 int amvdec_set_canvases(struct amvdec_session *sess,
-			u32 reg_base[], u32 reg_num[]);
+			const u32 reg_base[], const u32 reg_num[]);
 
 /* Helpers to read/write to the various IPs (DOS, PARSER) */
 u32 amvdec_read_dos(struct amvdec_core *core, u32 reg);
-- 
2.30.2


