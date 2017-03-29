X-GM-THRID: 6403001709178650624
X-Received: by 10.99.114.92 with SMTP id c28mr770754pgn.17.1490815009743;
        Wed, 29 Mar 2017 12:16:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.71 with SMTP id a68ls3397547itd.22.gmail; Wed, 29 Mar
 2017 12:16:48 -0700 (PDT)
X-Received: by 10.99.108.65 with SMTP id h62mr775615pgc.19.1490815008857;
        Wed, 29 Mar 2017 12:16:48 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s67si1232670pfs.4.2017.03.29.12.16.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 12:16:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so4096412pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 12:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wRIruNe1M1gLp5fgUHsieSUGTYIGBMvcIBtNmRt5BDc=;
        b=Mcphq4WCccfm69jgAalqQfLFMw31a4aNxJCSDyLZodkKTLhgdTD9UYBqrHG7NfZg4I
         e+/xRzInVAY1wYxoEx4STtG7ZD12wzQb0pA4DSoBFPcEQfHdppyFG2oIx0ANODZouYrY
         PEcHsp7yF0VeySzXv6KlV/frReo7w+5fWRsF6iil3488TOhWEEM09GiwmOn78p3m/IkR
         6NQRitNCy4A/Q3r1deHJWNgso7i76C8oxcwwfI7VHZcPE8Mwim5O6NU8JkEqP9aHRXkb
         D9zNS/DzbOxq3HzqAA2dXwAl79NWq0KZnPKP0craI6Z0VK/q47c6QUc5XHSNEFd7JbHk
         GTdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wRIruNe1M1gLp5fgUHsieSUGTYIGBMvcIBtNmRt5BDc=;
        b=FUypMPhYqpkY152CE6XK5KMm+4Fr+FbIBR4E0w1AUsymbJaGNpy/msxrW56Hv7RXkh
         r670t18AS4fj6TSWgBnEXMcAphC4saQdHIeHo9Et/wRrnYFWDH4Z4RDQyIizEln9irtT
         bc+yFOJ1H/g7WdlyrHYHs7Kdn5EJnnWtHSdiqVjuohSFqGd2DHA7Zt2pYPx6gAH372yI
         5wQvEi1y6tBxm5GqaEtItNC5dlbLO2lCxZZr7DcHEaZLZHXqNq6gc0eHdeMMG+ZNiR05
         ZIW1t0ZN3w9zTAJGk3gOcrToUZ3ODSvIJhjuuQ+yup8TDMo3I2HGqTYxvQce9QYZ4Mwy
         oR5Q==
X-Gm-Message-State: AFeK/H2DrzhSl6g9tTFiTbGgdpCriLoqz99yKG5Y8leZeKrvbmRYhoRT6QADZOtujdb8Fw==
X-Received: by 10.98.163.145 with SMTP id q17mr2105157pfl.256.1490815008690;
        Wed, 29 Mar 2017 12:16:48 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.142.90])
        by smtp.gmail.com with ESMTPSA id l9sm14981276pfi.97.2017.03.29.12.16.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 12:16:48 -0700 (PDT)
Message-ID: <58dc0820.8943620a.67760.546e@mx.google.com>
X-Google-Original-Message-ID: <20170329191644.GA19981@<rvarsha016@gmail.com>>
Date: Thu, 30 Mar 2017 00:46:44 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	netdev@vger.kernel.org
Subject: [PATCH 2/2] net: ipv4: Use BIT macro.
References: <cover.1490813977.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490813977.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replace bitwise left shift by one operations with BIT() macro. This patch
fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 net/ipv4/tcp_bbr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/ipv4/tcp_bbr.c b/net/ipv4/tcp_bbr.c
index 4da4bc1..9f2c869 100644
--- a/net/ipv4/tcp_bbr.c
+++ b/net/ipv4/tcp_bbr.c
@@ -71,10 +71,10 @@
  * an issue. The upper bound isn't an issue with existing technologies.
  */
 #define BW_SCALE 24
-#define BW_UNIT (1 << BW_SCALE)
+#define BW_UNIT BIT(BW_SCALE)
 
 #define BBR_SCALE 8	/* scaling factor for fractions in BBR (e.g. gains) */
-#define BBR_UNIT (1 << BBR_SCALE)
+#define BBR_UNIT BIT(BBR_SCALE)
 
 /* BBR has the following modes for deciding how fast to send: */
 enum bbr_mode {
-- 
2.9.3


