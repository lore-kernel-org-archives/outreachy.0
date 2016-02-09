X-GM-THRID: 6249315383712415744
X-Received: by 10.25.23.105 with SMTP id n102mr4127759lfi.9.1455032123719;
        Tue, 09 Feb 2016 07:35:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.6.15 with SMTP id 15ls646489wmg.50.gmail; Tue, 09 Feb 2016
 07:35:22 -0800 (PST)
X-Received: by 10.194.172.40 with SMTP id az8mr4135423wjc.3.1455032122304;
        Tue, 09 Feb 2016 07:35:22 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id s132si600687wmd.1.2016.02.09.07.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:35:22 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id p63so28158733wmp.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IvkO461zRkGJcOaJXNLy5h7/6xxJPBB3rVnjFORB+5o=;
        b=GZm0z2VI5doXf8T7f5JSIkrCqmugPtUIRg0XaEQq4Q6sU8whPFCWyGG65CoM5Gz3xe
         jSWxBe/+wvxVTw6Y7FbnZmGt0CH3X16vqykloUl+1NiUwvA5lhZNRZOJQ1zMngj2/AuO
         OI4Q2YvXczy4JQCpaAMrCnQ/eOpIAAv7ovUZwQrARQ4VofH4pqvsVs+eR3tADA3Eoedp
         lKIojUDLcFug84uEDF3pTAT+Uth9KLjXx2O04Hbd7S3vVjHmo/m2rohSty7ylpdX6Ov6
         ZPslEtoQHGEV7Vk/F/ZBjQny1n9+sEvucT8X/dmkaBl3CsDE4sxTNI8pqsgbTJfi5GhP
         sfeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IvkO461zRkGJcOaJXNLy5h7/6xxJPBB3rVnjFORB+5o=;
        b=eT9FYkNHLa++og1ATCNe+Dm2oZXtYNoFRt5H7S6CS++tL0YnbWxKxYBF6RqfoiJ0ng
         LAYVeNy1G9TOmLrYNl+rqQnQ412xwgmoJi/lnvnu6/58GoPdWhcJGmYQEUDBhiML38To
         EIF61jb3JSKlVN4UDLpMoMQPlZmyK0ZWnUp/by51DtuqIWAwQbhT7ylrz230tnAmB+du
         wc/4598eMNIrHFr3/UjN8YtT0uOH6Z8QJ8/InjGKY1OmX4M7LBhQU/JtH/KgxyYWIrPQ
         WTkTUk6ECMJUjDCcLGVpVpuyyrxzeGhMrVf+QoVn0BB8ZeSViwfDzMuc8Y/gei0EBSgo
         LtHA==
X-Gm-Message-State: AG10YORMZ5/MnkEmY2vaPJ9P3qZ1EDl251mHvgSDOZRv94gbFbX5HHWT1SkpRcRpXNKbkQ==
X-Received: by 10.194.220.230 with SMTP id pz6mr4570656wjc.39.1455032122206;
        Tue, 09 Feb 2016 07:35:22 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([85.96.173.56])
        by smtp.gmail.com with ESMTPSA id w144sm18062701wmd.8.2016.02.09.07.35.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 07:35:21 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8712: Add spaces around '+'
Date: Tue,  9 Feb 2016 17:35:14 +0200
Message-Id: <1455032114-4661-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '+'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 5b8b689..b5f7d4e 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -122,15 +122,15 @@ static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
 static void update_fwhdr(struct fw_hdr	*pfwhdr, const u8 *pmappedfw)
 {
 	pfwhdr->signature = le16_to_cpu(*(u16 *)pmappedfw);
-	pfwhdr->version = le16_to_cpu(*(u16 *)(pmappedfw+2));
+	pfwhdr->version = le16_to_cpu(*(u16 *)(pmappedfw + 2));
 	/* define the size of boot loader */
-	pfwhdr->dmem_size = le32_to_cpu(*(uint *)(pmappedfw+4));
+	pfwhdr->dmem_size = le32_to_cpu(*(uint *)(pmappedfw + 4));
 	/* define the size of FW in IMEM */
-	pfwhdr->img_IMEM_size = le32_to_cpu(*(uint *)(pmappedfw+8));
+	pfwhdr->img_IMEM_size = le32_to_cpu(*(uint *)(pmappedfw + 8));
 	/* define the size of FW in SRAM */
-	pfwhdr->img_SRAM_size = le32_to_cpu(*(uint *)(pmappedfw+12));
+	pfwhdr->img_SRAM_size = le32_to_cpu(*(uint *)(pmappedfw + 12));
 	/* define the size of DMEM variable */
-	pfwhdr->fw_priv_sz = le32_to_cpu(*(uint *)(pmappedfw+16));
+	pfwhdr->fw_priv_sz = le32_to_cpu(*(uint *)(pmappedfw + 16));
 }
 
 static u8 chk_fwhdr(struct fw_hdr *pfwhdr, u32 ulfilelength)
@@ -230,7 +230,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 						       0x0000ffff);
 			memcpy(ppayload, ptr, dump_emem_sz);
 			r8712_write_mem(padapter, RTL8712_DMA_VOQ,
-				  dump_emem_sz+TXDESC_SIZE, (u8 *)ptx_desc);
+				  dump_emem_sz + TXDESC_SIZE, (u8 *)ptx_desc);
 			ptr += dump_emem_sz;
 			emem_sz -= dump_emem_sz;
 		} while (emem_sz > 0);
@@ -364,20 +364,20 @@ uint rtl8712_hal_deinit(struct _adapter *padapter)
 	/* Turn off BB */
 	msleep(20);
 	/* Turn off MAC	*/
-	r8712_write8(padapter, SYS_CLKR+1, 0x38); /* Switch Control Path */
-	r8712_write8(padapter, SYS_FUNC_EN+1, 0x70);
+	r8712_write8(padapter, SYS_CLKR + 1, 0x38); /* Switch Control Path */
+	r8712_write8(padapter, SYS_FUNC_EN + 1, 0x70);
 	r8712_write8(padapter, PMC_FSM, 0x06);  /* Enable Loader Data Keep */
 	r8712_write8(padapter, SYS_ISO_CTRL, 0xF9); /* Isolation signals from
 						     * CORE, PLL */
-	r8712_write8(padapter, SYS_ISO_CTRL+1, 0xe8); /* Enable EFUSE 1.2V */
+	r8712_write8(padapter, SYS_ISO_CTRL + 1, 0xe8); /* Enable EFUSE 1.2V */
 	r8712_write8(padapter, AFE_PLL_CTRL, 0x00); /* Disable AFE PLL. */
 	r8712_write8(padapter, LDOA15_CTRL, 0x54);  /* Disable A15V */
-	r8712_write8(padapter, SYS_FUNC_EN+1, 0x50); /* Disable E-Fuse 1.2V */
+	r8712_write8(padapter, SYS_FUNC_EN + 1, 0x50); /* Disable E-Fuse 1.2V */
 	r8712_write8(padapter, LDOV12D_CTRL, 0x24); /* Disable LDO12(for CE) */
 	r8712_write8(padapter, AFE_MISC, 0x30); /* Disable AFE BG&MB */
 	/* Option for Disable 1.6V LDO.	*/
 	r8712_write8(padapter, SPS0_CTRL, 0x56); /* Disable 1.6V LDO */
-	r8712_write8(padapter, SPS0_CTRL+1, 0x43);  /* Set SW PFM */
+	r8712_write8(padapter, SPS0_CTRL + 1, 0x43);  /* Set SW PFM */
 	return _SUCCESS;
 }
 
-- 
1.9.1


