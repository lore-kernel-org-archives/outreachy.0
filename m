Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA832567
	for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 17:27:42 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id c1so9860304qkf.13
        for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 10:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pYcG2Qk1ZO/cqYL5YfDsFDWJ5Il/KuveA9TDSid9zzo=;
        b=igOV7D7/d6npFRLIAoUvNbMTfZQ4CjljlHo6ilghJ/lkUE7cuT1trlxQNF1nug59y0
         Fk8z44oOhrz5Tu7+5klnLIWziI9EWGIHfJD8tYEM4m+egAMDuOowTwwHhzPh5yn0F1qG
         eO9QSB/5kNAqald54oaY7dpllewWVmD7UUgjraTGR9z9rixcBEoi/CW9nSiEnRM7D9Zx
         99NUTYdFfGiGWNkm3JxYN3FWHobV3AlXpvQHVv9niETcanPJXGnL3js1ZFm85H5hvuSp
         BoVi8zuI0RJq4K+zCLy39WSFj/Kadix2Pea+1t2Rt4EdKz+SsJEarj9tDmhYNNBFg1KD
         IrBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pYcG2Qk1ZO/cqYL5YfDsFDWJ5Il/KuveA9TDSid9zzo=;
        b=lK5aUmEKugJuckGqcKzCrPt+ZwYelsd1eOJlBuTL/oPpeOq0E40sO4za2G0q0KoYnL
         EDFCV+9HteqN0Y4zo0jCAMS/k/BIOxwYz6JmohQlJPbBcf9uneLHtgvB3WozYX0UklNn
         nM8egxSZpSq7HTG0NBH07lz1yG6lTM613cfSjXB3c1Aew2Nu4rvLiJ4xbpc0SFuUA5qQ
         qiPvCuEI/5QWykIv+EbC6JRDTv4hrXXjqArRi33K7V9euzOJjl0mwDQbzydXVNbB+nKf
         +5VIuJWQxqeaC7DBRqA/EEdYrcsegU8ct85nZPldaY6mMeTJ3Md9r8hdH2s5UaStdTuG
         KKKQ==
X-Gm-Message-State: AOAM532U1uRZg/nqkjHh7xNIZPYBJl6TQnireARI9DhQ3ePIDweTEQ7J
	du+29nrHrB/TKZYhLoDnvcYkOlILkePWwQ==
X-Google-Smtp-Source: ABdhPJyVIOqwJoFCNUC+Oyn6BcZASJlwAaWZh7bKkATUP3u1h7Ghmx60/6Sz7Xs7j4sTY/6cf0Kk1A==
X-Received: by 2002:a05:620a:2a14:b0:69e:9996:4d2b with SMTP id o20-20020a05620a2a1400b0069e99964d2bmr1063263qkp.280.1650216461154;
        Sun, 17 Apr 2022 10:27:41 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id b9-20020a05620a0f8900b0069e84c5352asm1696264qkn.47.2022.04.17.10.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 10:27:40 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev,
	Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Subject: [PATCH 3/4] mbuto: quote variables when calling eval
Date: Sun, 17 Apr 2022 13:27:20 -0400
Message-Id: <628a443ef4725f55bf85f9ce4175206a6882e9c3.1650216230.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1650216230.git.sevinj.aghayeva@gmail.com>
References: <cover.1650216230.git.sevinj.aghayeva@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We need to pass suboptions multiple arguments as a single string, as in

  SUBOPT_collection="net proc"

Without these quotes the result of eval becomes

  SUBOPT_collection=net proc

which assings only the value "net" to SUBOPT_collection.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 mbuto | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mbuto b/mbuto
index 44b9a56..f9ee6c5 100755
--- a/mbuto
+++ b/mbuto
@@ -497,7 +497,7 @@ subopts_get_one() {
 	[ "${__profile}" != "${PROFILE}" ] 	&& return 1
 	[ "${__passed}" != "${__short}" ]	&& return 1
 
-	eval $(echo SUBOPT_${__name}="${__value}")
+	eval $(echo SUBOPT_${__name}=\"${__value}\")
 }
 
 # subopts_get() - Set sub-option values, validating against SUBOPTS
-- 
2.25.1

