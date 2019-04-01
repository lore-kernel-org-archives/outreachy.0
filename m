X-GM-THRID: 6674267883353145344
X-Received: by 2002:a17:902:2a48:: with SMTP id i66mr1696149plb.59.1554149440095;
        Mon, 01 Apr 2019 13:10:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:164d:: with SMTP id 74ls4621349pfw.7.gmail; Mon, 01 Apr
 2019 13:10:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyeV1eqQJfY6YFCrzsy9L8lLxJlPaYhpuw2j5DUAoA1kdz3sk7AVvaeVRMtgpuyGTsMY8z9
X-Received: by 2002:a62:75d8:: with SMTP id q207mr1395982pfc.128.1554149439311;
        Mon, 01 Apr 2019 13:10:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554149439; cv=none;
        d=google.com; s=arc-20160816;
        b=EpWgdin4CB8cy+SoEBhXwOCrTti7aCq6F3BmajY3ZphHLNHhrKpb+3SgmWB+QTqRc3
         K1lMAom09od+0D5+7A+e8Qedi+UCwDsUYd9PY/C8EPKlzS08Qy94Z8/pr1GHW8bL0CKd
         vII/c1yp6oBI9DyGy0Sf59/KmspGdU1ofQf73Xa0RFMjvaQluea+FodDmWyq4KJe8IuO
         5AWYNXMJCpjrKvPBvLymeTbmCbv2vvPpAFkxhbVJP+ezLXZwjSzrlnxjWa1eiAvZZWWT
         5811M5UJjtVcEFC4JZUrWUmupAiytxdhkAHOH+6XB+4M0BUvwhyzyYSvtvJ+yrvO3449
         P8zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5iqeYi4NUUteH6585ghnOvDQmTrFybJM0p5UiT6p1vE=;
        b=sEyvPx2auDF90V3kFUaVTrd28hk3XLlAVTO8oFfnBJVbQxR61KrKVm5HqGr3AFbndQ
         TtkwOaK+m0tJwt1JVPlPgMgCTFQQaBYEA0S4D8zKdx4Fk27OfHFaMGndcTH6P02a+IY6
         T5VTTOryK5b2r4nzY0yWSmqZI3IIRjrJ4MTgns+Bnd45HIr25vJOESr0rVEoZb36YoC+
         ZCc/p7RNupxKgIgknavOPzlyFjxYPUfoPQlZKt/At1JVblvnM5uPx0Wsyu7Tgk91Mz5z
         tF/BDY0QywU3PNeHMkEWH9Xk6s82mF5MFdIp3bQ4tJp/Ijr5xi04UaD3lXfP3AxIGBAd
         M4oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cNMYumjX;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id i67si211840pfj.0.2019.04.01.13.10.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cNMYumjX;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id j26so5315482pgl.5
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 13:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5iqeYi4NUUteH6585ghnOvDQmTrFybJM0p5UiT6p1vE=;
        b=cNMYumjXBDNo+WxyZbJOm5fROs2lOW0cgN5fO5IvBpwwECm09VTbgbLIIH32LRlOmN
         7RYfv5THW6kUIXf99OQO6jGyEAbEQ/zpE3locq45zW45vSIEK8V47uAIjEF+CwkY6U6i
         YSwQqh6umiElSNOTYt0nHHE41tVwh04KLcGjYlkRn3386nicN6IKb/CkVVHLMvGt1ieX
         7F+iQcdVODfFFh9OyWtInRCJTiNhIiC50ArbeaB+RQoJmBRQAqFQtlbb5xt+j6VKD3o+
         T3j0+fmgJpZ5CQ4U54c9waE8m/mIfnhL92Zv0obioU7USIpMRD0c7frIYqmXMwf59Ut9
         mnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5iqeYi4NUUteH6585ghnOvDQmTrFybJM0p5UiT6p1vE=;
        b=flLsJ/S4s9Fu8P34L68RYHjk9HXXM695yE2VZZlai7qgkEug4aiwzxJRD/YW06Ubbw
         /uAiPd1VZyBMcTosM1UMnofgubmxtd34IFpGZAinl246nzvSn4OMWFxJ+3k8tnRLcVRe
         70cr0qswrioqR9Sv3pXE7u8qgZJ8unbKv9HRC9TKeFRNCVFmnnsrkGXU8G4FBNDqZuNJ
         aLw1DjsVL8Ff+ibGGlWJn+BlEAHKXHINVf7nDAKI1W4RlYWDf/thZlGBne5wOzsZPqd+
         c4M/iLNQOASyKujJG+rkyVC7DSwkaivMdpGjXJRSzeKHzRdW2EwYQVpgsPY97K1EoljV
         ZpKQ==
X-Gm-Message-State: APjAAAULqXZXoruZohJtSMTzM6HIKc9lpGSGCH3TkuG1M8yt8L1sMRtH
	2TYSKumbAmF+AQKcxFh6q84=
X-Received: by 2002:a63:1d20:: with SMTP id d32mr62928298pgd.49.1554149438763;
        Mon, 01 Apr 2019 13:10:38 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id t22sm13540004pgu.45.2019.04.01.13.10.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:37 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 0/6] staging: rtl8712: use list macros
Date: Tue,  2 Apr 2019 01:39:49 +0530
Message-Id: <20190401200955.98744-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset
-  Replaces usage of container_of with list_entry
-  Replaces a while loop with list_for_each
-  Removes an unnecessary NULL check 

V2:
- Include new patches for using list_for_each and removing unnecessary
  NULL check

V3:
- Include explanations for the changes in log messages

V4:
- Change log messages drop one patch

Himadri Pandya (6):
  staging: rtl8712: use list_entry in function _r8712_find_network
  staging: rtl8712: use list_for_each in function _r8712_find_network
  staging: rtl8712: use list_entry in function _free_network_queue
  staging: rtl8712: use list_entry in function
    r8712_get_oldest_wlan_network
  staging: rtl8712: use list_entry in function update_scanned_network
  staging: rtl8712: use list_entry in function
    r8712_select_and_join_from_scan

 drivers/staging/rtl8712/rtl871x_mlme.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

-- 
2.17.1


