X-GM-THRID: 6202245179746811904
X-Received: by 10.68.194.72 with SMTP id hu8mr27388676pbc.8.1444072737467;
        Mon, 05 Oct 2015 12:18:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.140 with SMTP id t12ls1643634ioi.34.gmail; Mon, 05 Oct
 2015 12:18:57 -0700 (PDT)
X-Received: by 10.68.248.137 with SMTP id ym9mr27393053pbc.14.1444072737144;
        Mon, 05 Oct 2015 12:18:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id wl2si3801125pab.1.2015.10.05.12.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 12:18:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ex6so185125262pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 12:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=a0tmAFzI/T0t9LnnpIDcwF7ALiVkdyii8zgrIzIGCOU=;
        b=Sb9E2AXjZBeUjpzYRgXqeUUr5Oee2jrSc5+j4PwTAwd379IcVXgAveXrT3Za9eIhsK
         GEGOoHH64OTiwEYDF4o8xHaoJgID31mWuyj5h7/U4Y596vcY7hHWmXcUBTpRJ4CXwHFW
         7Luu0hyU2oQrNzaK+g7Pe9We/LvoVaujKj0bf4gYAMjr1xoDVK52Zgs4BkPvdYDUQ7hI
         PQOZHcCYD/LkIUpU7q9rPjMTYavHHg0IQmQ00TJ5Us0gxJsWg5DCfXAhkHd2hqEzl28y
         MrUQp5biEA+nZGYxFgGHo5QyGwKP5qT1FFdDIeNtdJaM3ytZ5Hjx2CuH//YxrvimAz4Z
         NWmA==
X-Received: by 10.66.253.229 with SMTP id ad5mr41947995pad.101.1444072736982;
        Mon, 05 Oct 2015 12:18:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.14])
        by smtp.gmail.com with ESMTPSA id sl7sm29039006pbc.54.2015.10.05.12.18.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 12:18:56 -0700 (PDT)
Date: Tue, 6 Oct 2015 00:48:52 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8712: Add space around '&'
Message-ID: <20151005191852.GA21611@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator '&'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '&' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 425c2b1..469c566 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -278,7 +278,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		}
 		/* 5.Download DMEM code size and Load EMEM Code Section */
 		memset(ptx_desc, 0, TXDESC_SIZE);
-		ptx_desc->txdw0 |= cpu_to_le32(fwhdr.fw_priv_sz&0x0000ffff);
+		ptx_desc->txdw0 |= cpu_to_le32(fwhdr.fw_priv_sz & 0x0000ffff);
 		ptx_desc->txdw0 |= cpu_to_le32(BIT(28));
 		memcpy(ppayload, &fwhdr.fwpriv, fwhdr.fw_priv_sz);
 		r8712_write_mem(padapter, RTL8712_DMA_VOQ,
@@ -338,7 +338,7 @@ uint rtl8712_hal_init(struct _adapter *padapter)
 	r8712_write32(padapter, RCR, (val32 | BIT(25))); /* Append PHY status */
 	val32 = 0;
 	val32 = r8712_read32(padapter, 0x10250040);
-	r8712_write32(padapter,  0x10250040, (val32&0x00FFFFFF));
+	r8712_write32(padapter,  0x10250040, (val32 & 0x00FFFFFF));
 	/* for usb rx aggregation */
 	r8712_write8(padapter, 0x102500B5, r8712_read8(padapter, 0x102500B5) |
 	       BIT(0)); /* page = 128bytes */
-- 
1.9.1


