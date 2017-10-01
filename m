X-GM-THRID: 6470117861435113472
X-Received: by 10.28.159.206 with SMTP id i197mr999744wme.16.1506893692710;
        Sun, 01 Oct 2017 14:34:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.196.134 with SMTP id u128ls903116wmf.7.canary-gmail; Sun,
 01 Oct 2017 14:34:52 -0700 (PDT)
X-Received: by 10.28.17.7 with SMTP id 7mr420387wmr.25.1506893692151;
        Sun, 01 Oct 2017 14:34:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506893692; cv=none;
        d=google.com; s=arc-20160816;
        b=zqKibdTBOWjxrG0/OWs1Wg10VWP66T4oKsey6bo0iAkIuuS6KIhFfn7ixtehAzn0pw
         nq367L5GLHuD5a5i+mmrVuxgpRXowkDh1Cf6dVIriDZXWVNQveVNaMIFiMm7fujBO+En
         S5IP1F1cupo7ALE1jfKg3ZY8naqVUNckuFr0D9G/4kJ6ddVT8WGpHNlOSQmjmDB6VitC
         jyU59Tw9WscX4huydbxciVK7f5+hsPjg7YZ6tjPotOXpkXUuZ2rR0J+6+XzX/2/hd9O3
         VKECG4d6sGXyxnQq3V0Lnl1asK/wpGd6PrELPL48PAmj92DhRc5QycfSkk0oMuzKd9yZ
         Ec+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=4AHbi44uhLV0MhhT1Xrf4o6IQjvWnxILAyjSaxLqvlM=;
        b=eq0x7dc1v/ilvA8f1LVf3ayt1gs9DqsKwf20QAMOYoW20m5PpX9W5so/naKtBll6ht
         CGLYQsgndIK6ViiYWuxm0LhOAOneiwD42p/JLUePjPgaYbhKaD0tRjSfPyRiNsgzxe4C
         C/O7QQxV0A0EABaUtDsmVrhrxco99PcGVVjf87I0UcT6TQCWevqKcD7mdHWWLdaipkA6
         JQ5oOGxiuegu2FcYQH7XH/nZtDSjR6LH4HxlzIyNFb0wm+9W9O58Tqr6CTCjksLHdpGq
         NSvMhpZ4r9bzEigKQ6FouwKQQoLP6+/VtDGgSe8vJVYduU18wRXN4f86Js/RiLgJLBrp
         qm2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NXxSutFV;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id p200si1111461wmg.4.2017.10.01.14.34.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 14:34:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NXxSutFV;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id r74so1389857wrb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 14:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4AHbi44uhLV0MhhT1Xrf4o6IQjvWnxILAyjSaxLqvlM=;
        b=NXxSutFVdwNDK+oNWusJcCf9jxWDNF2ohZTOcosURusTNTAEALn5jyIAgSRrJ/lxs0
         Z2Vk18UaDbZaauu8wSs3SY/EBVPbjHQzDmjvmg4ezGB1xDaEfACS4700B7HMmGkaVuS6
         YPz+CzTB1MBYvDlsnfmcEBGQ+0/GqniS8k7dhzSeQAUi0A5BkOOAfq8EdOVK5z0AMwEa
         JRe1MqUvLXxRfoGmB4nfZuGexZT9O2KmdHvorsV7jsdJDaeie4PRJn3FAu/3pOSAebhv
         XuMWR/fIdb74FdtOSHYW3T5bDQOAJ3yQ7XRbh3lCiFZNTo3xP7meDhIrasAJOoXjmDsn
         uvyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=4AHbi44uhLV0MhhT1Xrf4o6IQjvWnxILAyjSaxLqvlM=;
        b=txLvdJzdzdGiJXGBP/SOjLx2d68ynaFBlojCF9ex2MCIEiSuuj5/dkobulZvqMSshu
         PV9hiNISksr+gXThKmbtZu8yPr6a+H3/1MB1/dq+hQS7vx7rKPcyiNJqSP3F48vsH7WG
         aD0z+YEuo2n/Il8izwszR2NoPAju+DmHrA+h4NtpUgPssN6tbalRWRF+S0Qwp4odFePL
         xHpzeXWM13yNA+p2ZVlGNSOV4/AEndX6qxTsSkSnDiT02of/XJ85JG5vfofWNGXRDPtm
         x+xbP20F3pGamOQ2YuOrQH1XyVQopq63QPh0ZSx68Y9o5ItnZjykJ/sZWnSBXV30YKwQ
         xpYA==
X-Gm-Message-State: AHPjjUgFoLPN+r2zjV1X0NQmr4K1a3u9vXrrJ7MCfvI5pi++t8dkH6kC
	5ocImEJBGqz26tVvolb3ChY=
X-Google-Smtp-Source: AOwi7QAt80J9oAdFFK8HV9xkTzdgkM8MJgURgDZM60EEr05LywgG48OpPxl8BslbJijzku8FRcBFvg==
X-Received: by 10.223.131.66 with SMTP id 60mr12065456wrd.171.1506893691700;
        Sun, 01 Oct 2017 14:34:51 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-133-163.residential.rdsnet.ro. [5.12.133.163])
        by smtp.gmail.com with ESMTPSA id w62sm5595044wmb.32.2017.10.01.14.34.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 14:34:51 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/7] Staging: media: atomisp: Remove unlikely from NULL pointer check
Date: Mon,  2 Oct 2017 00:34:37 +0300
Message-Id: <da8e4f9d806cd691051a5395dba03b0066f80fee.1506891671.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>

Remove unlikely because kmalloc uses it inside the source code.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

Changes in v3:
* nothing changed

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index ca90b22020cc..80952b7a9cc6 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -727,7 +727,7 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 
 	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
 				GFP_KERNEL);
-	if (unlikely(!bo->page_obj))
+	if (!bo->page_obj)
 		return -ENOMEM;
 
 	i = 0;
@@ -989,12 +989,12 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	struct page **pages;
 
 	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
-	if (unlikely(!pages))
+	if (!pages)
 		return -ENOMEM;
 
 	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
 		GFP_KERNEL);
-	if (unlikely(!bo->page_obj)) {
+	if (!bo->page_obj) {
 		kfree(pages);
 		return -ENOMEM;
 	}
@@ -1359,7 +1359,7 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 	}
 
 	pages = kmalloc_array(bo->pgnr, sizeof(*pages), GFP_KERNEL);
-	if (unlikely(!pages)) {
+	if (!pages) {
 		mutex_unlock(&bo->mutex);
 		return NULL;
 	}
-- 
2.11.0


