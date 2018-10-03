X-GM-THRID: 6608122280379678720
X-Received: by 2002:a67:8146:: with SMTP id c67-v6mr1331124vsd.32.1538573363045;
        Wed, 03 Oct 2018 06:29:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:93d2:: with SMTP id v201-v6ls166622vkd.2.gmail; Wed, 03
 Oct 2018 06:29:22 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63pmYukfzb5SG/KoNF6ifvznouJpeDxBHfxa6wOKr+SBOO6B4VGV2lNsaS6e5s81iUspr8V
X-Received: by 2002:a1f:9757:: with SMTP id z84-v6mr1276024vkd.19.1538573362349;
        Wed, 03 Oct 2018 06:29:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538573362; cv=none;
        d=google.com; s=arc-20160816;
        b=QhA7SZxj5Lk7/eurBrr9obRxYhiPFTIcQi1F0Q42wF5KVKfXqd2ZKCcfmnQq3bsOWU
         1fGOCcuMK60OPNOyZjUMR7aKr3RQVBRKMcIEGY/RWc2i6aIG9+/ehd6DMCNqx8Augzs4
         nJ55DJ5qXp6TkKymHEm8B7bfE8POf/sFDU6oTUQWRRSCAUuqu/SyYc7NvlcplYfurPUn
         2u+hy0NkQXtq/iXldU7IKwojNVe6XwEY0GuybOhaWVt1suJzdtaO4mfo4nah06q7wxLp
         JBoLGr2Slea6n+FT5qzkgpD3HI5Sz00nv6+MMa9yPziLZxO4oBf5tdAVpnrx84XcKfGW
         1Qpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=bbCzqYIe9MB5OztHKGIWplG5nDOgpzMAOkRNok8RtBM=;
        b=tcHzoq0Y5Cf2iTovhbsguMtoQ80WntNfqAkH1nqic7igZ/O2JpyPfDvUeoHcJHtKl9
         89JyMYOwwp8ixCOPFxd1sRQE4Zn9+hEjkmVAJCDGSXMB04j2TL98HSM9bmZiajOvHan/
         Zt0efSLQNUiXC0aeBEHZ3srJaR0xwV/3CU3WYNBmdkt1Sbtf/di5QOuB9FUE8blPlPWe
         ssBFtoLLZ4+AC8Soks7UGWq7Qa42XVSq5+7F8o/Xo6NQeNhprbpB4d5P8kpVIGGhM52W
         D7ImMqXixSePp6Q71LcGLEl0t8kSnV3y3GK73Tae9QtxiNJ9Ogv8vbLtP79yEjhUqdIF
         N2iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MuaUX9J0;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id p9-v6si46131vkp.4.2018.10.03.06.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 06:29:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MuaUX9J0;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id y18-v6so1601024pge.0
        for <outreachy-kernel@googlegroups.com>; Wed, 03 Oct 2018 06:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bbCzqYIe9MB5OztHKGIWplG5nDOgpzMAOkRNok8RtBM=;
        b=MuaUX9J0LyD55CwTATq3ZmCJHoV9Iym0mMPzaIvR+Ljw7ppQyAgBHapyf16E2AD313
         rK+LGvHl5+UjPRsFLFKxJYTf07OSqB4ViV85rvWZu9um+m7/++Q2ACc3JXWMa/xbYZAl
         ZqSt2Anr19iM1kEQ4cPfDU0P/YgUhsqTwn2UcYoEUaB77bN6cUUlQ5JTMUxjQx8d2Xnr
         F9/rv73nKZkjtEYZZ5nojRUdW2NYlEiWW2+lOFRFBmtsGgMc6EfFDJ0eLUyx0iXO6kl6
         RBkfCRK6saOYUOnggPxwaSxhopVzbigVDqMWReTxgvhNyuo3o0x/O4DOItyLt3HuSF91
         RngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bbCzqYIe9MB5OztHKGIWplG5nDOgpzMAOkRNok8RtBM=;
        b=NMNHnAEVPEqms6s8K7AemPJW1uUYZq4zcw3ebKBgvLUn1OEFUllHqO1/M8EtJpQjkl
         MEDN2r5Q0iZFcPRn7DzyfRqwxKC88dyUI/UqwbzIe46CQSgOGyaovjwM8cQHoFfw4yp8
         KyUmaZkhOenTEz9yKOZVatUAeM9tO7mbtgXQva/pvQQ4Z2G9sg2fKRbAmcpouSFZSryf
         c3pT13lUPffBIQ3eohE4k4mL+OZwuc+g2EcW9/XqgRsi53zrjfUyfJJ/9gXuwIQ1CTOl
         YMwQOn63hP8VSyfdXmxymZyb39IWInm/SSHdfXxBxJwZCF9izglH4XUPEjjXEw2Hel5p
         kvAQ==
