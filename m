X-GM-THRID: 6671498191703113728
X-Received: by 2002:aa7:9088:: with SMTP id i8mr17361680pfa.118.1553406184533;
        Sat, 23 Mar 2019 22:43:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1281:: with SMTP id 1ls5581342pfs.4.gmail; Sat, 23 Mar
 2019 22:43:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxnXhRpqvv+Z15Bt7cgw6R1fKJCso15sYOq0Lrq/5jzl1VaaQx81JF3m1EayIBlGUYAcJB6
X-Received: by 2002:a62:29c6:: with SMTP id p189mr18175595pfp.194.1553406183817;
        Sat, 23 Mar 2019 22:43:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553406183; cv=none;
        d=google.com; s=arc-20160816;
        b=H89oKUG7Dgl2tIzaDStC/IJMIxyBGJdzDwC94Q8E6ezBhBUwhWm4aJsaREvsXPMp0q
         qIFPRWnVqUrXiXRoK+qC7/6kTYZeUzpb1FrMjUNd7pF0vpPuiKOH1bL24Y56Viz0Jxu6
         pPPs9Sj26VvqMxwmBaRj03pNtLzMqFIFRuXuWDxuLAwd+XTPgygCRRvvJVvwq3ykIj5R
         uqqTk0Mou2gZcJHt/8zpNdGWbIn6PsC5BEer8rR7jlD41mi7hGtFw0iaqJ+nlq3TVaDL
         QxZEdXHuN2+iJ3xp9Zg1R5FVSubFVeY3d5gYtN9eoFENZyLbnbLEckV3M42N7cfLsgjs
         u3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Yk1BYY+VnrL2HJ0n31iH2IvuAtJ7ubsk0DQJEKhI4d8=;
        b=bXKYy6Ro99lyxFxn9QrEATcqH45nWlRFgeFpF3cvnAuv1F77F7xhdBkHT2VcFN7VG/
         S2iiBUMMhuioQPxM+jEGSoGJSwr2fEmbhiC0jYMLGCTctNDXBRVl0euHxvV97X/tqmDr
         qvKx1Z4VfEmxiGNrh1Mu4d4u+ydCucXEb9TQqdgu+OeQNpz3woCg9ix6T33cyiAqMWgZ
         BaVI4TatSqzjUhHDlYeyYPBkw4T3Kvhhxn1W3WXFaqB1Wql33MOtCkh1Oaae5BcpLfuT
         skzWkj7PDWGLXLaRh8ZqfMQx8pO3hpM35y2LmOQeArcE7OIWzGd1njIAe8za60byXIAz
         +GoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="M/Z326zG";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id c12si711124pfc.2.2019.03.23.22.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 22:43:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="M/Z326zG";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id r124so4225023pgr.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 22:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yk1BYY+VnrL2HJ0n31iH2IvuAtJ7ubsk0DQJEKhI4d8=;
        b=M/Z326zGzAf01PO4zT0ACyqsKMGnwBYY3xFT70sN5a9VPYMlmF6J+hiqaJPLX42Ky7
         i1jjXW0PfY5LDurr47Ejv9eGaOFq6rbeugvLGLSTfIGbaG9C7B+S39RQqWGatGKj3Nfd
         G2v6D6xny7IGNYE7TAPAV1AO6CfLlkfSITE4pwEVVd0Z1AYydhI1sFmiS8CFxrXZUO9l
         D8MAj/OG/1zvCoa8neVL3q1uDpSTTgL8YHI8BGQif++Ciwc04DwcyiEuk31fnD7mFKCt
         l7upmdnBkM8ax4516iGNcje+rjsdT4Jy0aa/VA97eU9yz0VEcLVlUncLQ17XEhVseBLD
         AMHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yk1BYY+VnrL2HJ0n31iH2IvuAtJ7ubsk0DQJEKhI4d8=;
        b=KBn0pZrSL7jJ9wAa4FBokTF7p6jFaxa+JuO0rDwAmCAQ13h+nNVZuNYqgTGEvLPkIM
         WKPTTgfFPcBmcYPRg4QX11E7PqN49U8duoPeJQuNAE8ON2OcadJn2eva4eNyjkbz5yMN
         ZrNrjEED7KSUwvgMGp+KKMnXlLkwvbyYqhT5zMP5nAVBrlO3tN940onnqOivd3BkNTMu
         egNFaILn5c6fjLWphGeRVWQ9bKZlXUI0alN8t76/ua0IcAI5vtAZVbcjme+HpvVtTGLb
         uNiLQG/kO7WreKThAUCmgFYhjQlSBnyUgM2u7Hh5q0xiM9YCdEBW9M+uGxCazjHw9NHa
         iqxw==
X-Gm-Message-State: APjAAAWnzeGa/2QU9DC4sxdUtLyE+WW5X0cA3AsnKUBhPSfTeoFWdC15
	z85SUBqZR+CEf+D21cBM6h9uinmS
X-Received: by 2002:a17:902:bb94:: with SMTP id m20mr18605948pls.255.1553406183288;
        Sat, 23 Mar 2019 22:43:03 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id z189sm17481307pfb.146.2019.03.23.22.43.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 22:43:02 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 0/6] Fix various style issues of driver rtl8712
Date: Sun, 24 Mar 2019 11:12:49 +0530
Message-Id: <cover.1553403956.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset does following tasks: 
1)Replace beaconPeriod with beacon_period to avoid camel case issue.
2)Replace backupPMKIDList with backup_PMKID_list to avoid camel case issue.
3)Replace backupPMKIDIndex with backup_PMKID_index to avoid camel case issue.
4)Replace backupTKIPCountermeasure with backup_TKIP_count_measure to avoid camel case issue.
5)Adjust code to eliminate alignment issue.
6)Adjust code to align open parenthesis.

Payal Kshirsagar (6):
  staging: rtl8712: avoid camelcase variable name 'beaconPeriod'
  staging: rtl8712: avoid camelcase variable name 'backupPMKIDList'
  staging: rtl8712: avoid camelcase variable name 'backupPMKIDIndex'
  staging: rtl8712: avoid camelcase variable name
    'backupTKIPCountermeasure'
  staging: rtl8712: align to open parenthesis
  staging: rtl8712: recv_linux.c: align to open parenthesis

 drivers/staging/rtl8712/ieee80211.c     |  4 ++--
 drivers/staging/rtl8712/mlme_linux.c    | 18 +++++++++---------
 drivers/staging/rtl8712/osdep_service.h |  2 +-
 drivers/staging/rtl8712/recv_linux.c    |  2 +-
 4 files changed, 13 insertions(+), 13 deletions(-)

-- 
2.7.4


