X-GM-THRID: 6395412283312308224
X-Received: by 10.46.77.69 with SMTP id a66mr2794894ljb.11.1489099997609;
        Thu, 09 Mar 2017 14:53:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls832306lja.0.gmail; Thu, 09 Mar 2017
 14:53:17 -0800 (PST)
X-Received: by 10.25.33.67 with SMTP id h64mr2026160lfh.22.1489099997121;
        Thu, 09 Mar 2017 14:53:17 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id n128si26017wmf.2.2017.03.09.14.53.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:53:17 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so13148760wmg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AI80RGusXMrWWm8qDBHJJYI7zbm6irxE9c7J5UhjvbI=;
        b=VErQKVGLC1kPVrYXBZdapO9eznS/d9kcQyjittvdYx3zzqj8nYORaSdLj09judFz+9
         BRYXULHRLv0fDmkbV0GXbT11I0iGyfLY/4Q9h3tBStz75RCzI4gM92F65CA+9mmai/pC
         YuAWZ/lnn1UgaBuq1bJ4iASmC1UzrTv0XsDFyhVMWJ9QiNGYg2GvTgSezwMpLk0Vy4AV
         bLCLST/V1rdmFHQwb/r8i3WeXvJeDiDU9SkenEQLC/+ejmLXAtIUYPok3HnjD04Kf9PY
         VAovlI38UFQOWqXC3mCk/WG72+hyZOB4OWmG84pERhiybuhK+GbsdvDhct0Nb+g6y7ox
         5hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AI80RGusXMrWWm8qDBHJJYI7zbm6irxE9c7J5UhjvbI=;
        b=BO5YavlFGsu1eT6w2/fmqr2+J8xkG77022+o3HuYOfX6NjgqGAL2OOPIrhChzFL7BD
         Y3I2wOVcaUB6vIjjrsBG/hoo6f+KWjI4AqZVt02mdbOwUFk22SFgj8WZ89tnbAEYJTe9
         HUpxB56fZer6rleN54ZZ4/mOxFNNBK/iPLetjc26PUM/yCF21piMJxJMVHPF0x2CGJzA
         EBPJC3kCmloT1/0MpN7O5Bbkgprv9JVClgUGYFlBtSIVmLyTa6Ra1TlW01cY2/2ThiOO
         1+9fSPB2lUUu/nv4dwXGgkEtnmP5/UqMFdJLShknU8rf6abEq3uaZLMD2kg9lsB2TvYA
         hlOQ==
X-Gm-Message-State: AMke39mKHtpklHefNqZzH0Vas+RKZwRZdGx/GA05RLYNlLluDgNsGdZiwW9GUQjYAdmzlQ==
X-Received: by 10.28.207.7 with SMTP id f7mr30700372wmg.112.1489099996936;
        Thu, 09 Mar 2017 14:53:16 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id e72sm478426wma.5.2017.03.09.14.53.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:53:16 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 0/2] staging: speakup: i18n.c: Refactor conditionals and change return type
Date: Fri, 10 Mar 2017 00:52:57 +0200
Message-Id: <cover.1489099212.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489047172.git.narcisaanamaria12@gmail.com>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com>

Change return type from int to bool and refactor code for clarity.

---
Changes in v3:
    Replace numeric value '1' with boolean 'true'

Changes in v2:
    - Update documentation for compare_specifiers and fmt_validate
    - Make commit messages more clear
    - Rewrite condition without using '!'
    - Fit function call on single line

Narcisa Ana Maria Vasile (2):
    staging: speakup: i18n.c: Change return type from int to bool
    staging: speakup: i18n.c: Refactor conditionals in spk_msg_set

    drivers/staging/speakup/i18n.c | 67 ++++++++++++++++++++----------------------
1 file changed, 32 insertions(+), 35 deletions(-)

    -- 
    1.9.1


