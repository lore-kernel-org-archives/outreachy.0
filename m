X-GM-THRID: 6811336725430796288
X-Received: by 2002:a05:6830:144e:: with SMTP id w14mr5205850otp.75.1585887913636;
        Thu, 02 Apr 2020 21:25:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls2994675oib.5.gmail; Thu, 02
 Apr 2020 21:25:12 -0700 (PDT)
X-Google-Smtp-Source: APiQypLD7LqwuXJSFoofCU5TEXk9i0+lxlkU6WdLCtHLEz7gr5GVcTE7e7EFrMt/d6DrkImHbVYs
X-Received: by 2002:aca:4997:: with SMTP id w145mr1786786oia.58.1585887912282;
        Thu, 02 Apr 2020 21:25:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585887912; cv=none;
        d=google.com; s=arc-20160816;
        b=abNHA2hiQueh3N6R5qF/eRi5v5k8GYRze0KoJkXnaccfLyGACOnXe7CZGYnC3hRig1
         WzVpaoEgT27TVt+RAucKth/pwjqvVI+XQu34d95epWD65YIPR5hkLQmJm48jgy/jR8LF
         W5uIGxuUr0YEDlP9Lw+ixbHW6cCnRUye8GcP+dhNPJzpNkzAKSeK6p+vQdpc9TvG9iXx
         M+uufLgST2t27yct9JoKVvxS5e1M+yTjZOpHVQdEIQ2UHMO8Cw7MfNxrHMQfZ8nb1f0G
         Ss6ky4gDPjhmUPoEKc6+1Zsr8Glme15zkKt8xUIdlcTdR6TyhoQ2IbFXGd32GAFGavs4
         pXgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=AyD2kX0rtGFxJhOxxjgdsGTPUrD/FjXjSvw4eMWluYU=;
        b=0/QUE2BMMHvmz0xpsPYP6gFMLtTL9YdCuXbo9vp02oh02Q0lMNHZh1+uQp5hDZU6SZ
         5wZtNnWJ/tqZVMVtasLBiVkPOshBcpUwqQoMuP5Je2XSrZNobrt3J2C9FKZEk94heh9l
         7sNst6R5X94s1pr9BCuWJZZlb9nqU5srghLR8d1GSmuGIaVp2gorbgp5OqrC+7RHaX7m
         I/ecnS6vQggH3Sw9hGlLNgBTMpo9qEwtQobNdfqb325MlRR3nTGcLijz68jY+fMkEBoQ
         dJoyWm2WqAGhzw9bs9v0POZOyYb3F/e9k3mHqlveahWVKXC8p9wlvWuK3QVx7KLtrpl0
         960g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I+Q5xBnw;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id a3si478508otf.2.2020.04.02.21.25.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 21:25:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I+Q5xBnw;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id kx8so2395131pjb.5
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 21:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AyD2kX0rtGFxJhOxxjgdsGTPUrD/FjXjSvw4eMWluYU=;
        b=I+Q5xBnw6OlNyc1WeYEuiKJUTVH7pscJdTTt0CEbl2LzbrJ9EOwk04CgLOETAycBeQ
         0GyVQ2DWmVk0q5GewcChYtUHbGpq2sr/KkEvTTeZjZ99GSl3oVE6JvDmWhDwOoRGvmdl
         HwBKGy5bBPEL9ZB6jGxhb+k02kWIErPtOdWSmKDH8nRok/kagwYsZGxVIE4MS1O2VyDc
         nyI5qdFNfX4MZMNJQnuvlHqjiol3dLFc7SDOUYIbG25OJs3onxxEG09q5xMyM6LlD0wD
         YFsyfoxiBFCX/BaijsYn8l830uwB5L/C1MAJL0M0D7psWtuGNZwy2sBzuQFIFFPUcABL
         4dEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AyD2kX0rtGFxJhOxxjgdsGTPUrD/FjXjSvw4eMWluYU=;
        b=QqxpOSZklZC/FI+tnA110cTprlXOzIt4Cq//m4efFhM7ZIC4RnzQcQ3PjbLYhF+9se
         AOBoWE4mTUF2WTQ4WoZYmFF9olziZ7mzf4kEwHXOcnNUU0NC5pMdxyrWdPLx8cyOLBGy
         30LcPQ7Cw9SzOziHa4Za+nrj4QElmsxhTzui9ntQXQme2dJ7aSzyXJP3LmY7XHNg0TjH
         kxsQ+s3Bk4fec6KdJoiZdXp5cynTrDX3tbFm0+TwwoG771sctbxSs9kEMMG//ImQT3ly
         kPoPcEji6Gf321GYc94s5e+BRNwcbvBi9ZdhGmjin11HkH4fc77HwdcE51xAQzj6ZejM
         sSsQ==
X-Gm-Message-State: AGi0PubKk99wSOa3JssFKOlOrZ+nIgy739F+8Ap2rZ7GtlyeK6NqqNge
	nv+Y7to366+F2yHLVz1DR6SAqNbgUA1hJg==
X-Received: by 2002:a17:902:82c5:: with SMTP id u5mr6320102plz.254.1585887911382;
        Thu, 02 Apr 2020 21:25:11 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id l190sm4760286pfl.212.2020.04.02.21.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 21:25:10 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Laura Abbott <labbott@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
	Todd Kjos <tkjos@android.com>,
	Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>,
	Christian Brauner <christian@brauner.io>,
	devel@driverdev.osuosl.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v2] staging: android: ion: Align with parenthesis
Date: Thu,  2 Apr 2020 21:24:48 -0700
Message-Id: <20200403042448.863689-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align two different lines of arguments with the parenthesis
of their respected function definitions. Fix style warnings
of matching alignment.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v2: Change comment title and summary
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/android/ion/ion_page_pool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index f85ec5b16b65..0198b886d906 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -37,7 +37,7 @@ static void ion_page_pool_add(struct ion_page_pool *pool, struct page *page)
 	}
 
 	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
-							1 << pool->order);
+			    1 << pool->order);
 	mutex_unlock(&pool->mutex);
 }
 
@@ -57,7 +57,7 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
 
 	list_del(&page->lru);
 	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
-							-(1 << pool->order));
+			    -(1 << pool->order));
 	return page;
 }
 
-- 
2.25.1


