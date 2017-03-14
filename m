X-GM-THRID: 6397218994574589952
X-Received: by 10.157.7.193 with SMTP id 59mr16485957oto.148.1489468626548;
        Mon, 13 Mar 2017 22:17:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.19.69 with SMTP id 66ls2050627itz.0.gmail; Mon, 13 Mar 2017
 22:17:06 -0700 (PDT)
X-Received: by 10.99.64.129 with SMTP id n123mr18778560pga.61.1489468626082;
        Mon, 13 Mar 2017 22:17:06 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y203si3036790pfb.0.2017.03.13.22.17.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 22:17:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so21855481pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 22:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bEAgOlGOSUwQZ2mnGbJ9kBLNdn4uuvZSYdBFy1hpBsw=;
        b=NMApzXCvSdBT5hUst46fBL5vVZJVbc82kjssR68aL01yBOio9M2M+2rBCc1ilXcqAu
         0lci7ui+1lRBRS3WQ4UUbZPgTGTLxzbTxuWWwat79C3b9HdlE/5Ed9QQzSGQDxsDG08b
         RbUd27Fxi8QJ4Y3rnUSthDuOScLclh+1ibtO9G8JenjuYSqoAk6BXjZKCt8V4IOp6+0+
         L3s7vle+ixzjjk02wWI7eog64NkjW2CvQbEh2xTAZ9Z4mBJvTqef0aooks4e0yzGDgyZ
         O2Smecxc04wtdg37SeOOvkc1jyF//FqsKWhS2u9UL1mvSce0g/swOxrnMkjOXsg4T0gW
         ixOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=bEAgOlGOSUwQZ2mnGbJ9kBLNdn4uuvZSYdBFy1hpBsw=;
        b=LsJ+JLMGMCr0XfFyE0UBUlnNytTOygj3lj8I1QB8MswEVutS3zqjKXAttf/nAYUW53
         1eu2KudiWjbJUboq6S09p7Ospip6CKMEFnc5mmxunqFvTy1oaUSYbk77QeoA1mRkuGxt
         SQskYzcXlWtQDN/hhCzDGTn7IrVrjizkxw66Tazy5cxOKSzqCihf5799G6+tJQkP3ao4
         SZwLVf8dV7TNvny8vHzcSByR1WaZHdpT8WlcFr0e/FUV/U9r4TJaWA5c5W/OUZ2Ny1tY
         ScKqYyomehIOg13Vqk6FKj9juTl0StVY7o7QrsNlsi+JdK7RKE3nhCWmMx74Lz0sXaG2
         9phA==
X-Gm-Message-State: AFeK/H3RGbaqJ8jRGnkFvgLVArw1lBZk8FVOyNQw801nGW9rf3Yn+c/lzG9ID5HUKE2RGQ==
X-Received: by 10.99.146.73 with SMTP id s9mr439605pgn.185.1489468625925;
        Mon, 13 Mar 2017 22:17:05 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u69sm35535830pfg.121.2017.03.13.22.17.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 22:17:04 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v3 2/2] staging: speakup: fix "Alignment match open parenthesis"
Date: Tue, 14 Mar 2017 10:46:43 +0530
Message-Id: <20170314051643.28085-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170314051643.28085-1-arushisinghal19971997@gmail.com>
References: <20170314051643.28085-1-arushisinghal19971997@gmail.com>

Alig arguments with open parenthesis.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v3
 - Improve the commit message.

 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 8a586323b728..ca85476e3ff7 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -93,7 +93,7 @@ static void report_char_chartab_status(int reset, int received, int used,
 	} else if (received) {
 		len = snprintf(buf, sizeof(buf),
 			       " updated %d of %d %s\n",
-				used, received, object_type[do_characters]);
+			       used, received, object_type[do_characters]);
 		if (rejected)
 			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
 				 " with %d reject%s\n",
-- 
2.11.0


