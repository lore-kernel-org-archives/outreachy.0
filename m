X-GM-THRID: 6330466800696819712
X-Received: by 10.237.35.137 with SMTP id j9mr5370348qtc.2.1473926819415;
        Thu, 15 Sep 2016 01:06:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.1 with SMTP id 1ls344804otv.45.gmail; Thu, 15 Sep 2016
 01:06:59 -0700 (PDT)
X-Received: by 10.129.0.194 with SMTP id 185mr5460185ywa.12.1473926819030;
        Thu, 15 Sep 2016 01:06:59 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si795973pab.1.2016.09.15.01.06.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:06:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so1830001pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3jFKnv4UXj9k1/raRJRNB7yWImMRTgzRVY/KjJxBcus=;
        b=D4L6zt/QiUVLP/Gfps9H23USAgiMbIYcOp5KDMdFhvWuaUy4d1zch8YYUOGJDkZy4g
         j3WS24hF/kd4KT7QzDNXqdu08Jk0uoaazDgrPrcoKf5QiTW1CgRQ3zzp6N+5VvWnKlnM
         MOd2/V5iPVeiyQ6kZRHheFV7gRxVi6+Fer3jibQcRTtA002a9JooMSfsHaf4RwFScM4t
         QToleUmggMA4R7s2PurgtvZXcfFdz1fzvC9I8cuC9BdAh0YQ70eP6BGPkqsytaLoXqKt
         hqNlLIcm+e23WeDJ8LZgicK963kLXjMn0auWqhloPHNF39cuvTz1leD+L8JssTwXxH3L
         oTHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3jFKnv4UXj9k1/raRJRNB7yWImMRTgzRVY/KjJxBcus=;
        b=lcbmXbcp3slyAGhMff9EWlz30QgLItUwGXfXrxLkYtUHvzXjKA7//YctZASWK0wXuj
         6cYuzJfszRs3eWPQ51MNvq5CVb052489wr0zuMnD50fhp1v3IIxUyI1vMjT3Mbr6NuXd
         A5diET+XZlcESAkddp+4vQOnx+Sj94S2NBbSl/oVvDFnH6RGQFpjo3RAfETrmMeSmjCN
         CEXQj14UfCLIa/tfYjuV2Cz6AkrlV+w+ls2FY8AVnfA8ZJhyxA0Wp1SJcM6fhc4TIUuz
         60qMjPPBYmZ3A75oyEdPXjeesrmMy3d1RJYr+O+UuwA4cs/jGf+EEfeIaqy66z7zB/9K
         wkOw==
X-Gm-Message-State: AE9vXwNZh7NXbfGFluySHrVEB4/dTlkrxyCbSYQFo2QKaQqJVvLr1YRsVjOqoaeYqbkAGQ==
X-Received: by 10.66.85.196 with SMTP id j4mr12212514paz.40.1473926818664;
        Thu, 15 Sep 2016 01:06:58 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id bn9sm2939709pab.39.2016.09.15.01.06.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:06:58 -0700 (PDT)
Date: Thu, 15 Sep 2016 13:36:49 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/6] staging: lustre: Change 'seq_printf' to 'seq_puts'
Message-ID: <8977e7aed6db4560b4db7c75234bb3ed6a009e47.1473923837.git.aquannie@gmail.com>
References: <cover.1473923837.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473923837.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch.pl warning: Prefer seq_puts to seq_printf.
This can be done as both have same type of first two arguments in their
function definition.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/llite/lproc_llite.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/staging/lustre/lustre/llite/lproc_llite.c
index 4e82db8..af233ea 100644
--- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
+++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
@@ -774,7 +774,7 @@ static int ll_sbi_flags_seq_show(struct seq_file *m, void *v)
 		flags >>= 1;
 		++i;
 	}
-	seq_printf(m, "\b\n");
+	seq_puts(m, "\b\n");
 	return 0;
 }
 
-- 
2.7.4


