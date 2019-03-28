X-GM-THRID: 6673458738250121216
X-Received: by 2002:a17:902:b7c5:: with SMTP id v5mr730674plz.10.1553785819746;
        Thu, 28 Mar 2019 08:10:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6948:: with SMTP id k8ls14434794plt.7.gmail; Thu, 28
 Mar 2019 08:10:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHm7+t9FlAsauc1r9e0gW0P/Jw8RqbeRpWQZM4v4rWs8/lU0Gz/W5gVNK1SQttAOcgw8VD
X-Received: by 2002:a17:902:3225:: with SMTP id y34mr778587plb.137.1553785819007;
        Thu, 28 Mar 2019 08:10:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553785819; cv=none;
        d=google.com; s=arc-20160816;
        b=Pn0fqF4r8Knj+nA9aXgzqDbv3dQYCmEX4UmjEq7w27m47vXhOgOvaSKK38P9javq1y
         MLRb83CKXUBYt/bFYPSVSBc6Od3AuC/TPsVevEQ6Pnlg1B30L6bHAaRHEvcfGmo+vKEJ
         mPV+Uzky6mgfT99LV5OqL339/JInffBr+VVYh5aJTFiFPWxUuujknqHk++R6a3bE6WIh
         uCCH/jlAZp9Vm7Tw4pK9VEk9qNij4x1dS5h7zDKbVU1bIQmj0XGpOunDXTpIW6IBqWcF
         Iyqf6K8SIj+d8yP5jWAQlLhdPzV2itMJ4FZs42PKeQtXoGufLerAfZV7ygZyldYVp8lk
         y61w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=UN7ry/DuVBAoe190FSNcDHFUIJvfOlwyEh1hc1/3znE=;
        b=TYjj8Kqy6susGWw6lrIgkz5DMyi+NVFXbs0sVKAmp3upeULWt8jmPS0oIiKDqvv50z
         0o1cxttcTPO2a+dsnOhSSAXjOMlArjL48ibGWvWnuRytFDOqJyTcvMAw622aWtQn9331
         HCj6LOTEamtegz0n0EXo/zV6/A8tCLJggO6stdrs/V131HdCwFO5fhOFcsmRxQL3a36f
         khXPEFihhbsEICr3NelR/DbsQh9yqy1/HkncFwwblOt/XRjfLiUqMH+cmL6NFeL+qvEH
         my+k+uChnmLIHhoemKFbQ7yvv8KHvbpcN2gSlPZCJT6RHP6g5UgyAfyfX5UUIQYriKqP
         mkuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HlpI9dk8;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id c14si328584pfb.2.2019.03.28.08.10.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:10:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HlpI9dk8;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x532.google.com with SMTP id 85so709520pgc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 08:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=UN7ry/DuVBAoe190FSNcDHFUIJvfOlwyEh1hc1/3znE=;
        b=HlpI9dk8SB3p7dJF2POhkBLhm0uKnKlDM9gVYI4jG8gJxLFyzKLB8dQVcHik2eBDmo
         PR5PoYKwzKzG5aDRJ1PAEZ/4wrJH7R4iTulIu1rClM+nQJEBPAD9Le+I+kHP8eYTLNd8
         lYMLqUdhuRArJiAq9VpAkyBN+VYn0KgAQ0kxIhhemzNslv/jwJX9VoL3AE+TO8XSSYeD
         3dj39Ll+fiIPy/POTrdXshAtwLYcYUPjtizW8sP+068WHFfv1QpOBP3VY6Fpt+Ok/Bci
         L1ng8z/71aOQy/AmAtU5DBnCUtEv+FHdAeDo3BjlcG/DLX3uhRIXE0HQuJog+FLEF7Aq
         0g9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=UN7ry/DuVBAoe190FSNcDHFUIJvfOlwyEh1hc1/3znE=;
        b=CYVBk4Q3/E7bQNpI4F6zV3lOnklD0L/7lSM9/p11u7bHmhTpx2CB3oSNr1g8utGPeF
         4ifpqOkqvfZbfzW2ZB0ssdsQmdm6qTYzT9BJTN4HVRMaKvLmZzuquC+ijOy3EnNjI8Lk
         llifPt8o+IcaB3wMapSHcqzcOuyrf7hnxRgDbpUchccfWzhpv7sf5nJ6j+4jSUitALq5
         +7dP8wF7xW+s3RYlnc1d7Mk6Ikaz2YGL4utMk1zAN/IZaOfXdaPOS9gGQdr2sqpYmG3c
         JMMO7ixChPJ2As9dB6xOz9pT/FHI7TC6SnZ6oQZ0yLJxqqF7bA0eowZznoIyOsdZII2K
         qQ5g==
X-Gm-Message-State: APjAAAUMHxCvnoMuzyxq8/zKJibu0rcFJnAtuCnuhl5S27UMxoHoerv4
	xswPWHjBc2IicyTQw35uOW8=
X-Received: by 2002:a63:5057:: with SMTP id q23mr11437340pgl.30.1553785818779;
        Thu, 28 Mar 2019 08:10:18 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.77.58])
        by smtp.googlemail.com with ESMTPSA id f1sm41190509pgl.35.2019.03.28.08.10.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:10:17 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtlwifi: Remove unused variable.
Date: Thu, 28 Mar 2019 20:40:07 +0530
Message-Id: <20190328151007.10650-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190328150759.10539-1-sanjana99reddy99@gmail.com>
References: <20190328150759.10539-1-sanjana99reddy99@gmail.com>

Remove unused variable. This variable is
created unnecessarily for return type whose
use is removed using ret.cocci.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtlwifi/rtl8822be/phy.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
index aed315143cbb..ececfed7b35a 100644
--- a/drivers/staging/rtlwifi/rtl8822be/phy.c
+++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
@@ -1840,7 +1840,6 @@ static long _rtl8822be_phy_txpwr_idx_to_dbm(struct ieee80211_hw *hw,
 					    u8 txpwridx)
 {
 	long offset;
-	long pwrout_dbm;
 
 	switch (wirelessmode) {
 	case WIRELESS_MODE_B:
-- 
2.17.1


