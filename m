X-GM-THRID: 6205668721559601152
X-Received: by 10.129.33.86 with SMTP id h83mr5177541ywh.29.1444869842694;
        Wed, 14 Oct 2015 17:44:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.208 with SMTP id c74ls560048qgd.66.gmail; Wed, 14 Oct
 2015 17:44:01 -0700 (PDT)
X-Received: by 10.13.230.214 with SMTP id p205mr5579192ywe.57.1444869841886;
        Wed, 14 Oct 2015 17:44:01 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ce6si608984pad.0.2015.10.14.17.44.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 17:44:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ws5so5231413pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 17:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=a8uLhnLvBw7m0B8t3MLGEH1VavYrbkNh19YfQbUZrK4=;
        b=CYzqF9M8VYnS5MDnvmfCkJcKmg3/N2A4s/a0GM+Dbl9+29EF0+WT7vYPI1jyCn9FTB
         dnaO/Hzp+5VZg+r0GP5H1MEDGiVd7Wn93ShvqAYkNItmYD+uF3bpT0tXG53GrJhBnyLF
         kz3WNL0fe0KGwqXcJlWt+yGeVHdrviJaDADN/6LOYQ/JX1sXSbixNAhtHfC9E8xJ36jZ
         5SoFUQy48TDhGnejp1qQzawWyfi+m6Zx5BRHGSR6+0wJKH0EBxNJYnr6ZahHXRg4h168
         y9uayriOy6hUGRAZXBgO+vSaZ2NPX5MVeCjxL0Swv0PSm/iSywPaqeazahCdBXt4kzk2
         /riw==
X-Received: by 10.68.142.42 with SMTP id rt10mr6844193pbb.14.1444869841662;
        Wed, 14 Oct 2015 17:44:01 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu.hsd1.ca.comcast.net (c-73-162-232-39.hsd1.ca.comcast.net. [73.162.232.39])
        by smtp.gmail.com with ESMTPSA id hq8sm11866009pad.35.2015.10.14.17.44.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 17:44:01 -0700 (PDT)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Y2038@lists.linaro.org
Subject: [PATCH] staging: ft1000: replace timeval with ktime_t
Date: Wed, 14 Oct 2015 17:43:00 -0700
Message-Id: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace use of struct timeval with ktime_t to calculate connection
duration. This avoids y2038 issues. Use ktime_get monotonic clock
instead of gettimeofday realtime clock to guard against negative
durations. Fix pr_debug to use matching %ul instead of converting
value to int, so that debug does not provide misleading information.
Fix connection time conversion to use interface type unsigned long
instead of assuming it maps to u32.

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 8 +++-----
 drivers/staging/ft1000/ft1000-usb/ft1000_debug.c | 8 ++++----
 drivers/staging/ft1000/ft1000-usb/ft1000_hw.c    | 8 +++-----
 drivers/staging/ft1000/ft1000.h                  | 2 +-
 4 files changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index eecfa37..540b896 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -906,7 +906,6 @@ static void ft1000_proc_drvmsg(struct net_device *dev)
 	struct prov_record *ptr;
 	struct pseudo_hdr *ppseudo_hdr;
 	u16 *pmsg;
-	struct timeval tv;
 	union {
 		u8 byte[2];
 		u16 wrd;
@@ -983,8 +982,7 @@ static void ft1000_proc_drvmsg(struct net_device *dev)
 						netif_carrier_on(dev);
 						netif_wake_queue(dev);
 						info->mediastate = 1;
-						do_gettimeofday(&tv);
-						info->ConTm = tv.tv_sec;
+						info->ConTm = ktime_get();
 					}
 				} else {
 					pr_debug("Media is down\n");
@@ -992,7 +990,7 @@ static void ft1000_proc_drvmsg(struct net_device *dev)
 						info->mediastate = 0;
 						netif_carrier_off(dev);
 						netif_stop_queue(dev);
-						info->ConTm = 0;
+						info->ConTm = ktime_set(0, 0);
 					}
 				}
 			} else {
@@ -1001,7 +999,7 @@ static void ft1000_proc_drvmsg(struct net_device *dev)
 					info->mediastate = 0;
 					netif_carrier_off(dev);
 					netif_stop_queue(dev);
-					info->ConTm = 0;
+					info->ConTm = ktime_set(0, 0);
 				}
 			}
 			break;
diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
index f241a3a..d535c13 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
@@ -413,7 +413,7 @@ static long ft1000_ioctl(struct file *file, unsigned int command,
 	int i;
 	u16 tempword;
 	unsigned long flags;
-	struct timeval tv;
+	ktime_t con_tm;
 	struct IOCTL_GET_VER get_ver_data;
 	struct IOCTL_GET_DSP_STAT get_stat_data;
 	u8 ConnectionMsg[] = {
@@ -520,9 +520,9 @@ static long ft1000_ioctl(struct file *file, unsigned int command,
 		get_stat_data.nRxPkts = info->stats.rx_packets;
 		get_stat_data.nTxBytes = info->stats.tx_bytes;
 		get_stat_data.nRxBytes = info->stats.rx_bytes;
-		do_gettimeofday(&tv);
-		get_stat_data.ConTm = (u32)(tv.tv_sec - info->ConTm);
-		pr_debug("Connection Time = %d\n", (int)get_stat_data.ConTm);
+		con_tm = ktime_sub(ktime_get(), info->ConTm);
+		get_stat_data.ConTm = (unsigned long)ktime_divns(con_tm, NSEC_PER_SEC);
+		pr_debug("Connection Time = %lu\n", get_stat_data.ConTm);
 		if (copy_to_user(argp, &get_stat_data, sizeof(get_stat_data))) {
 			pr_debug("copy fault occurred\n");
 			result = -EFAULT;
diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c b/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
index 9ea32ce..633f525 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_hw.c
@@ -619,7 +619,6 @@ static int ft1000_open(struct net_device *dev)
 {
 	struct ft1000_info *pInfo = netdev_priv(dev);
 	struct ft1000_usb *pFt1000Dev = pInfo->priv;
-	struct timeval tv;
 
 	pr_debug("ft1000_open is called for card %d\n", pFt1000Dev->CardNumber);
 
@@ -627,8 +626,7 @@ static int ft1000_open(struct net_device *dev)
 	pInfo->stats.tx_bytes = 0;
 	pInfo->stats.rx_packets = 0;
 	pInfo->stats.tx_packets = 0;
-	do_gettimeofday(&tv);
-	pInfo->ConTm = tv.tv_sec;
+	pInfo->ConTm = ktime_get();
 	pInfo->ProgConStat = 0;
 
 	netif_start_queue(dev);
@@ -1163,14 +1161,14 @@ static int ft1000_proc_drvmsg(struct ft1000_usb *dev, u16 size)
 				if (info->mediastate == 1) {
 					info->mediastate = 0;
 					if (dev->NetDevRegDone)
-						info->ConTm = 0;
+						info->ConTm = ktime_set(0, 0);
 				}
 			}
 		} else {
 			pr_debug("Media is down\n");
 			if (info->mediastate == 1) {
 				info->mediastate = 0;
-				info->ConTm = 0;
+				info->ConTm = ktime_set(0, 0);
 			}
 		}
 		break;
diff --git a/drivers/staging/ft1000/ft1000.h b/drivers/staging/ft1000/ft1000.h
index 8a2e4ca..77b3f6e 100644
--- a/drivers/staging/ft1000/ft1000.h
+++ b/drivers/staging/ft1000/ft1000.h
@@ -347,7 +347,7 @@ struct ft1000_info {
 	u8 HwSerNum[HWSERNUMSZ];	/* Hardware Serial Number */
 	u8 Sku[SKUSZ];			/* SKU */
 	u8 eui64[EUISZ];		/* EUI64 */
-	time_t ConTm;			/* Connection Time */
+	ktime_t ConTm;			/* Connection Time */
 	u8 ProductMode[MODESZ];
 	u8 RfCalVer[CALVERSZ];
 	u8 RfCalDate[CALDATESZ];
-- 
1.9.1


