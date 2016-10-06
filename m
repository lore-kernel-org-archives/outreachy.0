X-GM-THRID: 6338413809967824896
X-Received: by 10.157.42.120 with SMTP id t111mr4044943ota.20.1475776967289;
        Thu, 06 Oct 2016 11:02:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.56 with SMTP id g53ls3587119ote.32.gmail; Thu, 06 Oct
 2016 11:02:46 -0700 (PDT)
X-Received: by 10.129.77.87 with SMTP id a84mr4188990ywb.30.1475776966888;
        Thu, 06 Oct 2016 11:02:46 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 80si1214282pfw.0.2016.10.06.11.02.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 11:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id cd13so1422029pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 11:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KI/MZOQA5JW3MWAW890CKo3zen7dQgsWr1CTzAQgQFA=;
        b=OGPaeohyUWd7NlGFj7PBAds+0oE/C7aE2tJmjSam+z0dQSEH8zcfPDAX5rnR3XMad8
         lgNTk2myFouvFv6xO3uGKqxM6kjbNeuo5PstOHY51oHVgfI4qfDysI0070pws5ikCsWf
         C/48q/6OLYwRww1YgXOV9mb/zwvscETL5OBrz5W8AiII0tIX8sJxSntsejgixx9I1/GM
         5TGpKrE6qSNpXYIGtvDvO+nVnDE0zLwNZnz1kt/Dwmx2TwBJ5ZwpXYYAy9i59OnNCqkH
         HEvl6BzL17JooMeLzOsTwzXQk6hGeJbqu9C7hZLTw1lzp0kCySwj+Q6CajIpu/99YkxI
         ty+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KI/MZOQA5JW3MWAW890CKo3zen7dQgsWr1CTzAQgQFA=;
        b=Ug8kfTXiVJyWqOKnF48IYDL0YiauBzmYf50mrSgpuSdQenAxjhTPsIlWHRIU44D8va
         ypTP0EpV+UEzNBAetKJ3mXUcQy/WuEHBnNmA6AEFUkeq4MSLErIINwJ7xAiX85BwsP/5
         s1vDrNFSAjf7nDdFYDGBQyNvpin6yMGMLrthbX9Z7LVRVgrIcfdAcOFmA+lGYpQAeulp
         CTPv8xxdxVFNPSmbFTsKuEq1/J79TlkYx0w9A/QvAR3lOcmktlYQFS4GUaWDJyOJaSga
         9SrR5aaw8H0V4OxSHLwKYHmW1b8DEWiecFh5Qk5nZHlomUybfKz2LSTPPgySyLkxIG+h
         PlVg==
X-Gm-Message-State: AA6/9RkQ1rGfGP0jStIKJbm5f5YRHOadwG8enQEG29D19c8QtX7SPFWcOxx110McXmx/9A==
X-Received: by 10.66.142.101 with SMTP id rv5mr23430731pab.80.1475776966198;
        Thu, 06 Oct 2016 11:02:46 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.129.16])
        by smtp.gmail.com with ESMTPSA id t18sm7425550pfk.29.2016.10.06.11.02.32
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 06 Oct 2016 11:02:44 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Thu, 06 Oct 2016 23:32:21 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8712: remove unused functions
Date: Thu,  6 Oct 2016 23:32:20 +0530
Message-Id: <1475776940-27834-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the functions sleep_schedulable, down_scanned_network,
up_scanned_network and get_free_xmit_queue as they are not used anywhere
in the kernel. Functions detected using coccinelle but changes done by
hand.
Script:

@initialize:python@
@@
def display(name,p):
        print(name,p[0].file)

@r1@
identifier func;
type T;
position p;
@@
static T func@p(...)
{
...
}

@r@
identifier r1.func;
@@
func

@script:python depends on !r@
func << r1.func;
p << r1.p;
@@
display(func,p)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8712/osdep_service.h |  9 ---------
 drivers/staging/rtl8712/rtl871x_mlme.h  | 18 ------------------
 drivers/staging/rtl8712/rtl871x_xmit.h  |  6 ------
 3 files changed, 33 deletions(-)

diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index c9ea50d..b8a1709 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -63,15 +63,6 @@ static inline u32 end_of_queue_search(struct list_head *head,
 	return (head == plist);
 }
 
-static inline void sleep_schedulable(int ms)
-{
-	u32 delta;
-
-	delta = msecs_to_jiffies(ms);/*(ms)*/
-	set_current_state(TASK_INTERRUPTIBLE);
-	schedule_timeout(delta);
-}
-
 static inline void flush_signals_thread(void)
 {
 	if (signal_pending(current))
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index ddaaab0..53a2323 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -162,24 +162,6 @@ static inline void clr_fwstate(struct mlme_priv *pmlmepriv, sint state)
 	spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
 }
 
-static inline void up_scanned_network(struct mlme_priv *pmlmepriv)
-{
-	unsigned long irqL;
-
-	spin_lock_irqsave(&pmlmepriv->lock, irqL);
-	pmlmepriv->num_of_scanned++;
-	spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
-}
-
-static inline void down_scanned_network(struct mlme_priv *pmlmepriv)
-{
-	unsigned long irqL;
-
-	spin_lock_irqsave(&pmlmepriv->lock, irqL);
-	pmlmepriv->num_of_scanned--;
-	spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
-}
-
 static inline void set_scanned_network_val(struct mlme_priv *pmlmepriv,
 					     sint val)
 {
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index d899d0c..4092727 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -261,12 +261,6 @@ struct	xmit_priv {
 	uint free_xmitbuf_cnt;
 };
 
-static inline struct  __queue *get_free_xmit_queue(
-				struct xmit_priv *pxmitpriv)
-{
-	return &(pxmitpriv->free_xmit_queue);
-}
-
 int r8712_free_xmitbuf(struct xmit_priv *pxmitpriv,
 		       struct xmit_buf *pxmitbuf);
 struct xmit_buf *r8712_alloc_xmitbuf(struct xmit_priv *pxmitpriv);
-- 
1.9.1


