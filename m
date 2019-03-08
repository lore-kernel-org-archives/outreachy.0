X-GM-THRID: 6665828102544818176
X-Received: by 2002:a5d:6846:: with SMTP id o6mr815742wrw.16.1552009047659;
        Thu, 07 Mar 2019 17:37:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4083:: with SMTP id n125ls75506wma.4.canary-gmail; Thu,
 07 Mar 2019 17:37:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqya/Gf5LgjhanAyTuEdsiPBvQ6qzB2UTlGJi6pG+e0L5gp5QK68tEgMcbg4Fwrtj4VTs+YR
X-Received: by 2002:a1c:c00d:: with SMTP id q13mr1308538wmf.5.1552009046796;
        Thu, 07 Mar 2019 17:37:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552009046; cv=none;
        d=google.com; s=arc-20160816;
        b=DYno3iZHWxCvYHe9aYYlidS5K5nUqabz7RC/JBD9BGNXCsNnpa88gcEnpfkQ2Fax1n
         0FmKfoB3iQWAFjwWHVXrwee0nBXWbanatL1TK4VHoHbfzub3Am8xA0VnFQ/Z5iv9WKE4
         vNHuWhXa2k9pHCHpGL7X0g3M7nanwKboqwVyh0LCzfm9rTDzYuw0I+eLBPLhWbmEsuPJ
         D7tb/jUFSopPFp2xEEaZio2oWCC4Jr5JButCEf3hWWTlcm3vBCgcp9mbjln+1yiO1SZH
         F6MXZ8jOu6Bqs2WjNc64httd7IFTNnynZPdHh0eBX0zB1sUSezSx9/LZt+fAJlnjwjDW
         szRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=IOEAm3WvRnpTpH5iOZNLy00cQIA0t4OxPFZ0IYbjVCk=;
        b=VhmCPidrt5mBjJiIZMqQsJrgOWn0hT6NT3UOcEtGLG1j0Wzl386G5QD4pqAcnMxe++
         Pr8/w4TgJ/7NL3N1qPWNfCCNjYosxuTM/tYHE9xiByFIegzuZ3w9P/Vesvjzh9H8xHQj
         z6hzifgdZ9AY+4bQ9+wnUvTIRS/MkQBZNxnh3u2Yxj9QYOPdH4LkzST6q+Miw/AtUZ10
         720ZK4fFczJYAutDIJ7gu5CtYzl6R6yzB+jB3M6KkBNYiNVb9RGU9+Z6egbVGhn+RmH8
         H8/0rXpI05tGtjv48h+rqkaEwSxZL9s3ANIwv8xXyrEgKLM+ufOLkB/75kYvSjHSxhpN
         Un2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f4oWI04A;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id r15si308664wmc.4.2019.03.07.17.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 17:37:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f4oWI04A;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id g20so10940301wmh.5
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 17:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IOEAm3WvRnpTpH5iOZNLy00cQIA0t4OxPFZ0IYbjVCk=;
        b=f4oWI04Ap3TVmOoe5xYH1tylchInH6NBGWApGMxvxUItRjtncRG8kWKADjZRzA+uLJ
         iapKmIs9sHV8S9hh2vAN/iM2McLO9d10MCPvDS9WsqpW3EDvIH3rwekBb0nfmv16h6ly
         ooY2D4FzZ2NDqc8uxR5HWW4QXpCRzmebLZ2iNjceguYVFe4yFEH/94I1d9fzqbpwMzJF
         3MR7+UIEJZ6r08RshebAeJIRf43l0s+mTwU0ubZs8yqYeh6OlJoKD8lhkYbBXEIptDuU
         jKtiamAsljWcjNN4p0WjLB6DEg/Z1ykmaHvH+2lUXJjqng/Gr2ncMvkbgrFUxQhaq38T
         8jIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IOEAm3WvRnpTpH5iOZNLy00cQIA0t4OxPFZ0IYbjVCk=;
        b=oQ8WtpmQ4rAdktOe9pPZX7V0STKw68AQjh7QMysicnLseUivHuaBuSaJ+C2ozFvNzo
         qkSk2oUGAr3eC4zM7o2lmuWo0CDtbiJM9r7gi4dcsjFwZskvLTz7T5vUjcsACM8yksxs
         7LIqAaILlNQcp2myqAwh1hKiFL1YfQHU5IMIy1b1sxuH3EkQajeTfDwo9EXF1wtzeuin
         oGmmiyBOya7bFvg6r6qc8FABG2exHssXbSeR24jqyMpaXi0IzuzYj64zfUNovKx4v9ZW
         cDcA8MRTbngKUGuamHZVkFMuaDpU6pVoBplOWuVMjgin6CpZooA3+M1ybSyhyxrYCS4F
         eJuQ==
X-Gm-Message-State: APjAAAWs75UKaGa9DB19B4GZ1uvxxUylKo8xKo4/MxTEKiTWYReB0PKg
	UXvNO17Kufdpk06IT1mOGkroa8E=
X-Received: by 2002:a1c:7ed0:: with SMTP id z199mr7085103wmc.89.1552009046241;
        Thu, 07 Mar 2019 17:37:26 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id a82sm7897490wmf.11.2019.03.07.17.37.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 17:37:25 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 0/2] SPDX cleanups
Date: Fri,  8 Mar 2019 01:34:58 +0000
Message-Id: <20190308013500.27350-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

  This v1 series add SPDX identifier and remove unnecessary license boilerplate text

Jules Irenge (2):
  staging: zoran: add SPDX GPL-2.0+ license identifier
  staging: zoran: remove license boilerplate text

 drivers/staging/media/zoran/videocodec.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

-- 
2.20.1


