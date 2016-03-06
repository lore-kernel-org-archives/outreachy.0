X-GM-THRID: 6258953654266494976
X-Received: by 10.182.24.199 with SMTP id w7mr12927787obf.48.1457276207806;
        Sun, 06 Mar 2016 06:56:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.98 with SMTP id a89ls1040303qga.11.gmail; Sun, 06 Mar
 2016 06:56:47 -0800 (PST)
X-Received: by 10.31.169.130 with SMTP id s124mr13176481vke.1.1457276207203;
        Sun, 06 Mar 2016 06:56:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ff2si2575250pad.2.2016.03.06.06.56.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:56:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id tt10so1223253pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yW/0wFlHEnh5t3w9G4GC8BcI7Ufnd3QB8WftD1oXs0E=;
        b=ztHOQhxbt/QmwypUjnt5SaBAYlWLNVElSIgilICFjVBUNt7rSFap41UfFhFpHUaN7/
         PRWwT1+tMOPIIW0PNQraD34yXDlMHoQezfXeh3VvCvQFbr1cGEWxyuFRFRiH6ayffKuW
         J7E1o/PbujHAZ3PiBRgsZRWg0H6hQ/UhLMdzQpNtkc+VUaqF/B9g//xEZjxihLwyIKi+
         AcO+eNxaH6Ujym2nFjbPT6jr076wO4kkpU4NIPBL1IAZ6J6pY+JT8GEzPG2e+/M1WWqa
         NHW/VTQ0ID9ME8x2n6CVo8P3KVrlz3uGr8W7VFf4taVyHk7gKPRM04YbsXJUAC6dgeo+
         g+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yW/0wFlHEnh5t3w9G4GC8BcI7Ufnd3QB8WftD1oXs0E=;
        b=jiP0nfAy9i3AjsmnT8XQuPcnK1zb/tJH7wWdW7A2y5Ow+R9+Bo1YtB9E4IuTpFusGX
         2ChopyW/lTlkoTJsaSpN580Vb776eTdDtNH2OP6zwfK9kW+huwerYFxENTmW+7rPaKLf
         F+ekeAcGLpGSto30SkZtZRPR+aZHOtF9dl8f71AGzpUyIC2SY6PuZr+EcsQZD8T8ZOfQ
         1GeMVNIxChmRhmS5g/xLL9I1/w8Z8xgHTuhIYlShEhok1Y59kh+QpTpDF8xTK70u2hvI
         4R4DGrkKXZlgEuEZQp4civ2iNCZPv/aTBCM0K2EtRDvLtC4YrriEHlySBYJS/gXSpYbv
         KGUA==
X-Gm-Message-State: AD7BkJL4pKdgLexijNj0qAJk92ThG9eNdJve8u8bjupbJRCER6vRVrc04T6E46YF54rS4A==
X-Received: by 10.66.174.199 with SMTP id bu7mr26928926pac.34.1457276207011;
        Sun, 06 Mar 2016 06:56:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.181.247])
        by smtp.gmail.com with ESMTPSA id e79sm18239134pfb.76.2016.03.06.06.56.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:56:46 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 06 Mar 2016 20:26:35 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: gdm724x: Use list_next_entry instead of list_entry
Date: Sun,  6 Mar 2016 20:26:30 +0530
Message-Id: <1457276190-12089-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replace list_entry with list_next_entry as it makes the code
more clear to read.
Done using coccinelle:

@@
expression e1;
identifier e3;
type t;
@@
(
- list_entry(e1->e3.next,t,e3)
+ list_next_entry(e1,e3)
|
- list_entry(e1->e3.prev,t,e3)
+ list_prev_entry(e1,e3)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index 9db9b90..a19d210 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -227,7 +227,7 @@ static struct usb_rx *get_rx_struct(struct rx_cxt *rx, int *no_spc)
 		return NULL;
 	}
 
-	r = list_entry(rx->free_list.next, struct usb_rx, free_list);
+	r = list_next_entry(rx, free_list);
 	list_del(&r->free_list);
 
 	rx->avail_count--;
@@ -402,8 +402,7 @@ static void do_rx(struct work_struct *work)
 			spin_unlock_irqrestore(&rx->to_host_lock, flags);
 			break;
 		}
-		r = list_entry(rx->to_host_list.next,
-			       struct usb_rx, to_host_list);
+		r = list_next_entry(rx, to_host_list);
 		list_del(&r->to_host_list);
 		spin_unlock_irqrestore(&rx->to_host_lock, flags);
 
-- 
1.9.1


