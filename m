X-GM-THRID: 6261584556721176576
X-Received: by 10.66.101.4 with SMTP id fc4mr14921140pab.48.1457889009074;
        Sun, 13 Mar 2016 10:10:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.111 with SMTP id u102ls2938507qgu.45.gmail; Sun, 13 Mar
 2016 10:10:08 -0700 (PDT)
X-Received: by 10.140.28.71 with SMTP id 65mr15368895qgy.1.1457889008477;
        Sun, 13 Mar 2016 10:10:08 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id p6si830308ywe.2.2016.03.13.10.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id t4so10731700qge.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iJxPbl1smjfo8ptnaNYF6S4Yj8bVZRt+jHPcj3RQ0bk=;
        b=hDn5jZS/ug5swas0l1EHB3m3VQ0pWjQXFEmd9HoKnQNBgsvDCnrHSVgaW8MtkPcqZP
         yojjMhdyXc7JS9XtteD4V4m1D9NXPP/xrAmyJiVkgShbmFpkYvpilKqceT6PiaXprKOz
         ADvJlzUvmLSbzFauc2euK5VEEl3UZ0lNnXq5sSLbA9KutHFPd5g3OEtaFXyAkKUJ31an
         uizDJcNJMxJ/OQPCo/4KGGIUNJ6/mSY1n25adANqsmPLny3SZ5UwIoZzxYMK1KWCd+QY
         buRvydf7cYyV3JPO7Tra0RNa4sOXi5eVWgHvtezUQlorf6nUwJuXYXNsFTdmqXt7x1GQ
         lsig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iJxPbl1smjfo8ptnaNYF6S4Yj8bVZRt+jHPcj3RQ0bk=;
        b=jAcWyXnSMitGkB4qxZUbhcwQwwflKZ1WJx9JKQ6ful3t1Nt/wEfTYSyl8DDIkuYRza
         7Jq3jOhuATqJ0F0bB4luJQpvYb59iioxzuSH72GLFBMsmx8gDhDN3yLdVWaPhjTBGWMP
         KlBrS+bKa1k54IzfOCISUn6V2mvPEi6lfKE7WqDkDPs2l2dW4AjCUjsBt7aAalxlyE/X
         PwsahLOh6LGw7g7mNaf2gLFzqcZHUpMa+gv4jFj8FONsRkjWROFiir68NZ+BOIwnHPHJ
         PbmR3uBcDARKYrgnstejKM8wWKGM5cmPL/Jb8WUJZFNDyvHei3xQkHjJVlVG58ctsycm
         4GcQ==
X-Gm-Message-State: AD7BkJIGAL9HV1g4y4nNtO8H/usZwpHcDqRctbllmZ5kvui4vbGJ9+rwgK9ZnSzCBdYrZA==
X-Received: by 10.140.97.9 with SMTP id l9mr24929524qge.106.1457889008163;
        Sun, 13 Mar 2016 10:10:08 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id r189sm8469368qhr.4.2016.03.13.10.10.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:10:07 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:10:05 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 8/8] staging: dgnc: renames TtyRefCnt variable to avoid
 camelcase
Message-ID: <64e3b81be7b8fd1ffcc9bfe1b565972a7dabc018.1457888423.git.juliana.orod@gmail.com>
References: <cover.1457888423.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888423.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch renames TtyRefCnt variable in dgnc_driver.h
in order to fix a camelcase checkpatch issue:

HECK: Avoid CamelCase: <TtyRefCnt>
+       uint            TtyRefCnt;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index f18d40a..a37e16b 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -216,7 +216,7 @@ struct dgnc_board {
 	uint		dgnc_serial_major;
 	uint		dgnc_transparent_print_major;
 
-	uint		TtyRefCnt;
+	uint		tty_ref_cnt;
 
 	u16		dpatype;	/* The board "type",
 					 * as defined by DPA
-- 
2.7.2


