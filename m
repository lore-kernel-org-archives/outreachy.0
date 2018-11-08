X-GM-THRID: 6618737831817773056
X-Received: by 2002:ab0:64c9:: with SMTP id j9mr2875961uaq.7.1541661608595;
        Wed, 07 Nov 2018 23:20:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:304d:: with SMTP id w74ls140011vkw.1.gmail; Wed, 07 Nov
 2018 23:20:07 -0800 (PST)
X-Google-Smtp-Source: AJdET5dSjycwHetMMf0G+uWqon76ag46uNtb1Eft65t4bL/u0blFUZS2k5PmNsWccCaYoBsMrN8n
X-Received: by 2002:a1f:2e81:: with SMTP id u123mr2901450vku.12.1541661607709;
        Wed, 07 Nov 2018 23:20:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541661607; cv=none;
        d=google.com; s=arc-20160816;
        b=D830p+Sh/311+BRrVvRAbBWk3/7qNJLw7s61JQovvwxXGoiEZ1wAmeLozmD3S+7/Ku
         5DLKTPYoaBFEJbKKka2yUnTWtQHFiyAjF7K6FsHmgYPUEiTQYTmMG6Za98QzYNwANZgz
         gL/s5dkXteEnSVH2m5nJNgqfT5CvWzICZcaeP4BRcbF6Pi3wd6v3pez+C+WSUqeSHVFQ
         oUQnvZ7RiQOcUaQlQkiArS1WATl8cqT8CA6wJmWLqWgkDnw/1k4rxhQBvZrVBBrkQPnQ
         oy8BlhaCjF6ro01+nLCjDTsdAB2Tfv6CrJBSPTJ7aRwWmCLbGT/ortgVCnmu5x5VkuYr
         j4gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=jtB/cbeXlxkhH1du9vZ74kBS1qgtMho9Y9HdiWtqkCI=;
        b=q/ki2cf2+oILvD30qGOmJBKyVKHSGpWy4+y2G23tY3aRxpllXThmH3xf8Ku3pDAmCx
         KY0SQ8ZYgcFoqQ+HrXAMppY4jOD9guanUUMbKHB4TUOVWjtIk66qK0X850d/Zzik7Vnx
         9QA15DyTu7dxgPSwEBoiMkV/g3RwtbRp1SoFDKpwxDnETZKU7rO/2u2PdOvris2en56n
         e3xAEt+xgC8zuWBL0WjVgsF3lId33+hVuzVnPw1o17OBtPPxIwSCNXunW3IThVsdtrHp
         xbWLQWK3bp2rHn8ouSq/q5npDZokAj648nrmLNTNFwjJX6Pw9+K2LuHRamR5vSjnHen7
         LhBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dqDe/vBv";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e2si143317uah.0.2018.11.07.23.20.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Nov 2018 23:20:07 -0800 (PST)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dqDe/vBv";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i4-v6so8470199pgq.9
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Nov 2018 23:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jtB/cbeXlxkhH1du9vZ74kBS1qgtMho9Y9HdiWtqkCI=;
        b=dqDe/vBvn4onsP9HMYJt0VHyR9T6cLHX9ljol5X8IbAqKVEiHh8r1O+G1YN8XanMPt
         oNHe2cQtgXm67ndbxQWUBSSwZI0Y3uqWTz5yxAanvlI+2xYqMVGL9RhNU8uSQnb0V1mz
         LbpCJOF8NV4qdV3jSiNfLv9JCCetdNMykZlR3z8yBllahTInGQu/QL2A5kvr5RkBc3Ub
         tjTjRVFm58ipR4UK5eC01ETOrjwMs+h4xDrQEJ2p9ggjPWhg1HJyU4iVXazWzTVllfOJ
         CNLa+dWYDJh67mvJWsmabPeZtm7oOTpRUjyaOCUnHfWELr5luQz8i+vApMq4Txc4MqL9
         UUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jtB/cbeXlxkhH1du9vZ74kBS1qgtMho9Y9HdiWtqkCI=;
        b=d7hfYLcAoosIsikVYTBuuWsZyvb0TmvR5Mh3c1rxeVUzVpJASvo496ZDaAi9FlabWQ
         dE++Wi+pwzdmUSTHg8VGFSaXp+mZPRPeFZs5dJFm1e4yC7xGov/BlutQZmg6o2Dihc6c
         dpXpGs2u4rZ5P/a3isFbyMdN0ZqgAYruxlYqY4wCdv6Vy5DfkPWdRpJKrKps/r4ljjLA
         kb082yykInVcsX9TfICWWHo/wryl8eCVD+9Ar4c9DfIMDrVbWh4lxuQAv5SWtTZjf1XZ
         T5yXTPpvw+NudRxf2YoUK/Cpdd437mwhqqOEyjCu/u3YrzNoPMG+AGgPgqwQl4p11PKi
         uT7Q==
X-Gm-Message-State: AGRZ1gJ4SeRDdLKn/vrVIUWOBn4sFxd0MCZAITi0NLwiQZUBSyYBgLku
	JNNKF4jHUF2Hd/PPCmYad+ETVzop
X-Received: by 2002:a62:995c:: with SMTP id d89-v6mr3448470pfe.11.1541661606653;
        Wed, 07 Nov 2018 23:20:06 -0800 (PST)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from m-hyperV (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id n23-v6sm5085140pfg.84.2018.11.07.23.20.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 07 Nov 2018 23:20:06 -0800 (PST)
Date: Wed, 7 Nov 2018 23:20:05 -0800
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: rtlwifi: Change line and comment spacing
Message-ID: <cover.1541660015.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add blank lines at the end of if statements and spaces before and after
comments. Edit statements so that the line does not end with an assignment
operator or a parenthesis. Remove a blank comment, too.

Maya Nakamura (4):
  staging: rtlwifi: Improve line endings
  staging: rtlwifi: Remove empty comment
  staging: rtlwifi: Add blank lines
  staging: rtlwifi: Add spaces for comments

 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 10 +++++-----
 drivers/staging/rtlwifi/phydm/phydm_ccx.c          |  8 +++++---
 2 files changed, 10 insertions(+), 8 deletions(-)

-- 
2.17.1


