X-GM-THRID: 6807521221589073920
X-Received: by 2002:a05:6512:407:: with SMTP id u7mr14562623lfk.36.1585007466203;
        Mon, 23 Mar 2020 16:51:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7017:: with SMTP id l23ls917447ljc.9.gmail; Mon, 23 Mar
 2020 16:51:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuB6zn+RlgrvdJWLC8zED1tR2ZkpEOio1P8Tt94UK9+lmqPkhn6m9fixzl2MzeNquqHeq1d
X-Received: by 2002:a2e:9ad2:: with SMTP id p18mr15024224ljj.15.1585007464066;
        Mon, 23 Mar 2020 16:51:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585007464; cv=none;
        d=google.com; s=arc-20160816;
        b=EXjwuAc6OJDvrJuB5zuV6G2yGB8djziLYhVJ809X91mWaz7FuUUvT501VW6re4QWbA
         oRG4cyzv4B0QZnpCBjIMsvajTX2eUeyPOhLvH7qF7Z+f07HXTScu/jsDnIkpN7upX8sk
         E6YgVxkYHijveI3bQWVIAqCSlZKHp2iO/IJcUlH3COgs+61I9QEx386Sh694D1zj2Pqc
         1oo4vL76sO3odSZ3NAZzn5nenO+9SV8hE3gnfrX1oYGA37X2IgnQ5gKLIUozE1vb2+RU
         FqzSDb01QWljYvSHDtBA4iCtcyXkHZAAAlhipxZ2MaW7Q00Bg8/lRY+IRWRDPnDvHCq8
         yU9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=k6ZzmfCryDp60UjT5v+bkFPfKEhWF1uBKu/H/FQDPu4=;
        b=lxUZmg/EODy51jKAzllthmE8eIpYMn7RWwYfT6xv+2AuswQHfW8nFbVsQZdU5V+Qrq
         /wOtlPeSZQ6rCk+4we/3fpGGB20b9Xe1hyvolIm2cCfQISs7aXJPg4mHSp1xdeBulGK9
         alvRX4obqPKIk4HKge5cPddqV7sE7t0IMcCAaV6TbmaSDR4gIL0pMSfydf9CWx+nbja2
         o2hJlV+BbYBk+znrgwv+UlwQQ/S8QWg588400FEyico2PJHtuSwoLbdLPe6VLLNOl/Ev
         /FxcyRlr/dNPnbE87uK94ANNCjAUBIsCnT39aQxRXeECycl3MacZ2WiNysSJlMb3q7DY
         TQfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q4U8neJo;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id t17si487170lff.0.2020.03.23.16.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 16:51:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q4U8neJo;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id c81so1411268wmd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 16:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k6ZzmfCryDp60UjT5v+bkFPfKEhWF1uBKu/H/FQDPu4=;
        b=Q4U8neJoBRp+KkL1Pv3LkdPeopPq6WyuyuyQ/TKdQU0pa8VHZtliREuge2JlzPBmSM
         D3yz0m153ChUg/diaTRMBnEBFJUaCD2q9ZXoMZOUTpbZbVXrDwxejVoxHWMGToWyt5Il
         7meG7s3wYdDF0p1Iz4V5IXnpkPOCon5eoD68S09f7M3UpLBzbslqk3Z3FI/3rsiJzz92
         Tm9vxiERvFKlWYh8y4e2TrYQHVG82C9OzKl6RtxUTUr5vQ7NKXQ7ZEwSmIw4sOJPvC0X
         RNFBnTM0PWLKm8vNV4cBMB6x3dyOpnbb6YU5vM7zpdICd20HOWdp6MpWqk52wYfZzLTg
         7IHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k6ZzmfCryDp60UjT5v+bkFPfKEhWF1uBKu/H/FQDPu4=;
        b=deiSVhxnrtCkdmASj0wtEMREebAtbojsu9jzSiOdc6Jl8rq+2N3XqI/Ji+VGLEBZQo
         xrIJdvDixZiQH0rO3WsdZixLowbhYSwfPFSxYJ+jVSL7tu9/Y83+dE+Wv46yAZNTC6uu
         AskQaE7VmDTaqKGfktGicKV8LOcjUhVNztlUqk6u/sJA3oHvpqHyHzkYHJ+2S+8WqR1/
         Jl2x1UhhhRjRl1pgk57oD7TnsCV+CVgO4cl5yBJrTlJkGN5iK2KS6iezVzDvDKJK60Jn
         VkVK0v1Iu4eJxvn6A/IVWacCwwPmmwTcPGpgJ1sbsTp2CmWv4Arnr2ecivQqe3dLKJYO
         c5Lw==
X-Gm-Message-State: ANhLgQ0Fpzotu1S+72czwQRVs1fSQsczIsju9Jyv+195R0xgi9i+ax5w
	pz5xKX5eWgsL1EhBnpKj7xs=
X-Received: by 2002:a1c:25c5:: with SMTP id l188mr2048300wml.105.1585007463844;
        Mon, 23 Mar 2020 16:51:03 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id y80sm1782399wmc.45.2020.03.23.16.51.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 16:51:03 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 2/2] Staging: speakup: Add identifier name to function declaration arguments.
Date: Mon, 23 Mar 2020 19:50:52 -0400
Message-Id: <b2a1ca962553194840d8cd2bf1f7d3174e3b1336.1585006374.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585006374.git.jane.pnx9@gmail.com>
References: <cover.1585006374.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

void (*read_buff_add) argument didn't have an identifier name,
adding a name to it like the rest of all functions' arguments.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- None.

 drivers/staging/speakup/spk_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index a2fc72c29894..fc6a9416829c 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -189,7 +189,7 @@ struct spk_synth {
 	void (*flush)(struct spk_synth *synth);
 	int (*is_alive)(struct spk_synth *synth);
 	int (*synth_adjust)(struct st_var_header *var);
-	void (*read_buff_add)(u_char);
+	void (*read_buff_add)(u_char c);
 	unsigned char (*get_index)(struct spk_synth *synth);
 	struct synth_indexing indexing;
 	int alive;
---
2.20.1


