X-GM-THRID: 6205025075895205888
X-Received: by 10.182.29.41 with SMTP id g9mr4224524obh.27.1444720014027;
        Tue, 13 Oct 2015 00:06:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.110.36 with SMTP id hx4ls1284641igb.22.canary; Tue, 13 Oct
 2015 00:06:53 -0700 (PDT)
X-Received: by 10.66.121.135 with SMTP id lk7mr27214361pab.31.1444720013702;
        Tue, 13 Oct 2015 00:06:53 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id wl2si161165pab.1.2015.10.13.00.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 00:06:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rc13so12608342pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 00:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LD2bcgjkS03f+cOxADS7B0VMxeZYgl81E+C1MUX5KRQ=;
        b=JoCtWv8RJ6o7lIIL4+7rJhtmuD3uY4iW4U3SUturRJRUS5BD6jGVWKHNG+IcEd9aXZ
         IKIrhKeFgsfPZkzVtogTOkFYHO9URjgmz9DgDOVTrqIRXitNhdpZ1kSv1DGNzG/zWQsh
         DzSb6qtu8qI83zbCuTmLUbRljiJ6q14Umk6m0iaFY58Rn1SLPs3Rwa8SCVTWxXMWMdOz
         I7TfJVDAqAtd9GeG3uFWUwieKiWrBNbbquCqzrdawdUA37VTTC+zxBF15UtsCUfY7svr
         ApSpgRX7l7pqvEyJ6qiM1Jg3HToyQcTHLMvhsKUFmoR3vndxEqskqSv8srxqMnu9V9sV
         a6Vw==
X-Received: by 10.68.183.5 with SMTP id ei5mr39485666pbc.124.1444720013617;
        Tue, 13 Oct 2015 00:06:53 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id qp5sm1860096pbc.43.2015.10.13.00.06.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 00:06:52 -0700 (PDT)
Date: Tue, 13 Oct 2015 12:36:44 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] Staging: wilc1000: host_interface: Remove extra NULL
 test
Message-ID: <a9433e724043b5e3a1da566a95a13e94e7205851.1444719312.git.shivanib134@gmail.com>
References: <cover.1444719312.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444719312.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove NULL test on a variable as it is preceded by another NULL
test on the same variable in the code. Also, it is unnecessary to
NULL test before kfree().
Semantic patch used:

@@ expression E; @@
- if(E!=NULL){
- 	kfree(E);
- }
+ kfree(E);

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v3:
	-Fix errors in v2 and improve commit message by adding
	semantic patches used by coccinelle.

 drivers/staging/wilc1000/host_interface.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index bb833d3..cc969e4 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -6044,11 +6044,7 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
 	if (ret)
 		s32Error = -ENOENT;
 
-	if (pstrWFIDrv != NULL) {
-		kfree(pstrWFIDrv);
-		/* pstrWFIDrv=NULL; */
-
-	}
+	kfree(pstrWFIDrv);
 
 	clients_count--; /* Decrease number of created entities */
 	terminated_handle = NULL;
-- 
2.1.0


