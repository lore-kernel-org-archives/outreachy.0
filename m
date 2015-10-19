X-GM-THRID: 6207450266150633472
X-Received: by 10.50.82.98 with SMTP id h2mr17923022igy.1.1445284783920;
        Mon, 19 Oct 2015 12:59:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.201 with SMTP id h67ls2952247qgh.60.gmail; Mon, 19 Oct
 2015 12:59:43 -0700 (PDT)
X-Received: by 10.13.202.13 with SMTP id m13mr19671972ywd.57.1445284783495;
        Mon, 19 Oct 2015 12:59:43 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ce6si3112046pad.0.2015.10.19.12.59.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 12:59:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fv9so104600192pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 12:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RkBmmCueOdrd/MWHhfOwRilfEuFVEtYMg5lyqpWhpSY=;
        b=IvnxKh4ZbqjE8+nPtEKJB9G2GCc9dWvgLozuCzzU6OcQu1Bvyp/NbzIs3NuGyj0JaJ
         xy6qryRlFicobrg6ewInLEaA26/Vxep44ekYk9w3NMW33633jUZd/E0DveaPqhhN5nxV
         HBFui7mnfv61ldbALFb5JXDaH/I82crxUR7mNGj9nCzTCDE5TcKWG62bofd9fQZXUHCj
         E7d1vj69QCCjotGvG9SERdhjocZDhKWUBajaaRsxzz7eVRkVFAXHENAgcWM0IBX0C+20
         bOizLHfVHuQ7zRLF2geQDmVt94XnRiMGh4HoCvx4MiGEKJyfsgw1p3nraKvfWXGfVMc5
         C/dA==
X-Received: by 10.68.163.194 with SMTP id yk2mr20887398pbb.102.1445284783339;
        Mon, 19 Oct 2015 12:59:43 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id w8sm37753443pbs.87.2015.10.19.12.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 19 Oct 2015 12:59:42 -0700 (PDT)
Date: Mon, 19 Oct 2015 12:59:42 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: r8723au: replace printk() with pr_err()
Message-ID: <beee0bc7850917329b2b0ad3d3e0584f5cbbcdba.1445282918.git.amsfield22@gmail.com>
References: <cover.1445282918.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445282918.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace printk() with pr_err() for uniform error reporting.
Issue found by checkpatch.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index c3579ac..7bf0f30 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -248,7 +248,7 @@ int rtw_enqueue_cmd23a(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	res = queue_work(pcmdpriv->wq, &cmd_obj->work);
 
 	if (!res) {
-		printk(KERN_ERR "%s: Call to queue_work() failed\n", __func__);
+		pr_err("%s: Call to queue_work() failed\n", __func__);
 		res = _FAIL;
 	} else
 		res = _SUCCESS;
-- 
2.1.4


