X-GM-THRID: 6252303404941443072
X-Received: by 10.107.152.10 with SMTP id a10mr3966942ioe.28.1455727848755;
        Wed, 17 Feb 2016 08:50:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.252.103 with SMTP id zr7ls456929obc.4.gmail; Wed, 17 Feb
 2016 08:50:48 -0800 (PST)
X-Received: by 10.182.199.70 with SMTP id ji6mr2323037obc.32.1455727848440;
        Wed, 17 Feb 2016 08:50:48 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id yd9si317279pab.1.2016.02.17.08.50.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 08:50:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id x65so14319297pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 08:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ve2T3I8e590L4QyTfvwrvkOJhOch4FJyajSkNNDYsvQ=;
        b=yJY4ookDq53YjgwYS9dhCdUgO0+k8qXhjSIY/9VAe+V0qqNkNw92rzGgGWrWtfeBAm
         9+jPZYl57j/kfAKCACtV8dmRcg37tzoK6jo+Jy346yObdnXCzBlBFxoOhJ3vJ4uIZBO1
         RgYVyXjL46QwuXuHBxSodNg244aVG/rn/cQifF+dk/1LnuP8z2pDjtYrF5aIVpgR+wFG
         vYoEyqszZb0zP6lf6/c5v7cBk62993MYUPNEapLOq/4nSF2X+XEySK5ivyVDFXvKNzxk
         yZiDfPiAPMowktULOn1P1G4cKqN0zJFodY3PABdUuZMQzwf5+ic8axMI5qAYmKFgoGsX
         zHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ve2T3I8e590L4QyTfvwrvkOJhOch4FJyajSkNNDYsvQ=;
        b=jWX1bffoCoIVaOsq8bDgR+2mf5Xl51JwI3KI2jMtQzCL2On2jw7SFlcVsLVtDOKXLY
         /vBvqWnONJhqEuNh0lcB9IYRF+LENX4382Uplc2M7p6zP7A71e8AJD064o80Pqpxb3S7
         MoE2HhluOkABftc8TbgJG6aOkpywC26Kbe5uG8qfXyoro0bRPEJJC2aZoBPd9JePkbQq
         XNOUhiQ9pJIPnDP0nOc3rK8HLl/xPZt7vL5X35sEDpq7DHNo0H1xFpOyyF+ZPmjYlt7p
         Qx/kxM2Hcpm8QxKQRsqk5PWc9kp3/PcBsnN1bD8CYEx8X467ASJX9uhnEpOEHke16R+S
         D8NQ==
X-Gm-Message-State: AG10YORgFgTxWNkTp8hIJSWk0O0fMZRvOnUq6L0BN67nHEWASTtx1uoHl+k9es58F5kRNw==
X-Received: by 10.98.65.193 with SMTP id g62mr3488978pfd.148.1455727848272;
        Wed, 17 Feb 2016 08:50:48 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.146.252])
        by smtp.gmail.com with ESMTPSA id u64sm3881565pfa.86.2016.02.17.08.50.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 08:50:47 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 17 Feb 2016 22:20:36 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 2/2] Staging: wlan-ng: Remove unused functions and prototypes
Date: Wed, 17 Feb 2016 22:20:09 +0530
Message-Id: <2cabe3cc47ce139f18b8cd4cf641c952f1fcbbc6.1455726533.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455726533.git.bhumirks@gmail.com>
References: <cover.1455726533.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455726533.git.bhumirks@gmail.com>
References: <cover.1455726533.git.bhumirks@gmail.com>

hfa384x_drvr_getconfig_async is not used anywhere in the kernel 
so remove it. Also remove its prototype from the header file. Also 
the function hfa384x_cb_rrid was only used by hfa384x_drvr_getconfig_async 
so remove its definition and prototype as well.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Combine patches 3 and 4 of v1 in a single patch to remove both the
  function and its prototype.
