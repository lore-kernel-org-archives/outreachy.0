X-GM-THRID: 6663599523023028224
X-Received: by 2002:ab0:7103:: with SMTP id x3mr5022945uan.14.1551490165347;
        Fri, 01 Mar 2019 17:29:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls2404320vsc.3.gmail; Fri, 01 Mar
 2019 17:29:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqyn8kuOOwftG90PnzRb7r79jbnJZ6wabkd0tEhvWvcjAWpbLE2c1rAauabGbPrh0glGCNmJ
X-Received: by 2002:a67:8a0a:: with SMTP id m10mr5021626vsd.42.1551490164698;
        Fri, 01 Mar 2019 17:29:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551490164; cv=none;
        d=google.com; s=arc-20160816;
        b=uNX91oqzmvdjy+cGSfjwTg1p4wYCQeu1LDVxlFmbzY4kTKZk39AWdCpuvHbRow6VRH
         +2wUBsClSrmI05S9jLRv21ZBfNXLLgvyvpdbUfY2CD8i6v+YbEFclPYQZ6wcpMwogh+p
         fB09Li5ND8GJfAa08GcV/D/3Is2I+3NGsDNiJxeULO6Sx9D7L+e2tJSFWpIziW1GLGoU
         GWPxf8woLqj0zU1Ozu6ARlCyzNvBYF0t5JFf5ah8ClmPuyMlg0N2YD9eoquVY633Wdm8
         C2XSsOIpSG1YvqHivhb54R2MYKX0ofhrxmatZFnWCogqVmaHrwjW9SfNJ6wDXmebh2AW
         In3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SIZZqk7g9rxrq5Z5kHXm7Zk3KmnCV3AJHaHSUVkKS6k=;
        b=KWkwtSS9ZIiKwtnt+MM9yhLnbOI9BvGJx0OQbGJUFaJK1CEVGioGTWmvYtb9qfbSSL
         y1Ms+R8mOkz4dZbk4zqnVMwmswaECsdbKw8T1jlBsq1GW6hWAVGwA+SXBWs3mDY/h910
         xwLn3oAnCPnO7FwlzCccJu+cUtSvLBeuRCQMI5hOCkV5AcDc6R5IA0YTkSnMMLg9hPKx
         n2XlsDKHxMZKr5D8ui0M+b6sSphgRQ2fy5TxO4KZ8k6JorjrCZni4UWyoaNZTw7DwK9X
         j4KXSFT06YB6NV0+VhEkdEgLiPqsiIG9Q5MbTVrQRxXcMrvYBekZiYxxNbdnJ6idQlQi
         z+EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZHpusaSS;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id c15si896702vsp.2.2019.03.01.17.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 17:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZHpusaSS;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id 98so22727503oty.1
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 17:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SIZZqk7g9rxrq5Z5kHXm7Zk3KmnCV3AJHaHSUVkKS6k=;
        b=ZHpusaSScZzTJk8fsZKtVFCZO0rQ1k8hTRBwe/y+NhUBjwRL4zsV+n/iRTBaJqGIWl
         w8/htGl/3dqZRlIMcs9SnOMlb/vTb9zHCisNjnEsXl9GiC2XpHQRGRZ+oLgihuYGhi3t
         ISuU3VIhWB4XQGsDvir911g3iJYq0a8ErqBy4y8wDLomCnZ99eDUAMshk24uOb7riJWi
         RGsx7gCmC+o1onkifLO8uRAqAME57DtlnSJ/ZikKCDaXJIvpHJJrCBeLYpT60xDuQDqL
         IQOIT7uRbxmTWHDuevLlkG0sPzT71791WsjoPm+cJnpoJYg/NIwm3FXbuQGiblARsYy0
         xuyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SIZZqk7g9rxrq5Z5kHXm7Zk3KmnCV3AJHaHSUVkKS6k=;
        b=RELRr/sC8p3kTg8dDl/ZTIT9+C/Ry6VFcEYvAZPZ2on33zZVbqGrtlgznmLXMiOXzf
         9EzmlVKibpyqO4S+sU5fOeXq0Ii3XNvDOKSQUtJ49A8U82i2dnJkyCcRPmSxc5fIMyn3
         ez43hj2rTN+dHeoJ8YUs/K/8trxskCDDztS95zllakroPj58sADSIexiviFlubkZOdUu
         98vsXCfxE8xTKo3JfkJ4BMBYCKvkPTX7USJcoTWCGlE2k9IUJ3JxbXBxzd6qQZ9iHkbe
         Yt7qKR42kLsuzWNyIYz7RHoJMFD+UVIxmJN2e1fEx1kC/+Hu99R9719EQWLsCiBzWAfh
         oSTQ==
X-Gm-Message-State: APjAAAV18LD2QQbY8RdRYgZarmiKbuJRiWYh4tHyJeVb5kCBOO9Z24C4
	41W5uhQOugDeW+4M1NcuMuho1r7qdlY=
X-Received: by 2002:a9d:7602:: with SMTP id k2mr5296467otl.357.1551490164036;
        Fri, 01 Mar 2019 17:29:24 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id p187sm7211554oif.17.2019.03.01.17.29.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 17:29:23 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3 0/2] Fix comment style of SPDX License Identifier
Date: Fri,  1 Mar 2019 19:29:09 -0600
Message-Id: <cover.1551489576.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset fixes the comment styles of SPDX-License Identifier based
on License Identifier syntax.

Madhumitha Prabakaran (2):
  Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
  Staging: vt6655: desc.h: Fix comment style of SPDX License Identifier

 drivers/staging/vt6655/channel.h | 2 +-
 drivers/staging/vt6655/desc.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1


