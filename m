X-GM-THRID: 6470117861435113472
X-Received: by 10.28.131.14 with SMTP id f14mr1455542wmd.25.1506893695225;
        Sun, 01 Oct 2017 14:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.136.40 with SMTP id d37ls1599540wrd.4.gmail; Sun, 01 Oct
 2017 14:34:54 -0700 (PDT)
X-Received: by 10.28.184.78 with SMTP id i75mr1648236wmf.30.1506893694719;
        Sun, 01 Oct 2017 14:34:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506893694; cv=none;
        d=google.com; s=arc-20160816;
        b=XiVTuZaHaNSAB/5202DhiUtOiiH8pvTkVJjn6j9J1T1CcQSpEysQ2OvwOrH7qSYzDn
         ZXFexGUHHOEhVmdiDB7LM9U1ERj44+Gd3gK4hgesKKdoKRu3Q+XehcglXrOR1U1+HN+u
         Efad0Ywb8VZziu5del0EBJlvA0G49OMfa++ho03BbY7rKVi47MkV4yKBdQZvA957IMjK
         0VGY5L0TK9srBYmLg+wdk8z/Ud4Ud0rf5w/OCvpdRVKgs1HtNFkmIcgGS/we4/4l3bx2
         KhrrcKemn0PubWh7aavyeXAZioIXpc4MBZh8nkM0LgjL9FBj3qJxvJY7WoARRJjUjmfW
         xlqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=XnJI7088yRCQTlQjAR97DongXujdB/9W5f2rxYgpYdM=;
        b=DD1meOK+ArE4lweBHBAuRf+k6lT0Hzudjg7jiwP/eiiZVt2+pFOdJuWZ6jq9pa8gvQ
         aTZfmD+n0vyCvO590ODzxh8REyfSFwamDCFmYchOMDutYcyViogprjkLMzY//NLN9SCU
         lPeD/MXUrMlGmW/3hRoTEHH8rLtWpZPSzlGrTx4q0mGwNjWtGtwZNaY3zWE1x9d5nRx7
         BW0am23J3LuLYFbDoQI3TxjR5gIlEPKoH18KyrxBvb6fFB8CErJ3Rskeq/91r9GrvBB7
         kdlnh9KB6wacgmkLiMYaHx0gV/3pfoDwTO9cUrZNt2pz2U6sVMHz8hyNSQmFoMqgbwrz
         Kl8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FW72R5pG;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id 196si256322wmk.4.2017.10.01.14.34.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 14:34:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FW72R5pG;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u48so2664076wrf.4
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 14:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=XnJI7088yRCQTlQjAR97DongXujdB/9W5f2rxYgpYdM=;
        b=FW72R5pGaN8J8t8esdv8+4jJQu0W7/ZEfFJrmOGelIzcuNktcjtoVS32+sn6gDuI8z
         zrgbriPtxZjiBCt1OkyLROdgAjRo/OpP+X40FwZis6Bj0O9kRppIpS72Y4hFy8uJGox0
         6kA/omfAkAYYedmkKPlVVNz9/sZYjD8JhLOGHlP3RVkq9/p8pfWd2NizmhKJVzPlnJq5
         e+SiUygyq0aWyETqJWBfEbbPfAZ3ng4hZehu2u4qAzFck47qbO9rDzn0kCUAbP+oIDhc
         FgTssw4VPnzv6KxbSTe/65ccAgyOu65+13wWhqhcIKOpBRNjsxSSphazPCdgIASr/7TT
         gNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=XnJI7088yRCQTlQjAR97DongXujdB/9W5f2rxYgpYdM=;
        b=lW4+jdufNugH5rf4FhFIDQR1Pr2A6GzRezJDMfWmHMKsXjxtZ7LdTaFOKpm+77CyHX
         p8YWY6S7YFGbExButQC3S+0jXZXBvsNXHQf8a8AqYzFJXgX2cy19/FY6nH4YUSEQqLnC
         LtLHlCoWnOM81RQR/U9Fjd4lmzZcpz5/hGZcFd25bSuIltu4BZNu7vMnm9t1KCsT6o2h
         QFDTXcfC1hPqZHREgddhWsGFVcCYr8Lquu+tfdr3PIziEcDZtPEYmML/oB+Zy9AnxbFw
         pd3BzPl8djrdPfkhgBSAaIZH3Hn6VMOsfetZiHDPnzIign2YfthiVGNlf8ngSdFbEzYd
         k8PA==
X-Gm-Message-State: AHPjjUi0A4nEjPtUCLcFd0k2w4wRuTHEKPVxPxHHFi+cEvK/TNCGOZbP
	pqXUOpPcBLZ0qN5Kq1y8qpU=
X-Google-Smtp-Source: AOwi7QAOdUmDXU0KfaC4CodUSJdlJp3AFXpTuA1Sw9Zhs6SHa42Y7Y9p1wHS3agYBxwUlWKZ6YdkCA==
X-Received: by 10.223.182.71 with SMTP id i7mr11917668wre.43.1506893694432;
        Sun, 01 Oct 2017 14:34:54 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-133-163.residential.rdsnet.ro. [5.12.133.163])
        by smtp.gmail.com with ESMTPSA id v19sm84405wrd.75.2017.10.01.14.34.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 14:34:54 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 4/7] Staging: media: atomisp: Remove return statement from void function
Date: Mon,  2 Oct 2017 00:34:39 +0300
Message-Id: <38beab7ff7d0d6bb42d7bf8c2fd7843fe514d42e.1506891671.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>

The return statement is not useful when it ends a void function.

Issue found by checkpatch.pl:
WARNING: void function return statements are not generally useful

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

Changes in v3:
* nothing changed

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index a180752e7c66..cf6078b2195a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -520,7 +520,6 @@ void hmm_bo_release(struct hmm_buffer_object *bo)
 	__bo_insert_to_free_rbtree(&bdev->free_rbtree, bo);
 
 	mutex_unlock(&bdev->rbtree_mutex);
-	return;
 }
 
 void hmm_bo_device_exit(struct hmm_bo_device *bdev)
@@ -700,8 +699,6 @@ static void free_private_bo_pages(struct hmm_buffer_object *bo,
 			break;
 		}
 	}
-
-	return;
 }
 
 /*Allocate pages which will be used only by ISP*/
@@ -1409,7 +1406,6 @@ void hmm_bo_vunmap(struct hmm_buffer_object *bo)
 	}
 
 	mutex_unlock(&bo->mutex);
-	return;
 }
 
 void hmm_bo_ref(struct hmm_buffer_object *bo)
-- 
2.11.0


