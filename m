X-GM-THRID: 6660896467345997824
X-Received: by 2002:a24:43:: with SMTP id 64mr3118763ita.19.1550860811970;
        Fri, 22 Feb 2019 10:40:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4505:: with SMTP id y5ls2032556ita.3.canary-gmail; Fri,
 22 Feb 2019 10:40:11 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbUK1MRhXKdHOlOMmT1v9edU1eaAxxRTnNxPYI1LnhkJfPrGmLkz3dqXMkfyh6HIvLCeKh4
X-Received: by 2002:a24:2c53:: with SMTP id i80mr3352508iti.2.1550860811225;
        Fri, 22 Feb 2019 10:40:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550860811; cv=none;
        d=google.com; s=arc-20160816;
        b=zOpA+JvxC+PUZRG543c7DTnULgeO5dlsyAx1PdG3DUyavk9+gPDRh6N96GFhQcf2hT
         PsJaM3ZE5yTtUbRUQ7g60T/aL2c0cI+S5BXPo4SUq08XmGz6HYqf2oKiJLX5MfU6U1sS
         4ddTRz7OH7HkEwX0zJpi7IQjpMqQGLRaox0/hZU8BY+p/1JbGqns3oHyJYqYmQxxxyvz
         +3eZ+4tulZSTDFhcw0x3xh4C3NOfKakXHpwsm+BWuZgY+kasdX5Epj9+zwUwtmK1yqQk
         As5adY9tLpWfkfcnxV4RpsVPgSG5LN2R8yxTIV2iKkZDZXeowxnEfP3RhhcWofIXhzLu
         T9WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WJbhRW0ck9qQS5Rus+49fUl+YnLLEZtBVxyzouc+OUE=;
        b=oPEkoHqwcbUskScsMIbnOgR7XuR59NbdS54ov55rgdVXRvjtR2akT+6FD5rK9ndRIM
         mwhZoj4E65xws7GdNwa5LHqMcygJlN9cQi0CyzaJ42VFyb2WaNycW5FKFSXbwGn0NEjB
         lAtgczOo6YHo1sBmtmQEZ2IvNjcoduQz7mTlPWtUQr6o/5p6Q0GCFvPL9AeKpX4tJZEM
         iMjS4B7ooNEQaNykuCR0Vi0FU6SliJqRmM+kHYV38aivWirDVh+pSrTMza9QFu6BHC7+
         5gBfANclU2MF5pCRDGtO7UcCu7VFaJDzVJgQL2IGYA1wPhRGajW6664zK8OzH8Wx6CI4
         N69w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LsFC+b+P;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id d127si154285iof.1.2019.02.22.10.40.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 10:40:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LsFC+b+P;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x629.google.com with SMTP id y10so1487813plp.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 10:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WJbhRW0ck9qQS5Rus+49fUl+YnLLEZtBVxyzouc+OUE=;
        b=LsFC+b+PZVS1AwJbpPLpogAXi79TbqgDLCsNVyRLtOXOMaDvkIdSN08U9nxgSc4he5
         9ncKQBGBkcCRCP+RsZx++e5gnFerWgFc6IugA/b9cCmpEGYwgKdiRrWP8iYq+3oTt9nx
         5rDfRqXEZL1rgN7k9zIao+DgJ5KQruZJVlbkTYh0CPOQc4ophyJaGrgicnbf6LBzpwRq
         l+/TkwEQ/U9lUJAPcDsPIvZXqcKpjOQKi5v44S4tdn+JKGTD75nnDJv6mUW2eCYxoT01
         6+ZG5fHqStJn9T/KX/BnrxkfgUABzOX7ZheqCGCEYgOxxHHoeGjIF0GOIuSo7mi9io4Y
         IxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WJbhRW0ck9qQS5Rus+49fUl+YnLLEZtBVxyzouc+OUE=;
        b=oVq9cesah8FGSv94+rpRoOWfDApN67yaTnqRw5h8tCcyu2qvIa3c0Ij8GcG+57TDxv
         Zh7lwrqneGIvMBXyT0NzsGDA+44DIorSets71qQx8uv2P7rX7Di7JOU/kXENfZYLAh5E
         BQbE1GQ+8GXV722hCaWquueBqxchmECdBBbv1ZQX1nOCopv/eXgBZ9FsgJWLFmMLwnVF
         +Ukmw51dxU2m0oHCybP7XmriGDvNIfFdk3Wq4nUi+myPYEBOdXDv/fMoIfBtQJd+Rhs/
         6bjPL8q6oI7Ve4JLiKq7ctHTtKaOt2LeoLKyRj1+AMeU45y9sMku1GkeJUZuGhBXSjPU
         k3YQ==
X-Gm-Message-State: AHQUAuYRcJSQm/fnUwowp1gRFpOxMZf3qYC2ZjkRQ/AY8faRx3lVUuDk
	CwOd+Wi1IXm1yujafmJj5FImPzv7p34=
X-Received: by 2002:a17:902:bcc6:: with SMTP id o6mr5499190pls.39.1550860810443;
        Fri, 22 Feb 2019 10:40:10 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id k65sm2821173pge.74.2019.02.22.10.40.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 10:40:09 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhanusree Pola <bhanusreemahesh@gmail.com>
Subject: [PATCH] Staging: gasket: Replaces Symbolic permissions
Date: Sat, 23 Feb 2019 00:09:45 +0530
Message-Id: <20190222183945.12733-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Replaces Symbolic Permissions with Octal Permission which solves the
checkpatch.pl warning:
WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index 151e8edd28ea..60590ea4b760 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -40,7 +40,7 @@
  */
 #define GASKET_END_OF_ATTR_ARRAY                                               \
 	{                                                                      \
-		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
+		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
 		.data.attr_type = 0,                                           \
 	}
 
@@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
2.17.1


