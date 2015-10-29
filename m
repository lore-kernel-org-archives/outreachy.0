X-GM-THRID: 6210976897609760768
X-Received: by 10.13.213.207 with SMTP id x198mr286714ywd.34.1446105831903;
        Thu, 29 Oct 2015 01:03:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.5 with SMTP id xs5ls69550obc.9.gmail; Thu, 29 Oct 2015
 01:03:49 -0700 (PDT)
X-Received: by 10.182.250.233 with SMTP id zf9mr280273obc.7.1446105829592;
        Thu, 29 Oct 2015 01:03:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id sm2si59098pab.0.2015.10.29.01.03.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 01:03:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy1so27558574pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 01:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5esuXWq9tVNg2VgpSBSkRq2NB6xif46eFJPalDc6hgk=;
        b=VuuVZ1RMOnlcK4OT55K4I7WmSnfK5IivGIQKhXG6PPweM/B+QdhotDee4eQHtrNDFp
         lFdeeTUUpVN3Z1AoX4fK6qqmKjoGaR88LlfApmHlM3VQwlOj7v6tXypiJ9auET6/Q6uR
         19sNhSfUKoZpbg24cqYtYSL2tXMCKC+b36dBApqMr/z3vjLYWJ+/F0meRL5CekP7b0QL
         DfHsblUA5mVZJWBdEipmW6G4Dn/wKl0TJbTTGrnyDFJd/phRykRzCFKXlAyOKIFIDNfv
         QI/gsmjQ71SQW5stEQ3PTWmUTz6iIBqDK9vwjGramlEa0DdBC05raYeh+L6znGhggXYU
         nEIw==
X-Received: by 10.66.232.5 with SMTP id tk5mr492644pac.106.1446105829444;
        Thu, 29 Oct 2015 01:03:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.166.247])
        by smtp.gmail.com with ESMTPSA id ku1sm672035pbc.47.2015.10.29.01.03.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 01:03:49 -0700 (PDT)
Date: Thu, 29 Oct 2015 13:33:45 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rdma: amso1100: Remove unnecessary variable
Message-ID: <43020cdae9259ac32a85d2e24e79a4953d506b8e.1446105494.git.amitoj1606@gmail.com>
References: <cover.1446105494.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446105494.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop unnecessary variable that can be replaced by single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/amso1100/c2_rnic.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2_rnic.c b/drivers/staging/rdma/amso1100/c2_rnic.c
index d3c0f77..5e65c6d 100644
--- a/drivers/staging/rdma/amso1100/c2_rnic.c
+++ b/drivers/staging/rdma/amso1100/c2_rnic.c
@@ -81,7 +81,6 @@
 static int c2_adapter_init(struct c2_dev *c2dev)
 {
 	struct c2wr_init_req wr;
-	int err;
 
 	memset(&wr, 0, sizeof(wr));
 	c2_wr_set_id(&wr, CCWR_INIT);
@@ -94,9 +93,7 @@ static int c2_adapter_init(struct c2_dev *c2dev)
 	wr.q2_host_msg_pool = cpu_to_be64(c2dev->aeq.host_dma);
 
 	/* Post the init message */
-	err = vq_send_wr(c2dev, (union c2wr *) & wr);
-
-	return err;
+	return vq_send_wr(c2dev, (union c2wr *) & wr);
 }
 
 /*
-- 
1.9.1


