X-GM-THRID: 6535126466824241152
X-Received: by 10.237.61.183 with SMTP id i52mr11891229qtf.58.1521577736045;
        Tue, 20 Mar 2018 13:28:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.20.141 with SMTP id l13ls1228126qtj.8.gmail; Tue, 20 Mar
 2018 13:28:54 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvJ6T8nUlxEMJ5vasF4NH5isrzfwvMfYVP0QDFHgsQFN2tAfspSh0f2XtC83Aban/csixIx
X-Received: by 10.237.39.219 with SMTP id m27mr11651992qtg.19.1521577734562;
        Tue, 20 Mar 2018 13:28:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521577734; cv=none;
        d=google.com; s=arc-20160816;
        b=riq6DuzyoKyWACjEyYNaQx+RUnfC/vmuI4Pm4du+7ZvCpymYlLsU7HWuPGRK3s0VNx
         ZNvMYk2QVSGgl6PINERfRADLsQlyFmgtL3H+H6rdYifNFyTS+/Rcy0d9wAitCmgYnMGr
         +SNTbWyQrKwHP6+0eevUKA1PvrH0HnYtYd5UrDW7AFjqCflwtDp3xMGDD6rNDc0ADILv
         iShp25s9A+T+7PwPw3a1p1uZOfEeaBXtvDQ5fvvBa+TskdqBOWaVntDQ3s/1fCYOu9Th
         dV7VqyuRwD/i4eq50RLj3D9Z3XYv3k07mbtiAAEbfXT8BRXoKok9PBP8xINYdD555HBf
         2EDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=CtB7UHB/QmeoahB6A/KzODClJwFh2s5d5Hff9YWUS1Q=;
        b=udGUv6aawZc9CRSU2meQiXYrVrbfYSgO8GALBA5maoBPdJHDy9HU1iMuTieBD7ONnl
         yNwGp2P9aG0w2fL6YnuAnDo3vtwKipfnnQBe4TegUWR14pfzLgVEDS9l96FxUhTZqiQW
         uyQwDg0T1nmK6tyZAnRZw9IdEiE3HB1yPbKgmG/YG8AFeM8CFKygAl7p6CRzgujTN5j1
         NiricsolkgNxXhwg86eutd+wJf8PBnOdd2OmFXQfFF0u33yrqzbTZxawOsYBvjD91Bk1
         HeyL2NsZjZkaoOHq8V089jaQNtdV5EqL/bJii58M0s8YSenvnbSArilPZ3GmnwBsFaCS
         +z1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=HQi3+z/a;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id a19si163516qtj.0.2018.03.20.13.28.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 13:28:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=HQi3+z/a;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id u11-v6so1731652plq.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 13:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CtB7UHB/QmeoahB6A/KzODClJwFh2s5d5Hff9YWUS1Q=;
        b=HQi3+z/aFQRWDUZFd47bymQYaPu7mv3zcmDhDU9LS3kroE0eYheeMDI3pOTd4VxTV6
         egrsbtad8Psk92wZXamk2KsDgVlqwl9q3c2d8maOfUpCdmYy3wqb1PUjiLFOi64tXxDI
         vhA/etquqbEML7IGaQQVBEwHCpMatfawKrNcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CtB7UHB/QmeoahB6A/KzODClJwFh2s5d5Hff9YWUS1Q=;
        b=e/hBJVYU+t8SeBm7NPLJXaYIh1Kz+3qfz3RiD/7YYGEjr83vz1tW3AvDzE2Xx30FHj
         PQV24Y7O5k7NJxMzXv0H9LvKE1QUbO5x5oVMqnbPshRqkIH2BxnwsZHo/cU1sOsx08CU
         LPlF7AYIPUzlCAyVTvP4ypacS35Oeh265MEgF4sQlCRKs9Wlk85QoNdPQCJyo+q8m04s
         pCkJGm7ypsi95nmIym8YVe342+g/ZGFZd82aB7XhauYoUNQwaqKuPvIglJBqqwxEkljP
         2bRf6tVMl8YQJ0mWjkd+GAeg4DSFqkKxYntT3GxpGc+gRiItBZjSanVK8jeEjOJ1qmXc
         luvQ==
X-Gm-Message-State: AElRT7F6+Ot0wmFLDItmasoV/yFnxyS5RQLBvGeon+HL2U7mJpDTHqrt
	abMp5UfIeGFWl4ypSWMso0aAPA==
X-Received: by 2002:a17:902:8c88:: with SMTP id t8-v6mr8225846plo.329.1521577733228;
        Tue, 20 Mar 2018 13:28:53 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id d77sm5480831pfe.20.2018.03.20.13.28.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Mar 2018 13:28:52 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 2/5] stging: vt6655: Replace typedef enum with enum
Date: Tue, 20 Mar 2018 20:27:56 +0000
Message-Id: <1521577679-21104-2-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace typedef enum with enum. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vt6655/card.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index be5254a..f599624 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -46,11 +46,11 @@ enum CARD_PKT_TYPE {
 	PKT_TYPE_802_11_ALL
 };
 
-typedef enum _CARD_STATUS_TYPE {
+enum CARD_STATUS_TYPE {
 	CARD_STATUS_MEDIA_CONNECT,
 	CARD_STATUS_MEDIA_DISCONNECT,
 	CARD_STATUS_PMKID
-} CARD_STATUS_TYPE, *PCARD_STATUS_TYPE;
+};
 
 struct vnt_private;
 
-- 
2.7.4


