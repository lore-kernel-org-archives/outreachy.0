X-GM-THRID: 6661088091510407168
X-Received: by 2002:a17:902:b191:: with SMTP id s17mr2476380plr.14.1550905427081;
        Fri, 22 Feb 2019 23:03:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:d241:: with SMTP id t1ls3220818pgi.11.gmail; Fri, 22 Feb
 2019 23:03:46 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbwJYtUQK/7MSed1f0cZ/MruZCxSxIw/LfKc0a5souRwi0H7V+/TxZtSUCa/hdGhS8BFbg4
X-Received: by 2002:a63:dd43:: with SMTP id g3mr3034954pgj.111.1550905426398;
        Fri, 22 Feb 2019 23:03:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550905426; cv=none;
        d=google.com; s=arc-20160816;
        b=lEXUAr/rOjWkc7wwopVJjAkJHftY+p9lBuE0uMdh7IIqy7bwai/LvP1p0Tkri+YC+6
         ubYutrZ+9rQfO+4EaucI/50zzn03mqpVfHhdamZ9gdPtEwYjzuZ9Ua86PWyRii6z8+sC
         hg72+BpgDZmnUbe68gPGBozY9fYrTtU/ldO5FEVwBdxqMLXBtkprfip1ACTPBKOV/H2Y
         PkkValWIylg1DU2NHEvCW7eUuI86y8e4Lq+2cywb0eY7ABpr7oPLYYVaFH5hy0iFiTnY
         7bZdc+3CVnz8+cAMDzvMoGZtYJtrDq0ysbMHPMvW9EwOJI0mn2YnPihm+gScCkl6k45g
         DxmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=4gx3L9PDqGUvm84fzjHOqAe98izuDBb8TD9qxa6NHSk=;
        b=UqFe2jblNXvYwkJlXiyag2I8XPT0/9PesocGzjxIQhPA1CMUs9Gf7zqINcRx8hxDS/
         80jpay13ayy/2HkkRSM1IXBz4wZhq3sQNKP777XdfZi5gsx9gYXXwCZHG3weymd4B3wR
         //Kw4DjlaobT89UJNc1xd7mnTeCbZEcIRSE8q0LOYm/W5YXO/t66oQUd8TdXJpWw6qu3
         FvJEStCqZ3dCYBv8j8/2MAojKSwUEM87/EAy0FUn1Szm8bnKjfxdOS+wb7n/7xzi7Bk+
         lrP4ls1Ko0gUFPRJMdIAefOnSOgpWWpfxQKanHAWDf4omsJVIEnh6FgD0jsQXq8PJQ/w
         oPug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ey5RErYb;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id z184si212602pgd.0.2019.02.22.23.03.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ey5RErYb;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id h1so2108985pfo.7
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4gx3L9PDqGUvm84fzjHOqAe98izuDBb8TD9qxa6NHSk=;
        b=ey5RErYbL6JrSEVMvkiGhniwkrx5cHrReWdM3dJ0m11yGdyrOg4K6ehkL88xgnBzOS
         eau1+xOwjVRMrZP6fyrdwB9dcUqYlmhheHyy7pqP9Vg3wT27VpIeCmEP9ne/qIglrtae
         bqWrbn+RDgM45ArIpxlS0BWcjnOyH6mclTCY35LodbblwuP2GfbFdP6AjswFKg7EeoS+
         iCHTAI2okXc9OAbGYr7KM78ypkbgfCBXmpIxbAxLzHK4z5tkaT4susJbR66jhglo19sM
         meuDPWJMdHc9NK/m+xOQR6mzE9da/0nt3NfJx3DIHqC0YZ3jdDNInciwcWW/TU1x8Bai
         2K0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4gx3L9PDqGUvm84fzjHOqAe98izuDBb8TD9qxa6NHSk=;
        b=qTeU0/MjrSRBZurmDZ9E4G0JILmw6KZu0GNkWaG5yunj8MUlFwEErHDp35sBP8IN62
         sEir5zUcYfFqB8idQX/Gf2ZNwlGUrWi9ae7jSiEJWpeGuAJv52wuVmc7v1wVqkJBmP/+
         n5Wg2YjAL0GJgiFY9uhUyUuEUXePoDvTPsO+70sWLejVKWZvz9KUDjEpt/AGw57vni4T
         AcFN+YKXKtWSOLFdvgE0X12AcVUmZ3cgzQjqZHU1g69fNHx05HDyZKqMZwg0WhSRv+jH
         2R0c0SBLDN+jwPfn+l63edUwReSoBCNpKhp5UijDSOCcAaJTdunsKykAJu04/z/evxCu
         eQRw==
X-Gm-Message-State: AHQUAuaW3lD8veJxMUg1jfQP5ipRgUtItlC1do8X9B9MKSUmxXEpJ6r4
	A3VZlY9Q8y0oqzErMKRceboMMpMaCtw=
X-Received: by 2002:a62:574d:: with SMTP id l74mr8367761pfb.9.1550905425784;
        Fri, 22 Feb 2019 23:03:45 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id p34sm6252336pgb.18.2019.02.22.23.03.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:45 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/4] Staging: greybus: Fix various checkpatch.pl issues
Date: Sat, 23 Feb 2019 12:33:21 +0530
Message-Id: <20190223070325.6750-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series cleans various checkpatch.pl issues
CHECK: Alignment should match open parenthesis
CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Please use a blank line after function/struct/union/enum declarations
CHECK: Please don't use multiple blank lines

Bhanusree Pola (4):
  Staging: greybus: Alignment should match open paranthesis
  Staging: greybus: Blank lines not required before '}'
  Staging: greybus: Use a blank line after declarations
  Staging: greybus: Do not use multiple blank lines

 drivers/staging/greybus/audio_topology.c | 1 -
 drivers/staging/greybus/bundle.c         | 2 +-
 drivers/staging/greybus/bundle.h         | 1 +
 drivers/staging/greybus/connection.h     | 2 +-
 drivers/staging/greybus/control.c        | 1 -
 drivers/staging/greybus/control.h        | 1 +
 drivers/staging/greybus/core.c           | 2 +-
 7 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.17.1


