X-GM-THRID: 6668981360875536384
X-Received: by 2002:aca:62c3:: with SMTP id w186mr5166710oib.33.1552743222162;
        Sat, 16 Mar 2019 06:33:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5d11:: with SMTP id b17ls1175322oti.8.gmail; Sat, 16 Mar
 2019 06:33:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQDYF0A/UPP4tAnn6Of6/rfXfu/igWIfq8eNwD9epbFJtSms8Ncenp9EYyYtM7K53clGTd
X-Received: by 2002:a9d:ee4:: with SMTP id 91mr4499432otj.50.1552743221497;
        Sat, 16 Mar 2019 06:33:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552743221; cv=none;
        d=google.com; s=arc-20160816;
        b=dFZF+os6XEiNRm+xxrb4JwL8hCh9PZQBmvqkse8HinKu7hi4HYra4F+Gg2/D8vhru0
         mDlpm1wl+pZFzNZZ0u9r+ou3PQ/yHaIuzrjghCGb0x2GAQSwybJEYlq1UJMZU1S4FRwR
         ECWgDDCMDV6699GA1NdpPBUF+LPnSX6KZy39zvw9c4QiUdY4Q25B5EtG/1Kw3NY/6775
         bMI9xGzJv53fkBADauGrnHVob8npj6Wb5tTdbznNgduJpf9LKPZjOHmRmTFF5ELk9h2A
         Lam9rK0skb2Xj3i0DzTTpF6T4nkC5CKEUBMPpMGdM8c1RGufEtwT4LvorX5MfvS6DDYU
         F7xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KZghOKAFSSDH/PSsE8AmkIW0ijMiLOa41wcfPBXbBLA=;
        b=Wvw6umsh9R4TpQppjpGk/7p2/eMojSvdc8rT458Oa8A+6etuMGu6rNngsQBIkdrk+U
         N6rR/wLljaeM+54QZObxEUla63NOC85xLaZahQwVb4hhi2GL4eDca+afhxkgoF/EYdPX
         89jY/TDru6lvoGXKcXYLvAcum6TLKMJX0Qb9bI+62zuQnt8PyIwuSzYPJVGKQp7bKxJS
         kZEuluX6LEcObzD6+xmJVnUxFydloHvZ9c86pdLxmaV/sKwKqnLFBxiCxa34+FkFUOOb
         lC6T4zm3VQFw3G8Z25WyoK/lNfvNbBtlKhh5AzYR8bhs3EC5vQbUXC6oOAPoan8FTOnA
         gRLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JiOZDQ93;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l92si107236otc.4.2019.03.16.06.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:33:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JiOZDQ93;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id k11so8335151pgb.8
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KZghOKAFSSDH/PSsE8AmkIW0ijMiLOa41wcfPBXbBLA=;
        b=JiOZDQ93iDehEPaXM1CCLAJ6F/PZWmRTYLtPWisjgvmBg479YlibGPsEvf13fnpAXq
         edfnb9d2jzxoKvonZ+rirGlyHflVWmb3WGG26Uz2ECR/NBCTQFMBcmyKulPDan4bwzMA
         p6UY6DByCmykO8HYi5jUs2zWFe4yBAzmevM/47qw9zyfd91XBFWUENtfXiyjg7qjaysZ
         3AC1B7KUzfvfNqJnVf0GUdwGEwNQ9/bJLQiQkMgNORevo6JARlvlFH6qRl0CX2Fgr0/l
         34/eBGmrDaPzbzpoQOSXaTd2UJN/gvj6jTqllQ7wkH9GNBDFNnqwKAK0cot0dDpconUF
         GoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KZghOKAFSSDH/PSsE8AmkIW0ijMiLOa41wcfPBXbBLA=;
        b=Qj8R+a18NN1Ww0yJR52PGB6cDLMklYvZuv3l4an991D7jGP9yWDWWL88A7I5ii6LuM
         VQjaGg2tfizdKmpJsi7c13ipZj1+yIXp4wocvZp+bOxH5YN7i6ICHbcB8XEDRegTn+QG
         XhfDIrPuChDrL0lsAZGHH5zN0rPr+b2MEb0bFh4w9Ku1wJ6zYHNm2mfP0bYxRItsiZTr
         z/UrJJu9/LaUDPHKhRNsB/OaP6ubJg7vH8MjSd7CjWgKzjlNkTcZYXj0DiH2jrXZMKQM
         fdBMcHgYYtst57HZT8VS4wQ6BsNFAuaykLeiMhM3sMQ3TM2qmZoRe2CdRPHjws8zmN3m
         oXKQ==
X-Gm-Message-State: APjAAAXH8UMTdudq5noN4alK+yteTXaadndhLkui9sABjQJ8FsXEEW9i
	FDRyCL+0NL7CcHY8AHm5yUKk8qoROvE=
X-Received: by 2002:a17:902:1029:: with SMTP id b38mr9768842pla.204.1552743220878;
        Sat, 16 Mar 2019 06:33:40 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.23])
        by smtp.googlemail.com with ESMTPSA id n23sm7223786pgv.86.2019.03.16.06.33.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:33:39 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: rtl8188eu: rtw_recv.c: fix  various warnings and checks in rtw_recv.c.
Date: Sat, 16 Mar 2019 19:03:06 +0530
Message-Id: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

This series fix the following warning: 
fix a tab indent issue.

This series fix the following checks.
fix a paranthesis issue
fix a space issue

Changes in v2:
Fix the patch series number

Sanjana (3):
  Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
  Staging: rtl8188eu: rtw_recv.c: fix a paranthesis issue
  Staging: rtl8188eu: rtw_recv.c: fix a space issue

 drivers/staging/rtl8188eu/core/rtw_recv.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
2.17.1


