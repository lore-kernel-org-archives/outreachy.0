X-GM-THRID: 6469693451646533632
X-Received: by 10.25.228.65 with SMTP id b62mr508665lfh.37.1506342902148;
        Mon, 25 Sep 2017 05:35:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.8 with SMTP id 8ls1210252wmf.11.canary-gmail; Mon, 25 Sep
 2017 05:35:01 -0700 (PDT)
X-Received: by 10.28.21.65 with SMTP id 62mr33103wmv.22.1506342901371;
        Mon, 25 Sep 2017 05:35:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506342901; cv=none;
        d=google.com; s=arc-20160816;
        b=J8pUnZNDuuhbU3qPtabufcTHP2ukaWbnJ0Dbg9xF7uLLciC0brdnU7AsqfNjOW9vNd
         Dgpa+iZZ5KYDrc4eCZtQMLP9a7VJ1XbfMticS1vLDCU4xBaBNDk4vAbH3wJovGE9S1IO
         U1K/szJZdqSFjGM/sqcOGfQJRpabhNFqVe/as12hlnxdU0qvauBkn5QEqAeDVX3jo5gN
         WSscGzHpSM2SxBZv2dNFIHZAgJj8EF2dtwHq7Nnrb10MnR1RtogHciUViNnqjyEHmdZ0
         BCuKBC17C+00LsKNX/FF5k5gN5GCwQCTYJtEYojUs2f5wdh8WYkgvD9QcqD5oIL6Huec
         ZZpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=ix2vfR8ei7AWFMtBDhwrBfT4myKBNcPPeRBJsTkiXpY=;
        b=YYddQsLgy1qguNYuxOJ9oh9tEh8I5Wflnzp5bfsCzxXlCWaC3/OA+yEGAMayNR/KZU
         apAARMqqyOZQyHpIIgDMBCW3Vbn1ufiMPQO6q3/rvCJJo/KZf6z2kSULchsQwiLv+nYo
         qa6G8sjB+NUtJbliPIxjhtuj8RuY9P/2Dk7hzpJVQhJR0j6y2hdtz2o7mgmQrIvTSUL3
         Ep3gAaWUn5wtBAsJ1wAa5e3azDvApy9Fb76larz/6H90W7XHb9pFkUNORfoRHHbk+yEL
         /HmxEKAps3S6P4Gip4Ujnkle9qBaGLc8rSgSlBf033F8LN7ltWqUlCEiKnlzfACROgDi
         WO4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y2fAD1YI;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id 191si437250wmn.2.2017.09.25.05.35.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 05:35:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y2fAD1YI;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id b9so2095638wra.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 05:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ix2vfR8ei7AWFMtBDhwrBfT4myKBNcPPeRBJsTkiXpY=;
        b=Y2fAD1YI9bBZhCuSjCX3LMmyL6lMq29H4vitea+oU0uXhrEwzAKmmHvOR3RkRWC2LL
         eHt6OzTvsQZAcIcQAJnqZFKMKooN0U3OcW5aIwR3Y1LziPzqtHXVzLQc0VzFDQSzlGjO
         ou1bGvXkVj8sBTLWOZfd/lCcJz40iv7Yu0GxoVv8qzIh1Ji6WmgCgjzfO51CT/O0nYVe
         upoNVyGgMlH+1UF1famuFMNUYV/7A+naaU1Ee6iRcvIY7aBFUcTGDQkrVmF8rZUbnXnX
         66SJnPYj24gpFgriKOtgIydmRV8b03bt1YjxlHMcpa4YS/M1Jb9qpcbW9c0/jZWC1/Os
         yvJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ix2vfR8ei7AWFMtBDhwrBfT4myKBNcPPeRBJsTkiXpY=;
        b=amLkTAdNxlrYiFcVyXTcb1uUE9MHmhMjp07TOjl4uWud7k6srLla6aHEKfOCeDb2Jx
         x/FppxUs35Hk1OXyI9Spj1Dnrxw1vyh4Zo2WLPlxenvfe6NitlYH/N4PCyGZX7Io/GGt
         25214JZOYosMZZOCNpEitYLK8NmwkhjewnVWaKCNWGvC95zw9VDa1Vj+MBNBsQkop9Ia
         tdUe/SMtOJBUgyTnNPgIbMWXMGf/j19D1cTGCUo+SwpYugaFQz8L/fl0K/Ve/QhO/sub
         EbIg9V7Rxmsp28VTtZaFvyv1tVO5VZF3ayMY94+gW0Z7J+BOJdvcFUQXgrUe9VN5HwEv
         esMw==
X-Gm-Message-State: AHPjjUhyMegyOg+WE1xCl73QPtvwvfCQ3lS4Bc/UqmPHF/9OV53kx6ZI
	WiUOaAOmk0blpURu5naFhbvntT+J
X-Google-Smtp-Source: AOwi7QA4nE21HYTnYJ5a49VUI/7N3Htfl9G4ZNOQvKN//OipYRXdeG9HjczFtnkUn/lKvLROjMY/ew==
X-Received: by 10.223.176.114 with SMTP id g47mr5784871wra.146.1506342901081;
        Mon, 25 Sep 2017 05:35:01 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id 25sm10330541wrv.8.2017.09.25.05.35.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Sep 2017 05:35:00 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/3] Staging: rtl8188eu: core: Add spaces around '+'
Date: Mon, 25 Sep 2017 05:34:06 -0700
Message-Id: <bbd56316659b0d3812c817d228a92ed399effe39.1506339722.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506339722.git.georgiana.chelu93@gmail.com>
References: <cover.1506339722.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506339722.git.georgiana.chelu93@gmail.com>
References: <cover.1506339722.git.georgiana.chelu93@gmail.com>

Improve the coding style by adding spaces around
arithmetic operation.

Issue reported by checkpatch.pl script.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
* new patch added to the patchset

 drivers/staging/rtl8188eu/core/rtw_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 3c764b8..355a039 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -274,7 +274,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 				if (miccode[i] != *(pframemic+i)) {
 					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 						 ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
-						  __func__, i, miccode[i], i, *(pframemic+i)));
+						  __func__, i, miccode[i], i, *(pframemic + i)));
 					bmic_err = true;
 				}
 			}
-- 
2.7.4


