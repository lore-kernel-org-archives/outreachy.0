X-GM-THRID: 6659918417753014272
X-Received: by 2002:a37:a5c1:: with SMTP id o184mr17993809qke.42.1550633091320;
        Tue, 19 Feb 2019 19:24:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6394:: with SMTP id x142ls4825528qkb.7.gmail; Tue, 19
 Feb 2019 19:24:50 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbMPXov0EtZFJU16mA0uGTp3rSXj++aimcvC/6S3M24lWg/iQEMoUw650SNufd8xByRNECF
X-Received: by 2002:a37:634c:: with SMTP id x73mr18539498qkb.17.1550633090591;
        Tue, 19 Feb 2019 19:24:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550633090; cv=none;
        d=google.com; s=arc-20160816;
        b=ngO9Ypvs4S2P3qopW2ZFuTHOBp+3hTgRx+lbFhejYing7u76xgU1zpUGSv0UtN1J7h
         eA4S/Y5U/KM8vnxAQkNurKPSZ1tb9EXxr1FRHyFBU04o3r1rnCRNrZ3uCLkFXlEDJ++J
         3aft3m19O/uaA6f15O/MvsWOHc2ubVZjgnJjGtTJsj8S0X2az4pGuAy1gxaP1MHCPbKf
         rF99pkbLSnOlOdND9kkZeXk8R5osyqcNiz+79u7YpJ9VC6GyvZnb9dSUjTohHmujSXR4
         banCQ2fYJIg1aaoptrWoD74zB+/FoST6k304bzTqjLKB3PeSkGgG8tofuK1NN05R94+M
         WdHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=01V+6R8bkfws7Rsp/O1h53KMz0eR0Jxhfhg4foqPLZs=;
        b=LLr6dH30ubb3xT5A6VSsjRhg/kzLZVWbOsO2OtaL9+D8YYCKdkhJFa0BMM04Ka7A84
         IVX6uiGMCVeEVKg4KVwnJJ0uZ1YRBqqEzvwatn4fZN62YF8myORZwYkcEkNeB30Po3s8
         zw0EcWpge4kw5ySapUSQ2xuponZs7E5pVlKHopN5p/tv9hZIBJdzjPR1IA2vfpg97z7d
         KV2UyCsUzd56ATHqGXWWZ4sfQ+PXhyx2QRaEF8BZVw0llVGh4nGJ49K1YSrqc0LsV8yi
         Ngzr41wABEn/b6iCs9hsfFuQXOxVQqb+9CtyPzoSgjJnPPiCOPHemCU9ea/zfHzRopK/
         Vfiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qzW/2Rmt";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id o22si1264940qtm.1.2019.02.19.19.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 19:24:50 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qzW/2Rmt";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id v28so11117664pgk.10
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 19:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=01V+6R8bkfws7Rsp/O1h53KMz0eR0Jxhfhg4foqPLZs=;
        b=qzW/2RmtBda7JraYPw3rw0rJ5DYVecqh/snAZ+uoUxETcviQqNLaBhBlYrZOz3sZmX
         RQaDx/NhK4CY0xSO/DS2mNjKDYaX7Z1ffPVYJaoL2xo6GT1goz11O/BF2sJGBS0dwrjh
         9fVvah+uKq9ZzgMVD4A8MrKdqEaN04tMM+oSrG+FC+km9V0yTllH1M1BX0d4sZEOMj6p
         PfFK0330YqOaNchnYhJS0DbeOdieqeFMy+Hw1E0dhGsXGUe1bSaemSdlA7c8K/ajt6RY
         gAbR72w+xs4TmHEHRvbNNVmnDS1kup+PkjM3lap3zNRpi0DBPMG/RZ5Dx99CuQwIkKr+
         xOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=01V+6R8bkfws7Rsp/O1h53KMz0eR0Jxhfhg4foqPLZs=;
        b=Xtw7HrzNewvvd5aWl00nEEL8SMaM9GGj5ZhmuzAcR7IZv9pE6RGcqRUT91oPrvWkvG
         lctQuDldIJuv+Z5z/teYEkH3LmlaeySpShwK8NVdwctyUKYHHM8T7Lj75t/ij6Emkbp6
         O8AwfnOSQZDWZrY6NmMtqlP0NQ6gWvPSYDV8KKJ6nmNU2SeaEga/LtG/jBZqSJChnwXO
         VcRQmDG2QV1JPR73cqsMQNhqWperID3LDqv0gbHaoy0p+etxnF6oupVf9XtX/OBQNFNV
         HYp3gTKPGn9CiCY3e38sa/97zZNnk5+PCgdOjBmOzJuIGLP2YgZ2pWPy7qw6IcQQ28QS
         oMvw==
X-Gm-Message-State: AHQUAuZsvuSAOb+FcMS+peRYdI/LwYfwyTKUW8v2ij7XyPouK4NZj4rH
	E6vl3qjhiXhUxKJaaOQB1JWErZKStik=
X-Received: by 2002:a62:1d8c:: with SMTP id d134mr32737232pfd.96.1550633089138;
        Tue, 19 Feb 2019 19:24:49 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.135.168])
        by smtp.googlemail.com with ESMTPSA id k64sm34698322pfj.69.2019.02.19.19.24.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 19:24:48 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	andrew@lunn.ch,
	f.fainelli@gmail.com,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] net: dsa: add missing of_node_put
Date: Wed, 20 Feb 2019 08:54:32 +0530
Message-Id: <20190220032432.2878-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Decrement the reference count on port while returning out of the loop.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 net/dsa/dsa2.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
index a1917025e155..396e7433dd8f 100644
--- a/net/dsa/dsa2.c
+++ b/net/dsa/dsa2.c
@@ -624,19 +624,25 @@ static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
 	for_each_available_child_of_node(ports, port) {
 		err = of_property_read_u32(port, "reg", &reg);
 		if (err)
-			return err;
+			goto put_port;
 
-		if (reg >= ds->num_ports)
-			return -EINVAL;
+		if (reg >= ds->num_ports) {
+			err = -EINVAL;
+			goto put_port;
+		}
 
 		dp = &ds->ports[reg];
 
 		err = dsa_port_parse_of(dp, port);
 		if (err)
-			return err;
+			goto put_port;
 	}
 
 	return 0;
+
+put_port:
+	of_node_put(port);
+	return err;
 }
 
 static int dsa_switch_parse_member_of(struct dsa_switch *ds,
-- 
2.17.1


