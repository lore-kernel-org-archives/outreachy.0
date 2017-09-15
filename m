X-GM-THRID: 6465879632669310976
X-Received: by 10.129.118.79 with SMTP id j15mr14818442ywk.117.1505457524348;
        Thu, 14 Sep 2017 23:38:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.141 with SMTP id g135ls6292534ioe.23.gmail; Thu, 14
 Sep 2017 23:38:43 -0700 (PDT)
X-Received: by 10.31.93.3 with SMTP id r3mr2572039vkb.14.1505457523881;
        Thu, 14 Sep 2017 23:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457523; cv=none;
        d=google.com; s=arc-20160816;
        b=TBDhPETyZYsdgn22lg4AmiWCW1afzGrTz5uI/1jDVVx+WODhusBYc4oU7vQmIs5zGv
         gyLJvr0Avdkpr1DbhKUHjVNwmQSkUwxWWUyJ+okx/i0j0nNf8bMOdNK/3eHm1JRA7/9v
         T3FOTA0S65CcjbgOXOpkNVC8YODT17jMjl95GashpWQ+aS3vO8ogsCBzY4dboC7i6f5R
         rLeU5hZtObsXdq6pYaYdDRg+kZiJMYuqTPIQA00bm7Y6EWlNdapzrxxHSPTsptLMkbTa
         URUPSxYH/gthygGi8w9R5mEVbShjPmN7D7U7adfyBXzTJ33VVikIOpyTofJ08iKBoPap
         wH3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=J0+5uT6hMVr7SBC6TIwWQqbViQ1JnzwDNR8QvBwuRGc=;
        b=QYjhEunv848mNn0mO7c16Sej4LbvvasGrZD9s8iM0YbtAdpOfp2utXp8X64v0Ow4kQ
         Us37r4aFdQ05qAcU79LrelO9jecH91OGMHgbJJNWgAaxvWKmyCuKKHnXyJwdrt4KzPG7
         JX/yTrZIHysap8f4pfMsshBLFQBeMHJ7DH50CNkDZS3oUrGWQbq0AHFDrNSUsw1Z+FUo
         yeKa1vQdro8jPhRCOdkIn23pJnseeH11bAO0uFqUMzZnDgfvigV3FxyrDWeqecd1h4m8
         j6x8QgtOc8eIWygXyHhqJ6EwRiaiU95Mzza80GFCzo9DqdMsfq7hdEcqJiIyxxARDBqm
         Qtaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sucC8Gii;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s81si17644pfg.19.2017.09.14.23.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sucC8Gii;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so822891pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=J0+5uT6hMVr7SBC6TIwWQqbViQ1JnzwDNR8QvBwuRGc=;
        b=sucC8GiiVvUH0FyOsPuMDRXvR3bxj5rxYas3tUf2Qbge5dTPTGzHNiKEqYgzr1ELEb
         7zh2fTaX9pfFCuGQy/LtPlj9L7eb39zM+UKpvQ97KoL+CTE9fQZadvFuGLpSwCfNEXbm
         Ajt7Pmb/Fm7yUA6uFQ4lMiZl5OrBHVu7dSAveFVBdQqcwqorpZPDqsOMpv5OlUOfx1uA
         E4YuxK7/NQEWXwKjkgX9jgkRO/hg6XX95uONZMGQMAaQ7sXiBPnSCdQynvQgoCzn7Bis
         pCzRRMJs03RxAuXBeBrrIQJ3TvvsyyNmC783CMw++7a/lVixQLnw9Qd4n54KLKwP5cQ2
         HRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=J0+5uT6hMVr7SBC6TIwWQqbViQ1JnzwDNR8QvBwuRGc=;
        b=ozCJbiwHCDzja4ILZycr+TWsFoX9qPM7fHd0JRcU/suBlwSGQ877cM7GsVc4WCeCcT
         nSBdqMWrvlRl858INMgfpCqxlblWJP7ZlXPuKFq+DUD3LxpS3NvwfW2UePS1Gh4HfB7r
         v1mW09KrK00AeDmX5jKs1xCKGCG015/req+edobuqR+YLbNEZcVhDulgGQuQKpBJu8Uu
         C832aCfEOHkUomjXqJKokyZw6uHtHZMRusvbzX0ppd/dLCZskprXjm7VelX8CS7nHgau
         zbnpxIarxY82CONMg4fG3w/ZK+8cmfJsTBAugFIVX5X5PVsD8XJ4+nWX2MAn8wLObhgA
         0iiw==
X-Gm-Message-State: AHPjjUgUOMoVou6ZQL8qC8Rv0UzyW4GgzR8I8USdvzKcaOFFrXJ0+srg
	JhC9Fd/nyeaCF3eSQ9Y=
X-Google-Smtp-Source: ADKCNb4XH+aqZTve5mCsaaWVA3rjQhUq7A79mguo2GkW+jNYaWKYPf3C5UIfgM8/JfZ92En6PpQb2w==
X-Received: by 10.84.136.34 with SMTP id 31mr27327950plk.174.1505457523588;
        Thu, 14 Sep 2017 23:38:43 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id n18sm613244pgd.69.2017.09.14.23.38.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:38:43 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 3/8] staging: lustre: ldlm: fix line over 80 characters in ldlm_internal
Date: Fri, 15 Sep 2017 12:08:18 +0530
Message-Id: <a251eca8bcc6121018088cfc30cb4b16a10d9343.1505456961.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>
 <cover.1505456960.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <cover.1505456960.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
index 36808db..9776c39 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -88,7 +88,9 @@ struct ldlm_namespace *ldlm_namespace_first_locked(enum ldlm_side client);
 /* ldlm_request.c */
 /* Cancel lru flag, it indicates we cancel aged locks. */
 enum {
-	LDLM_LRU_FLAG_AGED	= BIT(0), /* Cancel aged locks (non lru resize). */
+	LDLM_LRU_FLAG_AGED	= BIT(0), /* Cancel aged locks (non
+					   * lru resize).
+					   */
 	LDLM_LRU_FLAG_PASSED	= BIT(1), /* Cancel passed number of locks. */
 	LDLM_LRU_FLAG_SHRINK	= BIT(2), /* Cancel locks from shrinker. */
 	LDLM_LRU_FLAG_LRUR	= BIT(3), /* Cancel locks from lru resize. */
-- 
2.7.4


