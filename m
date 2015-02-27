X-GM-THRID: 4672151617536
X-Received: by 10.236.28.230 with SMTP id g66mr14630502yha.2.1425069333014;
        Fri, 27 Feb 2015 12:35:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.143.34 with SMTP id sb2ls299893igb.10.gmail; Fri, 27 Feb
 2015 12:35:32 -0800 (PST)
X-Received: by 10.66.233.198 with SMTP id ty6mr15037487pac.24.1425069332823;
        Fri, 27 Feb 2015 12:35:32 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id nt14si598175pab.2.2015.02.27.12.35.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:35:32 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfb1 with SMTP id fb1so25377336pad.8
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9I4GKbH4Em8R5Acwmr8dv7O8x1LO8ZpwPpREPcjHkS0=;
        b=Aidnud0GcGK9fDwMrjsV1Md/YeGdvOmnHDHVds7hKn8ReEPy5CoJkeVv4nxqubiU5p
         Mvzk6IBv4adONayjk25KbZm3Sw4oYO9rSbd0IpVn/rBsr0zdCvMHe2SdNzTglks2ZTHj
         k0R3oKqV32g7uJs30rguLjlU2ctChB40hNKZKxn/QcteyTyVVBRYh9sVza4fE7Ha7k8G
         nsFYQJxWL439nk462in43+gJa+oa8JdDzWbSEzobGZ+wNlms4EG1ahgLwnHA+7U273mR
         C77k+bLoeq6nHMK1ntCbO9FbMZJT+w4ufuxegC9EaXx33SR31l315lalVa9KEKdtnJj9
         s7HQ==
X-Received: by 10.70.134.163 with SMTP id pl3mr26671696pdb.45.1425069332735;
        Fri, 27 Feb 2015 12:35:32 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id ox10sm4837517pbc.17.2015.02.27.12.35.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:35:32 -0800 (PST)
Date: Sat, 28 Feb 2015 02:06:44 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: rtl8188eu: Compress two statements into one.
Message-ID: <a5027f75ec0e8f68141b6ff3344f5843dbfab75a.1425069015.git.navyasri.tech@gmail.com>
References: <cover.1425069015.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425069015.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the use of a variable used only for
returning a value. The following coccinelle script was
used to discover it:

@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
     -return ret;

It also fixes the checkpatch.pl warning about line being over
80 characters, in the lines where changes were made.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     -Fix checkpatch.pl warnings of 'line over 80 characters'
      too where lines are compressed into one.

 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index 80e7ef9..b9e1a61 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -552,7 +552,6 @@ int usb_write8(struct adapter *adapter, u32 addr, u8 val)
 	u16 index;
 	u16 len;
 	u8 data;
-	int ret;
 
 	request = 0x05;
 	requesttype = 0x00;/* write_out */
@@ -560,8 +559,8 @@ int usb_write8(struct adapter *adapter, u32 addr, u8 val)
 	wvalue = (u16)(addr&0x0000ffff);
 	len = 1;
 	data = val;
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
-	return ret;
+	return usbctrl_vendorreq(adapter, request, wvalue,
+				 index, &data, len, requesttype);
 }
 
 int usb_write16(struct adapter *adapter, u32 addr, u16 val)
@@ -572,7 +571,6 @@ int usb_write16(struct adapter *adapter, u32 addr, u16 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	int ret;
 
 
 	request = 0x05;
@@ -584,10 +582,10 @@ int usb_write16(struct adapter *adapter, u32 addr, u16 val)
 
 	data = cpu_to_le32(val & 0x0000ffff);
 
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
+	return usbctrl_vendorreq(adapter, request, wvalue,
+				 index, &data, len, requesttype);
 
 
-	return ret;
 }
 
 int usb_write32(struct adapter *adapter, u32 addr, u32 val)
@@ -598,7 +596,6 @@ int usb_write32(struct adapter *adapter, u32 addr, u32 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	int ret;
 
 
 	request = 0x05;
@@ -609,10 +606,10 @@ int usb_write32(struct adapter *adapter, u32 addr, u32 val)
 	len = 4;
 	data = cpu_to_le32(val);
 
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
+	return usbctrl_vendorreq(adapter, request, wvalue,
+				 index, &data, len, requesttype);
 
 
-	return ret;
 }
 
 static void usb_write_port_complete(struct urb *purb, struct pt_regs *regs)
-- 
1.9.1


