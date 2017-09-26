X-GM-THRID: 6470117861435113472
X-Received: by 10.46.20.17 with SMTP id u17mr810788ljd.24.1506441721110;
        Tue, 26 Sep 2017 09:02:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.16 with SMTP id o16ls526793lff.13.gmail; Tue, 26 Sep
 2017 09:01:59 -0700 (PDT)
X-Received: by 10.46.43.93 with SMTP id q90mr834399lje.3.1506441719811;
        Tue, 26 Sep 2017 09:01:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441719; cv=none;
        d=google.com; s=arc-20160816;
        b=GvaJxHjj2MPx1k/yhGM+Df8SJbIcHKxwERhnvEuON9Qgwn/lct80PifgZmzJ+Qr5qX
         H8ZmzeRW0Asp6Mtxy+5kKuqG0f1j1Z0jK1nN889q/2REB932HW0A23x4ejH/8Yot/ktE
         4hxOO/6Jthl5QjD1uRVAY4rxSUVTuogy9KXUzivHiv4UpbTZAKMrrgQEhYIYdArXn9JA
         T+1Wq4IOiaoTWtkC9MBGVILXBKF42qS4GoVN3Gwrako/04/l9ZB2pTTbaVPKokbo9X7c
         jR2EM4+8L6aCDllbCnO1DrJHqMAIwfM2quXQNysH1jnePa6WZAWveIUNgKMH3H7IBh5M
         5gBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=0FQWEJpMhC2apjajaZRIQT2WdA37sHyyqFSGz4bSJ3E=;
        b=NdHmuuosKUgF9o90GtY8Eq20QYpmU1uYLKP7TlKlrkIV6Vjq3d+3181A9Vd576DA4/
         1jNYaSJnHcp1CyB8DmXP7nAbKlYo+b2Lus/zBjrjEQ3EsiYM99ZFmtJUXAxu4bh4ojlR
         r0KI+oz+s/ox3oTUQvD0kU2NsdjZ204wcXyDOwuybxp2V3Aodu5lXnZXhrnP+cnYXpdc
         vYGrOwEEZwjTesraG/6Q7fIshbqDlm3Ap5FLKMXFkTTpVJ1dPqTXeQhJe7itmcBDzjBG
         iDiuEt47/zBvfdjBocnUIQ3/9Y/ijxWj477aSlesDfDKpqeRZnbxn3RNW+mO5n8XDEr+
         L19w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DtyBIGso;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id 200si947898wmj.0.2017.09.26.09.01.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:01:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DtyBIGso;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id r136so9523383wmf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0FQWEJpMhC2apjajaZRIQT2WdA37sHyyqFSGz4bSJ3E=;
        b=DtyBIGsoMhfyg5eyyMH0JajxMB1sGdIHE4tAcOaZ+6kjTEj/4LNw1ztg2PLsj20nnv
         qb1hNM96ubDxbauJro0l9L8KQknFiBO5JfZKp8v1/XZnBdR6jaAmIZ5i76bjkcCgOs29
         +IjzAWvlmZTtGZHNb+xL4J+c+fwV122856I+oWosZwigB6TNaU/66jdkxkrduV5ezgBl
         yKLaYIPS1RAMqmr/Q9AY5cC21gghv8gnybLlIfd2cn2ntSIBaVf+API7mmQUBJVyhKmv
         tinaptwCxhu/GU+/n3R/1hl+79Xk6j8Y9UkaYQ5xrYQq47rQddIPzx00NpIdSsvi4gIL
         MUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0FQWEJpMhC2apjajaZRIQT2WdA37sHyyqFSGz4bSJ3E=;
        b=mYmJaGz2FMXQ/ApCB8rnMgRjUsFS8xndSV0Tnof0klrMX3pNtGSi/ojs8fTgp/bYmk
         O/m2tmG6B1FhdUFJN2QqkubRi+13KXiP1N7rktl4CIjxDJ6zGyxIWi0k0O3WSRf7yEiJ
         tSSUP3hwG8/tpxHp6N1fEGIz/LGC5EU9dhIhDA55O1pUd/bhNvz5wbUQ1ikhxONUcS2G
         W3oiI/QHQFUJqgMhhZR7GWbneWIlsgAC7vEQn4l4hCj92vD+m3+zWATjdD01e0pkB9qd
         dZniqgyRAvX4qKTuoYhxVoi0vYJ4aoSijxp9etXAPOWJOJkEQyfMo/yAi0Rx3JP+9XnU
         edjQ==
X-Gm-Message-State: AHPjjUiVPDUV3IGujQpow7DsfQLlLl3vTgIt12reL+KAyS/78ojFyLNn
	ugHD8iFu+Uz3gzl4eSeAfR3HzpPk
X-Google-Smtp-Source: AOwi7QBAwIFXyH3hbdmDsFk9KUaJwDOPkl89Uvonlv6N7+XzZ+p2A+l7+4Z6xokFkcGlxTXvvy+Bxw==
X-Received: by 10.28.36.212 with SMTP id k203mr3186799wmk.127.1506441718006;
        Tue, 26 Sep 2017 09:01:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id w14sm2166069wmf.13.2017.09.26.09.01.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:01:57 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 05/10] Staging: media: atomisp: Remove return statement from void function
Date: Tue, 26 Sep 2017 09:01:33 -0700
Message-Id: <baa6cb2405cc2c92b0b262133c834311e51860ed.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

The return statement is not useful when it ends a void function.

Issue found by checkpatch.pl:
WARNING: void function return statements are not generally useful

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index a2aa3bf..abfdfe6 100644
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
@@ -1411,7 +1408,6 @@ void hmm_bo_vunmap(struct hmm_buffer_object *bo)
 	}
 
 	mutex_unlock(&bo->mutex);
-	return;
 }
 
 void hmm_bo_ref(struct hmm_buffer_object *bo)
-- 
2.7.4


