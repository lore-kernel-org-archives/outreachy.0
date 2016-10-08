X-GM-THRID: 6339006918533578752
X-Received: by 10.129.1.197 with SMTP id 188mr4695677ywb.84.1475919990570;
        Sat, 08 Oct 2016 02:46:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.23 with SMTP id j23ls2442617ioo.15.gmail; Sat, 08 Oct
 2016 02:46:29 -0700 (PDT)
X-Received: by 10.66.55.73 with SMTP id q9mr5170950pap.126.1475919989536;
        Sat, 08 Oct 2016 02:46:29 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id d11si2745207pfl.2.2016.10.08.02.46.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:46:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i85so4187538pfa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=25pt58LpFeLS5rjFAvrw7OUbXcXmvPnjNtLovypb8XE=;
        b=FndezlMhrK+IVxU2306ayBFl2bdwN/3mYbW1voFDioQ3LXXQRvRhhL1Rb+3OLRMfSI
         UdTRVGjuBPcBtgbbaomINAoKU3sLKFMnWS8UZv/jo1f54x2b6uZRnGnfEzabzhZAaDq/
         xJgk9i73MBvTIT/l8gk7YHfXZyba3/eOO6Rx2+ZjtldioHvOgr+k1kmyxGriB3v3VVcE
         DWPCT9tIPKhbmb8xZjrJFw8b3iDelTHgTYIYxoF7vGTm0t8Q9bZWv35B5OSoCFQn6QZl
         LCMjWPIarNZi9N8pE/0soLXc49tx3uCvGD2oZJhVgqVak/sg/eEedw5JaFRQxyCg2JMD
         Wdng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=25pt58LpFeLS5rjFAvrw7OUbXcXmvPnjNtLovypb8XE=;
        b=ZUcJVIwBNNkPrhd1G0xGTOC3yAHVklVdCaD249VQKNbCZWy7V3xk+Utbtd8H54YEpP
         V82kPoKZyoi9iAlwX/SrTM28r4MxnxzJqib8h8IGuU0BJc3rhBtNSfg06DRmPLMTJTRm
         KRqfLiztz/QuYxLw34LzaNhAgb9ZPHVd2A1Q+f9HIV/8Ym4Xo13DXCOL1Y73hdWZrw0P
         N+IwfC+FjU4n5mERRb64eUAMZhuXFD2JnXQmrSEpLxO0gvVOT0lYEa1EjBGsFW48SxRW
         ClgQuYTQh0K5TaDkYt2wt1ZfNiolPXD6mCFGL69C+nO2ELaoVcqeZHJND6uQINc6IlKe
         ZkEQ==
X-Gm-Message-State: AA6/9RmepNJUmSdhYmzgSJGrV/6NpU2IODrd8FBESpkQBSuvKYhwrnOq7jMtYAQltFKDhw==
X-Received: by 10.98.133.19 with SMTP id u19mr15837256pfd.137.1475919989308;
        Sat, 08 Oct 2016 02:46:29 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id m11sm19978417pfi.30.2016.10.08.02.46.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:46:28 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:46:26 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 01/13] staging: wlan-ng: aligned block to open parenthesis
Message-ID: <20161008094626.GA12287@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Fixed multiple checkpatch warnings by aligning blocks to match
open parenthesis.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 80 ++++++++++++++++++-------------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index e1b4a94..92a7bc5 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -606,8 +606,8 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	hw->ident_nic.minor = le16_to_cpu(hw->ident_nic.minor);
 
 	netdev_info(wlandev->netdev, "ident: nic h/w: id=0x%02x %d.%d.%d\n",
-	       hw->ident_nic.id, hw->ident_nic.major,
-	       hw->ident_nic.minor, hw->ident_nic.variant);
+		    hw->ident_nic.id, hw->ident_nic.major,
+		    hw->ident_nic.minor, hw->ident_nic.variant);
 
 	/* Primary f/w identity */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_PRIIDENTITY,
