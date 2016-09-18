X-GM-THRID: 6331574869516353536
X-Received: by 10.157.35.244 with SMTP id t107mr11992613otb.2.1474184652605;
        Sun, 18 Sep 2016 00:44:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.6 with SMTP id h6ls1501944oth.41.gmail; Sun, 18 Sep
 2016 00:44:12 -0700 (PDT)
X-Received: by 10.13.210.129 with SMTP id u123mr2380760ywd.148.1474184652225;
        Sun, 18 Sep 2016 00:44:12 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id h124si5505876pfe.0.2016.09.18.00.44.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 00:44:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id id6so38662889pad.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 00:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OgQ9kQjNaf28E6ZuSYZq7TiUpD89JaGbwT7My5Yo5yQ=;
        b=TAiMk/ZZ359UaLhaPF2hSGy2P4/CTniCd+UnqjyRi69zV6QQuK/gPrZ6NP8+EJwCHV
         muhn0YCIy40E5NFu+MAt8Pusqr6bKT+bhXbecGcejMhy9xwYgaMBODTXJVL3i8pOtqXJ
         deZ0YlVaMDSgfSaM7Ki0qhJ6wmDziyWAkuWJPWwXZLF6cVPryHFyfFBFHxrq3sALWnkL
         YFpFyCT1RJXqcg//EoFPiHJEMw7K6ziiD1uPdgGOYMbRhJ7lpCk13HuECzU6vZwvdvfy
         UgS29QwRy6rZf55F8Uv76s82zT9omE7fWPRYkw8w63ve3c/arjOEgpfirn4efeP+oteS
         HswQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OgQ9kQjNaf28E6ZuSYZq7TiUpD89JaGbwT7My5Yo5yQ=;
        b=jK9USTRkb2T5rOS/rd9tPEVMLgjlY+khRlTnc4WVYflvGUwzMFAI9Ieaqyrntq9+JX
         SJTwoBvF+9p3ZcJpykXIF27j1c4jHzq7qpmXkb77NInkSOzUCJKdxJ78pgPEtBB7/Tpm
         5PYrZncu+yJfE4Sz0vRLy1/HvoajyTzQIFl1Wzf1a5A6l5Z6KjEWW/1CpwmbDRJWRYcG
         g9MhK0hM7TBFVgRcqO25MczQa4mhh7L3Clam14VBl5lICUwup2hSMQZkZ9yDOl915sdJ
         byI/XB8dUWzQGfw2Hfk468SFmwRBetJQVx3Zzpy8ua3nsI4lPa9GE/+ldxyfl1BD47i0
         h4TA==
X-Gm-Message-State: AE9vXwPH9wwo/iPi/1ZrXUM/yzNjAmgb8WdIdUl6gApRDTe0eF33/tnn6ZVcasqaDaL7gg==
X-Received: by 10.66.100.162 with SMTP id ez2mr36993177pab.123.1474184652040;
        Sun, 18 Sep 2016 00:44:12 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id b88sm62914361pfe.66.2016.09.18.00.44.10
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 00:44:11 -0700 (PDT)
Date: Sun, 18 Sep 2016 13:14:02 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Fix multiple Check
Message-ID: <20160918074353.GA4614@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

/tmp/0001-staging-rtl8188eu-core-Remove-unnecessary-parenthese.patch
/tmp/0002-staging-rtl8188eu-core-Fix-comparison-to-NULL.patch
/tmp/0003-staging-rtl8188eu-core-Add-spaces-around-operators.patch


Anchal Jain (3):
  staging: rtl8188eu: core: Remove unnecessary parentheses around LNet
    function pointer
  staging: rtl8188eu: core: Fix comparison to NULL
  staging: rtl8188eu: core: Add spaces around operators

 drivers/staging/rtl8188eu/core/rtw_ap.c | 94 ++++++++++++++++-----------------
 1 file changed, 47 insertions(+), 47 deletions(-)

-- 
1.9.1