X-Gm-Message-State: ABuFfojpsN7di4NtJmafk+jUZy1Na4HC4iRI4Kt8a6hF7l4J/+hZeBEd
	4Rqiw5X7iFEEvo8jaJzNhMY=
X-Received: by 2002:a63:c44a:: with SMTP id m10-v6mr1410171pgg.416.1538573361885;
        Wed, 03 Oct 2018 06:29:21 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.97.9.91])
        by smtp.gmail.com with ESMTPSA id q5-v6sm6769603pfj.127.2018.10.03.06.29.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 03 Oct 2018 06:29:21 -0700 (PDT)
Date: Wed, 3 Oct 2018 18:59:17 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, mamtashukla555@gmail.com
Subject: [PATCH] staging: fbtft: Adding spaces around '<<'
Message-ID: <20181003132917.GA29977@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Adding spaces around '<<' to fix checkpatch issue.
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/fbtft/fbtft.h | 56 +++++++++++++++++++++----------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 25302ff..a3db23b 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void)                          \
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
 
-#define DEBUG_DRIVER_INIT_FUNCTIONS (1<<3)
-#define DEBUG_TIME_FIRST_UPDATE     (1<<4)
-#define DEBUG_TIME_EACH_UPDATE      (1<<5)
-#define DEBUG_DEFERRED_IO           (1<<6)
-#define DEBUG_FBTFT_INIT_FUNCTIONS  (1<<7)
+#define DEBUG_DRIVER_INIT_FUNCTIONS  (1 << 3)
+#define DEBUG_TIME_FIRST_UPDATE      (1 << 4)
+#define DEBUG_TIME_EACH_UPDATE       (1 << 5)
+#define DEBUG_DEFERRED_IO            (1 << 6)
+#define DEBUG_FBTFT_INIT_FUNCTIONS   (1 << 7)
 
 /* fbops */
-#define DEBUG_FB_READ               (1<<8)
-#define DEBUG_FB_WRITE              (1<<9)
-#define DEBUG_FB_FILLRECT           (1<<10)
-#define DEBUG_FB_COPYAREA           (1<<11)
-#define DEBUG_FB_IMAGEBLIT          (1<<12)
-#define DEBUG_FB_SETCOLREG          (1<<13)
-#define DEBUG_FB_BLANK              (1<<14)
+#define DEBUG_FB_READ                (1 << 8)
+#define DEBUG_FB_WRITE               (1 << 9)
+#define DEBUG_FB_FILLRECT            (1 << 10)
+#define DEBUG_FB_COPYAREA            (1 << 11)
+#define DEBUG_FB_IMAGEBLIT           (1 << 12)
+#define DEBUG_FB_SETCOLREG           (1 << 13)
+#define DEBUG_FB_BLANK               (1 << 14)
 
-#define DEBUG_SYSFS                 (1<<16)
+#define DEBUG_SYSFS                  (1 << 16)
 
 /* fbtftops */
-#define DEBUG_BACKLIGHT             (1<<17)
-#define DEBUG_READ                  (1<<18)
-#define DEBUG_WRITE                 (1<<19)
-#define DEBUG_WRITE_VMEM            (1<<20)
-#define DEBUG_WRITE_REGISTER        (1<<21)
-#define DEBUG_SET_ADDR_WIN          (1<<22)
-#define DEBUG_RESET                 (1<<23)
-#define DEBUG_MKDIRTY               (1<<24)
-#define DEBUG_UPDATE_DISPLAY        (1<<25)
-#define DEBUG_INIT_DISPLAY          (1<<26)
-#define DEBUG_BLANK                 (1<<27)
-#define DEBUG_REQUEST_GPIOS         (1<<28)
-#define DEBUG_FREE_GPIOS            (1<<29)
-#define DEBUG_REQUEST_GPIOS_MATCH   (1<<30)
-#define DEBUG_VERIFY_GPIOS          (1<<31)
+#define DEBUG_BACKLIGHT              (1 << 17)
+#define DEBUG_READ                   (1 << 18)
+#define DEBUG_WRITE                  (1 << 19)
+#define DEBUG_WRITE_VMEM             (1 << 20)
+#define DEBUG_WRITE_REGISTER         (1 << 21)
+#define DEBUG_SET_ADDR_WIN           (1 << 22)
+#define DEBUG_RESET                  (1 << 23)
+#define DEBUG_MKDIRTY                (1 << 24)
+#define DEBUG_UPDATE_DISPLAY         (1 << 25)
+#define DEBUG_INIT_DISPLAY           (1 << 26)
+#define DEBUG_BLANK                  (1 << 27)
+#define DEBUG_REQUEST_GPIOS          (1 << 28)
+#define DEBUG_FREE_GPIOS             (1 << 29)
+#define DEBUG_REQUEST_GPIOS_MATCH    (1 << 30)
+#define DEBUG_VERIFY_GPIOS           (1 << 31)
 
 #define fbtft_init_dbg(dev, format, arg...)                  \
 do {                                                         \
-- 
1.9.1


