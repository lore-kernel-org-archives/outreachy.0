X-GM-THRID: 6473410411176656896
X-Received: by 10.129.165.131 with SMTP id c125mr1168519ywh.120.1508328885549;
        Wed, 18 Oct 2017 05:14:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.78.130 with SMTP id c124ls301318ywb.21.gmail; Wed, 18 Oct
 2017 05:14:44 -0700 (PDT)
X-Received: by 10.129.178.129 with SMTP id q123mr1002169ywh.59.1508328884966;
        Wed, 18 Oct 2017 05:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328884; cv=none;
        d=google.com; s=arc-20160816;
        b=thaRAtmMvyQeN//mqaAYula74vW9Er2uPXH9tzjddGUOy3R4TUOxAHUSbJTqNUfT2L
         4Rn0RkMe+emEu5zql0c9nvR/gM8elPjD/4kntJZDgF/JFZSmMoyzkQHEjVmK8U7G7sX2
         m+M8C2nwrRm1JdgoaoMthW3rKOywvLUAvkRYBY6rPNqZVAFSBbB065Kw0BWKlw2+PWSl
         4+xeafneFbnA7k/AWQs1fyU+aZXa0aiMPWOgTJB3twOLhu7WM72Oq7pXJpOaHefGCp+y
         RKmhSCy6QQLKqvoZCpAgv8OjSBqP4RwqdcAKC8fYnOiN9FUuWDXX1SSNSwmfKSKtQ3UA
         J2JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=aSj4sv3txFIa1qBJfiyRcHvLwstbBHtkrpQi2lfnV7N33TkeyBZEydtoIjUT7YXSqk
         3jauBF7ztkvql2YB/7ezySz3GMeoK1Rhu6Iz8/kwboGsrrUcLxUN1JcN4ye3UwzbKtQm
         JTHPmAnY8/tWuxlyOKnkgJku1TYvWDWORq4da5Xo0QsyOQYLVAgQwCUjAznwpk2ADPtj
         d73oMBUsY7I+Ij9oZ894HHd/sqx5foQQsGfwyXKFUzvYcn5sBrG9BtVG9uUOQPNXgGJ1
         XxwvTQgPQ2GeDTTV0n9mIi2S4AAWwE8Q+JAar8RqAsLLj/smGZ0ybLatRj86OJzX4Vnr
         sQ8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKWQAGK7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g2si583216ywa.2.2017.10.18.05.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:14:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKWQAGK7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id m18so4117808pgd.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=kKWQAGK7NbVcSDqN2M18+crVEoJs/sFq2ex8YpOZ4EuV5m3c3opAFgdSFmlEVArnfr
         KtMt1MG1FUqCCqTqzQ1wBpnZ9IsKJUDaF5hOHB25SVgt75u5C24pHhrt5nMO1iYp+Czq
         Z/P01iUwBRRgwvRgBMQ/s6yiRhDozPu4DORFXZw1l00Wf0h0WHQGfVmK1HqcEiSBLMkV
         jxv7Rj1IQmLhmO3pU7Hs4CmxXLq01NHpgWqbqxMSq6Cs2HFLr3CLd6vA52bUHHn0A20g
         wk1ZkmdwmGx4Zno6jQBnXgFbOO/XckPlwINXw3pYGHLo3K7ydOt0Mka9hPkCDTp2aTj7
         XRKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=K4ZmoCqEW0piHIODudSKCFomkg9Ma9T/QqYMd+n2J8DfSj4YgJrdNpLx3e0sUDT9YY
         kR8e2j/dJ+r88JSggbS1GnxcaRaqjqqKawIfKHDDqzgNCkKoKWCINQii6gz8Hi9UsNha
         /bHT1M3IY1LM8ihb+u/nbER9A63zP8Tsn8XU5ec57i+Ex+FL/13wzC5gBIVrx1uSJ/ND
         tQLwfx+14v3rkdX/JdOn/UJ/ujfO3X4y6hsWFW5Jj3MWCFwF/rpVgwvd3J9/hW+ts4D/
         T2Z0ZZqKtysC8EYza7pt9yI0/DQItxADbRDRX+rKC0qbi21PjV+ogmW4PLteOePCS4Cw
         RB4g==
X-Gm-Message-State: AMCzsaXs0kGZ6r6VV/MfWg72v2NyTmMhp63me7dWsDl89R0S3k/b83c9
	dwAtAgmVYwwPemWrwfNiaZw=
X-Google-Smtp-Source: ABhQp+QA+oScqKod3qEP9+zgCnZEBIApJ/CpnF7zNQSFJjZvV7LVvb8ZK+I0ezsBWvRajJPCcmQA3A==
X-Received: by 10.99.104.73 with SMTP id d70mr9311538pgc.58.1508328884527;
        Wed, 18 Oct 2017 05:14:44 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id w27sm25376799pfi.18.2017.10.18.05.14.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:14:44 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 02/10] staging: lustre: fix comparisons should place the constant on the right side
Date: Wed, 18 Oct 2017 17:44:22 +0530
Message-Id: <1508328870-9416-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index 4f213c4..a3c0481 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1130,7 +1130,7 @@ struct lu_context_key {
 	{							 \
 		type *value;				      \
 								  \
-		BUILD_BUG_ON(PAGE_SIZE < sizeof(*value));        \
+		BUILD_BUG_ON(sizeof(*value) > PAGE_SIZE);        \
 								  \
 		value = kzalloc(sizeof(*value), GFP_NOFS);	\
 		if (!value)				\
-- 
2.7.4


