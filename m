X-GM-THRID: 6465312034582953984
X-Received: by 10.99.65.133 with SMTP id o127mr11533579pga.44.1505322762891;
        Wed, 13 Sep 2017 10:12:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.135 with SMTP id y129ls211109iod.32.gmail; Wed, 13 Sep
 2017 10:12:41 -0700 (PDT)
X-Received: by 10.98.134.135 with SMTP id x129mr10237580pfd.24.1505322761648;
        Wed, 13 Sep 2017 10:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505322761; cv=none;
        d=google.com; s=arc-20160816;
        b=czRtvbA8sqOm3bNLS/wMclERI8v4eXRG7o9lSefaox3LEqGyv7GGg2LNyGVZmbWuOC
         yR9qcAuwIZ2KvNYNKivIuNGptJj0fIdG2bSut3Qjs+I9niIZRX4FdAbjW+VWlMovo2kk
         f4PwewFwa4K2AGZ9ppt0IiDV6nvmZlfbOUm7MLZ7Ft3ydc7VQl0sLKFrtps0I/waum/t
         0qIveBd7pJJlHeQXnUAgaNuteagXibhnwg2j2FEQiVlPLBZZf/KGnQt7XiH8GbF0wRJl
         XpAbFvk7ji8/CirXGrh1Rz/zO+mPmrOHaY/vT5C5cCSYlyhNxTLhd3h6fFWhwI3rrUdV
         oQrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=QAI+i0iACmIfFt5ivSLX4O6S9BHowUSox6syX3wT+SQ=;
        b=If58/8H7fKp7sVzhTYTwJqw+antROWXVZSbzpaKBvxGQkM7BvzfrtqaOOiucsd2+dA
         G7EFJO6sNNVGqb9ph9lRBDRdl8lCe4TpTd7kXGE9zEIBah7rEOmzQkYielinLveQvK86
         Z1d7nyLmKzPd5mjdfQD9zLY7nIkOka4uk5rOFHgzsIq0d3r4oxrzOfCZRf9t+604Wj35
         eLg0pSkhA2CgRoVBGRD3b7fdckK5VDAj4Fm7ACW8iydkYTcYkd2NuWKKuZ2O1xtGJZnb
         8VL1CU/2bDwF9oVi3NKkgY1mWq8gmzAkDJlehKlN3uKJBEJve5PDkBJCwkq9zEA1Ssko
         sNnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c/dryMXO;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c200si534037pfb.14.2017.09.13.10.12.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 10:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c/dryMXO;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id f84so330408pfj.3
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 10:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QAI+i0iACmIfFt5ivSLX4O6S9BHowUSox6syX3wT+SQ=;
        b=c/dryMXOnoSM63ddsgU31xVWOADPzLTcKPCQflkuSe/UKpMNzy4e1cLM1O+cwOwu6W
         37q2m0DFZ97Zqja+t7Y8Is4DxYX8GMQrTqLVKG35j/OZRsRMzmKKPTaVAcmXGMmtbEx4
         nHu11N+Wes0TqZEDEsGxFl5lyqJrKOA0OAkNv0jTifX4A5/w3Waj2+a74q7+zCtJxs2w
         J+jmpempZnaFE0O0IdKUiWRLzRyXrpVN/WE6NL2di/SR+WnngQP3ApK0vrPlVx/hzgxG
         RnAwmCZsYcUStWoyKElGiiGQeBtgy6dh08L/zYntY/mmf0IWZJ7JFYbiUDycMRlyShcy
         6zrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QAI+i0iACmIfFt5ivSLX4O6S9BHowUSox6syX3wT+SQ=;
        b=mU8UdvPamiX/SN0u1gS2iUsbq5hTwY4RI5SsCI6aAaQnacR+Lg4mg+XBvdY9agyY0t
         /FrFOcnDhlse/pC6KxMTWqLqIBbL8wSva6CIFo36D3lE1BtBfxhFgM5TBb+jMsgkVGmH
         7JOxWL3Zh5hFPTIKJOVMiLp/ndrGfyOmcjg2A6dl4bP4YD3SCAm9oVfj1N89N4RvEpzB
         Ful4ytl2As4wufZnu8coJcZr3eRcXVcSdhLpqDQQxWqy0Q9+FivTW0IRshdBbXa3ZcKn
         C56ObIlacLGdY6L14hj44RE0U2sqX6RNPOSHUVl1cYXq5mZUGG4VOBFOfyrs9vQLsokp
         /UOg==
X-Gm-Message-State: AHPjjUgOQonkFVJ65nophxD7XZObDeGfi+A8qOMS4y3oAMZt1WzvWORE
	OAS05pxrFOiNQTBAnLs=
X-Google-Smtp-Source: ADKCNb6SOacaUNl8tKLpTF0Dsa1TxBp+ARv19QnlB/MllwQ0f1mXT06alMjoQFiK2uranG1MS0mOHA==
X-Received: by 10.101.72.199 with SMTP id o7mr19216750pgs.450.1505322761436;
        Wed, 13 Sep 2017 10:12:41 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([42.106.92.147])
        by smtp.gmail.com with ESMTPSA id n19sm27048002pfj.114.2017.09.13.10.12.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 10:12:40 -0700 (PDT)
Date: Wed, 13 Sep 2017 22:42:34 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	julia.lawall@lip6.fr
Subject: [PATCH] staging: Android: follow coding guidlines
Message-ID: <20170913171234.GA4052@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

- Add a new line after struct declaration
- remove extra new line.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/android/ion/ion.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/ion.h b/drivers/staging/android/ion/ion.h
index 621e5f7..f5f9cd6 100644
--- a/drivers/staging/android/ion/ion.h
+++ b/drivers/staging/android/ion/ion.h
@@ -86,6 +86,7 @@ struct ion_buffer {
 	struct sg_table *sg_table;
 	struct list_head attachments;
 };
+
 void ion_buffer_destroy(struct ion_buffer *buffer);
 
 /**
@@ -299,7 +300,6 @@ size_t ion_heap_freelist_shrink(struct ion_heap *heap,
  */
 size_t ion_heap_freelist_size(struct ion_heap *heap);
 
-
 /**
  * functions for creating and destroying a heap pool -- allows you
  * to keep a pool of pre allocated memory to use from your heap.  Keeping
-- 
2.7.4


