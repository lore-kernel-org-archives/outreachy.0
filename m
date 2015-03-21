X-GM-THRID: 9347595763712
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1564ac45bb5dd367
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.149.102 with SMTP id tz6mr92638589pab.26.1426921176543;
        Fri, 20 Mar 2015 23:59:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.8 with SMTP id xs8ls875178obc.8.gmail; Fri, 20 Mar
 2015 23:59:36 -0700 (PDT)
X-Received: by 10.182.112.167 with SMTP id ir7mr97262793obb.29.1426921176333;
        Fri, 20 Mar 2015 23:59:36 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id l3si1129814pdo.0.2015.03.20.23.59.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 23:59:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id we9so131335689pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 23:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=rTqgYkdbUZwFnjMdZGeMmgRP6fokuRT86lfG/PVxI0c=;
        b=xR0dT5XhQYncU8eUAwMmmFxnuBFwPA9tFJCPXUtPcIF9/eogBD5dZxbYGxLqKWH7kn
         HOBwyJFJlthmfXJqkzpNuLvv1kgsjnCPjDtMyeRWlzLXPtDw5GHXwPa1IaBeCO97vZuJ
         zdrU500EMHHtqpTZS5CXkM5SAyYqID0CSqLOj0is8FnlHwksQLTtt69LsQW8Rwl3tK4O
         J3oBjTZM704lt4J8HrWIPmXSG8shbPhi0EH0lpbQxVRsPL+8WbvMngaChwxiFbFelWhm
         pEYfH/vPAiupye0pcCkCOxJhCLJGb6sINcUllHe+J50UPVfTmY+Wo1jNf2Qp9lbXlsGq
         PsRA==
X-Received: by 10.67.5.230 with SMTP id cp6mr27486903pad.55.1426921176209;
        Fri, 20 Mar 2015 23:59:36 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id ow8sm965120pbb.57.2015.03.20.23.59.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 23:59:35 -0700 (PDT)
Date: Sat, 21 Mar 2015 12:27:34 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: wlan-ng: Remove typedef prism2sta_accesslist_t
Message-ID: <f8321dc09d29a850c8499ddd1656dd5a85dfa131.1426920752.git.vatikaharlalka@gmail.com>
References: <cover.1426920752.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426920752.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove typedef prism2sta_accesslist_t and replace its uses
in the code.
Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index cd869ff..ed90409 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1210,13 +1210,13 @@ struct prism2sta_authlist {
 	u8 assoc[WLAN_AUTH_MAX];
 };
 
-typedef struct prism2sta_accesslist {
+struct prism2sta_accesslist {
 	unsigned int modify;
 	unsigned int cnt;
 	u8 addr[WLAN_ACCESS_MAX][ETH_ALEN];
 	unsigned int cnt1;
 	u8 addr1[WLAN_ACCESS_MAX][ETH_ALEN];
-} prism2sta_accesslist_t;
+};
 
 typedef struct hfa384x {
 	/* USB support data */
@@ -1349,9 +1349,9 @@ typedef struct hfa384x {
 	hfa384x_InfFrame_t *scanresults;
 
 	struct prism2sta_authlist authlist;	/* Authenticated station list. */
-	unsigned int accessmode;	/* Access mode. */
-	prism2sta_accesslist_t allow;	/* Allowed station list. */
-	prism2sta_accesslist_t deny;	/* Denied station list. */
+	unsigned int accessmode;		/* Access mode. */
+	struct prism2sta_accesslist allow;	/* Allowed station list. */
+	struct prism2sta_accesslist deny;	/* Denied station list. */
 
 } hfa384x_t;
 
-- 
1.9.1


