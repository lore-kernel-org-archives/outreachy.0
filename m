X-GM-THRID: 6341582423579426816
X-Received: by 10.200.50.52 with SMTP id x49mr4245377qta.45.1476514717441;
        Fri, 14 Oct 2016 23:58:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.88 with SMTP id r85ls1158227itc.0.canary; Fri, 14 Oct
 2016 23:58:36 -0700 (PDT)
X-Received: by 10.66.117.233 with SMTP id kh9mr3610815pab.163.1476514716950;
        Fri, 14 Oct 2016 23:58:36 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z76si3416467pff.1.2016.10.14.23.58.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 23:58:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id r16so8651574pfg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 23:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ztcShKbzDny37ZVvEmo6iZvsVMWlHdhBihr6uYSU0gU=;
        b=aboj1F58MSRxoe9iNG7Mpo8fXDKY592LgvVA17KiBHJdkdfKZBXLQsskpzI8+UuwDL
         /tlhoJFKTRL9XBzuO54GKRRtta2L54Fd+WUSKv3s5G4TEzqFi/UCU/REGD80Hv5fP7o3
         o1vFLJLLQoGrykH36P14HN4Ok90bvrg2/wnnvpRvEUqm6rP7HU0S2c5Ye7oISULA21Dq
         zNEgo5ah45plzGvvqgf5GfrVDIR1gHfHkrlK8cJvUNh2UAaYimoqawOOfHzNsjAt64To
         tFLA8C7AIzoIhnM+UQDJmklPkWsiQ17Lh1lA7GHhHQEv6FRzx/ZstoHcG8beiDc8D5Wd
         S1Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ztcShKbzDny37ZVvEmo6iZvsVMWlHdhBihr6uYSU0gU=;
        b=kxtquGjsATtZvZUo150sEYaa23+I4h3+uaL3tTN1KlEC+V6djIoJXd4X0YF0jy61Ra
         UiRgZrHAwDKTK1XqkR+Yo/BcI2XAgGYCldqUtVYPzZCs+8xzGTi+1FUU3JeXgaCYt9Md
         ZjkMVONMtQH5T4Tl//oUskDY4P+H7ozpn2M1O7ecby5F6h9mX2h+40bj5KoRRN1yKCky
         +Ckq3QpoyP/bgoz+mfBGHSm0+ZlxVhPzpXA9/HVcAtzQiEDIDh1OFQacET1BG2hoZjAG
         eVzr4mOM+qs1tJ5V0X+9iMg4QGUo4dlG9mm8pJFj0sB6WcdPHKfAnGXZWutEpPTnjwPa
         fRTA==
X-Gm-Message-State: AA6/9Rn3QHygmwuPAJW9Ikj1i3Iuln2lBJxF1BiBmgfEp7g48sCsFXcExDrshHUpVpKXiQ==
X-Received: by 10.98.159.70 with SMTP id g67mr23826261pfe.62.1476514716346;
        Fri, 14 Oct 2016 23:58:36 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.138.189])
        by smtp.gmail.com with ESMTPSA id m62sm32089111pfi.10.2016.10.14.23.58.26
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 14 Oct 2016 23:58:34 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 15 Oct 2016 12:28:02 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	dtwlin@gmail.com,
	johan@kernel.org,
	elder@kernel.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: greybus: uart: constify tty_port_operations structure
Date: Sat, 15 Oct 2016 12:28:01 +0530
Message-Id: <1476514681-10619-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Declare tty_port_operations structure as const as it is only stored in
the ops field of a tty_port structure which is a field of a gb_tty
structure. The ops field is of type const struct tty_port_operations *,
so tty_port_operations structures having this property can be
declared as const.
Done using Coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct tty_port_operations i@p = {...};

@ok1@
identifier r1.i;
position p;
struct gb_tty q;
@@
q.port.ops=&i@p

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct tty_port_operations i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct tty_port_operations i;

File size before:
   text	   data	    bss	    dec	    hex	filename
   7646	    512	     56	   8214	   2016	drivers/staging/greybus/uart.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   7710	    448	     56	   8214	   2016	drivers/staging/greybus/uart.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/greybus/uart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index 5ee7954..8162886 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -832,7 +832,7 @@ static void gb_tty_port_shutdown(struct tty_port *port)
 	.tiocmset =		gb_tty_tiocmset,
 };
 
-static struct tty_port_operations gb_port_ops = {
+static const struct tty_port_operations gb_port_ops = {
 	.dtr_rts =		gb_tty_dtr_rts,
 	.activate =		gb_tty_port_activate,
 	.shutdown =		gb_tty_port_shutdown,
-- 
1.9.1


