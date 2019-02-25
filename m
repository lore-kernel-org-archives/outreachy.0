X-GM-THRID: 6661088091510407168
X-Received: by 2002:a17:902:aa06:: with SMTP id be6mr5810993plb.58.1551108970229;
        Mon, 25 Feb 2019 07:36:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls5510156pga.1.gmail; Mon, 25 Feb
 2019 07:36:08 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZvB2WkpBY38evx8twckUDAd6PRCyfhk/nIRchGwQaPh2WUSPgEoxyqnLInx57xfkCpIuU5
X-Received: by 2002:a62:bd0e:: with SMTP id a14mr6839761pff.71.1551108968140;
        Mon, 25 Feb 2019 07:36:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108968; cv=none;
        d=google.com; s=arc-20160816;
        b=LZFDGq3/LM1y17G4Te8DsEnP8eaOj6M1HBN18Qpy5OMbchIfdDHCLM1/3MCv79TYI7
         hepd6HpUvojBby5IDXdmJ0aHQ8lsZNOl4ys4ejmty5M5XnNbbXOaO6/4wrGTrI2UgE3U
         IWtuZHzk9X4nsL+ARLc8GjjglCuSQHMVlWWoeJyIjAnSZpmfEppEOPtBOda3EMwQDJPM
         qG0xMvDsbS+NfFPas7W/Amog/HOm3sx6Yh7w38AKELdzPkr5aKrGgLlsX58uq0N0H1ZY
         sAD3eNDF7DBmmh6sZ0I4mQXbT/bmkijaC5ljUQdWVvWTpgiuC66hi6zdBGdzqnN0+Zi2
         briw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=rj3bYN+mCZj8cu+xzLw2GyNmFCtqfam9VMe5vhzvPD91zBAsie7FwHGKKJDP8dPzBo
         O3RCEaKY+udQm6BF4BV5V0LpNdWjgVZQ+zL7oZICTnWpqzSGYFpuvntT7XT+S0/EbChw
         txn/WsgxrkcKVZ6pHLp5QO5x3hIut+VgZ7Hw8FifOLC9xpmDQ0sSzSmXUncpLImY609D
         7B4oqNDWASMOyMLIo6DLyfjqZEU67LJ02IwMkXUPqiWFBjYdGctzO+ISiYkDmC42hpzs
         aE1vu0kJW/NYPVE3s9EjSk/o8xDu/GJVmYkUX+Xny7YotYTo3xsQ6iZg2DLsFVS3QMm/
         /gDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LGHaGNbt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t24si338575plo.2.2019.02.25.07.36.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LGHaGNbt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id 196so4632477pgf.13
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=LGHaGNbt3HP98+pNSz9TY8gEXdBxAWinieuzm0+g+wwBvlFZBovleWR4aDsuzrEW8w
         HyBzKlddVbzPgUhHv1CbtdM/VbFuocrLp8n2VtYxXFhticf9lMn+XIy4K8DLu7JUdHnC
         59lBoPBCgIjZ07l54gbSTAYa8SP4mA+bLOBjCp/WaLcFdN6fSkLUubS3iqEgIM60lHH9
         gap7Gvun68z4s3UNbt6FfAAc7bQT9KghdsD+jSVFfLCjH6Psyrb5LNZ9+2gJRQUBL3PZ
         9Ufgz9/jlsIAPwcXnEVOud93tORXxBrp/z4JK6tupAdSJG5rv1vdPszRg4+7KW44ONCV
         cmXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=afE1jhDTyJZvNobeAsPXFqvw7uHANCCqXsx7gzW1etZZOgMTtDTUY3Y3i+TGqNcwIi
         dffrQpeha1tTLrX6jP1uI4lLS0wKJ3XymUkyy5kcKVephJdhpSGt7NxM989924t/OtIS
         CXNWOMmpe+1zoDF6HRccozq2tDvtLccg/vjeWOmBsgEzDkSUdywJEYAloU8toYQwEb6d
         fOdTIHFofLeRPSYAWZI5osJwgFBfeZ8+tmim3yCvyVrFLUMBF5V3nfQ8KHvYX3k0IPl1
         g92sWOP+5DoLKJGiAmg+/iD7grKDQNlNHlK6ei+hm8N+ZxL/+0oFVagnHqbJwFpFocMt
         sWRw==
X-Gm-Message-State: AHQUAuYlz55WHwvf68qMPAnSNqUjaZRwUIojpIqh9C1qjy4qxU3cU5pK
	4tiOrqGGozMXLyKFRZBI3e+1LJEoJuU=
X-Received: by 2002:a65:62ce:: with SMTP id m14mr529571pgv.101.1551108967649;
        Mon, 25 Feb 2019 07:36:07 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f18sm14048855pgf.26.2019.02.25.07.36.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:07 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v3 1/4] Staging: greybus: Alignment should match open paranthesis
Date: Mon, 25 Feb 2019 21:05:43 +0530
Message-Id: <20190225153546.10484-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225153546.10484-1-bhanusreemahesh@gmail.com>
References: <20190225153546.10484-1-bhanusreemahesh@gmail.com>

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


