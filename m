X-GM-THRID: 6667995620579475456
X-Received: by 2002:a5e:8c1a:: with SMTP id n26mr12526031ioj.16.1552929284464;
        Mon, 18 Mar 2019 10:14:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls107144ita.2.gmail; Mon, 18 Mar
 2019 10:14:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwp0E4SmzWxyUo4FW6j1Z5+JTibQSsZOGhKqDGU/LtU9bm3Jy7xIdbb+bcefi0tswvSl1ZD
X-Received: by 2002:a24:6b55:: with SMTP id v82mr10809818itc.37.1552929283542;
        Mon, 18 Mar 2019 10:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552929283; cv=none;
        d=google.com; s=arc-20160816;
        b=lvnZuwnItSPWUyga+r0+RVWNursRUYvy7J1RN4D2a/dmC55yjf5h96AAufsLIswEZP
         13mH13Qv8ChZkzF97bo8X2WCoaA/SCGyi5nLx6isHSNq3LWRE320AO4f+NhOmuFbMWn8
         q1hnlzIy760MWOgPI4BNDIp6KsnTvNpwZQ4z1VyyqCfaHkjTKO5eljeodHDF81sP7OWB
         r3lnv5hnm3PEGErP37lOufxB86syBZu7a6bdZ69gPRVIAog598eJuxGJi/SG5BTpns7j
         /MF2IFG6xKrQ/D+g0BLkIRp8RCfXiQZaZep2OkxbxP6j6CSinlFXbqhPNeCoT5QuKdYh
         FPyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dlyP/nFRxdof9KHJuMMkcQgy2GTWhZTRK4hu1hbGjvE=;
        b=xjKn2B91EkhwwIGMIoJl34AQKmt9LF8T4irU/QfUJfs9zIGg+ruSXvADfMKzAvUFo2
         d/WEWiyyUjCzuXVhchyhSINm/i0YgHM7qLGJbRmA4KLQcN8WQk32bso609fWTF/LdUqb
         tr0CHHtF1xRL6EiGoV5rKkl58lv/f9DL+Nj8+JIfZfCUEelf3O0PSvA3RnUylFEHw0Bq
         Cm66rwKgrOzO/wDAnPa0PPYZXWD2on02SgZRGFSbDuTBT9KBJIg6mKIdyOZPo4rCXJr+
         y4YV4N0OfadQGwKa3iBSZRPl5MpMYG8nV1cJW2ji0LL0USAWrtPEdHe3wECFtHWt/Mcm
         FOpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KankyRR8;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id f13si564771iok.3.2019.03.18.10.14.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KankyRR8;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd2f.google.com with SMTP id b9so8479691iot.13
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 10:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dlyP/nFRxdof9KHJuMMkcQgy2GTWhZTRK4hu1hbGjvE=;
        b=KankyRR8iQxRxw90wzZ2Q7ynQN5QlbHe/K2QTbaAe2fUR2e5UPbNKwdgC3x6Bb5w/U
         K+Hok9CUOHoLXpeZJ53M71JV4G4qrQOO2WBrgL+dIckKbfdRj1Ifjgyq8wp1k4L74KNf
         2KEBtrodJbiL4yebkGxaNEuhLDMrP8y5wIyLXD0HxA+urbAemT3j79XpHQFPdOYf71zA
         z/tgyFNLceG4cG7NLH9Jl+/ePKxG1cx0gnacUJW2s089N2Q04X+Ax8o5cASxhiADyYYy
         60/pubpQouI/2UjTrWLo8qflKgu9e348cxb1sj96527FtfbfD5I9nF32YrFtPonjalmS
         6dKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dlyP/nFRxdof9KHJuMMkcQgy2GTWhZTRK4hu1hbGjvE=;
        b=F+Ru++FiU1RQP5IPLqZRo2h//KwrQzeIfgCSNA4RECut6hB74FSxpYih7rCiHLkTh7
         Gv+RjIfVxWIlSfavzMd4lPdwrEhn/0tiD53MkSeaItLkFzTmcK8aTWo20v9KygecHlEg
         RhZeo02BBwkaE5YxlyjTOwv4YNUS7ZZhqfP/Zv4nxM1/gnzZHO88pZjun8WCCtyTV1+w
         eACBQdBcL1t8QAapfdxAibfSlwPJlTl0tVdv6HJs3XRS5ehs72iW2MJTRUUN0XsQrX53
         G1SHgE2Boj+vL/rL5gugNJW/enoUqUq+QBiuuoEpHwR4NONW7p2347gfDYDeK7n6Czcy
         WU9Q==
X-Gm-Message-State: APjAAAUJlmHmuVSfBz1RknTNV4MS9a9XoyPrnvUIUlTa8l3PVJfJyb4B
	pUyrEmXDl81Wkcq27SwR82nS7bzFMbDA
X-Received: by 2002:a5e:8818:: with SMTP id l24mr11548105ioj.119.1552929283267;
        Mon, 18 Mar 2019 10:14:43 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:10b9:a837:3f7e:30cf])
        by smtp.gmail.com with ESMTPSA id f130sm369333itf.43.2019.03.18.10.14.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 10:14:42 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] staging: wlan-ng: realign function and macros 
Date: Mon, 18 Mar 2019 13:14:25 -0400
Message-Id: <cover.1552927880.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190313214825.7089-1-brandonbonaby94@gmail.com>
References: <20190313214825.7089-1-brandonbonaby94@gmail.com>

This patch set does the following:
1) Removes tabspaces in macro definition
2) Aligns function to prevent it from 
   going over 80 character limit.
3) splits previous patch into 2 patches.

Branden Bonaby (2):
  staging: wlan-ng: Tabspaces in macro definition
  staging: wlan-ng: line over 80 character limit

 drivers/staging/wlan-ng/hfa384x.h | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

-- 
2.17.1


