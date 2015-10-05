X-GM-THRID: 6202242965099773952
X-Received: by 10.107.170.104 with SMTP id t101mr28794047ioe.3.1444072221256;
        Mon, 05 Oct 2015 12:10:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.73 with SMTP id y67ls2496455qgd.35.gmail; Mon, 05 Oct
 2015 12:10:20 -0700 (PDT)
X-Received: by 10.129.46.204 with SMTP id u195mr26491448ywu.47.1444072220761;
        Mon, 05 Oct 2015 12:10:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id wl2si3794666pab.1.2015.10.05.12.10.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 12:10:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv12so188442614pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 12:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Gb8udeNvF05FUYqby40PE0QWFnc8hmSY8xf9X9bljSE=;
        b=xzpEbwklm0dGG3VZfDVhOeSYjJTorX20IU1BnaCmM47vE+f51PEq5RppplRHoayawK
         rMH5zYg1Az3vAs9F9wKhm6LljbdtMIQh6C5u2J1aDGejzwxPKdcxUo7imzHgTJkhmmE8
         oV8VS50Z8cPQVZbZEdA7Eq4W0MmGiyO1dfxb83KHYoyw3DiZBFzXT4TgQrWFYJP8UafH
         33DC0TrPccljSMxyVIV8V3ZjErXNywfLplQqvsOGE6Q4FovCFHwQMjYqa1F/iJvMbE8g
         7PO5fUcYaRFmTAHgVuExqqK6T4A7Oth7k6JQ+auEi3UFEPLqWtNBzatzluodNyxGJQkm
         h0Cg==
X-Received: by 10.66.141.111 with SMTP id rn15mr24301377pab.70.1444072220569;
        Mon, 05 Oct 2015 12:10:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.14])
        by smtp.gmail.com with ESMTPSA id kv9sm29286132pab.39.2015.10.05.12.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 12:10:20 -0700 (PDT)
Date: Tue, 6 Oct 2015 00:40:16 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8712: Add space around '+'
Message-ID: <20151005191016.GA21501@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator '+'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 0a1c631..601d8c6 100644
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
@@ -252,7 +252,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 			goto exit_fail;
 
 		tmp8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN+1, tmp8|BIT(2));
+		r8712_write8(padapter, SYS_FUNC_EN + 1, tmp8|BIT(2));
 		tmp8_a = r8712_read8(padapter, SYS_FUNC_EN + 1);
 		if (tmp8_a != (tmp8|BIT(2)))
 			goto exit_fail;
@@ -362,20 +362,20 @@ uint rtl8712_hal_deinit(struct _adapter *padapter)
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


