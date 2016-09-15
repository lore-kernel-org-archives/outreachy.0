X-GM-THRID: 6330666006877306880
X-Received: by 10.107.6.208 with SMTP id f77mr5326759ioi.32.1473973041255;
        Thu, 15 Sep 2016 13:57:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls4712356oty.10.gmail; Thu, 15 Sep
 2016 13:57:20 -0700 (PDT)
X-Received: by 10.157.5.37 with SMTP id 34mr8068293otw.31.1473973040905;
        Thu, 15 Sep 2016 13:57:20 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si1564570pab.2.2016.09.15.13.57.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:57:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id oz2so2545227pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wbaC3phcAIMqO+7mqBUE9kLoX8lHiEJI/e2uF1t1sSo=;
        b=DzfCiY4nWRsny7Gol2bmOhCfVFKZ4Kc+XXC0T3rSB4LK5sW+e7eE1YcglPpeN2Xa0e
         m718FK12+O0ltTfKi+WJsDyCktu2eCJK0I1JFxHxwqyYIrgXzk7LDXD3hv2N/wePDbXd
         ePtqEy218OBNuOCeTywNWws+Wf0b8+OG/kLpuq4iBoK1uqNUjHw82qF6UOTd1xHwW2zH
         ksgpzXLU0kvEzmKuKPAFhw0FPzP7xUqzdaj1VhV2fFL9nlgQms4Ek3rzoWw9pKiJ3WXb
         pmSC3Kh7Hd1Z5DBHJ8NQTppN5mNPteAci0fuw5eS4zF1nAF29H4cMD9H465LlKYaxOCT
         k+Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wbaC3phcAIMqO+7mqBUE9kLoX8lHiEJI/e2uF1t1sSo=;
        b=jynl3nq54KWO3UFFaLibxRVTZ0bvMwTrMJP4X5KuX0KjbJQ2KcaFC/8Ej01dz/MkEJ
         n3/SBjyRdmDpQL3WFe5BxtyQEG594I5OwlbR8yzBQMVkM+Ot0TuJb+QOY56yjoW2dGgc
         2WSf/mXvRhdYZpzIF81OlSWePawKffsPCJZe+ttJBHC62bawjRXpgYeRyTntWIgQqpIc
         VqxLxbrR8yeUghOHBJ7DUg1GDi1+2o9CMF6ArKNmJ1XyHV/qyQqjnRxU0fzigrRSDakd
         kp6qR7i5EFRTgRlGdlzdNJF1cWbVLeHJDQJdbHLVDpLfF8anezg2h4m32EjyHTztaWaH
         mzuw==
X-Gm-Message-State: AE9vXwM1KNUcgxaa8Cq5bwgK5lN7hVR3OddCQIvn8iw3Ym+ij0hlmxlJvaJkFEhjl2F2YQ==
X-Received: by 10.66.100.162 with SMTP id ez2mr17662469pab.123.1473973040655;
        Thu, 15 Sep 2016 13:57:20 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.236.194])
        by smtp.gmail.com with ESMTPSA id w63sm27131782pfk.43.2016.09.15.13.57.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:57:20 -0700 (PDT)
Date: Fri, 16 Sep 2016 02:27:05 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: comedi: Use the BIT() macro instead of left
 shifting 1
Message-ID: <20160915205705.GA19018@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces left shifts on 1 with the BIT(x) macro, as suggested
by checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/comedi/drivers/ni_pcidio.c | 76 +++++++++++++++---------------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_pcidio.c b/drivers/staging/comedi/drivers/ni_pcidio.c
index deaa7f2..d57fe45 100644
--- a/drivers/staging/comedi/drivers/ni_pcidio.c
+++ b/drivers/staging/comedi/drivers/ni_pcidio.c
@@ -60,36 +60,36 @@
 
 #define Window_Address			4	/* W */
 #define Interrupt_And_Window_Status	4	/* R */
-#define IntStatus1				(1<<0)
-#define IntStatus2				(1<<1)
+#define IntStatus1				BIT(0)
+#define IntStatus2				BIT(1)
 #define WindowAddressStatus_mask		0x7c
 
 #define Master_DMA_And_Interrupt_Control 5	/* W */
 #define InterruptLine(x)			((x)&3)
-#define OpenInt				(1<<2)
+#define OpenInt				BIT(2)
 #define Group_Status			5	/* R */
-#define DataLeft				(1<<0)
-#define Req					(1<<2)
-#define StopTrig				(1<<3)
+#define DataLeft				BIT(0)
+#define Req					BIT(2)
+#define StopTrig				BIT(3)
 
 #define Group_1_Flags			6	/* R */
 #define Group_2_Flags			7	/* R */
