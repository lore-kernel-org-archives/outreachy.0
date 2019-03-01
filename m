X-GM-THRID: 6663332445434150912
X-Received: by 2002:a24:5714:: with SMTP id u20mr2466413ita.6.1551427982827;
        Fri, 01 Mar 2019 00:13:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls2238899ita.0.canary-gmail; Fri,
 01 Mar 2019 00:13:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqztIRuUMJPPvfE5LRNIDUjhv+bfTY8sduEsJLtbfJH3/VbWJ25MgcXAVYU5ImpAmcKu1Lja
X-Received: by 2002:a05:660c:2c6:: with SMTP id j6mr2493282itd.9.1551427982251;
        Fri, 01 Mar 2019 00:13:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551427982; cv=none;
        d=google.com; s=arc-20160816;
        b=LH1XYs7yDCiiDpqbUQLB1yG5XkyNNJogYURkca8tXJ8mxNY4x7QQmqTVrM+ZYyAdQm
         4D9w4Q0NPAZgGWgrcZFepwO1sBhF72IdaNYFJAL43bJWZ+ye+aH9C3GbD/gO8zfeC9Xh
         rd/Ew26ix1Btrj3vYHCcfR4cHYV8NarhhKd4RNiKCDomzIzCBjQ/wfl7iHwscYr/iiWm
         gF6+VndGn9Vqf1l+/Tlz9+EXEe9Rvg4Y77hKJtAm9yXKIFKTnKKEe8vk549nE0ZtYPuG
         d0TA9nnloS1tBISYAkATQ9Y4Cyjeen3n3dNdmnG33mxvDc/yZaQ9dTOHBIpCTHN4TssP
         GmKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=qS76vMWLmSKHCWivI9efvwI8q4aeuDtrl2dguVZ5hLk=;
        b=ot5V2lkNtBxOIXaQgFgJ7wCJXujTafTq00+9b9Y/T+s4naeQKEO3ko747bpsl0i8wt
         MZUzdIU1NnA7BVF6hWTrVgKCq4Tu45SL4OliZpRXWL3uOEcn5cWo3nQmyYPyED1OV/3X
         uq+w6WjrY3eD0j4mwmjyCNfWSSivaWnOUrmtLYOiQgq+/0lK2qpiqe2vHXW9i3i/IMlX
         oDOiGA5i4m4OMF2GcFDMkBctW+PpMyLJO6lnTX1EYZwIiGJKvpv4GH/pOajkrwUZsZd0
         kSXVo5StbwVIPRSyvqF77NJ/yceFdt/0Xc4C8k48co6f8i07RrlLP2Izb2YfkhPAhjLq
         hmPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I1kpp2UG;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x22si346250ita.0.2019.03.01.00.13.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 00:13:02 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I1kpp2UG;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b2so11077126pgl.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 00:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qS76vMWLmSKHCWivI9efvwI8q4aeuDtrl2dguVZ5hLk=;
        b=I1kpp2UGYgYNk6f4AQBIFOodyyf8M7Jz/AEuzs2PDFiGjNPhk4VQw2p7q2DQFMWAa+
         C9bQdC+6b9Wh2x4i3uqJJvRBz6WF5bA3n2r/c0UJVDFsqaOq7aCE3U/Rvomv6gM6bK2S
         /8fycw16fvSMNd/qakRFqyJUf3Hm1OFSTkt9t85Xzt6Yp1tiWW/hN8cXlKMfGjvt7kaM
         lH6kC2xeOm3wiDsI6VEFagktRpTHVBRTk+x177sNDDi+VhKt6zrZ+N4GAujHKRx47d64
         4+ubcEsAiNFD4eEOb4EyNM9K3ZQhAuUsFLsidUWotYH/drsJ7ekteJvrw/d9D/aNI1df
         5YoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qS76vMWLmSKHCWivI9efvwI8q4aeuDtrl2dguVZ5hLk=;
        b=AtQQU2va3vkSj/noJ7xU2HUF4Oa0fEu9FuVNYjqc2eYHMcRsvGQNAM0Ih+XTi/NADO
         ADvgxpVDqBAR/UdIYQy7JuecWIv/BheLInz+g0WxnA3yT1nRf5qQyzmSPCzljKbGbI06
         mYwf6mfyjGL7nWy18fNxk5qARaueS1tvZqaK7TF8mDS8QdvQdjEvdrnZVx5qT5+6gpcg
         LDpmF9TvRThQYaseJf3XsYkKU6QDrzPkXT/NA7sgNTh88u2goUIiGql1yzICEbuCmYyD
         R9qgC7i4XouUqcHfpRlwOIju7ObH+xlh97PaeOWcLulCUf9ulDL9VVl21cdvO177rHf2
         CAyA==
X-Gm-Message-State: APjAAAW2txeWH/a0Er0JLj4mZ6RP5NgZZNS3EJ9fJ9mkfRSvMVnCJM6l
	C7faFHw+p+tDYR9naWX3VNM=
X-Received: by 2002:a65:5c4b:: with SMTP id v11mr224344pgr.411.1551427981666;
        Fri, 01 Mar 2019 00:13:01 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost.localdomain ([112.122.31.150])
        by smtp.googlemail.com with ESMTPSA id z67sm42378300pfi.152.2019.03.01.00.12.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 00:13:00 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: gasket: Replace symbolic permissions with octal permissions
Date: Fri,  1 Mar 2019 16:12:38 +0800
Message-Id: <20190301081238.6440-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch fixes the checkpatch.pl warning:
WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index 151e8edd28ea..708ee43175ba 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -40,7 +40,7 @@
  */
 #define GASKET_END_OF_ATTR_ARRAY                                               \
 	{                                                                      \
-		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
+		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),      \
 		.data.attr_type = 0,                                           \
 	}
 
@@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),             \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
2.17.1