@@ -625,8 +625,8 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	hw->ident_pri_fw.minor = le16_to_cpu(hw->ident_pri_fw.minor);
 
 	netdev_info(wlandev->netdev, "ident: pri f/w: id=0x%02x %d.%d.%d\n",
-	       hw->ident_pri_fw.id, hw->ident_pri_fw.major,
-	       hw->ident_pri_fw.minor, hw->ident_pri_fw.variant);
+		    hw->ident_pri_fw.id, hw->ident_pri_fw.major,
+		    hw->ident_pri_fw.minor, hw->ident_pri_fw.variant);
 
 	/* Station (Secondary?) f/w identity */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STAIDENTITY,
@@ -639,7 +639,7 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 
 	if (hw->ident_nic.id < 0x8000) {
 		netdev_err(wlandev->netdev,
-		       "FATAL: Card is not an Intersil Prism2/2.5/3\n");
+			   "FATAL: Card is not an Intersil Prism2/2.5/3\n");
 		result = -1;
 		goto failed;
 	}
@@ -656,14 +656,14 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 
 	if (hw->ident_sta_fw.id == 0x1f) {
 		netdev_info(wlandev->netdev,
-		       "ident: sta f/w: id=0x%02x %d.%d.%d\n",
-		       hw->ident_sta_fw.id, hw->ident_sta_fw.major,
-		       hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
+			    "ident: sta f/w: id=0x%02x %d.%d.%d\n",
+			    hw->ident_sta_fw.id, hw->ident_sta_fw.major,
+			    hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
 	} else {
 		netdev_info(wlandev->netdev,
-		       "ident:  ap f/w: id=0x%02x %d.%d.%d\n",
-		       hw->ident_sta_fw.id, hw->ident_sta_fw.major,
-		       hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
+			    "ident:  ap f/w: id=0x%02x %d.%d.%d\n",
+			    hw->ident_sta_fw.id, hw->ident_sta_fw.major,
+			    hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
 		netdev_err(wlandev->netdev, "Unsupported Tertiary AP firmware loaded!\n");
 		goto failed;
 	}
@@ -687,10 +687,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	hw->cap_sup_mfi.top = le16_to_cpu(hw->cap_sup_mfi.top);
 
 	netdev_info(wlandev->netdev,
-	       "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-	       hw->cap_sup_mfi.role, hw->cap_sup_mfi.id,
-	       hw->cap_sup_mfi.variant, hw->cap_sup_mfi.bottom,
-	       hw->cap_sup_mfi.top);
+		    "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		    hw->cap_sup_mfi.role, hw->cap_sup_mfi.id,
+		    hw->cap_sup_mfi.variant, hw->cap_sup_mfi.bottom,
+		    hw->cap_sup_mfi.top);
 
 	/* Compatibility range, Controller supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_CFISUPRANGE,
@@ -711,10 +711,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	hw->cap_sup_cfi.top = le16_to_cpu(hw->cap_sup_cfi.top);
 
 	netdev_info(wlandev->netdev,
-	       "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-	       hw->cap_sup_cfi.role, hw->cap_sup_cfi.id,
-	       hw->cap_sup_cfi.variant, hw->cap_sup_cfi.bottom,
-	       hw->cap_sup_cfi.top);
+		    "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		    hw->cap_sup_cfi.role, hw->cap_sup_cfi.id,
+		    hw->cap_sup_cfi.variant, hw->cap_sup_cfi.bottom,
+		    hw->cap_sup_cfi.top);
 
 	/* Compatibility range, Primary f/w supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_PRISUPRANGE,
@@ -735,10 +735,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	hw->cap_sup_pri.top = le16_to_cpu(hw->cap_sup_pri.top);
 
 	netdev_info(wlandev->netdev,
-	       "PRI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-	       hw->cap_sup_pri.role, hw->cap_sup_pri.id,
-	       hw->cap_sup_pri.variant, hw->cap_sup_pri.bottom,
-	       hw->cap_sup_pri.top);
+		    "PRI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		    hw->cap_sup_pri.role, hw->cap_sup_pri.id,
+		    hw->cap_sup_pri.variant, hw->cap_sup_pri.bottom,
+		    hw->cap_sup_pri.top);
 
 	/* Compatibility range, Station f/w supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STASUPRANGE,
@@ -791,10 +791,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	hw->cap_act_pri_cfi.top = le16_to_cpu(hw->cap_act_pri_cfi.top);
 
 	netdev_info(wlandev->netdev,
-	       "PRI-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-	       hw->cap_act_pri_cfi.role, hw->cap_act_pri_cfi.id,
-	       hw->cap_act_pri_cfi.variant, hw->cap_act_pri_cfi.bottom,
-	       hw->cap_act_pri_cfi.top);
+		    "PRI-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		    hw->cap_act_pri_cfi.role, hw->cap_act_pri_cfi.id,
+		    hw->cap_act_pri_cfi.variant, hw->cap_act_pri_cfi.bottom,
+		    hw->cap_act_pri_cfi.top);
 
 	/* Compatibility range, sta f/w actor, CFI supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STA_CFIACTRANGES,
@@ -815,10 +815,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	hw->cap_act_sta_cfi.top = le16_to_cpu(hw->cap_act_sta_cfi.top);
 
 	netdev_info(wlandev->netdev,
-	       "STA-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-	       hw->cap_act_sta_cfi.role, hw->cap_act_sta_cfi.id,
-	       hw->cap_act_sta_cfi.variant, hw->cap_act_sta_cfi.bottom,
-	       hw->cap_act_sta_cfi.top);
+		    "STA-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		    hw->cap_act_sta_cfi.role, hw->cap_act_sta_cfi.id,
+		    hw->cap_act_sta_cfi.variant, hw->cap_act_sta_cfi.bottom,
+		    hw->cap_act_sta_cfi.top);
 
 	/* Compatibility range, sta f/w actor, MFI supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STA_MFIACTRANGES,
@@ -839,10 +839,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	hw->cap_act_sta_mfi.top = le16_to_cpu(hw->cap_act_sta_mfi.top);
 
 	netdev_info(wlandev->netdev,
-	       "STA-MFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-	       hw->cap_act_sta_mfi.role, hw->cap_act_sta_mfi.id,
-	       hw->cap_act_sta_mfi.variant, hw->cap_act_sta_mfi.bottom,
-	       hw->cap_act_sta_mfi.top);
+		    "STA-MFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		    hw->cap_act_sta_mfi.role, hw->cap_act_sta_mfi.id,
+		    hw->cap_act_sta_mfi.variant, hw->cap_act_sta_mfi.bottom,
+		    hw->cap_act_sta_mfi.top);
 
 	/* Serial Number */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_NICSERIALNUMBER,
@@ -920,7 +920,7 @@ static int prism2sta_globalsetup(struct wlandevice *wlandev)
 }
 
 static int prism2sta_setmulticast(struct wlandevice *wlandev,
-					struct net_device *dev)
+				  struct net_device *dev)
 {
 	int result = 0;
 	struct hfa384x *hw = wlandev->priv;
@@ -1064,7 +1064,7 @@ static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 					&joinreq, HFA384x_RID_JOINREQUEST_LEN);
 	if (result) {
 		netdev_err(wlandev->netdev, "setconfig(joinreq) failed, result=%d\n",
-		       result);
+			   result);
 	}
 }
 
@@ -1294,7 +1294,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 		 */
 		if (wlandev->netdev->type == ARPHRD_ETHER)
 			netdev_info(wlandev->netdev,
-			       "linkstatus=DISCONNECTED (unhandled)\n");
+				    "linkstatus=DISCONNECTED (unhandled)\n");
 		wlandev->macmode = WLAN_MACMODE_NONE;
 
 		netif_carrier_off(wlandev->netdev);
@@ -1415,7 +1415,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 	default:
 		/* This is bad, IO port problems? */
 		netdev_warn(wlandev->netdev,
-		       "unknown linkstatus=0x%02x\n", hw->link_status);
+			    "unknown linkstatus=0x%02x\n", hw->link_status);
 		return;
 	}
 
@@ -1785,7 +1785,7 @@ void prism2sta_ev_info(struct wlandevice *wlandev, struct hfa384x_InfFrame *inf)
 		break;
 	default:
 		netdev_warn(wlandev->netdev,
-		       "Unknown info type=0x%02x\n", inf->infotype);
+			    "Unknown info type=0x%02x\n", inf->infotype);
 		break;
 	}
 }
-- 
2.10.0


