X-GM-THRID: 6203360253861429248
X-Received: by 10.129.51.86 with SMTP id z83mr12213670ywz.45.1444423567499;
        Fri, 09 Oct 2015 13:46:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.2 with SMTP id rs2ls607136igb.24.canary; Fri, 09 Oct
 2015 13:46:07 -0700 (PDT)
X-Received: by 10.66.102.101 with SMTP id fn5mr12622561pab.38.1444423567225;
        Fri, 09 Oct 2015 13:46:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id uv4si399135pac.0.2015.10.09.13.46.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 13:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id lk4so95977440pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 13:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/59K9J5ZSLNhGxzbRYIOvZkk1S6DCzFSiNfXjJRxTWI=;
        b=p5MKppCtDXC+ow7CLmSaXOJNdbWP24kP0mft6dg5nrFLSBRz8uRWZSTfsKgDaWWmSf
         DLN2HeNHWmqsD2ZrxBtHUXP9xOyrMiRo3l8SdEcUsQpEa42SBtMlAoNmuXfinilX1+hN
         V9st7C0NqxYPY0/nN+PgVSTWBctugiyE+jP0Ih9Jq2xNOBP2gEDw6XazXwceF7G9rt7C
         J5VirNbllQljEFeQvfLtJJ1sH8Faei/Qp6JrNsbHuEHKTeJ0WmXxr/bZaX1sQ9KPn7Mz
         GKNjBG0b/IRG51mvtmR5kbJwKOLCsui7lUzcXm/q8Urv1ZjIEwkx51ghHpbdyPn0I2HA
         1iqg==
X-Received: by 10.66.253.229 with SMTP id ad5mr17646528pad.101.1444423567087;
        Fri, 09 Oct 2015 13:46:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id pf7sm4200482pbc.6.2015.10.09.13.46.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 13:46:06 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:16:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: sm750fb: Remove multiple blank lines
Message-ID: <9b562d0394859f8c4224f22f5e283a2bec735e53.1444423168.git.amitoj1606@gmail.com>
References: <cover.1444423168.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444423168.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index 6e87a17..0891384 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -16,7 +16,6 @@ typedef enum _logical_chip_type_t {
 }
 logical_chip_type_t;
 
-
 typedef enum _clock_type_t {
 	MXCLK_PLL,
 	PRIMARY_PLL,
@@ -70,7 +69,6 @@ typedef struct _initchip_param_t {
 }
 initchip_param_t;
 
-
 logical_chip_type_t getChipType(void);
 unsigned int calcPllValue(unsigned int request, pll_value_t *pll);
 unsigned int formatPllReg(pll_value_t *pPLL);
@@ -78,5 +76,4 @@ void ddk750_set_mmio(void __iomem *, unsigned short, char);
 unsigned int ddk750_getVMSize(void);
 int ddk750_initHw(initchip_param_t *);
 
-
 #endif
-- 
1.9.1


