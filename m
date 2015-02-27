X-GM-THRID: 4672151617536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,af7486cf6e3ccc9f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.5.169 with SMTP id t9mr13559132vdt.7.1425055163077;
        Fri, 27 Feb 2015 08:39:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.134 with SMTP id c6ls699477qgd.21.gmail; Fri, 27 Feb
 2015 08:39:22 -0800 (PST)
X-Received: by 10.52.166.77 with SMTP id ze13mr2733641vdb.9.1425055162866;
        Fri, 27 Feb 2015 08:39:22 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id nt14si529275pab.2.2015.02.27.08.39.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 08:39:22 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by paceu11 with SMTP id eu11so23880975pac.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 08:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=uU+wvjoMNix1vvOo2IYz6atn8RTzec4cYrOq1lfKKnk=;
        b=LcEX3ozzD8I/+Chbmr4fRtDvWTa+OfN7g5tkTR/rgAoTvBCAnlZk93yMe6OlqBUeyL
         r2y06dYx4x4wyjf0rqigcNHY2OK+PR6wK0o0EmZ+GPPTiOmOqQ1jRJOUMVDnpj2Qnqte
         mBxdMbne6Sd/Izd7ZtOF6kIzxTQqUICbHRod1IadLTwhERz10Hkvdbi4b6BbmYlN9RoU
         ihvYljXdAEYbez3uHF+dfwQlQrM1CLoiA5WtjO/epHMQp4FtcedpyTiaJj7Wp2v7XLYA
         H1jcmMhtPbNfTlJoZp9tT0y7X32hOYyVsbdeoTgEZX0Plq3dVu5rhiCGNF3A/7JgJQ4l
         txQQ==
X-Received: by 10.66.241.71 with SMTP id wg7mr24984577pac.81.1425055162720;
        Fri, 27 Feb 2015 08:39:22 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id om9sm4458346pbb.34.2015.02.27.08.39.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 08:39:22 -0800 (PST)
Date: Fri, 27 Feb 2015 22:10:33 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8188eu: Compress two statements into one.
Message-ID: <ccb81a3b3ee7eed0cb5188832159c3344f78cfa3.1425054707.git.navyasri.tech@gmail.com>
References: <cover.1425054707.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425054707.git.navyasri.tech@gmail.com>
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

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index 80e7ef9..4c8cc2b 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -552,7 +552,6 @@ int usb_write8(struct adapter *adapter, u32 addr, u8 val)
 	u16 index;
 	u16 len;
 	u8 data;
-	int ret;
 
 	request = 0x05;
 	requesttype = 0x00;/* write_out */
@@ -560,8 +559,7 @@ int usb_write8(struct adapter *adapter, u32 addr, u8 val)
 	wvalue = (u16)(addr&0x0000ffff);
 	len = 1;
 	data = val;
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
-	return ret;
+	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
 }
 
 int usb_write16(struct adapter *adapter, u32 addr, u16 val)
@@ -572,7 +570,6 @@ int usb_write16(struct adapter *adapter, u32 addr, u16 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	int ret;
 
 
 	request = 0x05;
@@ -584,10 +581,9 @@ int usb_write16(struct adapter *adapter, u32 addr, u16 val)
 
 	data = cpu_to_le32(val & 0x0000ffff);
 
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
+	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
 
 
-	return ret;
 }
 
 int usb_write32(struct adapter *adapter, u32 addr, u32 val)
@@ -598,7 +594,6 @@ int usb_write32(struct adapter *adapter, u32 addr, u32 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	int ret;
 
 
 	request = 0x05;
@@ -609,10 +604,9 @@ int usb_write32(struct adapter *adapter, u32 addr, u32 val)
 	len = 4;
 	data = cpu_to_le32(val);
 
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
+	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
 
 
-	return ret;
 }
 
 static void usb_write_port_complete(struct urb *purb, struct pt_regs *regs)
-- 
1.9.1