Changes in v3:
* Remove hfa384x_cb_rrid to avoid build warning.

 drivers/staging/wlan-ng/hfa384x.h     |  4 --
 drivers/staging/wlan-ng/hfa384x_usb.c | 74 -----------------------------------
 2 files changed, 78 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 4fd3145..cec6d0b 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1390,10 +1390,6 @@ static inline int hfa384x_drvr_setconfig16(hfa384x_t *hw, u16 rid, u16 val)
 }
 
 int
-hfa384x_drvr_getconfig_async(hfa384x_t *hw,
-			     u16 rid, ctlx_usercb_t usercb, void *usercb_data);
-
-int
 hfa384x_drvr_setconfig_async(hfa384x_t *hw,
 			     u16 rid,
 			     void *buf,
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 7eda536..4e4b6e3 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -213,8 +213,6 @@ unlocked_usbctlx_cancel_async(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx);
 
 static void hfa384x_cb_status(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx);
 
-static void hfa384x_cb_rrid(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx);
-
 static int
 usbctlx_get_status(const hfa384x_usb_cmdresp_t *cmdresp,
 		   hfa384x_cmdresult_t *result);
@@ -816,43 +814,6 @@ static void hfa384x_cb_status(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
 	}
 }
 
-/*----------------------------------------------------------------
-* hfa384x_cb_rrid
-*
-* CTLX completion handler for async RRID type control exchanges.
-*
-* Note: If the handling is changed here, it should probably be
-*       changed in dorrid as well.
-*
-* Arguments:
-*	hw		hw struct
-*	ctlx		completed CTLX
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
-static void hfa384x_cb_rrid(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
-{
-	if (ctlx->usercb != NULL) {
-		hfa384x_rridresult_t rridresult;
-
-		if (ctlx->state != CTLX_COMPLETE) {
-			memset(&rridresult, 0, sizeof(rridresult));
-			rridresult.rid = le16_to_cpu(ctlx->outbuf.rridreq.rid);
-		} else {
-			usbctlx_get_rridresult(&ctlx->inbuf.rridresp,
-					       &rridresult);
-		}
-
-		ctlx->usercb(hw, &rridresult, ctlx->usercb_data);
-	}
-}
-
 static inline int hfa384x_docmd_wait(hfa384x_t *hw, hfa384x_metacmd_t *cmd)
 {
 	return hfa384x_docmd(hw, DOWAIT, cmd, NULL, NULL, NULL);
@@ -2091,41 +2052,6 @@ int hfa384x_drvr_getconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len)
 }
 
 /*----------------------------------------------------------------
- * hfa384x_drvr_getconfig_async
- *
- * Performs the sequence necessary to perform an async read of
- * of a config/info item.
- *
- * Arguments:
- *       hw              device structure
- *       rid             config/info record id (host order)
- *       buf             host side record buffer.  Upon return it will
- *                       contain the body portion of the record (minus the
- *                       RID and len).
- *       len             buffer length (in bytes, should match record length)
- *       cbfn            caller supplied callback, called when the command
- *                       is done (successful or not).
- *       cbfndata        pointer to some caller supplied data that will be
- *                       passed in as an argument to the cbfn.
- *
- * Returns:
- *       nothing         the cbfn gets a status argument identifying if
- *                       any errors occur.
- * Side effects:
- *       Queues an hfa384x_usbcmd_t for subsequent execution.
- *
- * Call context:
- *       Any
- ----------------------------------------------------------------*/
-int
-hfa384x_drvr_getconfig_async(hfa384x_t *hw,
-			     u16 rid, ctlx_usercb_t usercb, void *usercb_data)
-{
-	return hfa384x_dorrid_async(hw, rid, NULL, 0,
-				    hfa384x_cb_rrid, usercb, usercb_data);
-}
-
-/*----------------------------------------------------------------
  * hfa384x_drvr_setconfig_async
  *
  * Performs the sequence necessary to write a config/info item.
-- 
1.9.1


