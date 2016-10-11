X-GM-THRID: 6340087850722131968
X-Received: by 10.107.9.224 with SMTP id 93mr788773ioj.102.1476166735844;
        Mon, 10 Oct 2016 23:18:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.196 with SMTP id 65ls353129iop.22.gmail; Mon, 10 Oct
 2016 23:18:55 -0700 (PDT)
X-Received: by 10.36.33.200 with SMTP id e191mr797298ita.12.1476166735269;
        Mon, 10 Oct 2016 23:18:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p131si304102vkf.1.2016.10.10.23.18.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 23:18:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id x79so1851550lff.2
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 23:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=X+WHS8lahJCiPLVa8oTErn3O57cgBJoQE8n0qAInUsM=;
        b=yU30ypK3aK6gxiqT+3U53saRZRdtS+jiN8eljA8T3/zEZdjr6yYJT5QucQ8gNsF6wf
         s9C8Pr0BJOOqApEF7B0bAu4Am3rWMuY4/zwtOphmKZRdjKcWB3Y/grV+DF2AfcK1yVSE
         Hn5BlOlIckBq6YwdYbn0Ur4qgVFfNWX4EUbMPXO33BdiIzuq+FvkvwFcFQFQ8Mmq1yze
         UE7GpjNSfYTLj8Y6qR3JSQOycZMsCUzfUIMDdoHYXrNrBrtQvbtm/b1+tC0NIdheg/s9
         vJ9lA9q5pZtEndQwii4oQnORelckb/cmjitiIfymhwnqxckMBwzj+JCOTfY538gbhgV3
         Da1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=X+WHS8lahJCiPLVa8oTErn3O57cgBJoQE8n0qAInUsM=;
        b=QH5xdwhNZJVCz8VuFL/I33mWmlm7IPu0zqMkcnbaHhsARQZJB2tPf1WLm3aJs9tOGp
         kucSrkVD3EKcrvvmRgTeAmrQmGJN/+vrUjiN6ouiV6xrOpuVUgPKEULxFAsxk3JZr+el
         2eBvfPnd4H5/FQ7oZiqYIzu7NmgptFSZbDrNjwSHbYYXljDXrEBvtVeIJEgsU7qgQYdC
         bIfXJE305Jqd1fTk4Uk5IKRzePSxaowfkXgqYktELRlW20214kl9R/qOkAWZTL4EzN8Z
         yByRijnmt6wjYZnvVg5cRmMyRKb+ORIntU5IlXr8VLE94+EnSabWfr1chm99eIcJm2h2
         HuHA==
X-Gm-Message-State: AA6/9RlxTrLVyqP6YJwzzmtpwoFpDsoyIb8DZ+2DPR8w9W50ejvbRixPa1g64CgB1mitOg==
X-Received: by 10.194.200.162 with SMTP id jt2mr2444565wjc.172.1476166733651;
        Mon, 10 Oct 2016 23:18:53 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id uq6sm3455941wjc.37.2016.10.10.23.18.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 10 Oct 2016 23:18:52 -0700 (PDT)
Date: Tue, 11 Oct 2016 09:18:51 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20161011061851.GA5714@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes up a checkpatch.pl warning :
WARNING: simple_strtoul is obsolete, use kstrtoul instead.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 5 ++++-
 drivers/staging/speakup/main.c     | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index e744aa9..6466a09 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -757,6 +757,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 	int used = 0;
 	int rejected = 0;
 	int reset = 0;
+	int ret;
 	enum msg_index_t firstmessage = group->start;
 	enum msg_index_t lastmessage = group->end;
 	enum msg_index_t curmessage;
@@ -786,7 +787,9 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		ret = kstrtoul(cp, 10, &index);
+		if (ret < 0)
+			return ret;
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
 			temp++;
diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 97ca4ec..6064fef 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1906,6 +1906,7 @@ static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short key)
 {
 	static u_char goto_buf[8];
 	static int num;
+	int ret;
 	int maxlen;
 	char *cp;
 
@@ -1944,7 +1945,9 @@ oops:
 		return 1;
 	}
 
-	goto_pos = simple_strtoul(goto_buf, &cp, 10);
+	ret = kstrtoul(goto_buf, 10, &goto_pos);
+	if (ret < 0)
+		return ret;
 
 	if (*cp == 'x') {
 		if (*goto_buf < '0')
-- 
2.7.4


