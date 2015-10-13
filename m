X-GM-THRID: 6205040264708358144
X-Received: by 10.107.31.209 with SMTP id f200mr27446233iof.14.1444725329266;
        Tue, 13 Oct 2015 01:35:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.218 with SMTP id 87ls231923iol.10.gmail; Tue, 13 Oct
 2015 01:35:29 -0700 (PDT)
X-Received: by 10.66.90.132 with SMTP id bw4mr27857949pab.7.1444725328973;
        Tue, 13 Oct 2015 01:35:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id uv4si238647pac.0.2015.10.13.01.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:35:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hy16so14857213pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=mjpawWyodvp2eAOIx8DsGyZ2CFrUjWvEHboKvuXeKjA=;
        b=Nh+SvMdpsQoHa+jkx2uIUMkNM2OCAJsOYn/jf7m3OnlixdQEVQm2ohX7eT4M5D4c3+
         xYJqsXmg+57cuw+Z2F/GUDvFa1OrRq9FZFc/ZW5wCPmaYCY9dN/ZNSANS74u82v1DCDX
         1i+ijHQSJtr/k36DRPsyDwk0whryiFuCs29SXF72l2A3XVU+SghkgEAIuywdBmvWQsU4
         PQ78tgdETM934VaW+oTzw4TryZhUGJl3DEwPX9Yay7VNoNhyihT+2VBFMOlj5ozHGb5+
         gpSiGIc1+ElIzh/O0vZLVk6Y7m7rTiVYKiOOq5pSX7a7qj2d1nGQs3Vb0v8SKO2ab+qt
         xyBA==
X-Received: by 10.68.200.100 with SMTP id jr4mr40327663pbc.16.1444725328839;
        Tue, 13 Oct 2015 01:35:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.82.229])
        by smtp.gmail.com with ESMTPSA id r2sm2404728pap.23.2015.10.13.01.35.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 01:35:28 -0700 (PDT)
Date: Tue, 13 Oct 2015 14:05:25 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: rtl8712: Remove useless cast on void pointer
Message-ID: <0c1c4fe1d2bb9927aca67bd331fb5873f428a136.1444725049.git.amitoj1606@gmail.com>
References: <cover.1444725049.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444725049.git.amitoj1606@gmail.com>
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
Changes in v2:
        -None

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


