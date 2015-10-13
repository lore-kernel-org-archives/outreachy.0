X-GM-THRID: 6205040264708358144
X-Received: by 10.107.30.76 with SMTP id e73mr29062242ioe.16.1444723618831;
        Tue, 13 Oct 2015 01:06:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.67 with SMTP id i64ls1722627ioe.41.gmail; Tue, 13 Oct
 2015 01:06:58 -0700 (PDT)
X-Received: by 10.107.158.211 with SMTP id h202mr7893546ioe.22.1444723618575;
        Tue, 13 Oct 2015 01:06:58 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id wl2si180663pab.1.2015.10.13.01.06.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:06:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ex6so14027657pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OB/GawiIxwydYBWsuv6Zkv1X1d7RPH8VNK4DFC2yjJ8=;
        b=vhZ3oFFVQa/5b5IwwZAxwZ/6UJGzdnJItZUu9cvKK56n0Fgx4HKHvoTxY8qdaGo1H+
         9OVM/zhMPRY/vQqfhSWM0nUCBjRJZd7/81wNErdmoj7UZOaW5r+tsIzc+hW2BmjmsetH
         WkZuA3ZjPAHziUYS7mT27UVZ25Sj8RUCHqBIX6VIgW6oYHkBnO11aItvcDJVwgn+Sh5m
         F+s+KbuwekTlGCOPBm7XgyD3T08QMxw8OYBKgzgd/Dp/j9cr4KYmmIsPIOaRvElD583q
         oOQtOOa079mqKg65bJSpRj3FdQ5WqxWZeAOoobUfoaDvRXbNv9MOfgEMhcew45INeVRH
         piXw==
X-Received: by 10.68.217.8 with SMTP id ou8mr39676991pbc.164.1444723618405;
        Tue, 13 Oct 2015 01:06:58 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.82.229])
        by smtp.gmail.com with ESMTPSA id tz1sm2219405pbc.50.2015.10.13.01.06.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 01:06:57 -0700 (PDT)
Date: Tue, 13 Oct 2015 13:36:55 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8712: Remove useless cast on void pointer
Message-ID: <0c1c4fe1d2bb9927aca67bd331fb5873f428a136.1444723375.git.amitoj1606@gmail.com>
References: <cover.1444723375.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444723375.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used to find this is:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index b755ab4..9453975 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -317,7 +317,7 @@ int r8712_cmd_thread(void *context)
 	unsigned int cmdsz, wr_sz, *pcmdbuf;
 	struct tx_desc *pdesc;
 	void (*pcmd_callback)(struct _adapter *dev, struct cmd_obj *pcmd);
-	struct _adapter *padapter = (struct _adapter *)context;
+	struct _adapter *padapter = context;
 	struct	cmd_priv	*pcmdpriv = &(padapter->cmdpriv);
 
 	allow_signal(SIGTERM);
-- 
1.9.1


