X-GM-THRID: 6661088091510407168
X-Received: by 2002:a6b:fb01:: with SMTP id h1mr9278324iog.31.1551108570524;
        Mon, 25 Feb 2019 07:29:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:147:: with SMTP id 68ls1001966itk.1.gmail; Mon, 25 Feb
 2019 07:29:30 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYca9Wsc9EvK0UnJKxfKkM6BMSlbW9pt8evTxghX5EtIPip6H09V1nqCcU0X4Nm5wX88/lK
X-Received: by 2002:a24:9c85:: with SMTP id b127mr8288232ite.36.1551108570007;
        Mon, 25 Feb 2019 07:29:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108570; cv=none;
        d=google.com; s=arc-20160816;
        b=cNeiTgAZq5uOIXGgASwGVHm5p02BXa0YcUKLYvaHMyTnz8KRUDNhLypLxFra45D7BX
         7NdW0fRlwYCtezQdq34xWuMAJ91ZekmGPOTZsPmZKxyvUE2yYownysDXjzXgoEtruKyr
         Ov0h76f4DKiDUecRbTIVKEUuMEQ9ekNwFzxtdbxzHd9R2FHSoGeLG17zfkSovBxAaS0/
         PcrvCKszMTy3k4mz3NKXjpyf7j9MUjQ6Eqb9vIzLLBb33SB0v68jz7Qm9BQ/48xeUaZy
         vYf/dS8ap8kQ/MirLe8AWB4skfme4HS2w+ufi0jCYbg5t/PAMsLpYRo22mvgizODb7JA
         MKEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=Xj1sZazxDJJglaEC2+I4IwAghuI0yISIyzgvr+L2xoypDJ10H1OXhXcj8WAsgnqotw
         5uQaRdNdaqZdFTy0OTn66pgsVRtxfnA3NceXokJLLMF3R5UDmucXYwdJ71tMRL4cr3rz
         5MdHvgJYyDxQ3u5e+Gtk20xlck1d9U2G23lFar0uH3z/epPejj/4JdV/vBlyo+Cey2XD
         sFEFwvYI22w7WDYfib4TmCTUIl+17+hk+YnShoUgBImX1bWfXRPC7eq/fgXFyrqBGrfu
         pwW6qn9Ey8SIWY3ztQK03Bhjm2QUDwTxJ4c8GpaMyZSF3oiknWy1ucD2qpSypJU2gO3W
         oKfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZwkxU3F;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c191si558494itc.1.2019.02.25.07.29.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZwkxU3F;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b2so4638450pgl.9
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=CZwkxU3FeWuYv0XnxSbMwUzZlAzsMYn5Bb0yd7Iwxt8J1PhqlQkECRZjZX66c9J4hJ
         j/YrqBv2JRgRo/yIyeB6u3FUrBfNh+NwEHNmaYdxkfjsuFP/dKu8s3LHGFDamZ5DLtR6
         Kv7DD9Yx/ZLoqt/BhRYOwqoB/JVSNVb6L2mhl2uWgdP71t0OzjWV3O4hIWz6Aj63SOMt
         aq60EbjMGVDiJ5L0UrPKYuoIFYbVti6nvvHWaVNaKkgIGDkCWlTUJrKUxL7TEh+grEEd
         xBJfgaH3rZPRfGNjPM3v/T654ZnGI+vUUuEqjVW5IoS8BV19O3H9AESgXzn1KVvuuqkZ
         PYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=PaJjDJiASrkh9faXNupae90+gssHp75u4UeQLsTg2Sww8a+3HfPcrmbCV5Q5mzgJlg
         iDSSqG5lPHfOaU2KPTfCDoDcPepZxVqRw5GfuTi3J2zghyZQ23QNEMxpYjrdvB/g8l5h
         DlBllrU8uuUDSgGw3BAaRUAdZTq8iHqGEnxCIJZ2Uvw2mSRPpuu8byfF8tTg/N2tRkWM
         0Wktb+w9K42G9pioM0DoDUaowDTS1PImwt8+YxKe5bjtrtxV/agtAv0TstGm6o5cDPaB
         EgvJL75yeUj2rvo0pXhh5RpThMfE4i5A5O5IsOJ98ocVf/WyXLMxXp6CYuYH5AR/R3f8
         MYSg==
X-Gm-Message-State: AHQUAubT0P4wkY3n2IoLxN+MTCGJ3sqrAn2RLxYATAwwQalMAggADrm5
	MO1Drl++rZG6RfHshp1EXaxCLA/69qI=
X-Received: by 2002:a62:b608:: with SMTP id j8mr21387348pff.183.1551108569180;
        Mon, 25 Feb 2019 07:29:29 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f15sm2284515pfa.11.2019.02.25.07.29.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:28 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>
Subject: [PATCH v2 1/4] Staging: greybus: Alignment should match open paranthesis
Date: Mon, 25 Feb 2019 20:59:09 +0530
Message-Id: <20190225152912.10274-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225152912.10274-1-bhanusreemahesh@gmail.com>
References: <20190225152912.10274-1-bhanusreemahesh@gmail.com>

Clean checkpatch.pl issue in various files:
CHECK: Alignment should match open parenthesis

Adjust parameters to match alignment with open paranthesis

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

---
 drivers/staging/greybus/bundle.c     | 2 +-
 drivers/staging/greybus/connection.h | 2 +-
 drivers/staging/greybus/core.c       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
index 81c018da1248..e97b2b87ba47 100644
--- a/drivers/staging/greybus/bundle.c
+++ b/drivers/staging/greybus/bundle.c
@@ -65,7 +65,7 @@ static struct attribute *bundle_attrs[] = {
 ATTRIBUTE_GROUPS(bundle);
 
 static struct gb_bundle *gb_bundle_find(struct gb_interface *intf,
-							u8 bundle_id)
+					u8 bundle_id)
 {
 	struct gb_bundle *bundle;
 
diff --git a/drivers/staging/greybus/connection.h b/drivers/staging/greybus/connection.h
index 8deeb1d5f008..5ca3befc0636 100644
--- a/drivers/staging/greybus/connection.h
+++ b/drivers/staging/greybus/connection.h
@@ -88,7 +88,7 @@ void gb_connection_mode_switch_prepare(struct gb_connection *connection);
 void gb_connection_mode_switch_complete(struct gb_connection *connection);
 
 void greybus_data_rcvd(struct gb_host_device *hd, u16 cport_id,
-			u8 *data, size_t length);
+		       u8 *data, size_t length);
 
 void gb_connection_latency_tag_enable(struct gb_connection *connection);
 void gb_connection_latency_tag_disable(struct gb_connection *connection);
diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index 412337daf45c..d6b0d49130c0 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
 }
 
 int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
-		const char *mod_name)
+			    const char *mod_name)
 {
 	int retval;
 
-- 
2.17.1


