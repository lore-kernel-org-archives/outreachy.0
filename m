X-GM-THRID: 6205476771408642048
X-Received: by 10.182.106.11 with SMTP id gq11mr2283882obb.25.1444825150113;
        Wed, 14 Oct 2015 05:19:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.40 with SMTP id jd8ls161023igb.5.gmail; Wed, 14 Oct
 2015 05:19:09 -0700 (PDT)
X-Received: by 10.107.33.207 with SMTP id h198mr2928009ioh.9.1444825149610;
        Wed, 14 Oct 2015 05:19:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si863528pbb.0.2015.10.14.05.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:19:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id p3so5209267pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 05:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5JyjRy1xkXgWpN3LMzrsM+0rocYozeBogPGY8sMSfXA=;
        b=ECrRtUMyCNQBqMH2y/LV3uDwLwh2OahrZzu7gdDoZAypT1WKziZtXu3esdqVDNOeVK
         wznNKkz3GDISEeQ/UL6qWjtRUE0MxOWaXE6f0h+mBWJsAh1N4amHy4NMGm9jvt1u13Qd
         YGdjT3VTzLrUa7ETbGTWioOVWVfK5vQTOqV5DgbqSO5aoty7uX1tmYIbOlY4OsFgGGwo
         kFNGI8NXbg+AI6SKTfitUWYYRDOVEv0HAfxVJrepur8HwD6gb1fq3RPjnlQ6vh/3gv4b
         kNdJVcWkKRhBuqRJSiJeudpfG0sCppRUJZHxmviERwBJnydhzqUegW2pJbmhyRheFaKL
         PCnw==
X-Received: by 10.68.134.170 with SMTP id pl10mr3474486pbb.35.1444825149499;
        Wed, 14 Oct 2015 05:19:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id sn9sm9495700pac.16.2015.10.14.05.19.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:19:08 -0700 (PDT)
Date: Wed, 14 Oct 2015 17:48:58 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: rtl8712_io: Remove unnecessary cast
Message-ID: <20151014121858.GA10457@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Typecasting should be removed from variables as it is not required.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_io.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_io.c b/drivers/staging/rtl8712/rtl8712_io.c
index 921fcff..b9abe05 100644
--- a/drivers/staging/rtl8712/rtl8712_io.c
+++ b/drivers/staging/rtl8712/rtl8712_io.c
@@ -36,7 +36,7 @@
 
 u8 r8712_read8(struct _adapter *adapter, u32 addr)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl *pintfhdl = &(pio_queue->intf);
 	u8 (*_read8)(struct intf_hdl *pintfhdl, u32 addr);
 
@@ -46,7 +46,7 @@ u8 r8712_read8(struct _adapter *adapter, u32 addr)
 
 u16 r8712_read16(struct _adapter *adapter, u32 addr)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl *pintfhdl = &(pio_queue->intf);
 	u16 (*_read16)(struct intf_hdl *pintfhdl, u32 addr);
 
@@ -56,7 +56,7 @@ u16 r8712_read16(struct _adapter *adapter, u32 addr)
 
 u32 r8712_read32(struct _adapter *adapter, u32 addr)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl *pintfhdl = &(pio_queue->intf);
 	u32 (*_read32)(struct intf_hdl *pintfhdl, u32 addr);
 
@@ -66,7 +66,7 @@ u32 r8712_read32(struct _adapter *adapter, u32 addr)
 
 void r8712_write8(struct _adapter *adapter, u32 addr, u8 val)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl *pintfhdl = &(pio_queue->intf);
 	void (*_write8)(struct intf_hdl *pintfhdl, u32 addr, u8 val);
 
@@ -76,7 +76,7 @@ void r8712_write8(struct _adapter *adapter, u32 addr, u8 val)
 
 void r8712_write16(struct _adapter *adapter, u32 addr, u16 val)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl *pintfhdl = &(pio_queue->intf);
 	void (*_write16)(struct intf_hdl *pintfhdl, u32 addr, u16 val);
 
@@ -86,8 +86,8 @@ void r8712_write16(struct _adapter *adapter, u32 addr, u16 val)
 
 void r8712_write32(struct _adapter *adapter, u32 addr, u32 val)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
-	struct intf_hdl *pintfhdl = (struct intf_hdl *)(&(pio_queue->intf));
+	struct io_queue *pio_queue = adapter->pio_queue;
+	struct intf_hdl *pintfhdl  = &(pio_queue->intf);
 
 	void (*_write32)(struct intf_hdl *pintfhdl, u32 addr, u32 val);
 
@@ -97,7 +97,7 @@ void r8712_write32(struct _adapter *adapter, u32 addr, u32 val)
 
 void r8712_read_mem(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl *pintfhdl = &(pio_queue->intf);
 
 	void (*_read_mem)(struct intf_hdl *pintfhdl, u32 addr, u32 cnt,
@@ -111,7 +111,7 @@ void r8712_read_mem(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 
 void r8712_write_mem(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl *pintfhdl = &(pio_queue->intf);
 	void (*_write_mem)(struct intf_hdl *pintfhdl, u32 addr, u32 cnt,
 			   u8 *pmem);
@@ -122,7 +122,7 @@ void r8712_write_mem(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 
 void r8712_read_port(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl	*pintfhdl = &(pio_queue->intf);
 
 	u32 (*_read_port)(struct intf_hdl *pintfhdl, u32 addr, u32 cnt,
@@ -136,7 +136,7 @@ void r8712_read_port(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 
 void r8712_write_port(struct _adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 {
-	struct io_queue *pio_queue = (struct io_queue *)adapter->pio_queue;
+	struct io_queue *pio_queue = adapter->pio_queue;
 	struct intf_hdl *pintfhdl = &(pio_queue->intf);
 
 	u32 (*_write_port)(struct intf_hdl *pintfhdl, u32 addr, u32 cnt,
-- 
2.1.0


