X-GM-THRID: 6801564551927037952
X-Received: by 2002:adf:a30a:: with SMTP id c10mr11532797wrb.175.1583612652971;
        Sat, 07 Mar 2020 12:24:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82b7:: with SMTP id 52ls2213301wrc.1.gmail; Sat, 07 Mar
 2020 12:24:11 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuctFWbTYmDf8d6RrK2laR2BgRc7O+HYHKkAZ7Wuj2Goh/zL08cI84jjTL/M8UMKCn6wrMf
X-Received: by 2002:a5d:440a:: with SMTP id z10mr11198459wrq.142.1583612651726;
        Sat, 07 Mar 2020 12:24:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583612651; cv=none;
        d=google.com; s=arc-20160816;
        b=J3rwkOWJ2fvNkxGkOBkND/b+Qd+tgcTjye8zZwZ31pinejo95xgflRvbF8aaxl2hDR
         qmgqyB3AcvXFjMX9pXVN8CNL5JZbaiJ66pDBqMFh79LnAxty3Be2ApaMCRlrHBlKWX3+
         wk8HvopD2dJokkmq/+vtpVL0U7b50JdfCD9CFTvImBcstQS1GHyRqnf3Ri4q9eifRgGn
         NnwO2Y++L8W8CeeYH+JOCJdzycZHcM7pfoZckmhQqTlucO6I5vcaCVJbf9iXl1Thywy1
         V1JoMtFExf/2wa7cs6Aihbb+jdedfaeR6k+MEBp4B9WD1lQ6sljGNklfbivoLnCu6FlL
         lEog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=/DHq21LmkWYs+028wty3y2CELZ22VQzjd42cniVWMYo=;
        b=FR93kHR6u/4oLc/AVhYiUKv209K4EBvGU6OWxEhCtDabD9KprG96qa0HGFEsJ9gv/2
         GDli0HXmCyfyPAMKkLIpJDPZtPjyJxCPva2+DD8lF9M2xEzmzmmvJnQ/WwkcdYVKwfh6
         53cCLiQdpKW0Y/QlMcg1peWsgT1FYA90j8izx8U9lasaZw3ngqpbX+NJfhG9E2h2FxrY
         2h36L9FB1i+Fb0LDom/KMtObpRzEDBkQ0Xfs1njVur1eMPdDgV7aazfPvnrGLcL7qU5y
         066noJs6KD9f2JaNRhryaGSJko3Gw2P6zz+KRRKOErCHNCPbzFxoMLPJlaCI29uoL7zH
         9NNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vXnLmlP9;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id i19si408107wml.0.2020.03.07.12.24.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 12:24:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vXnLmlP9;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id 19so3091535ljj.7
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2020 12:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/DHq21LmkWYs+028wty3y2CELZ22VQzjd42cniVWMYo=;
        b=vXnLmlP9AFjjfeq2FspOvAXkIAPkR7h5yTkeD6/+yU+sbjH54M1vy+wXlOFELfhOgQ
         XY5H0N9eFw8L//VY/O8u4QIb5KZd/tjJ8PNmi66QKh3q3TxaR28BhnDzQK53977xTWkI
         a1dj5LQntblSXCgnBUmBjg0c+hdG7lgiaaR7R2uwNsuRkrZFoOxbSbmFWVqn/7a4udAI
         u7mzYq4EMbpxPQKYEtI/4d9ud6U0crDm2BU0PQpAmJkg26UYf1ZiI1ht+6GIOZHhDWIp
         8uTT3egotvr2rMKaBk1NwPnrQuCtWVivoPClPnFg5PEydEIXoC28FZRAL9Ga6rbU/X9d
         XKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/DHq21LmkWYs+028wty3y2CELZ22VQzjd42cniVWMYo=;
        b=Ci3UlMfBv8PgfLAfPRZd+oxKdlPaL4eDK57dZsGZcw929bLgo1W3jcGQjL5i1YAwCB
         4bCVjCs0Mgw4U5uOBLpfdEd7JEK+V0x4CEAN2geN1ua01gkiPS/NNuWZCwWAw4syXODX
         h0tBQDh0kzz5WKMSZMkPjzo+MXQ6oZOvr3KqIQdlR/wHp7s1zke6lA3v7CdKR3OPcUzD
         IAoaiOaKhU5PliC7hl7dbm/j9K7rdYFDaUJK0kPGnwWrndV8C6MHxx69qCv+Gj8bZZHr
         7xxhtgxnhO46JWRGfmZcD4DgOZVvtoyHbVmvrod3bxkMuSSrFF6mixdzHV2W9dpp54l5
         ug1w==
X-Gm-Message-State: ANhLgQ2wwOVJRPPtczviq9y+2ssKXyVi9FVOm7M2pCQibnAnFoZt2WYv
	Hj8QFGcZa9qvpKBwd7xzRtDSKhEV0lM=
X-Received: by 2002:a2e:b88d:: with SMTP id r13mr5227695ljp.66.1583612650960;
        Sat, 07 Mar 2020 12:24:10 -0800 (PST)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([78.190.230.25])
        by smtp.gmail.com with ESMTPSA id s17sm15781153ljd.70.2020.03.07.12.24.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2020 12:24:10 -0800 (PST)
Date: Sat, 7 Mar 2020 23:24:09 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Fix line over 80 characters
Message-ID: <20200307202409.GA10517@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix line over 80 characters
Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 1ae5a77..37e424f 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2161,7 +2161,8 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	mutex_lock(&p_fs->v_mutex);
 
 	clu_to_free.dir = fid->start_clu;
-	clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
+	clu_to_free.size = (s32)((fid->size - 1) >>
+		       	p_fs->cluster_size_bits) + 1;
 	clu_to_free.flags = fid->flags;
 
 	if (!is_dir_empty(sb, &clu_to_free)) {
-- 
2.7.4