-#define TransferReady				(1<<0)
-#define CountExpired				(1<<1)
-#define Waited				(1<<5)
-#define PrimaryTC				(1<<6)
-#define SecondaryTC				(1<<7)
+#define TransferReady				BIT(0)
+#define CountExpired				BIT(1)
+#define Waited					BIT(5)
+#define PrimaryTC				BIT(6)
+#define SecondaryTC				BIT(7)
   /* #define SerialRose */
   /* #define ReqRose */
   /* #define Paused */
 
 #define Group_1_First_Clear		6	/* W */
 #define Group_2_First_Clear		7	/* W */
-#define ClearWaited				(1<<3)
-#define ClearPrimaryTC			(1<<4)
-#define ClearSecondaryTC			(1<<5)
-#define DMAReset				(1<<6)
-#define FIFOReset				(1<<7)
+#define ClearWaited				BIT(3)
+#define ClearPrimaryTC				BIT(4)
+#define ClearSecondaryTC			BIT(5)
+#define DMAReset				BIT(6)
+#define FIFOReset				BIT(7)
 #define ClearAll				0xf8
 
 #define Group_1_FIFO			8	/* W */
@@ -110,27 +110,27 @@
 
 #define Group_1_Second_Clear		46	/* W */
 #define Group_2_Second_Clear		47	/* W */
-#define ClearExpired				(1<<0)
+#define ClearExpired				BIT(0)
 
 #define Port_Pattern(x)			(48+(x))
 
 #define Data_Path			64
-#define FIFOEnableA		(1<<0)
-#define FIFOEnableB		(1<<1)
-#define FIFOEnableC		(1<<2)
-#define FIFOEnableD		(1<<3)
+#define FIFOEnableA		BIT(0)
+#define FIFOEnableB		BIT(1)
+#define FIFOEnableC		BIT(2)
+#define FIFOEnableD		BIT(3)
 #define Funneling(x)		(((x)&3)<<4)
-#define GroupDirection	(1<<7)
+#define GroupDirection		BIT(7)
 
 #define Protocol_Register_1		65
 #define OpMode				Protocol_Register_1
 #define RunMode(x)		((x)&7)
-#define Numbered		(1<<3)
+#define Numbered		BIT(3)
 
 #define Protocol_Register_2		66
 #define ClockReg			Protocol_Register_2
 #define ClockLine(x)		(((x)&3)<<5)
-#define InvertStopTrig	(1<<7)
+#define InvertStopTrig		BIT(7)
 #define DataLatching(x)       (((x)&3)<<5)
 
 #define Protocol_Register_3		67
@@ -151,17 +151,17 @@
 
 #define Protocol_Register_6		73
 #define LinePolarities			Protocol_Register_6
-#define InvertAck		(1<<0)
-#define InvertReq		(1<<1)
-#define InvertClock		(1<<2)
-#define InvertSerial		(1<<3)
-#define OpenAck		(1<<4)
-#define OpenClock		(1<<5)
+#define InvertAck		BIT(0)
+#define InvertReq		BIT(1)
+#define InvertClock		BIT(2)
+#define InvertSerial		BIT(3)
+#define OpenAck		BIT(4)
+#define OpenClock		BIT(5)
 
 #define Protocol_Register_7		74
 #define AckSer				Protocol_Register_7
 #define AckLine(x)		(((x)&3)<<2)
-#define ExchangePins		(1<<7)
+#define ExchangePins		BIT(7)
 
 #define Interrupt_Control		75
   /* bits same as flags */
@@ -182,20 +182,20 @@ static inline unsigned int secondary_DMAChannel_bits(unsigned int channel)
 #define Transfer_Size_Control		77
 #define TransferWidth(x)	((x)&3)
 #define TransferLength(x)	(((x)&3)<<3)
-#define RequireRLevel		(1<<5)
+#define RequireRLevel		BIT(5)
 
 #define Protocol_Register_15		79
 #define DAQOptions			Protocol_Register_15
 #define StartSource(x)			((x)&0x3)
-#define InvertStart				(1<<2)
+#define InvertStart				BIT(2)
 #define StopSource(x)				(((x)&0x3)<<3)
-#define ReqStart				(1<<6)
-#define PreStart				(1<<7)
+#define ReqStart				BIT(6)
+#define PreStart				BIT(7)
 
 #define Pattern_Detection		81
-#define DetectionMethod			(1<<0)
-#define InvertMatch				(1<<1)
-#define IE_Pattern_Detection			(1<<2)
+#define DetectionMethod			BIT(0)
+#define InvertMatch				BIT(1)
+#define IE_Pattern_Detection			BIT(2)
 
 #define Protocol_Register_9		82
 #define ReqDelay			Protocol_Register_9
-- 
2.7.4


